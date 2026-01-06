.class public Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.super Lcom/android/internal/util/StateMachine;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;
    }
.end annotation


# static fields
.field private static final ALL_ZEROS_MAC_ADDRESS:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static final BYTE_MASK:I = 0xff

.field private static final CHANNEL_UTILIZATION_IE_LENGTH:I = 0x5

.field static final CMD_CHECK_INTERNET_VALIDITY:I = 0x11

.field static final CMD_CONFIGURED_NETWORKS_CHANGED:I = 0x10

.field static final CMD_CONNECTING_WATCHDOG_TIMER:I = 0x3

.field static final CMD_DELAYED_PNO_SCAN_REQUEST:I = 0x12

.field static final CMD_FULL_SCAN_FAILURE:I = 0xd

.field static final CMD_FULL_SCAN_RESULTS_REPORTED:I = 0xa

.field static final CMD_GET_AUTOJOIN_VALUE_IN_DEFAULT:I = 0xe

.field static final CMD_GET_AUTOJOIN_VALUE_IN_ENABLED:I = 0xf

.field static final CMD_INITIALIZE:I = 0x0

.field static final CMD_NETWORK_STATE_CHANGED:I = 0x6

.field static final CMD_PARTIAL_SCAN_FAILURE:I = 0xc

.field static final CMD_PARTIAL_SCAN_RESULTS_REPORTED:I = 0x9

.field static final CMD_PNO_NETWORK_FOUND:I = 0x8

.field static final CMD_PNO_SCAN_FAILURE:I = 0xb

.field static final CMD_SCREEN_STATE_CHANGED:I = 0x7

.field static final CMD_STOP_PNO_SCAN:I = 0x1

.field static final CMD_TRY_TO_CONNECT:I = 0x4

.field static final CMD_UPDATE_PNO_PARAM:I = 0x2

.field static final CMD_WIFI_STATE_CHANGED:I = 0x5

.field private static final DEFAULT_NUMBER_SPATIAL_STREAM:I = 0x1

.field private static final HE_CAPABILITY_IE_MIN_LENGTH:I = 0x15

.field private static final HT_CAPABILITY_IE_MIN_LENGTH:I = 0x1a

.field private static final INVALID:I = -0x1

.field private static final INVALID_TIME_STAMP:J = -0x8000000000000000L

.field private static final MAC_ADDRESS_LENGTH:I = 0x11

.field public static final MAX_PNO_SCAN_RESTART_ALLOWED:I = 0x5

.field static final MAX_WIFI_DIAGNOSTIC_LIST_SIZE:I

.field static final MINIMUM_PNO_SCAN_INTERVAL_MS:J = 0x48828L

.field private static final MINUTE_MS:J = 0xea60L

.field private static final NUM_LOG_RECS:I

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.wifi.silentroaming"

.field private static final RESTART_PNO_SCAN_DELAY_MS:I = 0x7d0

.field static final SCAN_TYPE_FULL:I = 0x1

.field static final SCAN_TYPE_PARTIAL:I = 0x2

.field static final SCAN_TYPE_PNO:I = 0x0

.field static final SCAN_TYPE_TO_STRING:[Ljava/lang/String;

.field private static final SECOND_MS:J = 0x3e8L

.field private static final SHORT_MASK:I = 0xffff

.field private static final SILENT_ROAMING_EVENT_DAILY_REPORT_LIMIT:I = 0xa

.field private static final SILENT_ROAMING_VERSION:Ljava/lang/String; = "20240215"

.field private static final TAG:Ljava/lang/String; = "SilentRoamingManager"

.field static final TEST_SETTING_ALTERNATIVE_SILENT_ROAMING_ON:Ljava/lang/String; = "use_alternative_silent_roaming_on"

.field static final TEST_SETTING_SCREEN_ON:Ljava/lang/String; = "screen_on"

.field private static final VHT_CAPABILITY_IE_MIN_LENGTH:I = 0xc

.field private static final WIFI_CHANNEL_UTILIZATION_2G:I = 0x50

.field private static final WIFI_CHANNEL_UTILIZATION_5G:I = 0xf

.field private static final WIFI_CHANNEL_UTILIZATION_6G:I = 0xa

.field static final mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;


# instance fields
.field private final CHECK_INTERNET_VALIDITY_TIMEOUT:J

.field private final CONNECTING_WATCHDOG_TIMEOUT_MS:J

.field private final MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final SCAN_TO_CHECK_DELAY:J

.field private final STOP_PNO_SCAN_THRESHOLD:S

.field private final logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private mAcceptUnvalidated:Z

.field mAllowFrameworkRoamingWhenScreenOn:Z

.field private mAlternativeSilentRoamingReason:Ljava/lang/String;

.field private final mCandidates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

.field private mChoiceConfig:Landroid/net/wifi/WifiConfiguration;

.field private mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field protected mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectingWatchdogCount:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

.field private final mDbg:Z

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceSupportsMlo:Z

.field private final mDisabledState:Lcom/android/internal/util/State;

.field private final mEnabledState:Lcom/android/internal/util/State;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mForceConnectToTargetNetwork:Z

.field final mGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mIfaceName:Ljava/lang/String;

.field mIsAtestOngoing:Z

.field mIsBluetoothConnected:Z

.field private mIsNetworkSelectionNeeded:Z

.field private mIsPnoScanning:Z

.field private mIsWifiConnected:Z

.field private final mKnownMeteredNetworkIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastConnectedConfigKey:Ljava/lang/String;

.field private mLastConnectedTime:J

.field private mLastNetworkId:I

.field private mLastNetworkState:Landroid/net/NetworkInfo$State;

.field private mLastPnoNetworkFoundTimeStamp:J

.field private mLastSelectedNetworkEnabled:Z

.field private mLastSelectedNetworkId:I

.field private mLastSelectedNetworkKey:Ljava/lang/String;

.field private mLastSelectedTimeStamp:J

.field private mLastSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

.field private mLatestFullScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestPartialScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLogLock:Ljava/lang/Object;

.field private final mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxMloStrLinkCount:I

.field private mMaxPnoSsidPerScan:I

.field private mOptimizedWifiConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPartialScanFreq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPnoMinRssiLevels:[I

.field mPnoNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mPnoNetworksLock:Ljava/lang/Object;

.field mPnoScanRestartCount:I

.field private mPnoWificonfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoamingWifiInfo:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

.field private mRunSilentRoamAtGenericScanResults:Z

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field final mScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScanResultsLock:Ljava/lang/Object;

.field private final mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

.field private final mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

.field private mScreenOn:Z

.field private mSilentRoamFrom:I

.field private mSilentRoamTo:I

.field final mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

.field private mSupportConnectedPnoScan:Z

.field private mSupportedSimultaneousBandCombinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTargetNetworkId:I

.field final mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

.field private final mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

.field private final mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

.field private final mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

.field private mVerboseLoggingEnabled:Z

.field private mWaitingForRoamResult:Z

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiEnabled:Z

.field private final mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;


# direct methods
.method public static synthetic $r8$lambda$1eDc1QKJv574X6SeUJ9Jxa113J0(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$registerReceiver$0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$6BtUX1k_1SV-z8ZYviZZKHE5hps(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$updatePnoNetworkList$5(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$F3WIMNJ_-x7GIR5Fv73pO2v2BUY(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$updatePnoNetworkList$3(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$GVbTAOW7o2D6o8ebK8WAjRQ8BuA(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$updatePnoNetworkList$1(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$S3haOd0m3vH9WJ0dXgQQin_PodU(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$updatePnoNetworkList$4(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$_L8TneFxrnMHZvvW3qXle_aK7pI(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$updatePnoNetworkList$2(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$kvEnfG8feu8kUuAKUyBdZFPOpf8(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/util/List;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$getAllScanOptimizationNetworks$6(Ljava/util/List;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$vSLHIOsB54izt4Fmgycuncoc73g(Ljava/util/List;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->lambda$intersectMlCandidatesWithStrBands$7(Ljava/util/List;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCandidates(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCandidates:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChoiceConfig(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mChoiceConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDefaultState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceSupportsMlo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDeviceSupportsMlo:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDisabledState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mEnabledState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmForceConnectToTargetNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mForceConnectToTargetNetwork:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHiddenList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mHiddenList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsNetworkSelectionNeeded:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsWifiConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastConnectedTime(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastConnectedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastNetworkId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastPnoNetworkFoundTimeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxMloStrLinkCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxMloStrLinkCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxPnoSsidPerScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOptimizedWifiConfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mOptimizedWifiConfigs:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPartialScanFreq:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPnoNetworksLock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworksLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRoamingWifiInfo:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunSilentRoamAtGenericScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRunSilentRoamAtGenericScanResults:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSaLoggingManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/ScanPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamFrom:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamTo:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportConnectedPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSupportConnectedPnoScan:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportedSimultaneousBandCombinations(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSupportedSimultaneousBandCombinations:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mTargetNetworkId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThroughputScorer(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserConnectionSaLogging(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingForRoamResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWaitingForRoamResult:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCondManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChoiceConfig(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mChoiceConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsNetworkSelectionNeeded:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastConnectedTime(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastConnectedTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastNetworkId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/NetworkInfo$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastPnoNetworkFoundTimeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxMloStrLinkCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxMloStrLinkCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxPnoSsidPerScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOptimizedWifiConfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mOptimizedWifiConfigs:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamFrom:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamTo:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSupportedSimultaneousBandCombinations(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSupportedSimultaneousBandCombinations:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mTargetNetworkId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$maddPartialScanRequest(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addPartialScanRequest()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mavoidStartingSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->avoidStartingSilentRoaming()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mclearPnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->clearPnoScanParams()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetInterfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getInterfaceName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$misInternetConnectionValidated(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isInternetConnectionValidated()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misMloSufficient(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isMloSufficient()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misMultiBandApBssidPair(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isMultiBandApBssidPair(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misNoInternetAccessExpected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isNoInternetAccessExpected(Landroid/net/wifi/WifiInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misSecurityMatch(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSecurityMatch(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misSilentRoamingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSilentRoamingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyConnectingState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->notifyConnectingState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$moverrideCandidateWithUserConnectChoice(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->overrideCandidateWithUserConnectChoice(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpnoScanFailure(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->pnoScanFailure(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setWifiNetworkState(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->startSilentRoaming(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->startSilentRoaming(ZLandroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->stopPnoScan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateCurrentBssidScanResult()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFullScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateFullScanResults([Landroid/net/wifi/ScanResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLastSelectedNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateLastSelectedNetwork()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLinkLayerStateForCurrentNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateLinkLayerStateForCurrentNetwork()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePartialScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePartialScanResults([Landroid/net/wifi/ScanResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePnoScanParams()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePredictedMultiLinkThroughputMbps(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePredictedMultiLinkThroughputMbps(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x12c

    .line 12
    .line 13
    :goto_0
    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->NUM_LOG_RECS:I

    .line 14
    .line 15
    const-string v0, "full"

    .line 16
    .line 17
    const-string v2, "partial"

    .line 18
    .line 19
    const-string v3, "pno"

    .line 20
    .line 21
    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->SCAN_TYPE_TO_STRING:[Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x32

    .line 34
    .line 35
    :cond_1
    sput v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MAX_WIFI_DIAGNOSTIC_LIST_SIZE:I

    .line 36
    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/util/LocalLog;)V
    .locals 14

    .line 1
    new-instance v10, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    invoke-direct {v10, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    new-instance v0, Landroid/net/wifi/WifiContext;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiContext;-><init>(Landroid/content/Context;)V

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    invoke-direct {v11, v0, v5, v3, v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;-><init>(Landroid/net/wifi/WifiContext;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    new-instance v12, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    invoke-direct {v12, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;-><init>(Landroid/content/Context;)V

    new-instance v13, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    invoke-direct {v13, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/util/LocalLog;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/util/LocalLog;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    const-string v2, "SilentRoamingManager"

    move-object/from16 v3, p3

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 3
    new-instance v3, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v3}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 4
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogLock:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 6
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 7
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsNetworkSelectionNeeded:Z

    .line 8
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mChoiceConfig:Landroid/net/wifi/WifiConfiguration;

    .line 9
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWaitingForRoamResult:Z

    .line 10
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoamingWhenScreenOn:Z

    .line 11
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsAtestOngoing:Z

    .line 12
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 13
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsBluetoothConnected:Z

    .line 14
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    const/4 v5, -0x1

    .line 15
    iput v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 16
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 17
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkEnabled:Z

    const-wide/16 v6, -0x1

    .line 18
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    .line 19
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDbg:Z

    const-wide/16 v6, 0x1388

    .line 20
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->CONNECTING_WATCHDOG_TIMEOUT_MS:J

    const-wide/16 v6, 0x44c

    .line 21
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->SCAN_TO_CHECK_DELAY:J

    const/4 v6, 0x5

    .line 22
    iput-short v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->STOP_PNO_SCAN_THRESHOLD:S

    .line 23
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPartialScanFreq:Ljava/util/Set;

    .line 24
    iput v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mTargetNetworkId:I

    .line 25
    iput v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    .line 26
    iput v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    const-wide/high16 v6, -0x8000000000000000L

    .line 27
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastPnoNetworkFoundTimeStamp:J

    .line 28
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    .line 29
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    .line 30
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestPartialScanResults:Ljava/util/List;

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mHiddenList:Ljava/util/List;

    .line 32
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 33
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworksLock:Ljava/lang/Object;

    .line 34
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 35
    sget-object v6, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 36
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    .line 37
    iput v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamFrom:I

    .line 38
    iput v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamTo:I

    const-wide/16 v5, 0x2710

    .line 39
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->CHECK_INTERNET_VALIDITY_TIMEOUT:J

    const/16 v5, -0x3f

    .line 40
    filled-new-array {v5, v5, v5}, [I

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoMinRssiLevels:[I

    .line 41
    const-string v5, "None"

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    .line 42
    iput v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoScanRestartCount:I

    .line 43
    new-instance v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;

    invoke-direct {v5, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    .line 44
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    .line 45
    new-instance v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;

    invoke-direct {v5, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDefaultState:Lcom/android/internal/util/State;

    .line 46
    new-instance v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;

    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mEnabledState:Lcom/android/internal/util/State;

    .line 47
    new-instance v7, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;

    invoke-direct {v7, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DisabledState;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDisabledState:Lcom/android/internal/util/State;

    const/4 v8, 0x1

    .line 48
    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    aput-object v10, v9, v4

    .line 49
    invoke-static {v9}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mGetWhatToString:Landroid/util/SparseArray;

    .line 50
    new-instance v9, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-direct {v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;-><init>()V

    iput-object v9, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 51
    new-instance v9, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    invoke-direct {v9, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v9, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 52
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 53
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDeviceSupportsMlo:Z

    .line 54
    iput-boolean v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRunSilentRoamAtGenericScanResults:Z

    .line 55
    iput-boolean v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mForceConnectToTargetNetwork:Z

    .line 56
    new-instance v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;

    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 57
    const-string v3, "com.google.android.gms"

    const-string v4, "com.google.android.projection.gearhead"

    const-string v8, "com.samsung.android.oneconnect"

    const-string v9, "com.samsung.android.app.mirrorlink"

    filled-new-array {v8, v9, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    .line 58
    const-string v17, "com.samsung.uready.agent"

    const-string v18, "com.google.android.apps.carrier.carrierwifi"

    const-string v8, "com.android.systemui"

    const-string v9, "android.uid.systemui"

    const-string v10, "com.samsung.android.app.aodservice"

    const-string v11, "com.sec.android.cover.ledcover"

    const-string v12, "com.samsung.android.app.routines"

    const-string v13, "com.android.systemui"

    const-string v14, "com.sec.android.dexsystemui"

    const-string v15, "com.samsung.android.gesture.MotionRecognitionService"

    const-string v16, "com.android.systemui.sensor.PickupController"

    filled-new-array/range {v8 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    .line 59
    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    .line 60
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    move-object/from16 v3, p4

    .line 61
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 62
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-object/from16 v3, p7

    .line 63
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-object/from16 v4, p5

    .line 64
    iput-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-object/from16 v4, p6

    .line 65
    iput-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 66
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNl80211Util()Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 67
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 68
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    move-object/from16 v4, p8

    .line 69
    iput-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-object/from16 v4, p9

    .line 70
    iput-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLocalLog:Landroid/util/LocalLog;

    .line 71
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 72
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getUserConnectionSaLogging()Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 73
    const-string v3, "wifinl80211"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 74
    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v3, p10

    .line 75
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRoamingWifiInfo:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    move-object/from16 v3, p11

    .line 76
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    move-object/from16 v3, p12

    .line 77
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    move-object/from16 v3, p13

    .line 78
    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCandidates:Ljava/util/Map;

    .line 80
    new-instance v3, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "mScoringParams: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->NUM_LOG_RECS:I

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->setLogRecSize(I)V

    .line 83
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->registerForSettingsChanges()V

    .line 84
    invoke-virtual {v0, v5}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 85
    invoke-virtual {v0, v7, v5}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 86
    invoke-virtual {v0, v6, v5}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 87
    invoke-virtual {v0, v5}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 88
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->hasMessages(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addFullScanRequest()V
    .locals 1

    .line 1
    const-string v0, "startFullScan : current network is EAP"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->startScan()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private addPartialScanRequest()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPartialScanFreq:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPartialScanFreq:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "startPartialScan : freq list = "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mHiddenList:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v4, " hiddenNetwork.ssid= "

    .line 74
    .line 75
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, v2, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;->ssid:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mHiddenList:Ljava/util/List;

    .line 94
    .line 95
    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->startPartialScan([ILjava/util/List;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private avoidStartingSilentRoaming()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSilentRoamingEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSupportSilentRoaming()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isInternetNotRequiredNetwork()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isMultiNetwork()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isNoInternetAccessExpected(Landroid/net/wifi/WifiInfo;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->semIsNoInternetAccessExpected(Landroid/net/wifi/WifiConfiguration;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isCarrierNetwork()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEapNetwork()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    move v1, v2

    .line 68
    :goto_1
    if-eqz v1, :cond_2

    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v4, "avoidStartingSilentRoaming - "

    .line 73
    .line 74
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSilentRoamingEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    xor-int/2addr v4, v2

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, "||"

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSupportSilentRoaming()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    xor-int/2addr v5, v2

    .line 95
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isInternetNotRequiredNetwork()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isMultiNetwork()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 122
    .line 123
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isNoInternetAccessExpected(Landroid/net/wifi/WifiInfo;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->semIsNoInternetAccessExpected(Landroid/net/wifi/WifiConfiguration;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    .line 144
    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, "||("

    .line 149
    .line 150
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isCarrierNetwork()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    xor-int/2addr v0, v2

    .line 158
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, "&&"

    .line 162
    .line 163
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEapNetwork()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, ")"

    .line 174
    .line 175
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_2
    return v1
.end method

.method public static calendarToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "-"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0xb

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ":"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v2, 0xc

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v1, 0xd

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, "."

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v1, 0xe

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method private checkSilentRoamingDisabledNetworks()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 36
    .line 37
    const/16 v4, 0xa

    .line 38
    .line 39
    if-ne v3, v4, :cond_0

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    iput v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 43
    .line 44
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-string v5, "sem_wifi"

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/samsung/android/wifi/SemWifiManager;

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 58
    .line 59
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 60
    .line 61
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 62
    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v3, "Enable network - "

    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkKey()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method private clearLastSelectedNetwork()V
    .locals 2

    .line 1
    const-string v0, "Clearing last selected network"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkEnabled:Z

    .line 14
    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    .line 18
    .line 19
    return-void
.end method

.method private clearPnoScanParams()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworksLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoMinRssiLevels:[I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/16 v1, -0x3f

    .line 14
    .line 15
    aput v1, p0, v0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput v1, p0, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput v1, p0, v0

    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method private createStringBuilderWithLogTime()Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 17
    .line 18
    .line 19
    const-string p0, "Time="

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->calendarToString(Ljava/util/Calendar;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private frequencyToBandIndex(I)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    return v0

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
    const/4 p0, 0x1

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
    const/4 p0, 0x2

    .line 24
    return p0

    .line 25
    :cond_2
    return v0
.end method

.method private getAssociatedMloLinksFromWifiInfo(Landroid/net/wifi/WifiInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDeviceSupportsMlo:Z

    .line 10
    .line 11
    if-eqz p0, :cond_4

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/net/wifi/MloLink;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    return-object p0

    .line 74
    :cond_4
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    return-object p0
.end method

.method private getCandidateScoreOnly([Landroid/net/wifi/ScanResult;)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mEnabledState:Lcom/android/internal/util/State;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "SilentRoamingManager"

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    const-string v0, "getCandidateScoreOnly: current state is not mEnabledState"

    .line 15
    .line 16
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAllScanOptimizationNetworks(Z)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 36
    .line 37
    new-instance v3, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->filterScanResults([Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_4

    .line 55
    .line 56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    move-object v10, v7

    .line 77
    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 78
    .line 79
    iget-object v7, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v7}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_3

    .line 92
    .line 93
    invoke-direct {v0, v10, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSecurityMatch(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_3

    .line 98
    .line 99
    new-instance v8, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 100
    .line 101
    iget-object v9, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 102
    .line 103
    iget v11, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 104
    .line 105
    iget v12, v5, Landroid/net/wifi/ScanResult;->frequency:I

    .line 106
    .line 107
    iget v13, v5, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 108
    .line 109
    invoke-virtual {v0, v10, v2, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEverMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z

    .line 110
    .line 111
    .line 112
    move-result v18

    .line 113
    invoke-static {v10}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    .line 114
    .line 115
    .line 116
    move-result v19

    .line 117
    iget-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 118
    .line 119
    invoke-virtual {v0, v6, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;)I

    .line 120
    .line 121
    .line 122
    move-result v20

    .line 123
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAffiliatedMloLinksFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v21

    .line 127
    invoke-virtual {v0, v10}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->semIsNoInternetAccessExpected(Landroid/net/wifi/WifiConfiguration;)Z

    .line 128
    .line 129
    .line 130
    move-result v22

    .line 131
    const-wide/16 v14, 0x0

    .line 132
    .line 133
    const/16 v16, 0x0

    .line 134
    .line 135
    const/16 v17, 0x0

    .line 136
    .line 137
    invoke-direct/range {v8 .. v22}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZILjava/util/List;Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_5

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 167
    .line 168
    invoke-direct {v0, v4, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePredictedMultiLinkThroughputMbps(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasInternetAccess(Landroid/net/wifi/WifiInfo;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D

    .line 178
    .line 179
    .line 180
    move-result-wide v5

    .line 181
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->setCalculatedThroughputScore(D)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_5
    return-object v3

    .line 186
    :cond_6
    :goto_2
    const-string v0, "getCandidateScoreOnly: optimizedWifiConfigs network is empty"

    .line 187
    .line 188
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    return-object v3
.end method

.method private getConnectedPnoScanSupport()Z
    .locals 7

    .line 1
    const-string v0, "ro.product.model"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "vendor.bluetooth_fw_ver"

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getAllVersions()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    const-string v5, "SilentRoamingManager"

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    const-string v3, "SM-G998"

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    const-string v3, "SC-52B"

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    const-string v3, "SM-A14"

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_0

    .line 58
    .line 59
    const-string v3, "SM-A16"

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    :cond_0
    const-string v1, "Use Alternative SilentRoaming method. model: "

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    return v4

    .line 79
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const-string v3, "BCM4361"

    .line 84
    .line 85
    const-string v6, "BCM4375"

    .line 86
    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    :cond_3
    const-string v0, "Use Alternative SilentRoaming method. BCM4375 or BCM4361 chipset."

    .line 120
    .line 121
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    return v4

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isJdmProduct()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    const-string v0, "Use Alternative SilentRoaming method. jdmProduct."

    .line 136
    .line 137
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    return v4

    .line 143
    :cond_5
    const-string v0, "Not Used"

    .line 144
    .line 145
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    .line 146
    .line 147
    const/4 p0, 0x1

    .line 148
    return p0
.end method

.method private getInterfaceName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " ifaceName="

    .line 4
    .line 5
    const-string v2, "SilentRoamingManager"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    const-string p0, " mClientModeManager is null"

    .line 50
    .line 51
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0

    .line 56
    :cond_3
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    const-string v0, "ifaceName is null"

    .line 65
    .line 66
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    const/16 v1, 0x8

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDeviceSupportsMlo:Z

    .line 110
    .line 111
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 112
    .line 113
    return-object p0
.end method

.method private getIssueUidForConnectingNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6

    .line 1
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 2
    .line 3
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 4
    .line 5
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    const/4 v3, 0x3

    .line 19
    if-ge v2, v3, :cond_2

    .line 20
    .line 21
    aget v3, v0, v2

    .line 22
    .line 23
    const/16 v4, 0x3f2

    .line 24
    .line 25
    if-gt v3, v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    return v3

    .line 41
    :catch_0
    move-exception v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 49
    .line 50
    const/16 v0, 0x3e8

    .line 51
    .line 52
    if-lt p0, v0, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 56
    .line 57
    :goto_2
    return p0
.end method

.method private getMultiBandApNetIds()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v2, :cond_8

    .line 29
    .line 30
    if-eqz v3, :cond_8

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_8

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/16 v6, 0x11

    .line 43
    .line 44
    if-ne v5, v6, :cond_8

    .line 45
    .line 46
    const-string v5, "00:00:00:00:00:00"

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_8

    .line 53
    .line 54
    const-string v5, "02:00:00:00:00:00"

    .line 55
    .line 56
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_8

    .line 61
    .line 62
    if-eqz v4, :cond_8

    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_1
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 73
    .line 74
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v5

    .line 77
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    .line 78
    .line 79
    if-eqz v6, :cond_7

    .line 80
    .line 81
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_2

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_6

    .line 100
    .line 101
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 106
    .line 107
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 108
    .line 109
    invoke-direct {p0, v3, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isMultiBandApBssidPair(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_3

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_3

    .line 124
    .line 125
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 130
    .line 131
    iget v10, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 132
    .line 133
    if-ne v10, v2, :cond_5

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v10}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_4

    .line 149
    .line 150
    invoke-direct {p0, v9, v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSecurityMatch(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-eqz v10, :cond_4

    .line 155
    .line 156
    iget v8, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 157
    .line 158
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v10, "Multi-band Ap found - current: "

    .line 171
    .line 172
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v10, "["

    .line 183
    .line 184
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v10, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 188
    .line 189
    new-instance v11, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v12, "]  Found: "

    .line 198
    .line 199
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v12, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v12, "["

    .line 208
    .line 209
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v7, "](nid = "

    .line 218
    .line 219
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget v7, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 223
    .line 224
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v7, ")"

    .line 228
    .line 229
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {v10, v7}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :catchall_0
    move-exception p0

    .line 253
    goto :goto_3

    .line 254
    :cond_6
    monitor-exit v5

    .line 255
    return-object v0

    .line 256
    :cond_7
    :goto_2
    monitor-exit v5

    .line 257
    return-object v0

    .line 258
    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    throw p0

    .line 260
    :cond_8
    :goto_4
    return-object v0
.end method

.method private intersectMlCandidatesWithStrBands(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method private isCarrierNetwork()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    return v0
.end method

.method private isEapNetwork()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "SilentRoamingManager"

    .line 7
    .line 8
    const-string v1, "isEapNetwork: WifiInfo is null. return false "

    .line 9
    .line 10
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq p0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq p0, v1, :cond_2

    .line 23
    .line 24
    const/16 v1, 0x9

    .line 25
    .line 26
    if-eq p0, v1, :cond_2

    .line 27
    .line 28
    const/16 v1, 0xb

    .line 29
    .line 30
    if-eq p0, v1, :cond_2

    .line 31
    .line 32
    const/16 v1, 0xc

    .line 33
    .line 34
    if-ne p0, v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return v0

    .line 38
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 39
    return p0
.end method

.method public static isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 23
    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method private isInternetConnectionValidated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x10

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

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

.method private isInternetNotRequiredNetwork()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/16 v1, 0xc

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "isInternetNotRequiredNetwork: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method private isLegacyMultiNetwork()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getIssueUidForConnectingNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 28
    .line 29
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isMultiNetworkAvailableApp(IILjava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method private isMloSufficient()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, -0x3f

    .line 19
    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAssociatedMloLinksFromWifiInfo(Landroid/net/wifi/WifiInfo;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    return v2

    .line 34
    :cond_2
    return v1
.end method

.method private isMultiBandApBssidPair(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x11

    .line 12
    .line 13
    if-ne v0, v1, :cond_5

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p0

    .line 23
    move v1, v0

    .line 24
    :goto_0
    const/4 v2, 0x6

    .line 25
    if-ge v0, v2, :cond_4

    .line 26
    .line 27
    mul-int/lit8 v2, v0, 0x3

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ne v3, v4, :cond_2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eq v3, v2, :cond_3

    .line 50
    .line 51
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    if-ne v1, v2, :cond_3

    .line 55
    .line 56
    return p0

    .line 57
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const/4 p1, 0x1

    .line 61
    if-ne v1, p1, :cond_5

    .line 62
    .line 63
    return p1

    .line 64
    :cond_5
    :goto_1
    return p0
.end method

.method private isMultiNetwork()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isLegacyMultiNetwork()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, -0x1

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 24
    .line 25
    if-eq v3, v5, :cond_3

    .line 26
    .line 27
    :cond_1
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 28
    .line 29
    if-nez v3, :cond_3

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v3, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    :goto_0
    move v3, v4

    .line 37
    :goto_1
    if-eqz v3, :cond_5

    .line 38
    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v7, "isMultiNetwork : "

    .line 42
    .line 43
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 47
    .line 48
    if-eqz v7, :cond_4

    .line 49
    .line 50
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 51
    .line 52
    if-ne v7, v5, :cond_4

    .line 53
    .line 54
    move v1, v4

    .line 55
    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, " || "

    .line 59
    .line 60
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 64
    .line 65
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 72
    .line 73
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return v3
.end method

.method private isMultiNetworkAvailableApp(IILjava/lang/String;)Z
    .locals 1

    .line 1
    const/16 v0, 0x3f2

    .line 2
    .line 3
    if-le p1, v0, :cond_3

    .line 4
    .line 5
    if-gt p2, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz p3, :cond_2

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_2
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method private isNoInternetAccessExpected(Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "SilentRoamingManager"

    .line 10
    .line 11
    const-string p1, "isNoInternetAccessExpected: network is null"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isNoInternetAccessExpected()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method private isSecurityMatch(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Landroid/net/wifi/SecurityParams;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ne v2, v1, :cond_1

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method private isSilentRoamingEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "sem_wifi_switch_to_better_wifi_enabled"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-ne p0, v2, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private isSupportSilentRoaming()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportSilentRoaming()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private isUserChoiceRssiCloseToOrGreaterThanExpectedValue(II)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getEstimateRssiErrorMargin()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sub-int/2addr p2, p0

    .line 12
    if-lt p1, p2, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private synthetic lambda$getAllScanOptimizationNetworks$6(Ljava/util/List;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 1
    iget-boolean v0, p3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 11
    .line 12
    iget-boolean v2, p3, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    .line 13
    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isCarrierNetworkOffloadEnabled(IZ)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p3, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->isNoInternetAccessExpected()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->semIsNoInternetAccessExpected(Landroid/net/wifi/WifiConfiguration;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_3

    .line 67
    .line 68
    iget-object p0, p3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 p0, 0x0

    .line 78
    return p0

    .line 79
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 80
    return p0
.end method

.method private static synthetic lambda$intersectMlCandidatesWithStrBands$7(Ljava/util/List;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->toBand(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
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
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setWifiState(Z)V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setWifiState(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private static synthetic lambda$updatePnoNetworkList$1(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$updatePnoNetworkList$2(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$updatePnoNetworkList$3(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$updatePnoNetworkList$4(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->numRebootsSinceLastUse:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic lambda$updatePnoNetworkList$5(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 2
    .line 3
    neg-int p0, p0

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SilentRoamingManager"

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLocalLog:Landroid/util/LocalLog;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_5

    .line 27
    .line 28
    const-string v0, "stopPnoScan"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->createStringBuilderWithLogTime()Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "Log="

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p1

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    sget v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->MAX_WIFI_DIAGNOSTIC_LIST_SIZE:I

    .line 60
    .line 61
    if-lt v1, v2, :cond_4

    .line 62
    .line 63
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    monitor-exit p1

    .line 82
    return-void

    .line 83
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0

    .line 85
    :cond_5
    :goto_2
    return-void
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " what="

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget p2, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getWhatToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, " "

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "SilentRoamingManager"

    .line 48
    .line 49
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private static mcsMapToStreamMap(II)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    shr-int/2addr p0, p1

    .line 6
    and-int/lit8 p0, p0, 0x3

    .line 7
    .line 8
    return p0
.end method

.method private notifyConnectingState()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private overrideCandidateWithUserConnectChoice(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-object v1, p2

    .line 18
    move-object v2, v1

    .line 19
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_7

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceRssi()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    move-object v4, p1

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCandidates:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_1

    .line 108
    .line 109
    move-object v4, v5

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const/4 v4, 0x0

    .line 112
    :goto_1
    if-eqz v4, :cond_6

    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v0, "user connected network is a loop, use candidate:"

    .line 131
    .line 132
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string v0, "SilentRoamingManager"

    .line 147
    .line 148
    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isNoInternetAccessExpected()Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-nez v5, :cond_4

    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->semIsNoInternetAccessExpected()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-nez v5, :cond_4

    .line 183
    .line 184
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_4

    .line 193
    .line 194
    const/4 v5, 0x1

    .line 195
    goto :goto_2

    .line 196
    :cond_4
    const/4 v5, 0x0

    .line 197
    :goto_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_5

    .line 202
    .line 203
    if-nez v5, :cond_5

    .line 204
    .line 205
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isUserChoiceRssiCloseToOrGreaterThanExpectedValue(II)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_5

    .line 214
    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v3, "Candidate updated: "

    .line 218
    .line 219
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 223
    .line 224
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v3, " - "

    .line 236
    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v3, " [ConnectChoiceRssi:"

    .line 248
    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v3, "]"

    .line 253
    .line 254
    invoke-static {v3, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    move-object v2, v4

    .line 262
    :cond_5
    move-object v1, v4

    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_6
    const-string p1, "Connect choice: "

    .line 266
    .line 267
    const-string v0, " has no corresponding saved config."

    .line 268
    .line 269
    invoke-static {p1, v3, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_7
    :goto_3
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-nez p1, :cond_8

    .line 289
    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string p2, "After user selection adjustment, the final candidate is:"

    .line 293
    .line 294
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 298
    .line 299
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_8
    return-object v2
.end method

.method private static parseMaxNumberSpatialStreamsFromMcsMap(I)I
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    :goto_0
    const/4 v1, 0x1

    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mcsMapToStreamMap(II)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v1
.end method

.method private pnoScanFailure(I)V
    .locals 4

    .line 1
    const-string v0, "pnoScanFailure - reason ="

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, -0x3

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "external PnoScanRequest already running - "

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "||"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mEnabledState:Lcom/android/internal/util/State;

    .line 36
    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v2, v1

    .line 42
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoScanRestartCount:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mEnabledState:Lcom/android/internal/util/State;

    .line 69
    .line 70
    if-ne p1, v0, :cond_2

    .line 71
    .line 72
    iget p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoScanRestartCount:I

    .line 73
    .line 74
    add-int/lit8 v0, p1, 0x1

    .line 75
    .line 76
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoScanRestartCount:I

    .line 77
    .line 78
    const/4 v0, 0x5

    .line 79
    if-ge p1, v0, :cond_1

    .line 80
    .line 81
    const/16 p1, 0x12

    .line 82
    .line 83
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-wide/16 v2, 0x7d0

    .line 88
    .line 89
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const-string p1, "Failed to successfully start PNO scan for 5 times"

    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 99
    .line 100
    return-void
.end method

.method private registerForSettingsChanges()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$6;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 17
    .line 18
    const-string v2, "sem_wifi_switch_to_better_wifi_enabled"

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, p0, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->isAvailableScanner()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "SilentRoamingManager"

    .line 10
    .line 11
    const-string v0, "Failed to retrieve WifiScanner"

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->registerListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "WifiScanner.ScanListener registered"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 38
    .line 39
    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda7;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiEnabled:Z

    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 56
    .line 57
    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda8;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isConnected()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsWifiConnected:Z

    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 74
    .line 75
    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 84
    .line 85
    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$4;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$4;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$5;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$5;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 98
    .line 99
    .line 100
    new-instance p0, Landroid/content/IntentFilter;

    .line 101
    .line 102
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 103
    .line 104
    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private reportToIssueDetector()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWaitingForRoamResult:Z

    .line 7
    .line 8
    const-string v2, "state"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 14
    .line 15
    const/16 v1, 0x6b

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private setLastSelectedNetwork(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Setting last selected network to "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 27
    .line 28
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkEnabled:Z

    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    .line 40
    .line 41
    return-void
.end method

.method private setWifiNetworkState(ZLjava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsWifiConnected:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setAcceptUnvalidated(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsWifiConnected:Z

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "setWifiNetworkState: isConnected= "

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " configKey="

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "SilentRoamingManager"

    .line 38
    .line 39
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_1
    if-nez p1, :cond_2

    .line 43
    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    :cond_2
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastConnectedConfigKey:Ljava/lang/String;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateCurrentBssidScanResult()V

    .line 61
    .line 62
    .line 63
    :cond_3
    if-eqz p1, :cond_4

    .line 64
    .line 65
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastConnectedTime:J

    .line 72
    .line 73
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastConnectedConfigKey:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v0, 0x6

    .line 76
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private setWifiState(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiEnabled:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

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
    const-string v1, "SilentRoamingManager"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x5

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 20
    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->clearLastSelectedNetwork()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private startSilentRoaming(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->startSilentRoaming(ZLandroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private startSilentRoaming(ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startSilentRoaming: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWaitingForRoamResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " >>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAllowFrameworkRoamingWhenScreenOn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoamingWhenScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mForceConnectToTargetNetwork= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mForceConnectToTargetNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilentRoamingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWaitingForRoamResult:Z

    if-eq v0, p1, :cond_2

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWaitingForRoamResult:Z

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->reportToIssueDetector()V

    .line 6
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mForceConnectToTargetNetwork:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[mForceConnectToTargetNetwork] WifiManager.connect call for config = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->makeWifiManagerWithAttributionSourceUsingWifiUid()Landroid/net/wifi/WifiManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, p2, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    .line 11
    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoamingWhenScreenOn:Z

    if-nez p2, :cond_1

    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setSilentRoamingEnabled(Z)V

    return-void

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setSilentRoamingEnabledWhenScreenOn(Z)V

    :cond_2
    return-void
.end method

.method private stopPnoScan()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "stopPnoScan enter : mIsPnoScanning= "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mScreenOn="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->stopPnoScan()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 42
    .line 43
    return-void
.end method

.method private updateCurrentBssidScanResult()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_a

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_a

    .line 26
    .line 27
    const-string v1, "00:00:00:00:00:00"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestPartialScanResults:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/2addr v2, v3

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_9

    .line 71
    .line 72
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 89
    .line 90
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    new-instance v0, Landroid/net/wifi/ScanResult;

    .line 99
    .line 100
    invoke-direct {v0, v3}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 104
    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    const-string v0, "SilentRoamingManager"

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v3, "mCurrentBssidScanResult updated: "

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v3, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :cond_5
    monitor-exit v1

    .line 144
    return-void

    .line 145
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestPartialScanResults:Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_9

    .line 156
    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 162
    .line 163
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_7

    .line 170
    .line 171
    new-instance v0, Landroid/net/wifi/ScanResult;

    .line 172
    .line 173
    invoke-direct {v0, v3}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 177
    .line 178
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 179
    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    const-string v0, "SilentRoamingManager"

    .line 183
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v3, "mCurrentBssidScanResult updated: "

    .line 190
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 195
    .line 196
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {v3, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_8
    monitor-exit v1

    .line 217
    return-void

    .line 218
    :cond_9
    monitor-exit v1

    .line 219
    return-void

    .line 220
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    throw p0

    .line 222
    :cond_a
    :goto_1
    return-void

    .line 223
    :cond_b
    :goto_2
    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCurrentBssidScanResult:Landroid/net/wifi/ScanResult;

    .line 225
    .line 226
    return-void
.end method

.method private updateFullScanResults([Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateCurrentBssidScanResult()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private updateLastSelectedNetwork()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 45
    .line 46
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Updating last selected network to "

    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, " "

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 78
    .line 79
    if-eq v0, v1, :cond_5

    .line 80
    .line 81
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->clearLastSelectedNetwork()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkEnabled:Z

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkEnabled:Z

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/4 v2, 0x7

    .line 120
    if-ne v1, v2, :cond_4

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->clearLastSelectedNetwork()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 127
    .line 128
    if-nez v1, :cond_5

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 135
    .line 136
    :cond_5
    return-void
.end method

.method private updateLinkLayerStateForCurrentNetwork()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getWifiLinkLayerStats()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "SilentRoamingManager"

    .line 24
    .line 25
    const-string v0, "SignalPollResult is null"

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private updatePartialScanResults([Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestPartialScanResults:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestPartialScanResults:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateCurrentBssidScanResult()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private updatePnoMinRssiLevels()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x2

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/16 v6, -0x4a

    .line 31
    .line 32
    if-ge v5, v6, :cond_1

    .line 33
    .line 34
    move v1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v5, -0x3f

    .line 41
    .line 42
    if-ge v1, v5, :cond_2

    .line 43
    .line 44
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v1, v4

    .line 47
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoMinRssiLevels:[I

    .line 48
    .line 49
    sget-object v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->pnoRssi2:[I

    .line 50
    .line 51
    aget v5, v5, v1

    .line 52
    .line 53
    mul-int/lit8 v0, v0, 0xa

    .line 54
    .line 55
    add-int/2addr v5, v0

    .line 56
    aput v5, p0, v3

    .line 57
    .line 58
    sget-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->pnoRssi5:[I

    .line 59
    .line 60
    aget v3, v3, v1

    .line 61
    .line 62
    add-int/2addr v3, v0

    .line 63
    aput v3, p0, v2

    .line 64
    .line 65
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->pnoRssi6:[I

    .line 66
    .line 67
    aget v1, v2, v1

    .line 68
    .line 69
    add-int/2addr v1, v0

    .line 70
    aput v1, p0, v4

    .line 71
    .line 72
    return-void
.end method

.method private updatePnoScanParams()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePnoNetworkList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePnoMinRssiLevels()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private updatePredictedMultiLinkThroughputMbps(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mCandidates:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePredictedMultiLinkThroughputMbps(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Ljava/util/Map;)V

    return-void
.end method

.method private updatePredictedMultiLinkThroughputMbps(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDeviceSupportsMlo:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mMloLinkApAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->-$$Nest$fgetmConfig(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSupportedSimultaneousBandCombinations:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxMloStrLinkCount:I

    if-le v2, v3, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->intersectMlCandidatesWithStrBands(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v2, v3, :cond_6

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 16
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedMultiLinkThroughputMbps()I

    move-result v1

    if-le v4, v1, :cond_4

    .line 18
    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->setPredictedMultiLinkThroughputMbps(I)V

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method addPnoScanRequest()V
    .locals 3

    .line 1
    const-string v0, "startPnoScan enter : mIsPnoScanning= "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworksLock:Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ", mScreenOn="

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ", mConnectingWatchdogCount= "

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", pnoNetwork size= "

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const-string v0, "SilentRoamingManager"

    .line 62
    .line 63
    const-string v2, " pno scan already running, stop pno scan "

    .line 64
    .line 65
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->stopPnoScan()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    const-string v0, "PnoNetworks is empty, startPnoScan skip"

    .line 83
    .line 84
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsPnoScanning:Z

    .line 91
    .line 92
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanner:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoMinRssiLevels:[I

    .line 97
    .line 98
    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->startPnoScan(Ljava/util/List;[I)V

    .line 99
    .line 100
    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 103
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
.end method

.method public calculateLastSelectionWeight(Landroid/net/wifi/WifiConfiguration;Z)D
    .locals 7

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-wide v2

    .line 9
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    return-wide v2

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    .line 21
    .line 22
    sub-long/2addr v0, v4

    .line 23
    long-to-double v0, v0

    .line 24
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 29
    .line 30
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getLastMeteredSelectionMinutes()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    :goto_0
    int-to-long v5, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getLastUnmeteredSelectionMinutes()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 48
    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v6, "calculateLastSelectionWeight: config= "

    .line 54
    .line 55
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v6, ", isMetered= "

    .line 66
    .line 67
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p2, ", timeDifference="

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p2, ", SeenInLastQualifiedNetworkSelection="

    .line 82
    .line 83
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "SilentRoamingManager"

    .line 102
    .line 103
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_3
    long-to-double p0, v4

    .line 107
    cmpl-double p2, v0, p0

    .line 108
    .line 109
    if-ltz p2, :cond_4

    .line 110
    .line 111
    return-wide v2

    .line 112
    :cond_4
    div-double/2addr v0, p0

    .line 113
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 114
    .line 115
    sub-double v0, p0, v0

    .line 116
    .line 117
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 122
    .line 123
    .line 124
    move-result-wide p0

    .line 125
    return-wide p0
.end method

.method public checkAndStart()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getConnectedPnoScanSupport()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSupportConnectedPnoScan:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "connectivity"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->registerReceiver()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->queryWifiManagerForAsyncParameters()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5
    .line 6
    .line 7
    const-string v0, "Dump of SilentRoamingManager"

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "SilentRoamingManager - Log Begin ----"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSilentRoamingEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v1, "Off"

    .line 22
    .line 23
    const-string v2, "On"

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move-object v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v1

    .line 30
    :goto_0
    const-string v3, "Silent Roaming is "

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWaitingForRoamResult:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    move-object v1, v2

    .line 44
    :cond_1
    const-string v0, "mWaitingForRoamResult is "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    if-ne v0, v1, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "LastSelectedNetwork - nid: "

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", key: "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " at "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    .line 96
    .line 97
    sub-long/2addr v1, v3

    .line 98
    const-wide/16 v3, 0x3e8

    .line 99
    .line 100
    div-long/2addr v1, v3

    .line 101
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, " seconds ago"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v1, "mMaxPnoSsidPerScan : "

    .line 119
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    .line 124
    .line 125
    const-string v2, "AlternativeSilentRoaming: "

    .line 126
    .line 127
    invoke-static {v0, v1, p2, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAlternativeSilentRoamingReason:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v1, "mForceConnectToTargetNetwork: "

    .line 146
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mForceConnectToTargetNetwork:Z

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v1, "mRunSilentRoamAtGenericScanResults: "

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRunSilentRoamAtGenericScanResults:Z

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v1, "SemScoringParams: "

    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLocalLog:Landroid/util/LocalLog;

    .line 205
    .line 206
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string p0, "SilentRoamingManager - Log End ----"

    .line 210
    .line 211
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1

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
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->enableVerboseLogging(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->enableVerboseLogging(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public eventResultToString(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->INVALID:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 2
    .line 3
    const-string v0, "INVALID"

    .line 4
    .line 5
    if-ne p1, p0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 9
    .line 10
    if-ne p1, p0, :cond_1

    .line 11
    .line 12
    const-string p0, "TRIGGERED"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->SUCCESS_CHOICE:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 16
    .line 17
    if-ne p1, p0, :cond_2

    .line 18
    .line 19
    const-string p0, "SUCCESS_CHOICE"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    sget-object p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->SUCCESS_NOT_CHOICE:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 23
    .line 24
    if-ne p1, p0, :cond_3

    .line 25
    .line 26
    const-string p0, "SUCCESS_NOT_CHOICE"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    sget-object p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->FAILURE:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 30
    .line 31
    if-ne p1, p0, :cond_4

    .line 32
    .line 33
    const-string p0, "FAILURE"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    sget-object p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->ABORTED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 37
    .line 38
    if-ne p1, p0, :cond_5

    .line 39
    .line 40
    const-string p0, "ABORTED"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_5
    sget-object p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->NO_INTERNET:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 44
    .line 45
    if-ne p1, p0, :cond_6

    .line 46
    .line 47
    const-string p0, "NO_INTERNET"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_6
    return-object v0
.end method

.method public filterScanResults([Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuffer;

    .line 21
    .line 22
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v6, Ljava/lang/StringBuffer;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v7, Ljava/util/StringJoiner;

    .line 31
    .line 32
    const-string v8, " / "

    .line 33
    .line 34
    invoke-direct {v7, v8}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    new-instance v8, Ljava/util/StringJoiner;

    .line 38
    .line 39
    const-string v9, " / "

    .line 40
    .line 41
    invoke-direct {v8, v9}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    new-instance v9, Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v10, Landroid/util/ArraySet;

    .line 50
    .line 51
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v11, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 55
    .line 56
    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getBssidBlocklist()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    new-instance v12, Ljava/lang/StringBuffer;

    .line 61
    .line 62
    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    if-eqz v13, :cond_0

    .line 74
    .line 75
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    check-cast v13, Landroid/net/MacAddress;

    .line 80
    .line 81
    invoke-virtual {v13}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    const-string v13, " / "

    .line 89
    .line 90
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget-object v11, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 95
    .line 96
    if-eqz v11, :cond_3

    .line 97
    .line 98
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getMinimumRequiredWifiSecurityLevel()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    iget-object v15, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 103
    .line 104
    invoke-virtual {v15}, Landroid/app/admin/DevicePolicyManager;->getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;

    .line 105
    .line 106
    .line 107
    move-result-object v15

    .line 108
    if-eqz v15, :cond_2

    .line 109
    .line 110
    invoke-virtual {v15}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    .line 111
    .line 112
    .line 113
    move-result v16

    .line 114
    if-nez v16, :cond_1

    .line 115
    .line 116
    invoke-virtual {v15}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    :goto_1
    const/4 v15, 0x1

    .line 121
    goto :goto_3

    .line 122
    :cond_1
    invoke-virtual {v15}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    :goto_2
    const/4 v15, 0x0

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    const/4 v11, 0x0

    .line 130
    goto :goto_2

    .line 131
    :goto_3
    iget-object v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 132
    .line 133
    invoke-virtual {v14}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWepAllowed()Z

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    const/16 v17, 0x1

    .line 138
    .line 139
    iget-object v13, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 140
    .line 141
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getAutojoinDisallowedSecurityTypes()[I

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    move-object/from16 v18, v12

    .line 146
    .line 147
    move/from16 v20, v14

    .line 148
    .line 149
    const/4 v12, 0x0

    .line 150
    const/16 v19, 0x0

    .line 151
    .line 152
    :goto_4
    array-length v14, v13

    .line 153
    if-ge v12, v14, :cond_4

    .line 154
    .line 155
    aget v14, v13, v12

    .line 156
    .line 157
    shl-int v14, v17, v14

    .line 158
    .line 159
    add-int v19, v19, v14

    .line 160
    .line 161
    add-int/lit8 v12, v12, 0x1

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_4
    iget-object v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 165
    .line 166
    if-nez v12, :cond_5

    .line 167
    .line 168
    const-string v0, "SilentRoamingManager"

    .line 169
    .line 170
    const-string v1, "filterScanResults: WifiInfo is null. return empty List "

    .line 171
    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    return-object v2

    .line 176
    :cond_5
    iget-object v13, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 177
    .line 178
    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    invoke-virtual {v13, v12}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    iget-object v13, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworksLock:Ljava/lang/Object;

    .line 187
    .line 188
    monitor-enter v13

    .line 189
    :try_start_0
    array-length v14, v1

    .line 190
    const/4 v1, 0x0

    .line 191
    :goto_5
    if-ge v1, v14, :cond_1a

    .line 192
    .line 193
    move/from16 v21, v1

    .line 194
    .line 195
    aget-object v1, p1, v21

    .line 196
    .line 197
    move/from16 v22, v14

    .line 198
    .line 199
    iget-object v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mOptimizedWifiConfigs:Ljava/util/List;

    .line 200
    .line 201
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v23

    .line 209
    if-eqz v23, :cond_19

    .line 210
    .line 211
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v23

    .line 215
    move-object/from16 v24, v14

    .line 216
    .line 217
    move-object/from16 v14, v23

    .line 218
    .line 219
    check-cast v14, Landroid/net/wifi/WifiConfiguration;

    .line 220
    .line 221
    move/from16 v23, v15

    .line 222
    .line 223
    iget-object v15, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v15}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    move-object/from16 v25, v2

    .line 230
    .line 231
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v15, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_18

    .line 238
    .line 239
    invoke-direct {v0, v14, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isSecurityMatch(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_18

    .line 244
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    iget-object v15, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v15, ":"

    .line 256
    .line 257
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-object v15, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v15

    .line 273
    move-object/from16 v26, v8

    .line 274
    .line 275
    iget-object v8, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v15, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-eqz v8, :cond_6

    .line 282
    .line 283
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    .line 285
    .line 286
    const-string v2, " / "

    .line 287
    .line 288
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    .line 290
    .line 291
    :goto_7
    move/from16 v15, v23

    .line 292
    .line 293
    move-object/from16 v14, v24

    .line 294
    .line 295
    move-object/from16 v2, v25

    .line 296
    .line 297
    move-object/from16 v8, v26

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :catchall_0
    move-exception v0

    .line 301
    goto/16 :goto_11

    .line 302
    .line 303
    :cond_6
    if-eqz v12, :cond_7

    .line 304
    .line 305
    iget v8, v12, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 306
    .line 307
    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 308
    .line 309
    if-ne v8, v14, :cond_7

    .line 310
    .line 311
    iget-boolean v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDeviceSupportsMlo:Z

    .line 312
    .line 313
    if-nez v8, :cond_7

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_7
    iget v8, v1, Landroid/net/wifi/ScanResult;->level:I

    .line 317
    .line 318
    const/16 v14, -0x3f

    .line 319
    .line 320
    if-ge v8, v14, :cond_b

    .line 321
    .line 322
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_8

    .line 330
    .line 331
    const-string v2, "(2.4GHz)"

    .line 332
    .line 333
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_8
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-eqz v2, :cond_9

    .line 342
    .line 343
    const-string v2, "(5GHz)"

    .line 344
    .line 345
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_9
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is6GHz()Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-eqz v2, :cond_a

    .line 354
    .line 355
    const-string v2, "(6GHz)"

    .line 356
    .line 357
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    .line 359
    .line 360
    :cond_a
    :goto_8
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    .line 361
    .line 362
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 363
    .line 364
    .line 365
    const-string v2, " / "

    .line 366
    .line 367
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_b
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->getMboAssociationDisallowedReasonCode(Landroid/net/wifi/ScanResult;)I

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    const/4 v14, -0x1

    .line 376
    if-eq v8, v14, :cond_c

    .line 377
    .line 378
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    .line 380
    .line 381
    const-string v2, " / "

    .line 382
    .line 383
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_c
    if-eqz v23, :cond_e

    .line 388
    .line 389
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    .line 394
    .line 395
    .line 396
    move-result v15

    .line 397
    if-nez v15, :cond_d

    .line 398
    .line 399
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v15

    .line 403
    if-nez v15, :cond_d

    .line 404
    .line 405
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    .line 407
    .line 408
    const-string v2, " / "

    .line 409
    .line 410
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_d
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    .line 415
    .line 416
    .line 417
    move-result v15

    .line 418
    if-nez v15, :cond_e

    .line 419
    .line 420
    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    if-eqz v8, :cond_e

    .line 425
    .line 426
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    .line 428
    .line 429
    const-string v2, " / "

    .line 430
    .line 431
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    .line 433
    .line 434
    goto/16 :goto_7

    .line 435
    .line 436
    :cond_e
    if-eqz v11, :cond_12

    .line 437
    .line 438
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getSecurityTypes()[I

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    array-length v15, v8

    .line 443
    const/4 v14, 0x0

    .line 444
    :goto_9
    if-ge v14, v15, :cond_11

    .line 445
    .line 446
    aget v28, v8, v14

    .line 447
    .line 448
    move-object/from16 v29, v8

    .line 449
    .line 450
    invoke-static/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->convertSecurityTypeToDpmWifiSecurity(I)I

    .line 451
    .line 452
    .line 453
    move-result v8

    .line 454
    move-object/from16 v28, v9

    .line 455
    .line 456
    const/4 v9, -0x1

    .line 457
    if-ne v8, v9, :cond_f

    .line 458
    .line 459
    goto :goto_a

    .line 460
    :cond_f
    if-gt v11, v8, :cond_10

    .line 461
    .line 462
    goto :goto_c

    .line 463
    :cond_10
    :goto_a
    add-int/lit8 v14, v14, 0x1

    .line 464
    .line 465
    move-object/from16 v9, v28

    .line 466
    .line 467
    move-object/from16 v8, v29

    .line 468
    .line 469
    goto :goto_9

    .line 470
    :cond_11
    move-object/from16 v28, v9

    .line 471
    .line 472
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    .line 474
    .line 475
    const-string v2, " / "

    .line 476
    .line 477
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    .line 479
    .line 480
    move/from16 v15, v23

    .line 481
    .line 482
    move-object/from16 v14, v24

    .line 483
    .line 484
    move-object/from16 v2, v25

    .line 485
    .line 486
    move-object/from16 v8, v26

    .line 487
    .line 488
    :goto_b
    move-object/from16 v9, v28

    .line 489
    .line 490
    goto/16 :goto_6

    .line 491
    .line 492
    :cond_12
    move-object/from16 v28, v9

    .line 493
    .line 494
    :goto_c
    if-nez v20, :cond_14

    .line 495
    .line 496
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getSecurityTypes()[I

    .line 497
    .line 498
    .line 499
    move-result-object v8

    .line 500
    array-length v9, v8

    .line 501
    const/4 v14, 0x0

    .line 502
    :goto_d
    if-ge v14, v9, :cond_14

    .line 503
    .line 504
    aget v15, v8, v14

    .line 505
    .line 506
    move-object/from16 v27, v8

    .line 507
    .line 508
    move/from16 v8, v17

    .line 509
    .line 510
    if-ne v15, v8, :cond_13

    .line 511
    .line 512
    invoke-virtual {v7, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 513
    .line 514
    .line 515
    move/from16 v15, v23

    .line 516
    .line 517
    move-object/from16 v14, v24

    .line 518
    .line 519
    move-object/from16 v2, v25

    .line 520
    .line 521
    move-object/from16 v8, v26

    .line 522
    .line 523
    move-object/from16 v9, v28

    .line 524
    .line 525
    const/16 v17, 0x1

    .line 526
    .line 527
    goto/16 :goto_6

    .line 528
    .line 529
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 530
    .line 531
    move-object/from16 v8, v27

    .line 532
    .line 533
    const/16 v17, 0x1

    .line 534
    .line 535
    goto :goto_d

    .line 536
    :cond_14
    if-eqz v19, :cond_17

    .line 537
    .line 538
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getSecurityTypes()[I

    .line 539
    .line 540
    .line 541
    move-result-object v8

    .line 542
    array-length v9, v8

    .line 543
    const/4 v14, 0x0

    .line 544
    :goto_e
    if-ge v14, v9, :cond_16

    .line 545
    .line 546
    aget v15, v8, v14

    .line 547
    .line 548
    const/16 v17, 0x1

    .line 549
    .line 550
    shl-int v15, v17, v15

    .line 551
    .line 552
    and-int v15, v15, v19

    .line 553
    .line 554
    if-nez v15, :cond_15

    .line 555
    .line 556
    move-object/from16 v2, v25

    .line 557
    .line 558
    move-object/from16 v8, v26

    .line 559
    .line 560
    goto :goto_f

    .line 561
    :cond_15
    add-int/lit8 v14, v14, 0x1

    .line 562
    .line 563
    goto :goto_e

    .line 564
    :cond_16
    move-object/from16 v8, v26

    .line 565
    .line 566
    const/16 v17, 0x1

    .line 567
    .line 568
    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 569
    .line 570
    .line 571
    move/from16 v15, v23

    .line 572
    .line 573
    move-object/from16 v14, v24

    .line 574
    .line 575
    move-object/from16 v2, v25

    .line 576
    .line 577
    goto :goto_b

    .line 578
    :cond_17
    const/16 v17, 0x1

    .line 579
    .line 580
    move-object/from16 v8, v26

    .line 581
    .line 582
    move-object/from16 v2, v25

    .line 583
    .line 584
    :goto_f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    goto :goto_10

    .line 588
    :cond_18
    move-object/from16 v28, v9

    .line 589
    .line 590
    move-object/from16 v2, v25

    .line 591
    .line 592
    move/from16 v15, v23

    .line 593
    .line 594
    move-object/from16 v14, v24

    .line 595
    .line 596
    goto :goto_b

    .line 597
    :cond_19
    move-object/from16 v28, v9

    .line 598
    .line 599
    move/from16 v23, v15

    .line 600
    .line 601
    :goto_10
    add-int/lit8 v1, v21, 0x1

    .line 602
    .line 603
    move/from16 v14, v22

    .line 604
    .line 605
    move/from16 v15, v23

    .line 606
    .line 607
    move-object/from16 v9, v28

    .line 608
    .line 609
    goto/16 :goto_5

    .line 610
    .line 611
    :cond_1a
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    if-eqz v1, :cond_1b

    .line 617
    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    const-string v9, "Networks filtered out due to blocklist: "

    .line 621
    .line 622
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    :cond_1b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    if-eqz v1, :cond_1c

    .line 640
    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    const-string v3, "Networks filtered out due to low signal strength: "

    .line 644
    .line 645
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    .line 659
    .line 660
    .line 661
    move-result v1

    .line 662
    if-eqz v1, :cond_1d

    .line 663
    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    const-string v3, "Networks filtered out due to mbo association disallowed indication: "

    .line 667
    .line 668
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    :cond_1d
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    if-eqz v1, :cond_1e

    .line 686
    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    .line 688
    .line 689
    const-string v3, "Networks filtered out due to admin restrictions: "

    .line 690
    .line 691
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    :cond_1e
    invoke-virtual {v7}, Ljava/util/StringJoiner;->length()I

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    if-eqz v1, :cond_1f

    .line 709
    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    .line 711
    .line 712
    const-string v3, "Networks filtered out due to deprecated security type: "

    .line 713
    .line 714
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    :cond_1f
    invoke-virtual {v8}, Ljava/util/StringJoiner;->length()I

    .line 728
    .line 729
    .line 730
    move-result v1

    .line 731
    if-eqz v1, :cond_20

    .line 732
    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    const-string v3, "Networks filtered out due to auto join restriction on the security type: "

    .line 736
    .line 737
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    :cond_20
    return-object v2

    .line 751
    :goto_11
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    throw v0
.end method

.method public getAffiliatedMloLinksFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDeviceSupportsMlo:Z

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getAffiliatedMloLinks()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/net/wifi/MloLink;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-object p0

    .line 64
    :cond_3
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    return-object p0
.end method

.method public getAffiliatedMloLinksFromWifiInfo(Landroid/net/wifi/WifiInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mDeviceSupportsMlo:Z

    .line 10
    .line 11
    if-eqz p0, :cond_4

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getAffiliatedMloLinks()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/net/wifi/MloLink;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    return-object p0

    .line 74
    :cond_4
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    return-object p0
.end method

.method getAllScanOptimizationNetworks(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getMultiBandApNetIds()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsWifiConnected:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "<unknown ssid>"

    .line 32
    .line 33
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v1, ""

    .line 45
    .line 46
    :goto_1
    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda9;

    .line 47
    .line 48
    invoke-direct {v2, p0, p1, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/util/List;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public getCandidateNetworkScores()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanResultsLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLatestFullScanResults:Ljava/util/List;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v3, v3, [Landroid/net/wifi/ScanResult;

    .line 13
    .line 14
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, [Landroid/net/wifi/ScanResult;

    .line 19
    .line 20
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getCandidateScoreOnly([Landroid/net/wifi/ScanResult;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const-string p0, ""

    .line 27
    .line 28
    monitor-exit v1

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 57
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v5, "NetworkId="

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getNetworkConfigId()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v5, "\n"

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v5, "mCalculatedThroughputScore="

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v5, "\n"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getDebugLogMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v3, "\n"

    .line 129
    .line 130
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    monitor-exit v1

    .line 146
    return-object p0

    .line 147
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p0
.end method

.method public getLastSelectedNetworkIdForSilentRoaming()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 2
    .line 3
    return p0
.end method

.method public getLastSelectedTimeStampForSilentRoaming()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    .line 2
    .line 3
    return-wide v0
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
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->smToString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, " screen=off"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, " screen=on"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :goto_0
    iget p0, p1, Landroid/os/Message;->what:I

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eq p0, v1, :cond_4

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    const-string v3, " "

    .line 38
    .line 39
    if-eq p0, v1, :cond_2

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    if-eq p0, v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget p0, p1, Landroid/os/Message;->arg2:I

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    .line 64
    if-eqz p0, :cond_6

    .line 65
    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, " Received "

    .line 69
    .line 70
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, [Landroid/net/wifi/ScanResult;

    .line 76
    .line 77
    array-length p1, p1

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, " pno scan results"

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 98
    .line 99
    if-ne p0, v2, :cond_3

    .line 100
    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, "connected "

    .line 104
    .line 105
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const-string p0, "disconnected"

    .line 119
    .line 120
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_4
    const-string p0, " wifi "

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 130
    .line 131
    if-ne p0, v2, :cond_5

    .line 132
    .line 133
    const-string p0, "enabled"

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    const-string p0, "disabled"

    .line 137
    .line 138
    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0
.end method

.method public getRawData(I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-gtz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "CurrentState:"

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, "\n"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/lit8 v2, v2, -0x1

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_0
    if-ltz v2, :cond_2

    .line 47
    .line 48
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLogs:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, "\n"

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    if-lt v3, p1, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p0
.end method

.method public getSilentRoamingW24hStats()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;
    .locals 1

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;)V

    .line 6
    .line 7
    .line 8
    return-object p0
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

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mGetWhatToString:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public getWifiLinkLayerStats()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRoamingWifiInfo:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v6, v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->updatePacketRates(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getTxPackets(Ljava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIfaceName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getRxPackets(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mRoamingWifiInfo:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    .line 40
    .line 41
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->updatePacketRates(JJJ)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public hasInternetAccess(Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "SilentRoamingManager"

    .line 10
    .line 11
    const-string p1, "hasInternetAccess: network is null"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    xor-int/lit8 p0, p0, 0x1

    .line 23
    .line 24
    return p0
.end method

.method public isEverMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    :cond_0
    invoke-static {p1, p2}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x1

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-static {p3}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForChargablePublicNetwork(Landroid/net/wifi/ScanResult;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    move p2, v0

    .line 26
    :cond_1
    iget p3, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 27
    .line 28
    const-string v1, "KnownMeteredNetworkIds = "

    .line 29
    .line 30
    if-eqz p3, :cond_4

    .line 31
    .line 32
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    .line 33
    .line 34
    iget p3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 35
    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 64
    .line 65
    if-ne p0, v0, :cond_3

    .line 66
    .line 67
    return v0

    .line 68
    :cond_3
    const/4 p0, 0x0

    .line 69
    return p0

    .line 70
    :cond_4
    iget-object p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    .line 71
    .line 72
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-eqz p3, :cond_5

    .line 83
    .line 84
    return v0

    .line 85
    :cond_5
    if-eqz p2, :cond_6

    .line 86
    .line 87
    iget-object p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    .line 88
    .line 89
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mKnownMeteredNetworkIds:Landroid/util/ArraySet;

    .line 104
    .line 105
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    return p2
.end method

.method makeWifiManagerWithAttributionSourceUsingWifiUid()Landroid/net/wifi/WifiManager;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "makeWifiManagerWithAttributionSourceUsingWifiUid : uid = "

    .line 10
    .line 11
    const-string v2, ", packageName = com.samsung.android.wifi.silentroaming, OpPackageName = "

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "SilentRoamingManager"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v1, Landroid/content/AttributionSource$Builder;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const-string v0, "android"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "ATTRIBUTION_TAG_DISALLOW_CONNECT_CHOICE"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/AttributionSource$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const-class v2, Landroid/permission/PermissionManager;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/permission/PermissionManager;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    new-instance v1, Landroid/content/ContextParams$Builder;

    .line 73
    .line 74
    invoke-direct {v1}, Landroid/content/ContextParams$Builder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/content/ContextParams$Builder;->setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/ContextParams$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 96
    .line 97
    return-object p0
.end method

.method public notifyConnect(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setLastSelectedNetwork(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->reportUserManualConnect(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->reset()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateThroughputParamsFromIes(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getMaxNumberSpatialStreams()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    iget v0, p2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getUtilizationRatio(I)I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget v4, p2, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 32
    .line 33
    iget v5, p2, Landroid/net/wifi/ScanResult;->level:I

    .line 34
    .line 35
    iget v6, p2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 38
    .line 39
    iget v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    .line 40
    .line 41
    iget-boolean v10, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsBluetoothConnected:Z

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getDisabledSubchannelBitmap()[B

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    move-object v2, p1

    .line 48
    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ[B)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "predictThroughput: "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, "/"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 74
    .line 75
    iget-object v2, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " : stationCount= "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 90
    .line 91
    iget v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->stationCount:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", channelUtilization= "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 102
    .line 103
    iget v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", capacity= "

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 114
    .line 115
    iget v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->capacity:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", wifiStandardAp= "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", channelWidth= "

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget v1, p2, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ", level= "

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget v1, p2, Landroid/net/wifi/ScanResult;->level:I

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", frequency= "

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget p2, p2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 158
    .line 159
    const-string v1, ", maxNumberSpatialStreams= "

    .line 160
    .line 161
    const-string v2, ", channelUtilizationLinkLayerStats= "

    .line 162
    .line 163
    invoke-static {v0, p2, v1, v7, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string p2, ", mIsBluetoothConnected = "

    .line 170
    .line 171
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsBluetoothConnected:Z

    .line 175
    .line 176
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p2, ", DisabledSubchannelBitmap = "

    .line 180
    .line 181
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getDisabledSubchannelBitmap()[B

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p0, " >>> "

    .line 194
    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p0, " Mbps"

    .line 202
    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    const-string p2, "SilentRoamingManager"

    .line 211
    .line 212
    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    :cond_0
    return p1
.end method

.method public queryWifiManagerForAsyncParameters()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->queryAutojoinGlobal()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->queryBssidBlocklist()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->queryMaxMloStrLinkCount()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->queryMaxMloAssociationLinkCount()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->querySupportedSimultaneousBandCombinations()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->queryWepAllowed()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->queryAutoJoinDisallowedSecurityTypes()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public resetSilentRoamingW24hStats()V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public semIsNoInternetAccessExpected(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public setAcceptUnvalidated(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "setAcceptUnvalidated - "

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAcceptUnvalidated:Z

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public setLastSelectedNetworkIdForSilentRoaming(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 24
    .line 25
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkId:I

    .line 26
    .line 27
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedNetworkKey:Ljava/lang/String;

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public setLastSelectedTimeStampForSilentRoaming()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSelectedTimeStamp:J

    .line 8
    .line 9
    return-void
.end method

.method public setScreenState(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "setScreenState: Screen= "

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "SilentRoamingManager"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamFrom:I

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamTo:I

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->checkSilentRoamingDisabledNetworks()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 31
    .line 32
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    sget-object v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 37
    .line 38
    iget v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchAbortedCount:I

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    iput v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchAbortedCount:I

    .line 43
    .line 44
    sget-object v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->ABORTED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 45
    .line 46
    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->reportEventResult()V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 64
    .line 65
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mLastSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->initialize()V

    .line 73
    .line 74
    .line 75
    :cond_1
    const/4 v0, 0x0

    .line 76
    const/4 v1, 0x7

    .line 77
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public setTestSettings(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string v0, "screen_on"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move v4, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v4, v2

    .line 17
    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoamingWhenScreenOn:Z

    .line 18
    .line 19
    if-ne v0, v3, :cond_1

    .line 20
    .line 21
    move v4, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v4, v2

    .line 24
    :goto_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setScreenState(Z)V

    .line 25
    .line 26
    .line 27
    :cond_2
    const-string v4, "use_alternative_silent_roaming_on"

    .line 28
    .line 29
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eq p1, v1, :cond_4

    .line 34
    .line 35
    if-eq p1, v3, :cond_3

    .line 36
    .line 37
    move v2, v3

    .line 38
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSupportConnectedPnoScan:Z

    .line 39
    .line 40
    :cond_4
    const-string v1, "setTestSettings: isScreenOn ="

    .line 41
    .line 42
    const-string v2, ", mScreenOn ="

    .line 43
    .line 44
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScreenOn:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", isAlternativeSilentRoamingOn = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ", mSupportConnectedPnoScan = "

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSupportConnectedPnoScan:Z

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, ", mAllowFrameworkRoamingWhenScreenOn = "

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mAllowFrameworkRoamingWhenScreenOn:Z

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p1, "SilentRoamingManager"

    .line 86
    .line 87
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method smToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
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
    :pswitch_1
    const-string p0, "CMD_CHECK_INTERNET_VALIDITY"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_2
    const-string p0, "CMD_CONFIGURED_NETWORKS_CHANGED"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_3
    const-string p0, "CMD_GET_AUTOJOIN_VALUE_IN_ENABLED"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_4
    const-string p0, "CMD_GET_AUTOJOIN_VALUE_IN_DEFAULT"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_5
    const-string p0, "CMD_FULL_SCAN_FAILURE"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_6
    const-string p0, "CMD_PARTIAL_SCAN_FAILURE"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_7
    const-string p0, "CMD_FULL_SCAN_RESULTS_REPORTED"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_8
    const-string p0, "CMD_PARTIAL_SCAN_RESULTS_REPORTED"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_9
    const-string p0, "CMD_PNO_NETWORK_FOUND"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_a
    const-string p0, "CMD_NETWORK_STATE_CHANGED"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_b
    const-string p0, "CMD_WIFI_STATE_CHANGED"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_c
    const-string p0, "CMD_TRY_TO_CONNECT"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_d
    const-string p0, "CMD_CONNECTING_WATCHDOG_TIMER"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_e
    const-string p0, "CMD_UPDATE_PNO_PARAM"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_f
    const-string p0, "CMD_STOP_PNO_SCAN"

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_10
    const-string p0, "CMD_INITIALIZE"

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateBssLoadFromIe(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 4

    .line 1
    const-string v0, "SilentRoamingManager"

    .line 2
    .line 3
    const-string v1, "BSS Load element length is not 5: "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    const/4 v3, 0x5

    .line 9
    if-eq v2, v3, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 17
    .line 18
    array-length p1, p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 31
    .line 32
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const v3, 0xffff

    .line 49
    .line 50
    .line 51
    and-int/2addr v2, v3

    .line 52
    iput v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->stationCount:I

    .line 53
    .line 54
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    and-int/lit16 v2, v2, 0xff

    .line 61
    .line 62
    iput v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    and-int/2addr p1, v3

    .line 71
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->capacity:I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    return-void

    .line 74
    :catch_0
    const-string p0, "BufferUnderflowException EID_BSS_LOAD"

    .line 75
    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method updateExtEhtOperation(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const-string v1, "SilentRoamingManager"

    .line 5
    .line 6
    const/4 v2, 0x5

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 10
    .line 11
    if-eqz p0, :cond_6

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Invalid EHT_OPERATION IE len: "

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 21
    .line 22
    array-length p1, p1

    .line 23
    invoke-static {v1, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aget-byte v0, v0, v3

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    and-int/2addr v0, v4

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    move v0, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v0, v3

    .line 39
    :goto_0
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 40
    .line 41
    aget-byte v5, v5, v3

    .line 42
    .line 43
    const/4 v6, 0x2

    .line 44
    and-int/2addr v5, v6

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v4, v3

    .line 49
    :goto_1
    if-eqz v0, :cond_4

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    move v0, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const/4 v0, 0x3

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move v0, v3

    .line 58
    :goto_2
    add-int/2addr v2, v0

    .line 59
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 60
    .line 61
    array-length v0, v0

    .line 62
    if-ge v0, v2, :cond_5

    .line 63
    .line 64
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mVerboseLoggingEnabled:Z

    .line 65
    .line 66
    if-eqz p0, :cond_6

    .line 67
    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v0, "Invalid EHT_OPERATION info len: "

    .line 71
    .line 72
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 76
    .line 77
    array-length p1, p1

    .line 78
    invoke-static {v1, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    if-eqz v4, :cond_6

    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 85
    .line 86
    new-array v1, v6, [B

    .line 87
    .line 88
    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->mDisabledSubchannelBitmap:[B

    .line 89
    .line 90
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->mDisabledSubchannelBitmap:[B

    .line 95
    .line 96
    const/16 v0, 0x8

    .line 97
    .line 98
    invoke-static {p1, v0, p0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    .line 100
    .line 101
    :cond_6
    return-void
.end method

.method updateMaxNumberSpatialStreamsFromHeCap(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    const/16 v1, 0x15

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Invalid HE_CAPABILITIES len: "

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 22
    .line 23
    array-length p1, p1

    .line 24
    const-string v0, "SilentRoamingManager"

    .line 25
    .line 26
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 31
    .line 32
    const/16 v1, 0x12

    .line 33
    .line 34
    aget-byte v0, v0, v1

    .line 35
    .line 36
    and-int/lit16 v0, v0, 0xff

    .line 37
    .line 38
    shl-int/lit8 v0, v0, 0x8

    .line 39
    .line 40
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 41
    .line 42
    const/16 v1, 0x11

    .line 43
    .line 44
    aget-byte p1, p1, v1

    .line 45
    .line 46
    and-int/lit16 p1, p1, 0xff

    .line 47
    .line 48
    add-int/2addr v0, p1

    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method updateMaxNumberSpatialStreamsFromHtCap(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "Invalid HtCapabilities len: "

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 16
    .line 17
    array-length p1, p1

    .line 18
    const-string v0, "SilentRoamingManager"

    .line 19
    .line 20
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    aget-byte v0, v0, v1

    .line 28
    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    aget-byte v2, v2, v3

    .line 35
    .line 36
    and-int/lit16 v2, v2, 0xff

    .line 37
    .line 38
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 39
    .line 40
    const/4 v3, 0x6

    .line 41
    aget-byte p1, p1, v3

    .line 42
    .line 43
    and-int/lit16 p1, p1, 0xff

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 46
    .line 47
    if-lez p1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-lez v2, :cond_2

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    if-lez v0, :cond_3

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v1, 0x1

    .line 59
    :goto_0
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    .line 60
    .line 61
    return-void
.end method

.method updateMaxNumberSpatialStreamsFromVhtCap(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/16 v1, 0xc

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "Invalid VHT_CAPABILITIES len: "

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 16
    .line 17
    array-length p1, p1

    .line 18
    const-string v0, "SilentRoamingManager"

    .line 19
    .line 20
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    aget-byte v0, v0, v1

    .line 28
    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x8

    .line 32
    .line 33
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    aget-byte p1, p1, v1

    .line 37
    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    add-int/2addr v0, p1

    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 48
    .line 49
    return-void
.end method

.method public updatePnoNetworkList()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworksLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mConnectingWatchdogCount:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAllScanOptimizationNetworks(Z)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mOptimizedWifiConfigs:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v1, "PnoNetwork List empty"

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_1
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    .line 40
    .line 41
    if-gez v1, :cond_2

    .line 42
    .line 43
    const-string v1, "Invalid mMaxPnoSsidPerScan value"

    .line 44
    .line 45
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mOptimizedWifiConfigs:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-direct {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-instance v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    invoke-direct {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    new-instance v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;

    .line 77
    .line 78
    const/4 v5, 0x2

    .line 79
    invoke-direct {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;

    .line 87
    .line 88
    const/4 v5, 0x3

    .line 89
    invoke-direct {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    new-instance v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;

    .line 97
    .line 98
    const/4 v5, 0x4

    .line 99
    invoke-direct {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    .line 111
    .line 112
    int-to-long v3, v3

    .line 113
    const-wide/16 v5, 0x2

    .line 114
    .line 115
    mul-long/2addr v3, v5

    .line 116
    invoke-interface {v1, v3, v4}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Ljava/util/List;

    .line 129
    .line 130
    iput-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoWificonfigs:Ljava/util/List;

    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v3, "updatePnoNetworkList SSIDs { "

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    new-instance v3, Ljava/util/HashSet;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v4, Ljava/util/HashSet;

    .line 148
    .line 149
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoWificonfigs:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_9

    .line 163
    .line 164
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 169
    .line 170
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_6

    .line 177
    .line 178
    new-instance v7, Ljava/util/HashSet;

    .line 179
    .line 180
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 181
    .line 182
    .line 183
    iget-object v8, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 184
    .line 185
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v8, v6}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults(Ljava/lang/String;)Ljava/util/Set;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    iget-object v8, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 194
    .line 195
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    check-cast v8, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 200
    .line 201
    iget-object v8, v8, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    .line 202
    .line 203
    array-length v9, v8

    .line 204
    move v10, v2

    .line 205
    :goto_2
    if-ge v10, v9, :cond_4

    .line 206
    .line 207
    aget v11, v8, v10

    .line 208
    .line 209
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    add-int/lit8 v10, v10, 0x1

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_4
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_5

    .line 228
    .line 229
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 234
    .line 235
    iget v9, v8, Landroid/net/wifi/ScanResult;->frequency:I

    .line 236
    .line 237
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    iget v8, v8, Landroid/net/wifi/ScanResult;->frequency:I

    .line 245
    .line 246
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 255
    .line 256
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    check-cast v6, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 261
    .line 262
    invoke-interface {v7}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    new-instance v8, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$$ExternalSyntheticLambda0;

    .line 267
    .line 268
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    iput-object v7, v6, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_6
    invoke-static {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->createPnoNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    new-instance v8, Ljava/util/HashSet;

    .line 287
    .line 288
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 289
    .line 290
    .line 291
    iget-object v9, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 292
    .line 293
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    invoke-virtual {v9, v10}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults(Ljava/lang/String;)Ljava/util/Set;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    if-eqz v10, :cond_7

    .line 310
    .line 311
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 316
    .line 317
    iget v11, v10, Landroid/net/wifi/ScanResult;->frequency:I

    .line 318
    .line 319
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v11

    .line 323
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    iget v10, v10, Landroid/net/wifi/ScanResult;->frequency:I

    .line 327
    .line 328
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_7
    invoke-interface {v8}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    new-instance v9, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$$ExternalSyntheticLambda0;

    .line 341
    .line 342
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    iput-object v8, v7, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    .line 354
    .line 355
    iget-object v8, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 356
    .line 357
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    new-instance v7, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v8, ", "

    .line 376
    .line 377
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    iget-boolean v7, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 388
    .line 389
    if-eqz v7, :cond_8

    .line 390
    .line 391
    iget-object v7, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mHiddenList:Ljava/util/List;

    .line 392
    .line 393
    new-instance v8, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 394
    .line 395
    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 396
    .line 397
    invoke-direct {v8, v6}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoNetworks:Ljava/util/List;

    .line 404
    .line 405
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    iget v7, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    .line 410
    .line 411
    if-lt v6, v7, :cond_3

    .line 412
    .line 413
    const-string v3, "SilentRoamingManager"

    .line 414
    .line 415
    new-instance v5, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    const-string v6, "Limited PNO SSIDs as "

    .line 421
    .line 422
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    iget v6, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mMaxPnoSsidPerScan:I

    .line 426
    .line 427
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    :cond_9
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSupportConnectedPnoScan:Z

    .line 438
    .line 439
    if-nez v3, :cond_a

    .line 440
    .line 441
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPartialScanFreq:Ljava/util/Set;

    .line 442
    .line 443
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 444
    .line 445
    .line 446
    :cond_a
    const-string v3, ","

    .line 447
    .line 448
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    const-string v5, " }"

    .line 457
    .line 458
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v3, "SilentRoamingManager"

    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    new-array v2, v2, [Ljava/lang/Integer;

    .line 476
    .line 477
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    check-cast v2, [Ljava/lang/Integer;

    .line 482
    .line 483
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    const-string v3, "pno frequency - "

    .line 487
    .line 488
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->localLog(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    monitor-exit v0

    .line 506
    return-void

    .line 507
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    throw p0
.end method

.method updateThroughputParamsFromIes(Ljava/util/List;)V
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
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget v1, v0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 37
    .line 38
    const/16 v2, 0x23

    .line 39
    .line 40
    if-eq v1, v2, :cond_2

    .line 41
    .line 42
    const/16 v2, 0x6a

    .line 43
    .line 44
    if-eq v1, v2, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateExtEhtOperation(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateMaxNumberSpatialStreamsFromHeCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateMaxNumberSpatialStreamsFromVhtCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateMaxNumberSpatialStreamsFromHtCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updateBssLoadFromIe(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_6
    return-void
.end method
