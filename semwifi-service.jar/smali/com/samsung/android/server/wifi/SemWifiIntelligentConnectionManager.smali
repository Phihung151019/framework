.class public final Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;,
        Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$PartialScanListener;,
        Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;,
        Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;,
        Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;
    }
.end annotation


# static fields
.field private static final BATTERY_HIGH:I = 0x2

.field private static final BATTERY_LOW:I = 0x1

.field private static final BATTERY_NONE:I = 0x0

.field private static final BYTE_MASK:I = 0xff

.field private static final CHANNEL_UTILIZATION_IE_LENGTH:I = 0x5

.field private static final DEFAULT_NUMBER_SPATIAL_STREAM:I = 0x1

.field private static final DISCONN_FOLLOWUP:I = 0x8

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x1388

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiIntelligentConnectionManager history:"

.field private static final FULL_SCAN:I = 0xd

.field private static final HAND_OVER_QUERY_RESULT:I = 0x3

.field private static final HAND_OVER_TIMEOUT:I = 0x4

.field private static final HAND_OVER_TIMEOUT_MS:I = 0x1770

.field private static final HE_CAPABILITY_IE_MIN_LENGTH:I = 0x15

.field private static final HE_TRANSITION_RSSI_THRESHOLD:I = -0x4b

.field private static final HT_CAPABILITY_IE_MIN_LENGTH:I = 0x1a

.field private static final INITIALIZATION:I = 0x2

.field private static final INITIALIZATION_DELAY_MS:I = 0x1f4

.field private static final INITIALIZATION_ERROR_RECOVERY_DELAY_MS:I = 0x3e8

.field private static final INIT_SCAN_MAX_CNT:I = 0x5

.field private static final INVALID:I = -0x1

.field private static final IP_RENEW:I = 0xa

.field private static final LINK_STATE_UPDATE:I = 0x1

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field private static final LOW_RSSI_THRESHOLD:I = -0x46

.field private static final MAC_ADDRESS_LENGTH:I = 0x11

.field private static final MAX_NUMBER_OF_SCAN_RESULTS:I = 0x3e8

.field private static final MODE_EAP_PRIORITIZED_HE_KEY_HANDOVER:I = 0x2

.field private static final MODE_HETEROGENEOUS_KEY_HANDOVER:I = 0x1

.field private static final MODE_HOMOGENEUS_KEY_HANDOVER:I = 0x0

.field private static final NUMBER_HANDOVER_MODES:I = 0x2

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.wifi"

.field private static final QUERY_SCORE_DIFFERENCE_PERCENT:I = 0x1e

.field private static final RANDOM_SAMPLING_RATE_PERCENT:I = 0x14

.field private static final RANDOM_SAMPLING_RATE_PERCENT_STABLED:I = 0xa

.field private static final RAND_STR_SEED:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

.field private static final REFERENCE_SCORE:I = 0x50

.field private static final RE_TRAIN:I = 0xb

.field private static final ROAMING_INITIALIZATION_DELAY_MS:I = 0xbb8

.field private static final RSSI_GAP_IGNORE_CON_CHOICE:I = 0x5

.field private static final RSSI_MARGIN:I = 0x5

.field private static final SAVED_NETWORK_CHANGE:I = 0x9

.field private static final SCAN_FOLLOWUP:I = 0x7

.field private static final SCAN_LIFE_TIME_SEC:I = 0xa

.field private static final SCAN_RETRIAL_INTERVAL_MS:I = 0x7d0

.field private static final SCAN_RSSI_DIFFERENCE:I = 0x5

.field private static final SCAN_RSSI_DIFFERENCE_DBM:I = 0x8

.field private static final SCAN_SCORE_DIFFERENCE_PERCENT:I = 0x1e

.field private static final SCAN_TIMEOUT:I = 0x6

.field private static final SCAN_TIMEOUT_MS:I = 0x1770

.field private static final SCAN_TRIAL:I = 0xc

.field private static final SCORE_DIFFERENCE_PERCENT:I = 0x1e

.field private static final SHORT_MASK:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "SemWifiIntelligentConnectionManager"

.field private static final THERMAL_LEVEL_LOW:I = 0x0

.field private static final THERMAL_LEVEL_MID:I = 0x1

.field private static final TRAINING_RESULT:I = 0x5

.field private static final TRAINING_TIMEOUT_MS:I = 0x36ee80

.field private static final TRAIN_READY:I = 0xe

.field private static final TRANSITION_RSSI_LIMIT:I = -0x41

.field private static final VHT_CAPABILITY_IE_MIN_LENGTH:I = 0xc

.field private static final WIFI_CHANNEL_UTILIZATION_2G:I = 0x50

.field private static final WIFI_CHANNEL_UTILIZATION_2G_LIMIT:I = 0x50

.field private static final WIFI_CHANNEL_UTILIZATION_5G:I = 0xf

.field private static final WIFI_CHANNEL_UTILIZATION_6G:I = 0xa

.field private static final WIFI_RSSI_TRANSITION_TO_2G_LIMIT:I = -0x41

.field private static isAutojoinChanged:Z = false

.field private static isWellTrained:Z = false

.field private static mHistory:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final selectedAPTimelimit:I = 0x3840


# instance fields
.field private AIdataLocation:Ljava/lang/String;

.field private AbnormalCntThreshold:I

.field private CheckPointFile_policy_network_postFix:Ljava/lang/String;

.field private CheckPointFile_target_network_postFix:Ljava/lang/String;

.field private final FINE_LINK_THRESHOLD:I

.field private FnHistoryFileName:Ljava/lang/String;

.field private final LINK_GAP_THRESHOLD:I

.field private final LINK_OUTAGE_CHECK_INDEX:I

.field private final LINK_OUTAGE_CNT_INTERVAL:I

.field private final LINK_OUTAGE_LATENCY_THRESHOLD:I

.field private LINK_OUTAGE_RETENTION_DURATION_MS:I

.field private final MINIMUM_LINK_OUTAGE_CNT:I

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

.field private final NOINTERNET_TIMEOUT_S:J

.field private final PARTIAL_SCAN_TIME_THRESHOLD:I

.field private PERIODIC_CHECK_INTERVAL_SEC:I

.field private PREDICTION_TIMEOUT_SEC:I

.field private RoamingGroupFileName:Ljava/lang/String;

.field private final SCAN_PROCESSING_DELAY_MS:I

.field private ScanFileNamePrefix:Ljava/lang/String;

.field private final TRAFFIC_IN_USE_THRESHOLD_KBPS:I

.field private final TRAFFIC_UPDATE_INTERVAL_MS:I

.field private TRAINING_STEP_SCAN_COUNT:I

.field private TrHistoryFileName:Ljava/lang/String;

.field private TrainingStatisticsPrefix:Ljava/lang/String;

.field private aBenefit:I

.field private aRssi:I

.field private aScore:I

.field private aiInfServiceIntent:Landroid/content/Intent;

.field private aiTrServiceIntent:Landroid/content/Intent;

.field private bfCnt:I

.field private connected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private currConfig:Landroid/net/wifi/WifiConfiguration;

.field private gameDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private gameManagerQuery:Z

.field private heKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hoDecisionCnt:I

.field private hoFollowUp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hoMissingCnt:I

.field private hoSamplingCnt:I

.field private hoSuccessCnt:I

.field private hoTriggerTimeStamp:J

.field private hoTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ifaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initScanCnt:I

.field private intentFilter:Landroid/content/IntentFilter;

.field private isHeRoamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastLinkUpdateNumber:J

.field private lastLinkUpdateTime:J

.field private lastQueryRssi:I

.field private lastQueryScore:I

.field private lastQueryTime:J

.field private lastScanRssi:I

.field private lastScanScore:I

.field private lastTrScanCnt:I

.field private lastTrScore:I

.field private lastTrTimeStampMs:J

.field private linkOutageCnt:I

.field private mAbnormalAPList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;",
            ">;"
        }
    .end annotation
.end field

.field private mActionFilter:[I

.field private mActionListener:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;

.field private mActiveLinkNumber:I

.field private mActivityListenerRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAggBytesInUse:J

.field private mApFoundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mApMaxNssMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mApMaxNumberSpatialStreams:I

.field private final mB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

.field private mBadLinkList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBssid:Ljava/lang/String;

.field private mBssidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

.field private mChannelWidth:I

.field private mChannelWidthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientIfaceName:Ljava/lang/String;

.field private mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDeviceSupportsMlo:Z

.field private mEapNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEapTransitionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEnvChange:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEstimatedTput:I

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mFcsPkgName:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFrequency:I

.field private mFrequencyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupKey:Ljava/lang/String;

.field private mHhoSuspended:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHoCommStrBuilder:Ljava/lang/StringBuilder;

.field private mHoQueryRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIdBssidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfServicePid:I

.field private mInitScanRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

.field private mIsBluetoothConnected:Z

.field private mIwhCmdControl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIwhEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIwhInfServiceConnection:Landroid/content/ServiceConnection;

.field private mIwhMode:I

.field private mIwhTrServiceConnection:Landroid/content/ServiceConnection;

.field private mIwhWlanTestControl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastAggBytesInUse:J

.field private mLastChannelUtilization:I

.field private mLastChannelUtilizationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdateTimeMs:J

.field private mLinkIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMalTimeDiff:J

.field private mMlHas2G:Z

.field private mMldMacAddress:Landroid/net/MacAddress;

.field private mMloLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation
.end field

.field private mMobilityDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNoInternetList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field private mOpportunisticFullScan:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPartialScanListener:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$PartialScanListener;

.field private mPartialScanTime:J

.field private mPidFreqMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevBssid:Ljava/lang/String;

.field private mRcl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:I

.field mScanReceiver:Landroid/content/BroadcastReceiver;

.field private mScanResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScpmHeRoamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mScpmRoamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSecurityType:I

.field private mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

.field private final mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

.field private mSsid:Ljava/lang/String;

.field private mStabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTargetAbnormalAP:Ljava/lang/String;

.field final mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

.field private final mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

.field private mTrServicePid:I

.field private mTrafficRateKbps:J

.field private final mTrainingCallback:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;

.field private mTxSpeed:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mVerbose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWaitingReInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

.field private final mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiManagerScanCnt:I

.field private mWifiManagerScanTimeS:J

.field private mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

.field private final mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

.field private mgetWifiStandard:I

.field private mlConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private netId:I

.field private nonAutoheKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private policyNetworkFileName:Ljava/lang/String;

.field private priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

.field private rssiOutageCnt:I

.field private rssiThreshold:D

.field private rtServiceDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private savedConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private savedSemConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private scanFileName:Ljava/lang/String;

.field private scanProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private scan_count:I

.field private scoreChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private selectedKey:Ljava/lang/String;

.field private selectionTimeStamp:J

.field private targetNetworkFileName:Ljava/lang/String;

.field private testNeighboringApInfo:Ljava/lang/StringBuilder;

.field private testTrMode:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private trProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private trainingStepScanCnt:I

.field private unSeenBssid:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$psGjzKuteqz0B-XRa98YzJYZjAY(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lambda$initProxyEventReceiver$0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetAIdataLocation(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetCheckPointFile_policy_network_postFix(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->CheckPointFile_policy_network_postFix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetCheckPointFile_target_network_postFix(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->CheckPointFile_target_network_postFix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetLINK_OUTAGE_RETENTION_DURATION_MS(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->LINK_OUTAGE_RETENTION_DURATION_MS:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetPERIODIC_CHECK_INTERVAL_SEC(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->PERIODIC_CHECK_INTERVAL_SEC:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetPREDICTION_TIMEOUT_SEC(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->PREDICTION_TIMEOUT_SEC:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetScanFileNamePrefix(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->ScanFileNamePrefix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetTRAINING_STEP_SCAN_COUNT(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TRAINING_STEP_SCAN_COUNT:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaiInfServiceIntent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aiInfServiceIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaiTrServiceIntent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aiTrServiceIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgameDetected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->gameDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgameManagerQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->gameManagerQuery:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->heKeyList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethoDecisionCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgethoFollowUp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoFollowUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethoMissingCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgethoSamplingCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgethoSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgethoTriggered(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethoWaiting(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->ifaces:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->initScanCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastLinkUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastLinkUpdateNumber:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastLinkUpdateTime(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastLinkUpdateTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastQueryTime(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastQueryTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastScanScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastScanScore:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastTrScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScanCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastTrScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScore:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastTrTimeStampMs(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrTimeStampMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->linkOutageCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAbnormalAPList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAbnormalAPList:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionFilter(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActionFilter:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveLinkNumber(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActiveLinkNumber:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityListenerRegistered(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActivityListenerRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/app/ActivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAggBytesInUse(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAggBytesInUse:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmApFoundMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mApFoundMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApMaxNssMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mApMaxNssMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mApMaxNumberSpatialStreams:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmB2bPolicyManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBadLinkList:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBootComplete(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssidMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelWidth(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mChannelWidth:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelWidthMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mChannelWidthMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mClientIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEapNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEapTransitionEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEapTransitionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnvChange(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEnvChange:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEstimatedTput(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEstimatedTput:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFrequency:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrequencyMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFrequencyMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mGroupKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHhoSuspended(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHhoSuspended:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHoCommStrBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHoQueryRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHoQueryRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIdBssidMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mInfServicePid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitScanRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mInitScanRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIsBluetoothConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIwhCmdControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhCmdControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIwhEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIwhInfServiceConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhInfServiceConnection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhMode:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIwhTrServiceConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhTrServiceConnection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIwhWlanTestControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhWlanTestControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastAggBytesInUse(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastAggBytesInUse:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastChannelUtilization(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastChannelUtilization:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastChannelUtilizationMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastChannelUtilizationMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastUpdateTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkIdList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLinkIdList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMalTimeDiff(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMalTimeDiff:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMldMacAddress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/MacAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMldMacAddress:Landroid/net/MacAddress;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMloLinks(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMloLinks:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMobilityDetected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMobilityDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpportunisticFullScan(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mOpportunisticFullScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPidFreqMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPidFreqMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPidList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPidList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPositionChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPositionChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/os/PowerManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRcl:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRssi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanResultList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mScanResultList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScpmHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mScpmHeRoamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScpmRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mScpmRoamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecurityType(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSecurityType:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemContextListener(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/hardware/context/SemContextListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/hardware/context/SemContextManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemThroughputPredictor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSilentRoamingManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSsid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSsid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mStabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetAbnormalAP(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTargetAbnormalAP:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThroughputScorer(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTrServicePid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficRateKbps(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTrafficRateKbps:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTxSpeed(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTxSpeed:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerbose(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mVerbose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingReInit(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWaitingReInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCondManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManagerScanCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerScanTimeS(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManagerScanTimeS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmgetWifiStandard(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mgetWifiStandard:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mlConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnonAutoheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->nonAutoheKeyList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiOutageCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrssiThreshold(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiThreshold:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrtServiceDetected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rtServiceDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsavedConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->savedConfigList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscanProgress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scanProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscoreChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scoreChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->testNeighboringApInfo:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettestTrMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->testTrMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettrProgress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->trProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettrainingStepScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->trainingStepScanCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetunSeenBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->unSeenBssid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaBenefit(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aBenefit:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputaRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputaScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputbfCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->bfCnt:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputgameManagerQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->gameManagerQuery:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->heKeyList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputhoDecisionCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputhoMissingCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputhoSamplingCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputhoSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputinitScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->initScanCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastLinkUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastLinkUpdateNumber:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastLinkUpdateTime(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastLinkUpdateTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastQueryRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastQueryRssi:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastQueryScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastQueryScore:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastQueryTime(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastQueryTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastScanRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastScanRssi:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastScanScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastScanScore:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTrScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScanCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTrScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScore:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTrTimeStampMs(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrTimeStampMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->linkOutageCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmActiveLinkNumber(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActiveLinkNumber:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAggBytesInUse(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAggBytesInUse:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmApFoundMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mApFoundMap:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmApMaxNssMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mApMaxNssMap:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmApMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mApMaxNumberSpatialStreams:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssidMap:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCapabilities(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelWidth(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mChannelWidth:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelWidthMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mChannelWidthMap:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mClientIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeviceSupportsMlo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDeviceSupportsMlo:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEstimatedTput(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEstimatedTput:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFrequency:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFrequencyMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFrequencyMap:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mGroupKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHoCommStrBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIdBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIdBssidMap:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsBluetoothConnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIsBluetoothConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhMode:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastAggBytesInUse(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastAggBytesInUse:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastChannelUtilization(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastChannelUtilization:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastChannelUtilizationMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastChannelUtilizationMap:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastUpdateTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLinkIdList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLinkIdList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMlHas2G(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMlHas2G:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMldMacAddress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/MacAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMldMacAddress:Landroid/net/MacAddress;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMloLinks(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMloLinks:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPidList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPidList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrevBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPrevBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRcl:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRssi:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScanResultList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mScanResultList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSecurityType(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSecurityType:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Lcom/samsung/android/hardware/context/SemContextManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSsid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSsid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTrServicePid:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficRateKbps(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTrafficRateKbps:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxSpeed(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTxSpeed:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiManagerScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManagerScanCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiManagerScanTimeS(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManagerScanTimeS:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmgetWifiStandard(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mgetWifiStandard:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputnonAutoheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->nonAutoheKeyList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputpolicyNetworkFileName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->policyNetworkFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiOutageCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputrssiThreshold(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiThreshold:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputsavedConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->savedConfigList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputsavedSemConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->savedSemConfigList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputscanFileName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scanFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputscan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtargetNetworkFileName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->targetNetworkFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->testNeighboringApInfo:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtrainingStepScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->trainingStepScanCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheck_scan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->check_scan_count()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mdataManagement(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->dataManagement(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mfnHistoryControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->fnHistoryControl(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetEditedBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getEditedBssid(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPidList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getPidList(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSemWifiConfiguration(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getSemWifiConfiguration(I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUtilizationRatio(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getUtilizationRatio(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$misCarrierNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isCarrierNetwork()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misConfigured(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isConfigured(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isEapNetwork(Landroid/net/wifi/WifiInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misFocusAppAGame(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isFocusAppAGame()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misInternetNotRequiredNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isInternetNotRequiredNetwork()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misMatched(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isMatched(Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isMultiNetwork(Landroid/net/wifi/WifiInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misNoInternetAccessExpected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isNoInternetAccessExpected(Landroid/net/wifi/WifiInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$miwh_check_model(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->iwh_check_model()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$miwh_predict_action(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->iwh_predict_action()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mpScanTimeQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->pScanTimeQuery()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mresetAllData(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->resetAllData(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mresetScanData(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->resetScanData(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mresetTrainedData(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->resetTrainedData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mroamingGroupManagement(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->roamingGroupManagement(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mroamingGroupQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->roamingGroupQuery(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveDebugTestResults(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveDebugTestResults(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msaveScanResultsToCsv(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveScanResultsToCsv(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mtrHistoryCheck(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)[I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->trHistoryCheck(Ljava/lang/String;I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtrHistoryControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;III)V
    .locals 6

    .line 1
    const/4 v2, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v3, p2

    .line 5
    move v4, p3

    .line 6
    move v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->trHistoryControl(Ljava/lang/String;ZIII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAbnormalAP(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->updateAbnormalAP(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateThroughputParamsFromIes(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->updateThroughputParamsFromIes(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetisAutojoinChanged()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isAutojoinChanged:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetisWellTrained()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isWellTrained:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfputisAutojoinChanged(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isAutojoinChanged:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$sfputisWellTrained(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isWellTrained:Z

    .line 2
    .line 3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isWellTrained:Z

    .line 10
    .line 11
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isAutojoinChanged:Z

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/net/wifi/WifiManager;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x32

    .line 7
    .line 8
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TRAINING_STEP_SCAN_COUNT:I

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->PREDICTION_TIMEOUT_SEC:I

    .line 13
    .line 14
    const/16 v1, 0x3c

    .line 15
    .line 16
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->PERIODIC_CHECK_INTERVAL_SEC:I

    .line 17
    .line 18
    const-wide/16 v1, 0x1

    .line 19
    .line 20
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggerTimeStamp:J

    .line 21
    .line 22
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->selectionTimeStamp:J

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->selectedKey:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->netId:I

    .line 29
    .line 30
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFcsPkgName:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->gameManagerQuery:Z

    .line 34
    .line 35
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIsBluetoothConnected:Z

    .line 36
    .line 37
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDeviceSupportsMlo:Z

    .line 38
    .line 39
    const-wide/32 v4, 0xa4cb80

    .line 40
    .line 41
    .line 42
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMalTimeDiff:J

    .line 43
    .line 44
    const-string v4, "com.google.android.gms"

    .line 45
    .line 46
    const-string v5, "com.google.android.projection.gearhead"

    .line 47
    .line 48
    const-string v6, "com.samsung.android.oneconnect"

    .line 49
    .line 50
    const-string v7, "com.samsung.android.app.mirrorlink"

    .line 51
    .line 52
    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    .line 61
    .line 62
    const-string v14, "com.samsung.uready.agent"

    .line 63
    .line 64
    const-string v15, "com.google.android.apps.carrier.carrierwifi"

    .line 65
    .line 66
    const-string v5, "com.android.systemui"

    .line 67
    .line 68
    const-string v6, "android.uid.systemui"

    .line 69
    .line 70
    const-string v7, "com.samsung.android.app.aodservice"

    .line 71
    .line 72
    const-string v8, "com.sec.android.cover.ledcover"

    .line 73
    .line 74
    const-string v9, "com.samsung.android.app.routines"

    .line 75
    .line 76
    const-string v10, "com.android.systemui"

    .line 77
    .line 78
    const-string v11, "com.sec.android.dexsystemui"

    .line 79
    .line 80
    const-string v12, "com.samsung.android.gesture.MotionRecognitionService"

    .line 81
    .line 82
    const-string v13, "com.android.systemui.sensor.PickupController"

    .line 83
    .line 84
    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    .line 93
    .line 94
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    .line 96
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 97
    .line 98
    .line 99
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    .line 101
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 104
    .line 105
    .line 106
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    .line 108
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    .line 110
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 111
    .line 112
    .line 113
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    .line 115
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 119
    .line 120
    .line 121
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    .line 123
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    .line 125
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 126
    .line 127
    .line 128
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mVerbose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    .line 130
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    .line 132
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 133
    .line 134
    .line 135
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    .line 137
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    .line 139
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 140
    .line 141
    .line 142
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoFollowUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    .line 144
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    .line 146
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 147
    .line 148
    .line 149
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    .line 151
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    .line 153
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 154
    .line 155
    .line 156
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    .line 158
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    .line 160
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 161
    .line 162
    .line 163
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scanProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    .line 165
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    .line 167
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 168
    .line 169
    .line 170
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->trProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 171
    .line 172
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    .line 174
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 175
    .line 176
    .line 177
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->unSeenBssid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 178
    .line 179
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    .line 181
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 182
    .line 183
    .line 184
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mlConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    .line 186
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 187
    .line 188
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 189
    .line 190
    .line 191
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rtServiceDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 192
    .line 193
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    .line 195
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 196
    .line 197
    .line 198
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->gameDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    .line 200
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 201
    .line 202
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 203
    .line 204
    .line 205
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scoreChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 206
    .line 207
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    .line 209
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 210
    .line 211
    .line 212
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mScpmRoamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 213
    .line 214
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    .line 216
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 217
    .line 218
    .line 219
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mScpmHeRoamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 220
    .line 221
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    .line 223
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 224
    .line 225
    .line 226
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHhoSuspended:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 227
    .line 228
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 229
    .line 230
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 231
    .line 232
    .line 233
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEnvChange:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 234
    .line 235
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    .line 237
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 238
    .line 239
    .line 240
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEapTransitionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 241
    .line 242
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    .line 244
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 245
    .line 246
    .line 247
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHoQueryRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 248
    .line 249
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 250
    .line 251
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 252
    .line 253
    .line 254
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mInitScanRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 255
    .line 256
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 257
    .line 258
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 259
    .line 260
    .line 261
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mOpportunisticFullScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 262
    .line 263
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 264
    .line 265
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 266
    .line 267
    .line 268
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mStabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 269
    .line 270
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 271
    .line 272
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 273
    .line 274
    .line 275
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWaitingReInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 276
    .line 277
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 278
    .line 279
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 280
    .line 281
    .line 282
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 283
    .line 284
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 285
    .line 286
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 287
    .line 288
    .line 289
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEapNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 290
    .line 291
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 292
    .line 293
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 294
    .line 295
    .line 296
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 297
    .line 298
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 299
    .line 300
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 301
    .line 302
    .line 303
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhCmdControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 304
    .line 305
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 306
    .line 307
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 308
    .line 309
    .line 310
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhWlanTestControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 311
    .line 312
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 313
    .line 314
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 315
    .line 316
    .line 317
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActivityListenerRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 318
    .line 319
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 320
    .line 321
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 322
    .line 323
    .line 324
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMobilityDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 325
    .line 326
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 327
    .line 328
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 329
    .line 330
    .line 331
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPositionChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 332
    .line 333
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRcl:Ljava/util/List;

    .line 334
    .line 335
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPidList:Ljava/util/List;

    .line 336
    .line 337
    new-instance v4, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .line 341
    .line 342
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->heKeyList:Ljava/util/List;

    .line 343
    .line 344
    new-instance v4, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .line 348
    .line 349
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->nonAutoheKeyList:Ljava/util/List;

    .line 350
    .line 351
    const/16 v4, 0x1f4

    .line 352
    .line 353
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TRAFFIC_UPDATE_INTERVAL_MS:I

    .line 354
    .line 355
    const/16 v4, 0x14

    .line 356
    .line 357
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TRAFFIC_IN_USE_THRESHOLD_KBPS:I

    .line 358
    .line 359
    const/16 v4, 0x5dc

    .line 360
    .line 361
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->SCAN_PROCESSING_DELAY_MS:I

    .line 362
    .line 363
    const-wide/16 v6, 0x4b0

    .line 364
    .line 365
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->NOINTERNET_TIMEOUT_S:J

    .line 366
    .line 367
    const/4 v4, 0x4

    .line 368
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->LINK_OUTAGE_CNT_INTERVAL:I

    .line 369
    .line 370
    const/4 v6, 0x5

    .line 371
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->LINK_OUTAGE_LATENCY_THRESHOLD:I

    .line 372
    .line 373
    iput v5, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->FINE_LINK_THRESHOLD:I

    .line 374
    .line 375
    const/4 v7, 0x7

    .line 376
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->LINK_GAP_THRESHOLD:I

    .line 377
    .line 378
    const/4 v7, 0x2

    .line 379
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->LINK_OUTAGE_CHECK_INDEX:I

    .line 380
    .line 381
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->MINIMUM_LINK_OUTAGE_CNT:I

    .line 382
    .line 383
    const/16 v8, 0x2710

    .line 384
    .line 385
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->PARTIAL_SCAN_TIME_THRESHOLD:I

    .line 386
    .line 387
    iget v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TRAINING_STEP_SCAN_COUNT:I

    .line 388
    .line 389
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->trainingStepScanCnt:I

    .line 390
    .line 391
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mChannelWidthMap:Ljava/util/Map;

    .line 392
    .line 393
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFrequencyMap:Ljava/util/Map;

    .line 394
    .line 395
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mApMaxNssMap:Ljava/util/Map;

    .line 396
    .line 397
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mApFoundMap:Ljava/util/Map;

    .line 398
    .line 399
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssidMap:Ljava/util/Map;

    .line 400
    .line 401
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIdBssidMap:Ljava/util/Map;

    .line 402
    .line 403
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPidFreqMap:Ljava/util/Map;

    .line 404
    .line 405
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLinkIdList:Ljava/util/ArrayList;

    .line 406
    .line 407
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastChannelUtilizationMap:Ljava/util/Map;

    .line 408
    .line 409
    new-instance v8, Ljava/util/HashMap;

    .line 410
    .line 411
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 412
    .line 413
    .line 414
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mNoInternetList:Ljava/util/Map;

    .line 415
    .line 416
    new-instance v8, Ljava/util/HashMap;

    .line 417
    .line 418
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 419
    .line 420
    .line 421
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBadLinkList:Ljava/util/Map;

    .line 422
    .line 423
    new-instance v8, Ljava/util/HashMap;

    .line 424
    .line 425
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 426
    .line 427
    .line 428
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAbnormalAPList:Ljava/util/Map;

    .line 429
    .line 430
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AbnormalCntThreshold:I

    .line 431
    .line 432
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->linkOutageCnt:I

    .line 433
    .line 434
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiOutageCnt:I

    .line 435
    .line 436
    const-wide/16 v8, -0x1

    .line 437
    .line 438
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastLinkUpdateNumber:J

    .line 439
    .line 440
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastLinkUpdateTime:J

    .line 441
    .line 442
    const-wide v8, -0x3fad400000000000L    # -75.0

    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiThreshold:D

    .line 448
    .line 449
    const/16 v6, 0x4e20

    .line 450
    .line 451
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->LINK_OUTAGE_RETENTION_DURATION_MS:I

    .line 452
    .line 453
    iput v5, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActiveLinkNumber:I

    .line 454
    .line 455
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMlHas2G:Z

    .line 456
    .line 457
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHoCommStrBuilder:Ljava/lang/StringBuilder;

    .line 458
    .line 459
    new-instance v6, Ljava/util/HashSet;

    .line 460
    .line 461
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 462
    .line 463
    .line 464
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->ifaces:Ljava/util/Set;

    .line 465
    .line 466
    const-string v6, "scan_results_"

    .line 467
    .line 468
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->ScanFileNamePrefix:Ljava/lang/String;

    .line 469
    .line 470
    const-string v6, "_policy_network_pe.ckpt"

    .line 471
    .line 472
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->CheckPointFile_policy_network_postFix:Ljava/lang/String;

    .line 473
    .line 474
    const-string v6, "_target_network_pe.ckpt"

    .line 475
    .line 476
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->CheckPointFile_target_network_postFix:Ljava/lang/String;

    .line 477
    .line 478
    const-string v6, "training_statistics_"

    .line 479
    .line 480
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TrainingStatisticsPrefix:Ljava/lang/String;

    .line 481
    .line 482
    const-string v6, "/data/data/com.samsung.android.wifi.intelligence/files"

    .line 483
    .line 484
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 485
    .line 486
    const-string v6, "roamingGroup.csv"

    .line 487
    .line 488
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->RoamingGroupFileName:Ljava/lang/String;

    .line 489
    .line 490
    const-string v6, "trHistory.csv"

    .line 491
    .line 492
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TrHistoryFileName:Ljava/lang/String;

    .line 493
    .line 494
    const-string v6, "fnHistory.csv"

    .line 495
    .line 496
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->FnHistoryFileName:Ljava/lang/String;

    .line 497
    .line 498
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastScanScore:I

    .line 499
    .line 500
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastScanRssi:I

    .line 501
    .line 502
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScore:I

    .line 503
    .line 504
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastQueryScore:I

    .line 505
    .line 506
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastQueryRssi:I

    .line 507
    .line 508
    const-wide/16 v8, 0x0

    .line 509
    .line 510
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastQueryTime:J

    .line 511
    .line 512
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScanCnt:I

    .line 513
    .line 514
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAggBytesInUse:J

    .line 515
    .line 516
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastAggBytesInUse:J

    .line 517
    .line 518
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mLastUpdateTimeMs:J

    .line 519
    .line 520
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTrafficRateKbps:J

    .line 521
    .line 522
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhMode:I

    .line 523
    .line 524
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManagerScanCnt:I

    .line 525
    .line 526
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManagerScanTimeS:J

    .line 527
    .line 528
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPartialScanTime:J

    .line 529
    .line 530
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTrServicePid:I

    .line 531
    .line 532
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mInfServicePid:I

    .line 533
    .line 534
    new-instance v6, Landroid/content/Intent;

    .line 535
    .line 536
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 537
    .line 538
    .line 539
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aiTrServiceIntent:Landroid/content/Intent;

    .line 540
    .line 541
    new-instance v6, Landroid/content/Intent;

    .line 542
    .line 543
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 544
    .line 545
    .line 546
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aiInfServiceIntent:Landroid/content/Intent;

    .line 547
    .line 548
    new-instance v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 549
    .line 550
    invoke-direct {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;-><init>()V

    .line 551
    .line 552
    .line 553
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 554
    .line 555
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMldMacAddress:Landroid/net/MacAddress;

    .line 556
    .line 557
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMloLinks:Ljava/util/List;

    .line 558
    .line 559
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->initScanCnt:I

    .line 560
    .line 561
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrTimeStampMs:J

    .line 562
    .line 563
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$1;

    .line 564
    .line 565
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 566
    .line 567
    .line 568
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 569
    .line 570
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$2;

    .line 571
    .line 572
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 573
    .line 574
    .line 575
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 576
    .line 577
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$3;

    .line 578
    .line 579
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 580
    .line 581
    .line 582
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTrainingCallback:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;

    .line 583
    .line 584
    new-instance v6, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->testNeighboringApInfo:Ljava/lang/StringBuilder;

    .line 590
    .line 591
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 592
    .line 593
    invoke-direct {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 594
    .line 595
    .line 596
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->testTrMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 597
    .line 598
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$4;

    .line 599
    .line 600
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 601
    .line 602
    .line 603
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 604
    .line 605
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$6;

    .line 606
    .line 607
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 608
    .line 609
    .line 610
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mScanReceiver:Landroid/content/BroadcastReceiver;

    .line 611
    .line 612
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;

    .line 613
    .line 614
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 615
    .line 616
    .line 617
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhTrServiceConnection:Landroid/content/ServiceConnection;

    .line 618
    .line 619
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$8;

    .line 620
    .line 621
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$8;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 622
    .line 623
    .line 624
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhInfServiceConnection:Landroid/content/ServiceConnection;

    .line 625
    .line 626
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$9;

    .line 627
    .line 628
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$9;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 629
    .line 630
    .line 631
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 632
    .line 633
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;

    .line 634
    .line 635
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 636
    .line 637
    .line 638
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 639
    .line 640
    const/4 v6, 0x3

    .line 641
    filled-new-array {v5, v7, v6, v4, v3}, [I

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActionFilter:[I

    .line 646
    .line 647
    new-instance v4, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$14;

    .line 648
    .line 649
    invoke-direct {v4, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$14;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 650
    .line 651
    .line 652
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 653
    .line 654
    move-object/from16 v4, p1

    .line 655
    .line 656
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 657
    .line 658
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 663
    .line 664
    move-object/from16 v6, p2

    .line 665
    .line 666
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 667
    .line 668
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 669
    .line 670
    .line 671
    move-result-object v8

    .line 672
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 673
    .line 674
    new-instance v8, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 675
    .line 676
    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 677
    .line 678
    .line 679
    move-result-object v9

    .line 680
    invoke-direct {v8, v0, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/os/Looper;)V

    .line 681
    .line 682
    .line 683
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 684
    .line 685
    move-object/from16 v8, p3

    .line 686
    .line 687
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 688
    .line 689
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 690
    .line 691
    .line 692
    move-result-object v8

    .line 693
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 694
    .line 695
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 696
    .line 697
    .line 698
    move-result-object v8

    .line 699
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 700
    .line 701
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 702
    .line 703
    .line 704
    move-result-object v9

    .line 705
    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 706
    .line 707
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 708
    .line 709
    .line 710
    move-result-object v9

    .line 711
    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 712
    .line 713
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 714
    .line 715
    .line 716
    move-result-object v10

    .line 717
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 718
    .line 719
    move-object/from16 v11, p6

    .line 720
    .line 721
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 722
    .line 723
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiEnhancedFeatureController()Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 724
    .line 725
    .line 726
    move-result-object v11

    .line 727
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 728
    .line 729
    move-object/from16 v12, p5

    .line 730
    .line 731
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 732
    .line 733
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 734
    .line 735
    const-string v13, "wifinl80211"

    .line 736
    .line 737
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v12

    .line 741
    check-cast v12, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 742
    .line 743
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 744
    .line 745
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 746
    .line 747
    const-string v13, "connectivity"

    .line 748
    .line 749
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v12

    .line 753
    check-cast v12, Landroid/net/ConnectivityManager;

    .line 754
    .line 755
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 756
    .line 757
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 758
    .line 759
    const-string v13, "batterymanager"

    .line 760
    .line 761
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v12

    .line 765
    check-cast v12, Landroid/os/BatteryManager;

    .line 766
    .line 767
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 768
    .line 769
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 770
    .line 771
    const-string v13, "power"

    .line 772
    .line 773
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v12

    .line 777
    check-cast v12, Landroid/os/PowerManager;

    .line 778
    .line 779
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPowerManager:Landroid/os/PowerManager;

    .line 780
    .line 781
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 782
    .line 783
    const-string v13, "activity"

    .line 784
    .line 785
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v12

    .line 789
    check-cast v12, Landroid/app/ActivityManager;

    .line 790
    .line 791
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 792
    .line 793
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 794
    .line 795
    const-class v13, Landroid/os/UserManager;

    .line 796
    .line 797
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v12

    .line 801
    check-cast v12, Landroid/os/UserManager;

    .line 802
    .line 803
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mUserManager:Landroid/os/UserManager;

    .line 804
    .line 805
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getB2BPolicyManager()Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 806
    .line 807
    .line 808
    move-result-object v6

    .line 809
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 810
    .line 811
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 812
    .line 813
    const-string v12, "wifi_handover_ai_mode"

    .line 814
    .line 815
    invoke-virtual {v9, v4, v12, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 816
    .line 817
    .line 818
    move-result v13

    .line 819
    if-eqz v13, :cond_0

    .line 820
    .line 821
    goto :goto_0

    .line 822
    :cond_0
    move v5, v3

    .line 823
    :goto_0
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v9, v4, v12, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 827
    .line 828
    .line 829
    move-result v2

    .line 830
    if-eqz v2, :cond_1

    .line 831
    .line 832
    const-string v2, "Y"

    .line 833
    .line 834
    goto :goto_1

    .line 835
    :cond_1
    const-string v2, "N"

    .line 836
    .line 837
    :goto_1
    const-string v4, "IWH conf: "

    .line 838
    .line 839
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    invoke-direct {v0, v2, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    .line 847
    .line 848
    .line 849
    move-result v2

    .line 850
    if-lez v2, :cond_2

    .line 851
    .line 852
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 853
    .line 854
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 855
    .line 856
    .line 857
    move-result-object v4

    .line 858
    invoke-virtual {v2, v4, v1}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 859
    .line 860
    .line 861
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 862
    .line 863
    invoke-virtual {v11, v1}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;)V

    .line 864
    .line 865
    .line 866
    new-instance v1, Landroid/content/IntentFilter;

    .line 867
    .line 868
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 869
    .line 870
    .line 871
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFilter:Landroid/content/IntentFilter;

    .line 872
    .line 873
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    .line 874
    .line 875
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 879
    .line 880
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mScanReceiver:Landroid/content/BroadcastReceiver;

    .line 881
    .line 882
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFilter:Landroid/content/IntentFilter;

    .line 883
    .line 884
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 885
    .line 886
    .line 887
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 888
    .line 889
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$10;

    .line 890
    .line 891
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$10;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 892
    .line 893
    .line 894
    new-instance v4, Landroid/content/IntentFilter;

    .line 895
    .line 896
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 897
    .line 898
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 902
    .line 903
    .line 904
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 905
    .line 906
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 907
    .line 908
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 909
    .line 910
    .line 911
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$PartialScanListener;

    .line 912
    .line 913
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 914
    .line 915
    .line 916
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPartialScanListener:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$PartialScanListener;

    .line 917
    .line 918
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;

    .line 919
    .line 920
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 921
    .line 922
    .line 923
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActionListener:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;

    .line 924
    .line 925
    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 926
    .line 927
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 928
    .line 929
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;-><init>(Landroid/content/Context;)V

    .line 930
    .line 931
    .line 932
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 933
    .line 934
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 935
    .line 936
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 937
    .line 938
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 939
    .line 940
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 941
    .line 942
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 943
    .line 944
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 945
    .line 946
    invoke-direct {v0, v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->initProxyEventReceiver(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 947
    .line 948
    .line 949
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$11;

    .line 950
    .line 951
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$11;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v8, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    .line 955
    .line 956
    .line 957
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aiTrServiceIntent:Landroid/content/Intent;

    .line 958
    .line 959
    const-string v2, "com.samsung.android.wifi.intelligence.iwh.IwhTrService"

    .line 960
    .line 961
    const-string v3, "com.samsung.android.wifi.intelligence"

    .line 962
    .line 963
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 964
    .line 965
    .line 966
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aiInfServiceIntent:Landroid/content/Intent;

    .line 967
    .line 968
    const-string v2, "com.samsung.android.wifi.intelligence.iwh.IwhInfService"

    .line 969
    .line 970
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    .line 972
    .line 973
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->registerBR()V

    .line 974
    .line 975
    .line 976
    return-void
.end method

.method private addEvent(Ljava/lang/String;I)V
    .locals 2

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mVerbose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string p0, "SemWifiIntelligentConnectionManager"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    const/4 p0, 0x2

    .line 18
    if-ne p2, p0, :cond_2

    .line 19
    .line 20
    const-string p0, "SemWifiIntelligentConnectionManager"

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-string p0, "SemWifiIntelligentConnectionManager"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 32
    .line 33
    const-string p2, "MM-dd HH:mm:ss.SSS"

    .line 34
    .line 35
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Ljava/util/Date;

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p0, " "

    .line 60
    .line 61
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHistory:Ljava/util/LinkedList;

    .line 72
    .line 73
    monitor-enter p1

    .line 74
    :try_start_1
    sget-object p2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHistory:Ljava/util/LinkedList;

    .line 75
    .line 76
    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :goto_1
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHistory:Ljava/util/LinkedList;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    const/16 p2, 0x1388

    .line 86
    .line 87
    if-le p0, p2, :cond_3

    .line 88
    .line 89
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHistory:Ljava/util/LinkedList;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    monitor-exit p1

    .line 98
    return-void

    .line 99
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0

    .line 101
    :catch_0
    move-exception p0

    .line 102
    const-string p1, "SemWifiIntelligentConnectionManager"

    .line 103
    .line 104
    const-string p2, "out of memory error: "

    .line 105
    .line 106
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :catch_1
    move-exception p0

    .line 111
    const-string p1, "SemWifiIntelligentConnectionManager"

    .line 112
    .line 113
    const-string p2, "format problem: "

    .line 114
    .line 115
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private associationCtl(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTargetAbnormalAP:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mClientIfaceName:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " "

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->associationCtl(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private check_scan_count()I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/io/File;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scanFileName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPidFreqMap:Ljava/util/Map;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    new-instance v2, Ljava/io/BufferedReader;

    .line 33
    .line 34
    new-instance v4, Ljava/io/FileReader;

    .line 35
    .line 36
    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const-string v5, ","

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    add-int/2addr v0, v1

    .line 56
    if-le v0, v1, :cond_1

    .line 57
    .line 58
    array-length v5, v3

    .line 59
    const/4 v6, 0x7

    .line 60
    if-lt v5, v6, :cond_1

    .line 61
    .line 62
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPidFreqMap:Ljava/util/Map;

    .line 63
    .line 64
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    aget-object v6, v3, v1

    .line 69
    .line 70
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    const/4 v6, 0x6

    .line 75
    if-eqz v5, :cond_0

    .line 76
    .line 77
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPidFreqMap:Ljava/util/Map;

    .line 78
    .line 79
    aget-object v7, v3, v1

    .line 80
    .line 81
    aget-object v3, v3, v6

    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v5, v7, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto :goto_2

    .line 97
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPidFreqMap:Ljava/util/Map;

    .line 98
    .line 99
    aget-object v7, v3, v1

    .line 100
    .line 101
    aget-object v3, v3, v6

    .line 102
    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_1
    move-object v3, v4

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 117
    .line 118
    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const/4 v2, 0x2

    .line 126
    aget-object v3, v0, v2

    .line 127
    .line 128
    const-string v4, "count"

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_3

    .line 135
    .line 136
    aget-object v0, v0, v2

    .line 137
    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    add-int/2addr v0, v1

    .line 143
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v3, "Scan cnt check err: "

    .line 149
    .line 150
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    :cond_3
    :goto_3
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 168
    .line 169
    return p0
.end method

.method private dataManagement(Ljava/lang/String;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v12, "Fn history ctl err: "

    .line 6
    .line 7
    const-string v3, "Data mgmt err: "

    .line 8
    .line 9
    new-instance v4, Ljava/io/File;

    .line 10
    .line 11
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scanFileName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v5, Ljava/io/File;

    .line 24
    .line 25
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->FnHistoryFileName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v6, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const-string v8, ","

    .line 40
    .line 41
    const/4 v13, 0x2

    .line 42
    const/4 v14, 0x1

    .line 43
    const/4 v9, 0x0

    .line 44
    if-eqz v7, :cond_3

    .line 45
    .line 46
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 47
    .line 48
    new-instance v10, Ljava/io/FileReader;

    .line 49
    .line 50
    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 54
    .line 55
    .line 56
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    move-object v10, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    sub-int/2addr v0, v14

    .line 74
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    aget-object v0, v0, v13

    .line 85
    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_6

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto :goto_3

    .line 96
    :catch_1
    move-exception v0

    .line 97
    goto :goto_4

    .line 98
    :catch_2
    move-exception v0

    .line 99
    goto :goto_5

    .line 100
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    :try_start_4
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    throw v10
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 109
    :catch_3
    move-exception v0

    .line 110
    move v10, v9

    .line 111
    goto :goto_3

    .line 112
    :catch_4
    move-exception v0

    .line 113
    move v10, v9

    .line 114
    goto :goto_4

    .line 115
    :catch_5
    move-exception v0

    .line 116
    move v10, v9

    .line 117
    goto :goto_5

    .line 118
    :goto_3
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-direct {v1, v7, v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    goto :goto_6

    .line 129
    :goto_4
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-direct {v1, v7, v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-direct {v1, v7, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    :goto_6
    const/16 v0, 0x3e7

    .line 159
    .line 160
    if-le v10, v0, :cond_3

    .line 161
    .line 162
    :try_start_5
    new-instance v7, Ljava/io/BufferedWriter;

    .line 163
    .line 164
    new-instance v11, Ljava/io/FileWriter;

    .line 165
    .line 166
    new-instance v15, Ljava/io/File;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 167
    .line 168
    move/from16 v16, v14

    .line 169
    .line 170
    :try_start_6
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scanFileName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-direct {v15, v4, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-direct {v11, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 176
    .line 177
    .line 178
    const/high16 v4, 0x100000

    .line 179
    .line 180
    invoke-direct {v7, v11, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 181
    .line 182
    .line 183
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v11, "Data mgmt: "

    .line 189
    .line 190
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-direct {v1, v4, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v7, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v4, "\n"

    .line 213
    .line 214
    invoke-virtual {v7, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    move/from16 v4, v16

    .line 218
    .line 219
    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    if-ge v4, v11, :cond_2

    .line 224
    .line 225
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    check-cast v11, Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    aget-object v14, v11, v13

    .line 236
    .line 237
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v14

    .line 241
    add-int/lit16 v15, v10, -0x3e7

    .line 242
    .line 243
    if-gt v14, v15, :cond_1

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_1
    const-string v0, "%s,%s,%d,%s,%s,%s,%s\n"

    .line 247
    .line 248
    aget-object v18, v11, v9

    .line 249
    .line 250
    aget-object v19, v11, v16

    .line 251
    .line 252
    sub-int/2addr v14, v15

    .line 253
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v20

    .line 257
    const/4 v14, 0x3

    .line 258
    aget-object v21, v11, v14

    .line 259
    .line 260
    const/4 v14, 0x4

    .line 261
    aget-object v22, v11, v14

    .line 262
    .line 263
    const/4 v14, 0x5

    .line 264
    aget-object v23, v11, v14

    .line 265
    .line 266
    const/4 v14, 0x6

    .line 267
    aget-object v24, v11, v14

    .line 268
    .line 269
    filled-new-array/range {v18 .. v24}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v7, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 281
    .line 282
    const/16 v0, 0x3e7

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :catchall_2
    move-exception v0

    .line 286
    move-object v4, v0

    .line 287
    goto :goto_9

    .line 288
    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 289
    .line 290
    .line 291
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 292
    .line 293
    .line 294
    goto :goto_d

    .line 295
    :catch_6
    move-exception v0

    .line 296
    goto :goto_b

    .line 297
    :catch_7
    move-exception v0

    .line 298
    goto :goto_c

    .line 299
    :goto_9
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 300
    .line 301
    .line 302
    goto :goto_a

    .line 303
    :catchall_3
    move-exception v0

    .line 304
    :try_start_a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    :goto_a
    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 308
    :catch_8
    move-exception v0

    .line 309
    move/from16 v16, v14

    .line 310
    .line 311
    goto :goto_b

    .line 312
    :catch_9
    move-exception v0

    .line 313
    move/from16 v16, v14

    .line 314
    .line 315
    goto :goto_c

    .line 316
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    goto :goto_d

    .line 320
    :goto_c
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    move/from16 v4, v16

    .line 325
    .line 326
    invoke-direct {v1, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 330
    .line 331
    .line 332
    :cond_3
    :goto_d
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isWellTrained:Z

    .line 333
    .line 334
    if-eqz v0, :cond_7

    .line 335
    .line 336
    new-instance v14, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    const-string v15, "%s,%d,%d,%d,%d,%d,%d,%d,%d,%d"

    .line 346
    .line 347
    if-eqz v0, :cond_6

    .line 348
    .line 349
    :try_start_b
    new-instance v3, Ljava/io/BufferedReader;

    .line 350
    .line 351
    new-instance v0, Ljava/io/FileReader;

    .line 352
    .line 353
    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 354
    .line 355
    .line 356
    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 357
    .line 358
    .line 359
    :cond_4
    :goto_e
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 363
    if-eqz v0, :cond_5

    .line 364
    .line 365
    :try_start_d
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    if-eqz v2, :cond_4

    .line 370
    .line 371
    aget-object v4, v4, v9

    .line 372
    .line 373
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    if-nez v4, :cond_4

    .line 378
    .line 379
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 380
    .line 381
    .line 382
    goto :goto_e

    .line 383
    :catchall_4
    move-exception v0

    .line 384
    move-object v2, v0

    .line 385
    move-object/from16 v17, v3

    .line 386
    .line 387
    goto :goto_10

    .line 388
    :cond_5
    :try_start_e
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScore:I

    .line 389
    .line 390
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    iget v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 395
    .line 396
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 401
    .line 402
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    iget v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 407
    .line 408
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    iget v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 413
    .line 414
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v7

    .line 418
    iget v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 419
    .line 420
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v8

    .line 424
    iget v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 425
    .line 426
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    iget v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aBenefit:I

    .line 431
    .line 432
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v10

    .line 436
    iget v11, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->bfCnt:I

    .line 437
    .line 438
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 442
    move-object/from16 v17, v3

    .line 443
    .line 444
    move-object v3, v0

    .line 445
    :try_start_f
    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 454
    .line 455
    .line 456
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 457
    .line 458
    .line 459
    goto/16 :goto_15

    .line 460
    .line 461
    :catch_a
    move-exception v0

    .line 462
    goto :goto_12

    .line 463
    :catch_b
    move-exception v0

    .line 464
    const/4 v4, 0x1

    .line 465
    goto :goto_13

    .line 466
    :catch_c
    move-exception v0

    .line 467
    goto :goto_14

    .line 468
    :catchall_5
    move-exception v0

    .line 469
    :goto_f
    move-object v2, v0

    .line 470
    goto :goto_10

    .line 471
    :catchall_6
    move-exception v0

    .line 472
    move-object/from16 v17, v3

    .line 473
    .line 474
    goto :goto_f

    .line 475
    :goto_10
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 476
    .line 477
    .line 478
    goto :goto_11

    .line 479
    :catchall_7
    move-exception v0

    .line 480
    :try_start_12
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 481
    .line 482
    .line 483
    :goto_11
    throw v2
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    .line 484
    :goto_12
    invoke-static {v12, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    const/4 v4, 0x1

    .line 489
    invoke-direct {v1, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    .line 494
    .line 495
    goto :goto_15

    .line 496
    :goto_13
    invoke-static {v12, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-direct {v1, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 504
    .line 505
    .line 506
    goto :goto_15

    .line 507
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-direct {v1, v2, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 523
    .line 524
    .line 525
    goto :goto_15

    .line 526
    :cond_6
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScore:I

    .line 527
    .line 528
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 533
    .line 534
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 539
    .line 540
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 545
    .line 546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object v6

    .line 550
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 551
    .line 552
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 557
    .line 558
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 559
    .line 560
    .line 561
    move-result-object v8

    .line 562
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 563
    .line 564
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 565
    .line 566
    .line 567
    move-result-object v9

    .line 568
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aBenefit:I

    .line 569
    .line 570
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->bfCnt:I

    .line 575
    .line 576
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 577
    .line 578
    .line 579
    move-result-object v11

    .line 580
    move-object/from16 v2, p1

    .line 581
    .line 582
    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    :goto_15
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->FnHistoryFileName:Ljava/lang/String;

    .line 594
    .line 595
    invoke-direct {v1, v14, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveStrListToFile(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 596
    .line 597
    .line 598
    :cond_7
    return-void
.end method

.method private fnHistoryControl(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    const-string v0, " / "

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/io/File;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->FnHistoryFileName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 19
    .line 20
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 21
    .line 22
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 23
    .line 24
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 25
    .line 26
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 27
    .line 28
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 29
    .line 30
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aBenefit:I

    .line 31
    .line 32
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->bfCnt:I

    .line 33
    .line 34
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    .line 40
    .line 41
    new-instance v5, Ljava/io/FileReader;

    .line 42
    .line 43
    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v5, 0x2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    const-string v6, ","

    .line 57
    .line 58
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    aget-object v7, v6, v1

    .line 65
    .line 66
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_1

    .line 71
    .line 72
    if-eqz p2, :cond_0

    .line 73
    .line 74
    array-length v2, v6

    .line 75
    const/16 v7, 0xa

    .line 76
    .line 77
    if-ne v2, v7, :cond_0

    .line 78
    .line 79
    const/4 v2, 0x3

    .line 80
    aget-object v2, v6, v2

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 87
    .line 88
    const/4 v2, 0x7

    .line 89
    aget-object v2, v6, v2

    .line 90
    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 96
    .line 97
    aget-object v2, v6, v5

    .line 98
    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 104
    .line 105
    const/4 v2, 0x6

    .line 106
    aget-object v2, v6, v2

    .line 107
    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 113
    .line 114
    const/4 v2, 0x4

    .line 115
    aget-object v2, v6, v2

    .line 116
    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 122
    .line 123
    const/4 v2, 0x5

    .line 124
    aget-object v2, v6, v2

    .line 125
    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 131
    .line 132
    const/16 v2, 0x8

    .line 133
    .line 134
    aget-object v2, v6, v2

    .line 135
    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aBenefit:I

    .line 141
    .line 142
    const/16 v2, 0x9

    .line 143
    .line 144
    aget-object v2, v6, v2

    .line 145
    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->bfCnt:I

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catchall_0
    move-exception p1

    .line 154
    goto :goto_2

    .line 155
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    if-nez p2, :cond_3

    .line 160
    .line 161
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->FnHistoryFileName:Ljava/lang/String;

    .line 162
    .line 163
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveStrListToFile(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v2, "Fn history: "

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 186
    .line 187
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 194
    .line 195
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .line 212
    .line 213
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :catch_0
    move-exception p1

    .line 218
    goto :goto_4

    .line 219
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :catchall_1
    move-exception v0

    .line 224
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 228
    :goto_4
    if-eqz p2, :cond_4

    .line 229
    .line 230
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 231
    .line 232
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 233
    .line 234
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 235
    .line 236
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 237
    .line 238
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 239
    .line 240
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 241
    .line 242
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aBenefit:I

    .line 243
    .line 244
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->bfCnt:I

    .line 245
    .line 246
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v0, "Fn history ctl err: "

    .line 249
    .line 250
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const/4 p2, 0x1

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    return-void
.end method

.method private getBatteryLevel()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/16 v1, 0x50

    .line 12
    .line 13
    if-le p0, v1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    return p0

    .line 17
    :cond_0
    const/16 v1, 0x14

    .line 18
    .line 19
    if-le p0, v1, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    return v0
.end method

.method private getEditedBssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

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
    :try_start_0
    const-string v0, ":"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    array-length v0, p1

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v1, v0, :cond_1

    .line 18
    .line 19
    aget-object v3, p1, v1

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-le v2, v4, :cond_0

    .line 25
    .line 26
    const/4 v4, 0x6

    .line 27
    if-ge v2, v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "Retrieving PID err: "

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "SemWifiIntelligentConnectionManager"

    .line 57
    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    const-string p0, "00000000"

    .line 65
    .line 66
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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

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

.method private getPidList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "PID list retrieval err: "

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TrainingStatisticsPrefix:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, "_"

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhMode:I

    .line 29
    .line 30
    const-string v3, ".csv"

    .line 31
    .line 32
    invoke-static {v3, p1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v2, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v3, 0x1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 54
    .line 55
    new-instance v4, Ljava/io/FileReader;

    .line 56
    .line 57
    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    const-string v4, ","

    .line 70
    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v4, 0x0

    .line 76
    aget-object v5, v2, v4

    .line 77
    .line 78
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_0

    .line 83
    .line 84
    aget-object v2, v2, v4

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v2

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    .line 94
    .line 95
    return-object p1

    .line 96
    :catch_0
    move-exception v1

    .line 97
    goto :goto_3

    .line 98
    :catch_1
    move-exception v1

    .line 99
    goto :goto_4

    .line 100
    :catch_2
    move-exception v1

    .line 101
    goto :goto_5

    .line 102
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catchall_1
    move-exception v1

    .line 107
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 111
    :goto_3
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    goto :goto_6

    .line 122
    :goto_4
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/4 v2, 0x2

    .line 146
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :goto_6
    return-object p1

    .line 153
    :cond_2
    const-string v0, "Tr statistics not existing"

    .line 154
    .line 155
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    return-object p1
.end method

.method private getRandGroupKey()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance p0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    const/16 v2, 0xa

    .line 17
    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    const/16 v2, 0x3e

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/util/Random;->nextInt(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method private getSemWifiConfiguration(I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->savedSemConfigList:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->savedSemConfigList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_2
    return-object v0
.end method

.method private getUtilizationRatio(I)I
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

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "wifi"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private initProxyEventReceiver(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private isCarrierNetwork()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

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

.method private isCharging()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    return v0
.end method

.method private isConfigured(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/SecurityParams;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SecurityParams;

    .line 6
    invoke-virtual {p2}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v3

    invoke-virtual {v2}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v2

    if-ne v3, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private isConfigured(Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 7
    iget-object p0, p3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SecurityParams;

    .line 10
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isEapNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SecurityParams;

    .line 4
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isEapNetwork(Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    const/16 p1, 0x9

    if-eq p0, p1, :cond_1

    const/16 p1, 0xb

    if-eq p0, p1, :cond_1

    const/16 p1, 0xc

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isFocusAppAGame()Z
    .locals 5

    .line 1
    const-string v0, "Pkg info: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_3

    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    .line 23
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFcsPkgName:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " / "

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v4, 0x2

    .line 75
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFcsPkgName:Ljava/lang/String;

    .line 79
    .line 80
    :cond_2
    invoke-static {v3}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    return p0

    .line 85
    :cond_3
    const-string v0, "Game Manager is unavailable"

    .line 86
    .line 87
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    return v1

    .line 91
    :goto_1
    const-string v3, "Pkg chk err: "

    .line 92
    .line 93
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    return v1
.end method

.method private isInternetNotRequiredNetwork()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

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
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "Inet access not required"

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method private isLegacyMultiNetwork(Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getIssueUidForConnectingNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 26
    .line 27
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isMultiNetworkAvailableApp(IILjava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method private isMatched(Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-static {p3}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/net/wifi/SecurityParams;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p2, p1, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method private isMultiNetwork(Landroid/net/wifi/WifiInfo;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isLegacyMultiNetwork(Landroid/net/wifi/WifiInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, -0x1

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 22
    .line 23
    if-eq v2, v4, :cond_3

    .line 24
    .line 25
    :cond_1
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 26
    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v2, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_3
    :goto_0
    move v2, v3

    .line 35
    :goto_1
    if-eqz v2, :cond_5

    .line 36
    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v6, "isMultiNetwork : "

    .line 40
    .line 41
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 45
    .line 46
    if-eqz v6, :cond_4

    .line 47
    .line 48
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 49
    .line 50
    if-ne v6, v4, :cond_4

    .line 51
    .line 52
    move v1, v3

    .line 53
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " || "

    .line 57
    .line 58
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 62
    .line 63
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 v0, 0x2

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    :cond_5
    return v2
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getSemWifiConfiguration(I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string v0, "Inet access not expected"

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return p1

    .line 32
    :cond_2
    return v0
.end method

.method private isNormalAP(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAbnormalAPList:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAbnormalAPList:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->-$$Nest$fgetcnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AbnormalCntThreshold:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    if-lt p1, p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "NormalAP check failure: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return v0
.end method

.method private iwh_check_model()Z
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "/"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mGroupKey:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, "_"

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhMode:I

    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->CheckPointFile_policy_network_postFix:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/io/File;

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mGroupKey:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhMode:I

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->CheckPointFile_target_network_postFix:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_0

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_0

    .line 104
    .line 105
    const/4 p0, 0x1

    .line 106
    return p0

    .line 107
    :cond_0
    const/4 p0, 0x0

    .line 108
    return p0
.end method

.method private iwh_predict_action()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aiInfServiceIntent:Landroid/content/Intent;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhInfServiceConnection:Landroid/content/ServiceConnection;

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception v1

    .line 13
    const-string v2, "IWH inf. service bind err:"

    .line 14
    .line 15
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->unSeenBssid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private synthetic lambda$initProxyEventReceiver$0(II)V
    .locals 3

    .line 1
    if-eq p1, p2, :cond_2

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    const/4 v0, 0x2

    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    if-eq p1, p2, :cond_1

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->selectionTimeStamp:J

    .line 14
    .line 15
    const-string p1, "WIFI ON"

    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->selectionTimeStamp:J

    .line 22
    .line 23
    const-string p1, "WIFI OFF"

    .line 24
    .line 25
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    return-void
.end method

.method private makeWifiManagerWithAttributionSourceUsingWifiUid()Landroid/net/wifi/WifiManager;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/content/AttributionSource$Builder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v0, "android"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "ATTRIBUTION_TAG_DISALLOW_CONNECT_CHOICE"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/AttributionSource$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-class v2, Landroid/permission/PermissionManager;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/permission/PermissionManager;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    new-instance v1, Landroid/content/ContextParams$Builder;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/content/ContextParams$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/content/ContextParams$Builder;->setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/ContextParams$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 66
    .line 67
    return-object p0
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

.method private pScanTimeQuery()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPartialScanTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x2710

    .line 9
    .line 10
    cmp-long p0, v0, v2

    .line 11
    .line 12
    if-gez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0
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
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mcsMapToStreamMap(II)I

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
    const-string v1, "iwh.deactivation"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "iwh.activation"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$5;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x2

    .line 24
    invoke-virtual {v1, v2, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private registerForSettingsChanges()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$13;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$13;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 15
    .line 16
    const-string v3, "sem_wifi_switch_to_better_wifi_enabled"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 33
    .line 34
    const-string v4, "sem_wifi_switch_to_better_wifi_on_screen_enabled"

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 50
    .line 51
    const-string v2, "wifi_handover_ai_mode"

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v1, p0, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private resetAllData(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_2

    .line 15
    .line 16
    aget-object v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->resetAllData(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    const-string v2, "SemWifiIntelligentConnectionManager"

    .line 42
    .line 43
    const-string v3, "Failed to delete file"

    .line 44
    .line 45
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-void
.end method

.method private resetScanData(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->ScanFileNamePrefix:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ".csv"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Ljava/io/File;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_0

    .line 46
    .line 47
    const-string p0, "SemWifiIntelligentConnectionManager"

    .line 48
    .line 49
    const-string p1, "Failed to delete file"

    .line 50
    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private resetTrainedData()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->policyNetworkFileName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->targetNetworkFileName:Ljava/lang/String;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v0, "Failed to delete file"

    const-string v3, "SemWifiIntelligentConnectionManager"

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private resetTrainedData(Ljava/lang/String;)V
    .locals 8

    .line 10
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->CheckPointFile_policy_network_postFix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->CheckPointFile_target_network_postFix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TrainingStatisticsPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".csv"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v6, "Failed to delete file"

    const-string v7, "SemWifiIntelligentConnectionManager"

    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 19
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 22
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 25
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private roamingGroupManagement(Ljava/lang/String;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v7, ""

    .line 6
    .line 7
    const-string v8, "Assoc history ctl err: "

    .line 8
    .line 9
    const-string v9, ","

    .line 10
    .line 11
    new-instance v2, Ljava/io/File;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/io/File;

    .line 19
    .line 20
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->RoamingGroupFileName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v10, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v11, 0x0

    .line 35
    if-eqz v2, :cond_5

    .line 36
    .line 37
    const/4 v12, 0x2

    .line 38
    const/4 v13, 0x1

    .line 39
    :try_start_0
    new-instance v14, Ljava/io/BufferedReader;

    .line 40
    .line 41
    new-instance v2, Ljava/io/FileReader;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v14, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 47
    .line 48
    .line 49
    move v2, v11

    .line 50
    :goto_0
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    new-instance v15, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Ljava/lang/String;

    .line 91
    .line 92
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mGroupKey:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    if-eqz v3, :cond_0

    .line 99
    .line 100
    move/from16 v16, v13

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_0
    move/from16 v16, v2

    .line 104
    .line 105
    :goto_1
    :try_start_2
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->resetScanData(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/String;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v3, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->trHistoryControl(Ljava/lang/String;ZIII)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ljava/lang/String;

    .line 132
    .line 133
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->resetTrainedData(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Ljava/lang/String;

    .line 141
    .line 142
    invoke-direct {v1, v2, v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->fnHistoryControl(Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-le v2, v12, :cond_2

    .line 150
    .line 151
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Ljava/lang/String;

    .line 156
    .line 157
    move v3, v13

    .line 158
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-ge v3, v4, :cond_1

    .line 163
    .line 164
    const-string v4, "%s,%s"

    .line 165
    .line 166
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    add-int/lit8 v3, v3, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    move-object v2, v0

    .line 183
    move/from16 v11, v16

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_1
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    .line 188
    .line 189
    :cond_2
    move/from16 v2, v16

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :catchall_1
    move-exception v0

    .line 194
    move v11, v2

    .line 195
    move-object v2, v0

    .line 196
    goto :goto_3

    .line 197
    :cond_3
    :try_start_3
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_4
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 203
    .line 204
    .line 205
    move v11, v2

    .line 206
    goto :goto_8

    .line 207
    :catch_0
    move-exception v0

    .line 208
    move v11, v2

    .line 209
    goto :goto_5

    .line 210
    :catch_1
    move-exception v0

    .line 211
    move v11, v2

    .line 212
    goto :goto_6

    .line 213
    :catch_2
    move-exception v0

    .line 214
    move v11, v2

    .line 215
    goto :goto_7

    .line 216
    :goto_3
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :catchall_2
    move-exception v0

    .line 221
    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    :goto_4
    throw v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 225
    :catch_3
    move-exception v0

    .line 226
    goto :goto_5

    .line 227
    :catch_4
    move-exception v0

    .line 228
    goto :goto_6

    .line 229
    :catch_5
    move-exception v0

    .line 230
    goto :goto_7

    .line 231
    :goto_5
    invoke-static {v8, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-direct {v1, v2, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    goto :goto_8

    .line 242
    :goto_6
    invoke-static {v8, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-direct {v1, v2, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    goto :goto_8

    .line 253
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-direct {v1, v2, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    :cond_5
    :goto_8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->RoamingGroupFileName:Ljava/lang/String;

    .line 272
    .line 273
    invoke-direct {v1, v10, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveStrListToFile(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    return v11
.end method

.method private roamingGroupQuery(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v4, Ljava/io/File;

    .line 15
    .line 16
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->RoamingGroupFileName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v6, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    const-string v8, "Assoc history ctl err: "

    .line 33
    .line 34
    const-string v9, ""

    .line 35
    .line 36
    const/4 v10, 0x1

    .line 37
    const-string v11, ","

    .line 38
    .line 39
    const/4 v12, 0x0

    .line 40
    const/4 v13, 0x0

    .line 41
    if-nez p3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 50
    .line 51
    new-instance v0, Ljava/io/FileReader;

    .line 52
    .line 53
    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    new-instance v4, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    move-object v12, v0

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    move-object v2, v0

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .line 101
    .line 102
    return-object v12

    .line 103
    :catch_0
    move-exception v0

    .line 104
    goto :goto_3

    .line 105
    :catch_1
    move-exception v0

    .line 106
    goto :goto_4

    .line 107
    :catch_2
    move-exception v0

    .line 108
    goto :goto_5

    .line 109
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 118
    :goto_3
    invoke-static {v8, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-direct {v1, v2, v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    goto :goto_6

    .line 129
    :goto_4
    invoke-static {v8, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-direct {v1, v2, v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-direct {v1, v2, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    :cond_2
    :goto_6
    return-object v12

    .line 159
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_e

    .line 164
    .line 165
    :try_start_5
    new-instance v14, Ljava/io/BufferedReader;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 166
    .line 167
    :try_start_6
    new-instance v0, Ljava/io/FileReader;

    .line 168
    .line 169
    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 170
    .line 171
    .line 172
    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 173
    .line 174
    .line 175
    move v4, v13

    .line 176
    :goto_7
    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_d

    .line 181
    .line 182
    new-instance v15, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v16

    .line 188
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-nez v7, :cond_4

    .line 204
    .line 205
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    check-cast v7, Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_9

    .line 215
    :catchall_2
    move-exception v0

    .line 216
    move v7, v4

    .line 217
    :goto_8
    move-object v4, v0

    .line 218
    goto/16 :goto_12

    .line 219
    .line 220
    :cond_4
    :goto_9
    if-nez v4, :cond_c

    .line 221
    .line 222
    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-eqz v7, :cond_5

    .line 231
    .line 232
    :goto_a
    move v4, v10

    .line 233
    goto :goto_c

    .line 234
    :cond_5
    move v7, v13

    .line 235
    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    if-ge v7, v13, :cond_7

    .line 240
    .line 241
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    check-cast v13, Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v13, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 255
    if-eqz v13, :cond_6

    .line 256
    .line 257
    goto :goto_a

    .line 258
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 259
    .line 260
    goto :goto_b

    .line 261
    :cond_7
    :goto_c
    if-eqz v4, :cond_b

    .line 262
    .line 263
    :try_start_8
    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 271
    const-string v13, "EC: "

    .line 272
    .line 273
    if-nez v7, :cond_8

    .line 274
    .line 275
    :try_start_9
    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    new-instance v10, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEnvChange:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 298
    .line 299
    const/4 v10, 0x1

    .line 300
    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 301
    .line 302
    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    const/4 v10, 0x2

    .line 319
    invoke-direct {v1, v7, v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 320
    .line 321
    .line 322
    :cond_8
    const/4 v7, 0x0

    .line 323
    :goto_d
    :try_start_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    if-ge v7, v10, :cond_a

    .line 328
    .line 329
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    check-cast v10, Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v10

    .line 343
    if-nez v10, :cond_9

    .line 344
    .line 345
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    check-cast v10, Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 355
    move/from16 p3, v4

    .line 356
    .line 357
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEnvChange:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 376
    .line 377
    const/4 v10, 0x1

    .line 378
    invoke-virtual {v4, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 379
    .line 380
    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    check-cast v10, Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    const/4 v10, 0x2

    .line 403
    invoke-direct {v1, v4, v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 404
    .line 405
    .line 406
    goto :goto_f

    .line 407
    :catchall_3
    move-exception v0

    .line 408
    :goto_e
    move/from16 v7, p3

    .line 409
    .line 410
    goto/16 :goto_8

    .line 411
    .line 412
    :catchall_4
    move-exception v0

    .line 413
    move/from16 p3, v4

    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_9
    move/from16 p3, v4

    .line 417
    .line 418
    :goto_f
    add-int/lit8 v7, v7, 0x1

    .line 419
    .line 420
    move/from16 v4, p3

    .line 421
    .line 422
    goto :goto_d

    .line 423
    :cond_a
    move/from16 p3, v4

    .line 424
    .line 425
    const/4 v4, 0x0

    .line 426
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    check-cast v7, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 431
    .line 432
    move/from16 v4, p3

    .line 433
    .line 434
    move-object v12, v7

    .line 435
    goto :goto_10

    .line 436
    :cond_b
    move/from16 p3, v4

    .line 437
    .line 438
    :cond_c
    :goto_10
    :try_start_c
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 439
    .line 440
    .line 441
    const/4 v7, 0x2

    .line 442
    const/4 v10, 0x1

    .line 443
    const/4 v13, 0x0

    .line 444
    goto/16 :goto_7

    .line 445
    .line 446
    :cond_d
    :try_start_d
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 447
    .line 448
    .line 449
    goto :goto_17

    .line 450
    :catch_3
    move-exception v0

    .line 451
    goto :goto_14

    .line 452
    :catch_4
    move-exception v0

    .line 453
    :goto_11
    const/4 v10, 0x1

    .line 454
    goto :goto_15

    .line 455
    :catch_5
    move-exception v0

    .line 456
    goto :goto_16

    .line 457
    :goto_12
    :try_start_e
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 458
    .line 459
    .line 460
    goto :goto_13

    .line 461
    :catchall_5
    move-exception v0

    .line 462
    :try_start_f
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 463
    .line 464
    .line 465
    :goto_13
    throw v4
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 466
    :catch_6
    move-exception v0

    .line 467
    move v4, v7

    .line 468
    goto :goto_14

    .line 469
    :catch_7
    move-exception v0

    .line 470
    move v4, v7

    .line 471
    goto :goto_11

    .line 472
    :catch_8
    move-exception v0

    .line 473
    move v4, v7

    .line 474
    goto :goto_16

    .line 475
    :catch_9
    move-exception v0

    .line 476
    const/4 v4, 0x0

    .line 477
    goto :goto_14

    .line 478
    :catch_a
    move-exception v0

    .line 479
    const/4 v4, 0x0

    .line 480
    goto :goto_11

    .line 481
    :catch_b
    move-exception v0

    .line 482
    const/4 v4, 0x0

    .line 483
    goto :goto_16

    .line 484
    :goto_14
    invoke-static {v8, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    const/4 v10, 0x1

    .line 489
    invoke-direct {v1, v7, v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    .line 494
    .line 495
    goto :goto_17

    .line 496
    :catch_c
    move-exception v0

    .line 497
    const/4 v4, 0x0

    .line 498
    :goto_15
    invoke-static {v8, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    invoke-direct {v1, v7, v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 506
    .line 507
    .line 508
    goto :goto_17

    .line 509
    :goto_16
    new-instance v7, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v7

    .line 521
    const/4 v10, 0x2

    .line 522
    invoke-direct {v1, v7, v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 526
    .line 527
    .line 528
    goto :goto_17

    .line 529
    :cond_e
    const/4 v4, 0x0

    .line 530
    :goto_17
    if-nez v4, :cond_11

    .line 531
    .line 532
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getRandGroupKey()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    move-object v12, v0

    .line 537
    :goto_18
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-eqz v0, :cond_f

    .line 542
    .line 543
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getRandGroupKey()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v12

    .line 547
    goto :goto_18

    .line 548
    :cond_f
    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    const/4 v4, 0x0

    .line 571
    :goto_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-ge v4, v2, :cond_10

    .line 576
    .line 577
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    check-cast v2, Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    new-instance v6, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    add-int/lit8 v4, v4, 0x1

    .line 606
    .line 607
    goto :goto_19

    .line 608
    :cond_10
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    :cond_11
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEnvChange:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 612
    .line 613
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    if-eqz v0, :cond_12

    .line 618
    .line 619
    invoke-direct {v1, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->resetScanData(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-direct {v1, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->resetTrainedData(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    const/4 v4, 0x0

    .line 626
    invoke-direct {v1, v12, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->fnHistoryControl(Ljava/lang/String;Z)V

    .line 627
    .line 628
    .line 629
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 630
    .line 631
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 632
    .line 633
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 634
    .line 635
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 636
    .line 637
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 638
    .line 639
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 640
    .line 641
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aBenefit:I

    .line 642
    .line 643
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->bfCnt:I

    .line 644
    .line 645
    :cond_12
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->RoamingGroupFileName:Ljava/lang/String;

    .line 646
    .line 647
    invoke-direct {v1, v5, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveStrListToFile(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 648
    .line 649
    .line 650
    return-object v12
.end method

.method private saveDebugScanResults(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, " \n"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "scanResults.txt"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveStringToFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private saveDebugTestResults(Ljava/lang/String;)V
    .locals 4

    .line 1
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
    const-string p1, " \n"

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "testResults.txt"

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveStringToFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private saveScanResultsToCsv(Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/io/File;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scanFileName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v3, ","

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v6, "KEY, PID, count, score, RSSI, EAP, Frequency\n"

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    const-string v8, ""

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    new-instance v1, Ljava/io/BufferedReader;

    .line 32
    .line 33
    new-instance v9, Ljava/io/FileReader;

    .line 34
    .line 35
    invoke-direct {v9, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    if-eqz v9, :cond_0

    .line 47
    .line 48
    move-object v2, v9

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 51
    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x2

    .line 60
    aget-object v9, v1, v2

    .line 61
    .line 62
    const-string v10, "count"

    .line 63
    .line 64
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-nez v9, :cond_1

    .line 69
    .line 70
    aget-object v1, v1, v2

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v1, v7

    .line 77
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 78
    .line 79
    move-object v6, v8

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    iput v5, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iput v5, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iput v5, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 88
    .line 89
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_7

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 104
    .line 105
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->savedConfigList:Ljava/util/List;

    .line 106
    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_5

    .line 118
    .line 119
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 124
    .line 125
    invoke-direct {v0, v2, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isConfigured(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-eqz v10, :cond_4

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    const/4 v9, 0x0

    .line 133
    :goto_3
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 134
    .line 135
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->reset()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-direct {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->updateThroughputParamsFromIes(Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getMaxNumberSpatialStreams()I

    .line 148
    .line 149
    .line 150
    move-result v16

    .line 151
    if-nez v9, :cond_6

    .line 152
    .line 153
    move-object v9, v8

    .line 154
    goto :goto_4

    .line 155
    :cond_6
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v5, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    move-object v9, v5

    .line 164
    :goto_4
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 165
    .line 166
    invoke-direct {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getEditedBssid(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    iget v10, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 171
    .line 172
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v20

    .line 176
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 177
    .line 178
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    iget v13, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 185
    .line 186
    iget v14, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 187
    .line 188
    iget v15, v2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 189
    .line 190
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    .line 193
    .line 194
    .line 195
    move-result v17

    .line 196
    iget v4, v2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 197
    .line 198
    invoke-direct {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getUtilizationRatio(I)I

    .line 199
    .line 200
    .line 201
    move-result v18

    .line 202
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIsBluetoothConnected:Z

    .line 203
    .line 204
    move/from16 v19, v4

    .line 205
    .line 206
    invoke-virtual/range {v10 .. v19}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    iget v4, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 215
    .line 216
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isEapNetwork(Landroid/net/wifi/ScanResult;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 229
    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v15

    .line 234
    move-object v10, v5

    .line 235
    move-object/from16 v11, v20

    .line 236
    .line 237
    filled-new-array/range {v9 .. v15}, [Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    const-string v4, "%s,%s,%d,%d,%d,%d,%d\n"

    .line 242
    .line 243
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-static {v6, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scanFileName:Ljava/lang/String;

    .line 254
    .line 255
    invoke-direct {v0, v6, v1, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveStringToFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_8

    .line 260
    .line 261
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 262
    .line 263
    add-int/2addr v1, v7

    .line 264
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 265
    .line 266
    :cond_8
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_9

    .line 273
    .line 274
    invoke-direct {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveDebugScanResults(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :cond_9
    return-void
.end method

.method private saveStrListToFile(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance p2, Ljava/io/BufferedWriter;

    .line 28
    .line 29
    new-instance v0, Ljava/io/FileWriter;

    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 32
    .line 33
    .line 34
    const/high16 p0, 0x100000

    .line 35
    .line 36
    invoke-direct {p2, v0, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    move p0, v1

    .line 40
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ge p0, v0, :cond_1

    .line 45
    .line 46
    const-string v0, "%s\n"

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 p0, p0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    .line 74
    .line 75
    return p0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_3

    .line 78
    :catch_1
    move-exception p0

    .line 79
    goto :goto_4

    .line 80
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 89
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    return v1

    .line 93
    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    return v1
.end method

.method private saveStringToFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance p2, Ljava/io/BufferedWriter;

    .line 28
    .line 29
    new-instance v0, Ljava/io/FileWriter;

    .line 30
    .line 31
    invoke-direct {v0, p0, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 32
    .line 33
    .line 34
    const/high16 p0, 0x100000

    .line 35
    .line 36
    invoke-direct {p2, v0, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .line 48
    .line 49
    return p0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_1
    move-exception p1

    .line 60
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 64
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    return v1

    .line 68
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    return v1
.end method

.method private trHistoryCheck(Ljava/lang/String;I)[I
    .locals 11

    .line 1
    const-string v0, "Assoc history ctl err: "

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/io/File;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TrHistoryFileName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    new-array v3, v1, [I

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput v4, v3, v4

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    aput v4, v3, v5

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    aput v4, v3, v6

    .line 28
    .line 29
    const/4 v7, 0x3

    .line 30
    aput v4, v3, v7

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eqz v8, :cond_2

    .line 37
    .line 38
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    .line 39
    .line 40
    new-instance v9, Ljava/io/FileReader;

    .line 41
    .line 42
    invoke-direct {v9, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    const-string v9, ","

    .line 55
    .line 56
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    aget-object v9, v2, v4

    .line 63
    .line 64
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-eqz v9, :cond_0

    .line 69
    .line 70
    aget-object v9, v2, v6

    .line 71
    .line 72
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-ne v9, p2, :cond_0

    .line 77
    .line 78
    array-length v9, v2

    .line 79
    const/4 v10, 0x5

    .line 80
    if-ne v9, v10, :cond_0

    .line 81
    .line 82
    aget-object v9, v2, v5

    .line 83
    .line 84
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    aput v9, v3, v4

    .line 89
    .line 90
    aget-object v9, v2, v6

    .line 91
    .line 92
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    aput v9, v3, v5

    .line 97
    .line 98
    aget-object v9, v2, v7

    .line 99
    .line 100
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    aput v9, v3, v6

    .line 105
    .line 106
    aget-object v2, v2, v1

    .line 107
    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    aput v2, v3, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    .line 119
    .line 120
    return-object v3

    .line 121
    :catch_0
    move-exception p1

    .line 122
    goto :goto_3

    .line 123
    :catch_1
    move-exception p1

    .line 124
    goto :goto_4

    .line 125
    :catch_2
    move-exception p1

    .line 126
    goto :goto_5

    .line 127
    :catch_3
    move-exception p1

    .line 128
    goto :goto_6

    .line 129
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catchall_1
    move-exception p2

    .line 134
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 138
    :goto_3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    goto :goto_7

    .line 149
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    goto :goto_7

    .line 168
    :goto_5
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    goto :goto_7

    .line 179
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-direct {p0, p2, v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    :cond_2
    :goto_7
    return-object v3
.end method

.method private trHistoryControl(Ljava/lang/String;ZIII)V
    .locals 13

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TrHistoryFileName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, ","

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x1

    .line 24
    const-string v5, "Tr history ctl err: "

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    if-eqz p2, :cond_6

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    const-string v8, "%s,%d,%d,%d,%d"

    .line 34
    .line 35
    if-eqz v7, :cond_5

    .line 36
    .line 37
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 38
    .line 39
    new-instance v9, Ljava/io/FileReader;

    .line 40
    .line 41
    invoke-direct {v9, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    move v1, v6

    .line 48
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    if-eqz v9, :cond_3

    .line 53
    .line 54
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    aget-object v11, v10, v6

    .line 61
    .line 62
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    if-eqz v11, :cond_0

    .line 67
    .line 68
    aget-object v10, v10, v3

    .line 69
    .line 70
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    move/from16 v11, p4

    .line 75
    .line 76
    if-ne v10, v11, :cond_1

    .line 77
    .line 78
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    iget v12, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScanCnt:I

    .line 91
    .line 92
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    filled-new-array {p1, v1, v9, v10, v12}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move v1, v4

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    move-object p1, v0

    .line 111
    goto :goto_1

    .line 112
    :cond_0
    move/from16 v11, p4

    .line 113
    .line 114
    :cond_1
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    move/from16 v11, p4

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    move/from16 v11, p4

    .line 122
    .line 123
    if-nez v1, :cond_4

    .line 124
    .line 125
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iget v9, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScanCnt:I

    .line 138
    .line 139
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    filled-new-array {p1, v0, v1, v6, v9}, [Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v8, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    .line 154
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    .line 156
    .line 157
    goto/16 :goto_c

    .line 158
    .line 159
    :catch_0
    move-exception v0

    .line 160
    move-object p1, v0

    .line 161
    goto :goto_3

    .line 162
    :catch_1
    move-exception v0

    .line 163
    move-object p1, v0

    .line 164
    goto :goto_4

    .line 165
    :catch_2
    move-exception v0

    .line 166
    move-object p1, v0

    .line 167
    goto :goto_5

    .line 168
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catchall_1
    move-exception v0

    .line 173
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 177
    :goto_3
    invoke-static {v5, p1}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_c

    .line 188
    .line 189
    :goto_4
    invoke-static {v5, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_c

    .line 200
    .line 201
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :cond_5
    move/from16 v11, p4

    .line 222
    .line 223
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScanCnt:I

    .line 236
    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    filled-new-array {p1, v0, v1, v3, v4}, [Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {v8, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto/16 :goto_c

    .line 253
    .line 254
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    if-eqz v7, :cond_9

    .line 259
    .line 260
    :try_start_5
    new-instance v7, Ljava/io/BufferedReader;

    .line 261
    .line 262
    new-instance v8, Ljava/io/FileReader;

    .line 263
    .line 264
    invoke-direct {v8, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 265
    .line 266
    .line 267
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 268
    .line 269
    .line 270
    :goto_6
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    if-eqz v1, :cond_8

    .line 275
    .line 276
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    if-eqz p1, :cond_7

    .line 281
    .line 282
    aget-object v8, v8, v6

    .line 283
    .line 284
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    if-eqz v8, :cond_7

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :catchall_2
    move-exception v0

    .line 292
    move-object p1, v0

    .line 293
    goto :goto_7

    .line 294
    :cond_7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 295
    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_8
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 299
    .line 300
    .line 301
    goto :goto_c

    .line 302
    :catch_3
    move-exception v0

    .line 303
    move-object p1, v0

    .line 304
    goto :goto_9

    .line 305
    :catch_4
    move-exception v0

    .line 306
    move-object p1, v0

    .line 307
    goto :goto_a

    .line 308
    :catch_5
    move-exception v0

    .line 309
    move-object p1, v0

    .line 310
    goto :goto_b

    .line 311
    :goto_7
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 312
    .line 313
    .line 314
    goto :goto_8

    .line 315
    :catchall_3
    move-exception v0

    .line 316
    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 317
    .line 318
    .line 319
    :goto_8
    throw p1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 320
    :goto_9
    invoke-static {v5, p1}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    .line 329
    .line 330
    goto :goto_c

    .line 331
    :goto_a
    invoke-static {v5, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    .line 340
    .line 341
    goto :goto_c

    .line 342
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 358
    .line 359
    .line 360
    :cond_9
    :goto_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TrHistoryFileName:Ljava/lang/String;

    .line 361
    .line 362
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveStrListToFile(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 363
    .line 364
    .line 365
    return-void
.end method

.method private updateAbnormalAP(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAbnormalAPList:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAbnormalAPList:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->-$$Nest$fgetcnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    add-int/2addr v4, v2

    .line 27
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->-$$Nest$fputcnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;

    .line 34
    .line 35
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->-$$Nest$fputcnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static {v3, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->-$$Nest$fputlatestTimestamp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;J)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAbnormalAPList:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    const-string v0, "Update Abnormal AP err : "

    .line 51
    .line 52
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private updateBssLoadFromIe(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 4

    .line 1
    const-string v0, "SemWifiIntelligentConnectionManager"

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

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

.method private updateMaxNumberSpatialStreamsFromHeCap(Landroid/net/wifi/ScanResult$InformationElement;)V
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
    const-string v0, "SemWifiIntelligentConnectionManager"

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

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

.method private updateMaxNumberSpatialStreamsFromHtCap(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 5

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
    const-string v0, "SemWifiIntelligentConnectionManager"

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
    const/4 v1, 0x3

    .line 27
    aget-byte v0, v0, v1

    .line 28
    .line 29
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    aget-byte v0, v0, v2

    .line 33
    .line 34
    and-int/lit16 v0, v0, 0xff

    .line 35
    .line 36
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 37
    .line 38
    const/4 v4, 0x5

    .line 39
    aget-byte v3, v3, v4

    .line 40
    .line 41
    and-int/lit16 v3, v3, 0xff

    .line 42
    .line 43
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 44
    .line 45
    const/4 v4, 0x6

    .line 46
    aget-byte p1, p1, v4

    .line 47
    .line 48
    and-int/lit16 p1, p1, 0xff

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 51
    .line 52
    if-lez p1, :cond_1

    .line 53
    .line 54
    move v1, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    if-lez v3, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-lez v0, :cond_3

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v1, 0x1

    .line 64
    :goto_0
    iput v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    .line 65
    .line 66
    return-void
.end method

.method private updateMaxNumberSpatialStreamsFromVhtCap(Landroid/net/wifi/ScanResult$InformationElement;)V
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
    const-string v0, "SemWifiIntelligentConnectionManager"

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

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

.method private updateThroughputParamsFromIes(Ljava/util/List;)V
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
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->updateExtEhtOperation(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->updateMaxNumberSpatialStreamsFromHeCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->updateMaxNumberSpatialStreamsFromVhtCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->updateMaxNumberSpatialStreamsFromHtCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->updateBssLoadFromIe(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_6
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->AIdataLocation:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->FnHistoryFileName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/io/File;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->RoamingGroupFileName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHistory:Ljava/util/LinkedList;

    .line 23
    .line 24
    monitor-enter v3

    .line 25
    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    .line 26
    .line 27
    sget-object v5, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHistory:Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-direct {v4, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 33
    const-string v3, "SemWifiIntelligentConnectionManager history:"

    .line 34
    .line 35
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mGroupKey:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    const/4 v5, 0x1

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->TrainingStatisticsPrefix:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mGroupKey:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v6, "_"

    .line 83
    .line 84
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v6, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhMode:I

    .line 88
    .line 89
    const-string v7, ".csv"

    .line 90
    .line 91
    invoke-static {v7, v6, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    new-instance v6, Ljava/io/File;

    .line 96
    .line 97
    invoke-direct {v6, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 107
    .line 108
    new-instance v3, Ljava/io/FileReader;

    .line 109
    .line 110
    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    .line 115
    .line 116
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    const-string v6, ","

    .line 123
    .line 124
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    array-length v6, v3

    .line 129
    const/4 v7, 0x3

    .line 130
    const/4 v8, 0x4

    .line 131
    const/4 v9, 0x5

    .line 132
    const/4 v10, 0x0

    .line 133
    if-ne v6, v8, :cond_2

    .line 134
    .line 135
    aget-object v6, v3, v10

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    sub-int/2addr v8, v9

    .line 142
    aget-object v9, v3, v10

    .line 143
    .line 144
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    aget-object v8, v3, v5

    .line 153
    .line 154
    aget-object v9, v3, v4

    .line 155
    .line 156
    aget-object v3, v3, v7

    .line 157
    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v6, " "

    .line 167
    .line 168
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v6, " "

    .line 175
    .line 176
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v6, " "

    .line 183
    .line 184
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :catchall_0
    move-exception v3

    .line 199
    goto :goto_2

    .line 200
    :cond_2
    if-ne v6, v9, :cond_1

    .line 201
    .line 202
    aget-object v6, v3, v10

    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    sub-int/2addr v11, v9

    .line 209
    aget-object v9, v3, v10

    .line 210
    .line 211
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    aget-object v9, v3, v5

    .line 220
    .line 221
    aget-object v10, v3, v4

    .line 222
    .line 223
    aget-object v7, v3, v7

    .line 224
    .line 225
    aget-object v3, v3, v8

    .line 226
    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v6, " "

    .line 236
    .line 237
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v6, " "

    .line 244
    .line 245
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v6, " "

    .line 252
    .line 253
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v6, " "

    .line 260
    .line 261
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 277
    .line 278
    .line 279
    goto :goto_7

    .line 280
    :catch_0
    move-exception v0

    .line 281
    goto :goto_4

    .line 282
    :catch_1
    move-exception v0

    .line 283
    goto :goto_5

    .line 284
    :catch_2
    move-exception v0

    .line 285
    goto :goto_6

    .line 286
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 287
    .line 288
    .line 289
    goto :goto_3

    .line 290
    :catchall_1
    move-exception v0

    .line 291
    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    :goto_3
    throw v3
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 295
    :goto_4
    const-string v3, "Tr history dump err: "

    .line 296
    .line 297
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-direct {p0, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    .line 306
    .line 307
    goto :goto_7

    .line 308
    :goto_5
    const-string v3, "Tr history dump err: "

    .line 309
    .line 310
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-direct {p0, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 318
    .line 319
    .line 320
    goto :goto_7

    .line 321
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v6, "Tr history dump err: "

    .line 324
    .line 325
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-direct {p0, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 339
    .line 340
    .line 341
    :cond_4
    :goto_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_6

    .line 346
    .line 347
    const-string v0, "--- Functionality record START ---"

    .line 348
    .line 349
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    .line 353
    .line 354
    new-instance v3, Ljava/io/FileReader;

    .line 355
    .line 356
    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 357
    .line 358
    .line 359
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 360
    .line 361
    .line 362
    :goto_8
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    if-eqz v1, :cond_5

    .line 367
    .line 368
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 369
    .line 370
    .line 371
    goto :goto_8

    .line 372
    :catchall_2
    move-exception v1

    .line 373
    goto :goto_9

    .line 374
    :cond_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 375
    .line 376
    .line 377
    goto :goto_e

    .line 378
    :catch_3
    move-exception v0

    .line 379
    goto :goto_b

    .line 380
    :catch_4
    move-exception v0

    .line 381
    goto :goto_c

    .line 382
    :catch_5
    move-exception v0

    .line 383
    goto :goto_d

    .line 384
    :goto_9
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 385
    .line 386
    .line 387
    goto :goto_a

    .line 388
    :catchall_3
    move-exception v0

    .line 389
    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 390
    .line 391
    .line 392
    :goto_a
    throw v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 393
    :goto_b
    const-string v1, "Fn history chk err: "

    .line 394
    .line 395
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    .line 404
    .line 405
    goto :goto_e

    .line 406
    :goto_c
    const-string v1, "Fn history chk err: "

    .line 407
    .line 408
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 416
    .line 417
    .line 418
    goto :goto_e

    .line 419
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v3, "Fn history chk err: "

    .line 422
    .line 423
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-direct {p0, v1, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 437
    .line 438
    .line 439
    :goto_e
    const-string v0, "--- Functionality record END ---"

    .line 440
    .line 441
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-eqz v0, :cond_8

    .line 449
    .line 450
    :try_start_b
    new-instance v0, Ljava/io/BufferedReader;

    .line 451
    .line 452
    new-instance v1, Ljava/io/FileReader;

    .line 453
    .line 454
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 455
    .line 456
    .line 457
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 458
    .line 459
    .line 460
    :goto_f
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    if-eqz v1, :cond_7

    .line 465
    .line 466
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 467
    .line 468
    .line 469
    goto :goto_f

    .line 470
    :catchall_4
    move-exception v1

    .line 471
    goto :goto_10

    .line 472
    :cond_7
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 473
    .line 474
    .line 475
    goto :goto_15

    .line 476
    :catch_6
    move-exception v0

    .line 477
    goto :goto_12

    .line 478
    :catch_7
    move-exception v0

    .line 479
    goto :goto_13

    .line 480
    :catch_8
    move-exception v0

    .line 481
    goto :goto_14

    .line 482
    :goto_10
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 483
    .line 484
    .line 485
    goto :goto_11

    .line 486
    :catchall_5
    move-exception v0

    .line 487
    :try_start_f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 488
    .line 489
    .line 490
    :goto_11
    throw v1
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 491
    :goto_12
    const-string v1, "Group info chk err: "

    .line 492
    .line 493
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    .line 502
    .line 503
    goto :goto_15

    .line 504
    :goto_13
    const-string v1, "Group info chk err: "

    .line 505
    .line 506
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 514
    .line 515
    .line 516
    goto :goto_15

    .line 517
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    const-string v2, "Group info chk err: "

    .line 520
    .line 521
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-direct {p0, v1, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 535
    .line 536
    .line 537
    :cond_8
    :goto_15
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 538
    .line 539
    .line 540
    return-void

    .line 541
    :catchall_6
    move-exception p0

    .line 542
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 543
    throw p0
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mVerbose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getIwhState()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "\n\n"

    .line 2
    .line 3
    const-string v1, "\n\n"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_5

    .line 25
    .line 26
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSsid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, "|"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssid:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, "|"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhMode:I

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, "|"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "|"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->testTrMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    const-string v3, "T"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-string v3, "F"

    .line 78
    .line 79
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, "|"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->trProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    const-string v3, "T"

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const-string v3, "F"

    .line 99
    .line 100
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, "|"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    sget-boolean v3, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isWellTrained:Z

    .line 109
    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    const-string v3, "T"

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const-string v3, "F"

    .line 116
    .line 117
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v3, "|"

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->lastTrScore:I

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_4

    .line 140
    .line 141
    const-string v1, "Hand-over triggered"

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    const-string v1, "Hand-over not triggered"

    .line 145
    .line 146
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->testNeighboringApInfo:Ljava/lang/StringBuilder;

    .line 153
    .line 154
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->testNeighboringApInfo:Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    return-object p0

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 173
    :catch_0
    const-string p0, ""

    .line 174
    .line 175
    return-object p0
.end method

.method public getSamsungIwhCtrl()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhWlanTestControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->registerForSettingsChanges()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentTrainingManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "IWH"

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTrainingCallback:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;

    .line 45
    .line 46
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->registerCallback(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public hoDecisionFollowUp(Z)V
    .locals 51

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRssi:I

    .line 14
    .line 15
    const/4 v4, -0x1

    .line 16
    if-eq v3, v4, :cond_0

    .line 17
    .line 18
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRssi:I

    .line 27
    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mScanResultList:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    move-object/from16 v20, v3

    .line 42
    .line 43
    move v7, v4

    .line 44
    move v8, v7

    .line 45
    move v9, v8

    .line 46
    move v10, v9

    .line 47
    move v11, v10

    .line 48
    move v14, v11

    .line 49
    move v15, v14

    .line 50
    move/from16 v16, v15

    .line 51
    .line 52
    move/from16 v17, v16

    .line 53
    .line 54
    move/from16 v21, v17

    .line 55
    .line 56
    move/from16 v22, v21

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    const v5, 0x7fffffff

    .line 60
    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v12, 0x0

    .line 64
    const/4 v13, 0x0

    .line 65
    const/16 v18, 0x0

    .line 66
    .line 67
    const/16 v19, 0x0

    .line 68
    .line 69
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v23

    .line 73
    move-object/from16 v24, v13

    .line 74
    .line 75
    if-eqz v23, :cond_12

    .line 76
    .line 77
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v23

    .line 81
    const/16 v25, 0x1

    .line 82
    .line 83
    move-object/from16 v13, v23

    .line 84
    .line 85
    check-cast v13, Landroid/net/wifi/ScanResult;

    .line 86
    .line 87
    move-object/from16 v23, v12

    .line 88
    .line 89
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 90
    .line 91
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->reset()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v13}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    invoke-direct {v1, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->updateThroughputParamsFromIes(Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 102
    .line 103
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getMaxNumberSpatialStreams()I

    .line 104
    .line 105
    .line 106
    move-result v32

    .line 107
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 108
    .line 109
    move-object/from16 v26, v12

    .line 110
    .line 111
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 112
    .line 113
    invoke-virtual {v13}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    .line 114
    .line 115
    .line 116
    move-result v28

    .line 117
    move-object/from16 v27, v12

    .line 118
    .line 119
    iget v12, v13, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 120
    .line 121
    move/from16 v29, v12

    .line 122
    .line 123
    iget v12, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 124
    .line 125
    move/from16 v30, v12

    .line 126
    .line 127
    iget v12, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 128
    .line 129
    move/from16 v31, v12

    .line 130
    .line 131
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 132
    .line 133
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    .line 134
    .line 135
    .line 136
    move-result v33

    .line 137
    iget v12, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 138
    .line 139
    invoke-direct {v1, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getUtilizationRatio(I)I

    .line 140
    .line 141
    .line 142
    move-result v34

    .line 143
    iget-boolean v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIsBluetoothConnected:Z

    .line 144
    .line 145
    move/from16 v35, v12

    .line 146
    .line 147
    invoke-virtual/range {v26 .. v35}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    .line 148
    .line 149
    .line 150
    move-result v47

    .line 151
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSsid:Ljava/lang/String;

    .line 152
    .line 153
    move/from16 v49, v14

    .line 154
    .line 155
    iget v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSecurityType:I

    .line 156
    .line 157
    invoke-direct {v1, v12, v14, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isMatched(Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-eqz v12, :cond_6

    .line 162
    .line 163
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 164
    .line 165
    if-eqz v12, :cond_2

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 172
    .line 173
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    if-eqz v12, :cond_1

    .line 182
    .line 183
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 184
    .line 185
    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    check-cast v12, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    iget v14, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 200
    .line 201
    if-ge v12, v14, :cond_2

    .line 202
    .line 203
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 204
    .line 205
    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    iget v14, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 210
    .line 211
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_1
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 220
    .line 221
    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    iget v14, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 226
    .line 227
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v14

    .line 231
    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    :cond_2
    :goto_1
    if-gez v4, :cond_3

    .line 235
    .line 236
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssid:Ljava/lang/String;

    .line 237
    .line 238
    iget-object v14, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    if-eqz v12, :cond_3

    .line 245
    .line 246
    new-instance v35, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 247
    .line 248
    iget-object v4, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 251
    .line 252
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 253
    .line 254
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 255
    .line 256
    .line 257
    move-result v38

    .line 258
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 259
    .line 260
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 261
    .line 262
    .line 263
    move-result v39

    .line 264
    iget v10, v13, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 265
    .line 266
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 267
    .line 268
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 269
    .line 270
    move-object/from16 v36, v4

    .line 271
    .line 272
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 273
    .line 274
    invoke-static {v14, v4}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    invoke-virtual {v12, v14, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->calculateLastSelectionWeight(Landroid/net/wifi/WifiConfiguration;Z)D

    .line 279
    .line 280
    .line 281
    move-result-wide v41

    .line 282
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 283
    .line 284
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 285
    .line 286
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 287
    .line 288
    invoke-virtual {v4, v12, v14, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEverMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z

    .line 289
    .line 290
    .line 291
    move-result v45

    .line 292
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 293
    .line 294
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    .line 295
    .line 296
    .line 297
    move-result v46

    .line 298
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 299
    .line 300
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 301
    .line 302
    invoke-virtual {v4, v12}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAffiliatedMloLinksFromWifiInfo(Landroid/net/wifi/WifiInfo;)Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v48

    .line 306
    const/16 v43, 0x1

    .line 307
    .line 308
    const/16 v44, 0x1

    .line 309
    .line 310
    move-object/from16 v37, v9

    .line 311
    .line 312
    move/from16 v40, v10

    .line 313
    .line 314
    invoke-direct/range {v35 .. v48}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZILjava/util/List;)V

    .line 315
    .line 316
    .line 317
    move-object/from16 v4, v35

    .line 318
    .line 319
    move/from16 v12, v47

    .line 320
    .line 321
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 322
    .line 323
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 324
    .line 325
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    xor-int/lit8 v10, v10, 0x1

    .line 330
    .line 331
    invoke-virtual {v9, v4, v10}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D

    .line 332
    .line 333
    .line 334
    move-result-wide v9

    .line 335
    double-to-int v10, v9

    .line 336
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 337
    .line 338
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 339
    .line 340
    invoke-virtual {v13}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    .line 341
    .line 342
    .line 343
    move-result v28

    .line 344
    move-object/from16 v19, v4

    .line 345
    .line 346
    iget v4, v13, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 347
    .line 348
    move/from16 v29, v4

    .line 349
    .line 350
    iget v4, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 351
    .line 352
    move/from16 v30, v4

    .line 353
    .line 354
    iget v4, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 355
    .line 356
    invoke-direct {v1, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getUtilizationRatio(I)I

    .line 357
    .line 358
    .line 359
    move-result v34

    .line 360
    move/from16 v31, v4

    .line 361
    .line 362
    iget-boolean v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIsBluetoothConnected:Z

    .line 363
    .line 364
    const/16 v33, -0x1

    .line 365
    .line 366
    move/from16 v35, v4

    .line 367
    .line 368
    move-object/from16 v26, v9

    .line 369
    .line 370
    move-object/from16 v27, v14

    .line 371
    .line 372
    invoke-virtual/range {v26 .. v35}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    move v9, v4

    .line 377
    move v4, v12

    .line 378
    :goto_2
    move/from16 v14, v49

    .line 379
    .line 380
    goto/16 :goto_9

    .line 381
    .line 382
    :cond_3
    move/from16 v12, v47

    .line 383
    .line 384
    if-le v12, v7, :cond_5

    .line 385
    .line 386
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 387
    .line 388
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    if-ltz v6, :cond_4

    .line 393
    .line 394
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 395
    .line 396
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    goto :goto_3

    .line 401
    :cond_4
    iget v6, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 402
    .line 403
    invoke-direct {v1, v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getUtilizationRatio(I)I

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    :goto_3
    iget v7, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 408
    .line 409
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 410
    .line 411
    move/from16 v16, v6

    .line 412
    .line 413
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 414
    .line 415
    invoke-virtual {v13}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    .line 416
    .line 417
    .line 418
    move-result v28

    .line 419
    move-object/from16 v27, v6

    .line 420
    .line 421
    iget v6, v13, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 422
    .line 423
    move/from16 v29, v6

    .line 424
    .line 425
    iget v6, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 426
    .line 427
    move/from16 v30, v6

    .line 428
    .line 429
    iget v6, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 430
    .line 431
    invoke-direct {v1, v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getUtilizationRatio(I)I

    .line 432
    .line 433
    .line 434
    move-result v34

    .line 435
    move/from16 v31, v6

    .line 436
    .line 437
    iget-boolean v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIsBluetoothConnected:Z

    .line 438
    .line 439
    const/16 v33, -0x1

    .line 440
    .line 441
    move/from16 v35, v6

    .line 442
    .line 443
    move-object/from16 v26, v14

    .line 444
    .line 445
    invoke-virtual/range {v26 .. v35}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    move/from16 v22, v6

    .line 450
    .line 451
    move-object v6, v13

    .line 452
    move/from16 v14, v16

    .line 453
    .line 454
    move/from16 v16, v7

    .line 455
    .line 456
    move v7, v12

    .line 457
    goto/16 :goto_9

    .line 458
    .line 459
    :cond_5
    move/from16 v36, v7

    .line 460
    .line 461
    move/from16 v26, v15

    .line 462
    .line 463
    goto/16 :goto_8

    .line 464
    .line 465
    :cond_6
    move/from16 v12, v47

    .line 466
    .line 467
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->savedConfigList:Ljava/util/List;

    .line 468
    .line 469
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 470
    .line 471
    .line 472
    move-result-object v14

    .line 473
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 474
    .line 475
    .line 476
    move-result v26

    .line 477
    if-eqz v26, :cond_5

    .line 478
    .line 479
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v26

    .line 483
    move-object/from16 v27, v14

    .line 484
    .line 485
    move-object/from16 v14, v26

    .line 486
    .line 487
    check-cast v14, Landroid/net/wifi/WifiConfiguration;

    .line 488
    .line 489
    invoke-direct {v1, v13, v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isConfigured(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    .line 490
    .line 491
    .line 492
    move-result v26

    .line 493
    if-eqz v26, :cond_c

    .line 494
    .line 495
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 496
    .line 497
    .line 498
    move-result-object v26

    .line 499
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    .line 500
    .line 501
    .line 502
    move-result v26

    .line 503
    if-eqz v26, :cond_c

    .line 504
    .line 505
    if-le v12, v8, :cond_7

    .line 506
    .line 507
    move/from16 v50, v12

    .line 508
    .line 509
    move-object/from16 v24, v13

    .line 510
    .line 511
    goto :goto_5

    .line 512
    :cond_7
    move/from16 v50, v8

    .line 513
    .line 514
    :goto_5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 515
    .line 516
    .line 517
    move-result-object v8

    .line 518
    move/from16 v47, v12

    .line 519
    .line 520
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v12

    .line 524
    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v8

    .line 528
    if-eqz v8, :cond_8

    .line 529
    .line 530
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v8

    .line 534
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v8

    .line 538
    check-cast v8, Ljava/lang/Integer;

    .line 539
    .line 540
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 541
    .line 542
    .line 543
    move-result v8

    .line 544
    iget v12, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 545
    .line 546
    if-ge v8, v12, :cond_9

    .line 547
    .line 548
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    iget v12, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 553
    .line 554
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 555
    .line 556
    .line 557
    move-result-object v12

    .line 558
    invoke-virtual {v0, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    goto :goto_6

    .line 562
    :cond_8
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v8

    .line 566
    iget v12, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 567
    .line 568
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 569
    .line 570
    .line 571
    move-result-object v12

    .line 572
    invoke-virtual {v0, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    :cond_9
    :goto_6
    new-instance v35, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 576
    .line 577
    iget-object v8, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 578
    .line 579
    iget v12, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 580
    .line 581
    move-object/from16 v36, v8

    .line 582
    .line 583
    iget v8, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 584
    .line 585
    move/from16 v39, v8

    .line 586
    .line 587
    iget v8, v13, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 588
    .line 589
    move/from16 v40, v8

    .line 590
    .line 591
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 592
    .line 593
    move/from16 v38, v12

    .line 594
    .line 595
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 596
    .line 597
    invoke-virtual {v8, v14, v12, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEverMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z

    .line 598
    .line 599
    .line 600
    move-result v45

    .line 601
    invoke-static {v14}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    .line 602
    .line 603
    .line 604
    move-result v46

    .line 605
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 606
    .line 607
    invoke-virtual {v8, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAffiliatedMloLinksFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 608
    .line 609
    .line 610
    move-result-object v48

    .line 611
    const-wide/16 v41, 0x0

    .line 612
    .line 613
    const/16 v43, 0x0

    .line 614
    .line 615
    const/16 v44, 0x0

    .line 616
    .line 617
    move-object/from16 v37, v14

    .line 618
    .line 619
    invoke-direct/range {v35 .. v48}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZILjava/util/List;)V

    .line 620
    .line 621
    .line 622
    move-object/from16 v8, v35

    .line 623
    .line 624
    move/from16 v12, v47

    .line 625
    .line 626
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 627
    .line 628
    move/from16 v36, v7

    .line 629
    .line 630
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 631
    .line 632
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    .line 633
    .line 634
    .line 635
    move-result v7

    .line 636
    xor-int/lit8 v7, v7, 0x1

    .line 637
    .line 638
    move/from16 v26, v15

    .line 639
    .line 640
    invoke-virtual {v14, v8, v7}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D

    .line 641
    .line 642
    .line 643
    move-result-wide v14

    .line 644
    double-to-int v7, v14

    .line 645
    if-le v7, v11, :cond_b

    .line 646
    .line 647
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 648
    .line 649
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    .line 650
    .line 651
    .line 652
    move-result v3

    .line 653
    if-ltz v3, :cond_a

    .line 654
    .line 655
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 656
    .line 657
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    goto :goto_7

    .line 662
    :cond_a
    iget v3, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 663
    .line 664
    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getUtilizationRatio(I)I

    .line 665
    .line 666
    .line 667
    move-result v3

    .line 668
    :goto_7
    iget v11, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 669
    .line 670
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 671
    .line 672
    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 673
    .line 674
    invoke-virtual {v13}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    .line 675
    .line 676
    .line 677
    move-result v28

    .line 678
    move/from16 v17, v3

    .line 679
    .line 680
    iget v3, v13, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 681
    .line 682
    move/from16 v29, v3

    .line 683
    .line 684
    iget v3, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 685
    .line 686
    move/from16 v30, v3

    .line 687
    .line 688
    iget v3, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 689
    .line 690
    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getUtilizationRatio(I)I

    .line 691
    .line 692
    .line 693
    move-result v34

    .line 694
    move/from16 v31, v3

    .line 695
    .line 696
    iget-boolean v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIsBluetoothConnected:Z

    .line 697
    .line 698
    const/16 v33, -0x1

    .line 699
    .line 700
    move/from16 v35, v3

    .line 701
    .line 702
    move-object/from16 v26, v14

    .line 703
    .line 704
    move-object/from16 v27, v15

    .line 705
    .line 706
    invoke-virtual/range {v26 .. v35}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    move/from16 v21, v3

    .line 711
    .line 712
    move-object/from16 v18, v8

    .line 713
    .line 714
    move-object v3, v13

    .line 715
    move/from16 v15, v17

    .line 716
    .line 717
    move-object/from16 v23, v37

    .line 718
    .line 719
    move/from16 v14, v49

    .line 720
    .line 721
    move/from16 v8, v50

    .line 722
    .line 723
    move/from16 v17, v11

    .line 724
    .line 725
    move v11, v7

    .line 726
    move/from16 v7, v36

    .line 727
    .line 728
    goto :goto_9

    .line 729
    :cond_b
    move/from16 v15, v26

    .line 730
    .line 731
    move/from16 v7, v36

    .line 732
    .line 733
    move/from16 v14, v49

    .line 734
    .line 735
    move/from16 v8, v50

    .line 736
    .line 737
    goto :goto_9

    .line 738
    :cond_c
    move/from16 v36, v7

    .line 739
    .line 740
    move/from16 v26, v15

    .line 741
    .line 742
    move/from16 v15, v26

    .line 743
    .line 744
    move-object/from16 v14, v27

    .line 745
    .line 746
    move/from16 v7, v36

    .line 747
    .line 748
    goto/16 :goto_4

    .line 749
    .line 750
    :goto_8
    move/from16 v15, v26

    .line 751
    .line 752
    move/from16 v7, v36

    .line 753
    .line 754
    goto/16 :goto_2

    .line 755
    .line 756
    :goto_9
    if-nez v19, :cond_d

    .line 757
    .line 758
    new-instance v26, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 759
    .line 760
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 761
    .line 762
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v27

    .line 766
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 767
    .line 768
    move-object/from16 v40, v3

    .line 769
    .line 770
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 771
    .line 772
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 773
    .line 774
    .line 775
    move-result v29

    .line 776
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 777
    .line 778
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 779
    .line 780
    .line 781
    move-result v30

    .line 782
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 783
    .line 784
    move/from16 v41, v4

    .line 785
    .line 786
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 787
    .line 788
    move-object/from16 v42, v6

    .line 789
    .line 790
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 791
    .line 792
    invoke-static {v4, v6}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    .line 793
    .line 794
    .line 795
    move-result v6

    .line 796
    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->calculateLastSelectionWeight(Landroid/net/wifi/WifiConfiguration;Z)D

    .line 797
    .line 798
    .line 799
    move-result-wide v32

    .line 800
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 801
    .line 802
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 803
    .line 804
    invoke-static {v3, v4}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    .line 805
    .line 806
    .line 807
    move-result v36

    .line 808
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 809
    .line 810
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    .line 811
    .line 812
    .line 813
    move-result v37

    .line 814
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 815
    .line 816
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMaxSupportedRxLinkSpeedMbps()I

    .line 817
    .line 818
    .line 819
    move-result v38

    .line 820
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 821
    .line 822
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 823
    .line 824
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAffiliatedMloLinksFromWifiInfo(Landroid/net/wifi/WifiInfo;)Ljava/util/List;

    .line 825
    .line 826
    .line 827
    move-result-object v39

    .line 828
    const/16 v31, 0x0

    .line 829
    .line 830
    const/16 v34, 0x1

    .line 831
    .line 832
    const/16 v35, 0x1

    .line 833
    .line 834
    move-object/from16 v28, v10

    .line 835
    .line 836
    invoke-direct/range {v26 .. v39}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZILjava/util/List;)V

    .line 837
    .line 838
    .line 839
    move-object/from16 v3, v26

    .line 840
    .line 841
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputScorer:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 842
    .line 843
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 844
    .line 845
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    .line 846
    .line 847
    .line 848
    move-result v6

    .line 849
    xor-int/lit8 v6, v6, 0x1

    .line 850
    .line 851
    move/from16 v26, v7

    .line 852
    .line 853
    invoke-virtual {v4, v3, v6}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D

    .line 854
    .line 855
    .line 856
    move-result-wide v6

    .line 857
    double-to-int v4, v6

    .line 858
    move-object/from16 v19, v3

    .line 859
    .line 860
    move v10, v4

    .line 861
    goto :goto_a

    .line 862
    :cond_d
    move-object/from16 v40, v3

    .line 863
    .line 864
    move/from16 v41, v4

    .line 865
    .line 866
    move-object/from16 v42, v6

    .line 867
    .line 868
    move/from16 v26, v7

    .line 869
    .line 870
    :goto_a
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPrevBssid:Ljava/lang/String;

    .line 871
    .line 872
    if-eqz v3, :cond_e

    .line 873
    .line 874
    iget-object v4, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 875
    .line 876
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    :cond_e
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssid:Ljava/lang/String;

    .line 880
    .line 881
    iget-object v4, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 882
    .line 883
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v3

    .line 887
    if-nez v3, :cond_11

    .line 888
    .line 889
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSsid:Ljava/lang/String;

    .line 890
    .line 891
    iget v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSecurityType:I

    .line 892
    .line 893
    invoke-direct {v1, v3, v4, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isMatched(Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z

    .line 894
    .line 895
    .line 896
    move-result v3

    .line 897
    if-eqz v3, :cond_10

    .line 898
    .line 899
    iget v3, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 900
    .line 901
    const/16 v4, -0x4b

    .line 902
    .line 903
    if-le v3, v4, :cond_10

    .line 904
    .line 905
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 906
    .line 907
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 908
    .line 909
    .line 910
    move-result v3

    .line 911
    if-eqz v3, :cond_11

    .line 912
    .line 913
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mlConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 914
    .line 915
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 916
    .line 917
    .line 918
    move-result v3

    .line 919
    if-eqz v3, :cond_f

    .line 920
    .line 921
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssidMap:Ljava/util/Map;

    .line 922
    .line 923
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    iget-object v4, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 928
    .line 929
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    move-result v3

    .line 933
    if-nez v3, :cond_11

    .line 934
    .line 935
    :cond_f
    if-ge v12, v5, :cond_11

    .line 936
    .line 937
    goto :goto_b

    .line 938
    :cond_10
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 939
    .line 940
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    if-eqz v3, :cond_11

    .line 945
    .line 946
    if-ge v12, v5, :cond_11

    .line 947
    .line 948
    :goto_b
    move v5, v12

    .line 949
    :cond_11
    move-object/from16 v12, v23

    .line 950
    .line 951
    move-object/from16 v13, v24

    .line 952
    .line 953
    move/from16 v7, v26

    .line 954
    .line 955
    move-object/from16 v3, v40

    .line 956
    .line 957
    move/from16 v4, v41

    .line 958
    .line 959
    move-object/from16 v6, v42

    .line 960
    .line 961
    goto/16 :goto_0

    .line 962
    .line 963
    :cond_12
    move/from16 v36, v7

    .line 964
    .line 965
    move-object/from16 v23, v12

    .line 966
    .line 967
    move/from16 v49, v14

    .line 968
    .line 969
    move/from16 v26, v15

    .line 970
    .line 971
    const/16 v25, 0x1

    .line 972
    .line 973
    iget v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEstimatedTput:I

    .line 974
    .line 975
    if-le v7, v4, :cond_13

    .line 976
    .line 977
    goto :goto_c

    .line 978
    :cond_13
    move v7, v4

    .line 979
    :goto_c
    if-lez v7, :cond_14

    .line 980
    .line 981
    goto :goto_d

    .line 982
    :cond_14
    move/from16 v7, v25

    .line 983
    .line 984
    :goto_d
    const-string v12, "HD: "

    .line 985
    .line 986
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 990
    .line 991
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 992
    .line 993
    .line 994
    move-result v12

    .line 995
    const-string v13, " / "

    .line 996
    .line 997
    if-eqz v12, :cond_15

    .line 998
    .line 999
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mSsid:Ljava/lang/String;

    .line 1000
    .line 1001
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    :cond_15
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssid:Ljava/lang/String;

    .line 1008
    .line 1009
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 1010
    .line 1011
    .line 1012
    move-result v14

    .line 1013
    add-int/lit8 v14, v14, -0x5

    .line 1014
    .line 1015
    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssid:Ljava/lang/String;

    .line 1016
    .line 1017
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 1018
    .line 1019
    .line 1020
    move-result v15

    .line 1021
    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v12

    .line 1025
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    iget v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFrequency:I

    .line 1032
    .line 1033
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    iget v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRssi:I

    .line 1040
    .line 1041
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    iget v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEstimatedTput:I

    .line 1048
    .line 1049
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    if-lez v4, :cond_16

    .line 1053
    .line 1054
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    .line 1066
    :cond_16
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    if-eqz v18, :cond_1c

    .line 1073
    .line 1074
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v14

    .line 1078
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v14

    .line 1082
    if-nez v14, :cond_17

    .line 1083
    .line 1084
    :goto_e
    move/from16 v20, v25

    .line 1085
    .line 1086
    goto/16 :goto_12

    .line 1087
    .line 1088
    :cond_17
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v14

    .line 1092
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v14

    .line 1096
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v14

    .line 1100
    if-nez v14, :cond_18

    .line 1101
    .line 1102
    goto :goto_e

    .line 1103
    :cond_18
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v14

    .line 1107
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v14

    .line 1111
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v14

    .line 1115
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v15

    .line 1119
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v15

    .line 1123
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceRssi()I

    .line 1124
    .line 1125
    .line 1126
    move-result v15

    .line 1127
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v12

    .line 1131
    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1132
    .line 1133
    .line 1134
    move-result v12

    .line 1135
    if-eqz v12, :cond_19

    .line 1136
    .line 1137
    add-int/lit8 v12, v15, -0x5

    .line 1138
    .line 1139
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v20

    .line 1143
    check-cast v20, Ljava/lang/Integer;

    .line 1144
    .line 1145
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    .line 1146
    .line 1147
    .line 1148
    move-result v4

    .line 1149
    if-le v12, v4, :cond_1a

    .line 1150
    .line 1151
    :cond_19
    move/from16 v4, v25

    .line 1152
    .line 1153
    goto :goto_f

    .line 1154
    :cond_1a
    const/4 v4, 0x0

    .line 1155
    goto :goto_f

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    goto :goto_11

    .line 1158
    :goto_f
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    .line 1162
    .line 1163
    move/from16 v20, v4

    .line 1164
    .line 1165
    const-string v4, "Conn. choice state: "

    .line 1166
    .line 1167
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v4

    .line 1183
    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v4

    .line 1187
    if-eqz v4, :cond_1b

    .line 1188
    .line 1189
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1190
    .line 1191
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    goto :goto_10

    .line 1209
    :cond_1b
    const-string v0, ""

    .line 1210
    .line 1211
    :goto_10
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v0

    .line 1218
    const/4 v4, 0x2

    .line 1219
    invoke-direct {v1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .line 1221
    .line 1222
    goto :goto_12

    .line 1223
    :goto_11
    const-string v4, "Conn choice check err"

    .line 1224
    .line 1225
    move/from16 v12, v25

    .line 1226
    .line 1227
    invoke-direct {v1, v4, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1231
    .line 1232
    .line 1233
    const/4 v12, 0x1

    .line 1234
    goto :goto_13

    .line 1235
    :cond_1c
    const/16 v20, 0x1

    .line 1236
    .line 1237
    :goto_12
    move/from16 v12, v20

    .line 1238
    .line 1239
    :goto_13
    const-wide/16 v28, -0x1

    .line 1240
    .line 1241
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1242
    .line 1243
    .line 1244
    move-result-wide v30

    .line 1245
    const-wide/16 v32, 0x3e8

    .line 1246
    .line 1247
    div-long v30, v30, v32

    .line 1248
    .line 1249
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1250
    .line 1251
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15

    .line 1255
    const-wide/16 v34, 0x3840

    .line 1256
    .line 1257
    :try_start_2
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->selectedKey:Ljava/lang/String;

    .line 1258
    .line 1259
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1260
    .line 1261
    .line 1262
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14

    .line 1263
    if-eqz v0, :cond_1d

    .line 1264
    .line 1265
    :try_start_3
    iget-wide v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->selectionTimeStamp:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1266
    .line 1267
    :goto_14
    sub-long v14, v30, v14

    .line 1268
    .line 1269
    move-wide/from16 v28, v14

    .line 1270
    .line 1271
    goto :goto_16

    .line 1272
    :catch_1
    move-exception v0

    .line 1273
    move/from16 v8, v36

    .line 1274
    .line 1275
    const/4 v4, 0x0

    .line 1276
    const/4 v5, 0x0

    .line 1277
    const/4 v10, 0x0

    .line 1278
    const/4 v14, 0x0

    .line 1279
    const/4 v15, 0x0

    .line 1280
    const/16 v16, 0x0

    .line 1281
    .line 1282
    const/16 v20, 0x64

    .line 1283
    .line 1284
    :goto_15
    const/16 v23, 0x0

    .line 1285
    .line 1286
    const/16 v31, 0x0

    .line 1287
    .line 1288
    goto/16 :goto_3e

    .line 1289
    .line 1290
    :cond_1d
    const-wide/16 v14, 0x1

    .line 1291
    .line 1292
    goto :goto_14

    .line 1293
    :goto_16
    :try_start_4
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->linkOutageCnt:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    .line 1294
    .line 1295
    const/4 v14, 0x2

    .line 1296
    if-ge v0, v14, :cond_1e

    .line 1297
    .line 1298
    :try_start_5
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiOutageCnt:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1299
    .line 1300
    if-lt v0, v14, :cond_20

    .line 1301
    .line 1302
    :cond_1e
    :try_start_6
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->gameManagerQuery:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14

    .line 1303
    .line 1304
    if-nez v0, :cond_20

    .line 1305
    .line 1306
    :try_start_7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mlConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1307
    .line 1308
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1309
    .line 1310
    .line 1311
    move-result v0

    .line 1312
    if-eqz v0, :cond_1f

    .line 1313
    .line 1314
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMloLinks:Ljava/util/List;

    .line 1315
    .line 1316
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1317
    .line 1318
    .line 1319
    move-result v0

    .line 1320
    const/4 v14, 0x2

    .line 1321
    if-lt v0, v14, :cond_1f

    .line 1322
    .line 1323
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMlHas2G:Z

    .line 1324
    .line 1325
    if-eqz v0, :cond_1f

    .line 1326
    .line 1327
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActiveLinkNumber:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1328
    .line 1329
    const/4 v14, 0x1

    .line 1330
    if-le v0, v14, :cond_20

    .line 1331
    .line 1332
    :cond_1f
    const/4 v14, 0x1

    .line 1333
    goto :goto_17

    .line 1334
    :cond_20
    const/4 v14, 0x0

    .line 1335
    :goto_17
    if-eqz v3, :cond_22

    .line 1336
    .line 1337
    :try_start_8
    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBadLinkList:Ljava/util/Map;

    .line 1338
    .line 1339
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1343
    const/16 v20, 0x64

    .line 1344
    .line 1345
    :try_start_9
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1346
    .line 1347
    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v4

    .line 1351
    if-eqz v4, :cond_23

    .line 1352
    .line 1353
    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    .line 1354
    .line 1355
    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBadLinkList:Ljava/util/Map;

    .line 1356
    .line 1357
    iget-object v0, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1358
    .line 1359
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v0

    .line 1363
    check-cast v0, Ljava/lang/Integer;

    .line 1364
    .line 1365
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1366
    .line 1367
    .line 1368
    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1369
    sub-int/2addr v4, v0

    .line 1370
    const/4 v0, 0x7

    .line 1371
    if-ge v4, v0, :cond_21

    .line 1372
    .line 1373
    const/4 v0, 0x1

    .line 1374
    goto :goto_18

    .line 1375
    :cond_21
    const/4 v0, 0x0

    .line 1376
    :goto_18
    move v4, v0

    .line 1377
    goto :goto_1d

    .line 1378
    :catch_2
    move-exception v0

    .line 1379
    :goto_19
    move/from16 v8, v36

    .line 1380
    .line 1381
    const/4 v4, 0x0

    .line 1382
    :goto_1a
    const/4 v5, 0x0

    .line 1383
    const/4 v10, 0x0

    .line 1384
    :goto_1b
    const/4 v15, 0x0

    .line 1385
    :goto_1c
    const/16 v16, 0x0

    .line 1386
    .line 1387
    goto :goto_15

    .line 1388
    :catch_3
    move-exception v0

    .line 1389
    const/16 v20, 0x64

    .line 1390
    .line 1391
    goto :goto_19

    .line 1392
    :cond_22
    const/16 v20, 0x64

    .line 1393
    .line 1394
    :cond_23
    const/4 v4, 0x0

    .line 1395
    :goto_1d
    if-eqz v6, :cond_25

    .line 1396
    .line 1397
    :try_start_a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBadLinkList:Ljava/util/Map;

    .line 1398
    .line 1399
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    iget-object v15, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1404
    .line 1405
    invoke-interface {v0, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v0

    .line 1409
    if-eqz v0, :cond_25

    .line 1410
    .line 1411
    iget v0, v6, Landroid/net/wifi/ScanResult;->level:I

    .line 1412
    .line 1413
    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBadLinkList:Ljava/util/Map;

    .line 1414
    .line 1415
    move/from16 v38, v0

    .line 1416
    .line 1417
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1418
    .line 1419
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    check-cast v0, Ljava/lang/Integer;

    .line 1424
    .line 1425
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1426
    .line 1427
    .line 1428
    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1429
    sub-int v0, v38, v0

    .line 1430
    .line 1431
    const/4 v15, 0x7

    .line 1432
    if-ge v0, v15, :cond_24

    .line 1433
    .line 1434
    const/4 v0, 0x1

    .line 1435
    goto :goto_1e

    .line 1436
    :cond_24
    const/4 v0, 0x0

    .line 1437
    :goto_1e
    move v15, v0

    .line 1438
    goto :goto_1f

    .line 1439
    :catch_4
    move-exception v0

    .line 1440
    move/from16 v8, v36

    .line 1441
    .line 1442
    goto :goto_1a

    .line 1443
    :cond_25
    const/4 v15, 0x0

    .line 1444
    :goto_1f
    :try_start_b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1445
    .line 1446
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1447
    .line 1448
    .line 1449
    move-result v0

    .line 1450
    move/from16 v37, v0

    .line 1451
    .line 1452
    if-eqz v37, :cond_26

    .line 1453
    .line 1454
    const/16 v37, 0x1e

    .line 1455
    .line 1456
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mHhoSuspended:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1457
    .line 1458
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1459
    .line 1460
    .line 1461
    move-result v0

    .line 1462
    if-nez v0, :cond_26

    .line 1463
    .line 1464
    if-eqz v18, :cond_26

    .line 1465
    .line 1466
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 1467
    .line 1468
    .line 1469
    move-result v0

    .line 1470
    mul-int/lit8 v0, v0, 0x1e

    .line 1471
    .line 1472
    div-int/lit8 v0, v0, 0x64

    .line 1473
    .line 1474
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 1475
    .line 1476
    .line 1477
    move-result v38
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 1478
    move/from16 v39, v4

    .line 1479
    .line 1480
    sub-int v4, v38, v36

    .line 1481
    .line 1482
    if-ge v0, v4, :cond_27

    .line 1483
    .line 1484
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 1485
    .line 1486
    .line 1487
    move-result v0

    .line 1488
    sub-int/2addr v0, v7

    .line 1489
    mul-int/lit8 v0, v0, 0x64

    .line 1490
    .line 1491
    div-int/2addr v0, v7

    .line 1492
    move/from16 v4, v37

    .line 1493
    .line 1494
    if-le v0, v4, :cond_27

    .line 1495
    .line 1496
    if-le v11, v10, :cond_27

    .line 1497
    .line 1498
    sub-int v0, v21, v9

    .line 1499
    .line 1500
    mul-int/lit8 v0, v0, 0x64

    .line 1501
    .line 1502
    div-int/2addr v0, v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 1503
    if-le v0, v4, :cond_27

    .line 1504
    .line 1505
    const/4 v4, 0x1

    .line 1506
    goto :goto_21

    .line 1507
    :catch_5
    move-exception v0

    .line 1508
    move/from16 v8, v36

    .line 1509
    .line 1510
    move/from16 v4, v39

    .line 1511
    .line 1512
    :goto_20
    const/4 v5, 0x0

    .line 1513
    const/4 v10, 0x0

    .line 1514
    goto/16 :goto_1c

    .line 1515
    .line 1516
    :catch_6
    move-exception v0

    .line 1517
    move/from16 v39, v4

    .line 1518
    .line 1519
    move/from16 v8, v36

    .line 1520
    .line 1521
    goto :goto_20

    .line 1522
    :cond_26
    move/from16 v39, v4

    .line 1523
    .line 1524
    :cond_27
    const/4 v4, 0x0

    .line 1525
    :goto_21
    if-eqz v23, :cond_28

    .line 1526
    .line 1527
    :try_start_d
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v0

    .line 1531
    if-eqz v0, :cond_28

    .line 1532
    .line 1533
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mNoInternetList:Ljava/util/Map;

    .line 1534
    .line 1535
    if-eqz v0, :cond_28

    .line 1536
    .line 1537
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v10

    .line 1541
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1542
    .line 1543
    .line 1544
    move-result v0

    .line 1545
    if-nez v0, :cond_29

    .line 1546
    .line 1547
    :cond_28
    const/4 v10, 0x0

    .line 1548
    goto :goto_25

    .line 1549
    :cond_29
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mNoInternetList:Ljava/util/Map;

    .line 1550
    .line 1551
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v10

    .line 1555
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v0

    .line 1559
    if-eqz v0, :cond_28

    .line 1560
    .line 1561
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mNoInternetList:Ljava/util/Map;

    .line 1562
    .line 1563
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v10

    .line 1567
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v0

    .line 1571
    check-cast v0, Ljava/lang/Long;

    .line 1572
    .line 1573
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 1574
    .line 1575
    .line 1576
    move-result-wide v40

    .line 1577
    div-long v40, v40, v32
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 1578
    .line 1579
    sub-long v30, v30, v40

    .line 1580
    .line 1581
    const-wide/16 v32, 0x4b0

    .line 1582
    .line 1583
    cmp-long v0, v32, v30

    .line 1584
    .line 1585
    if-ltz v0, :cond_2a

    .line 1586
    .line 1587
    const/4 v0, 0x1

    .line 1588
    goto :goto_22

    .line 1589
    :cond_2a
    const/4 v0, 0x0

    .line 1590
    :goto_22
    move v10, v0

    .line 1591
    goto :goto_25

    .line 1592
    :catch_7
    move-exception v0

    .line 1593
    move/from16 v31, v4

    .line 1594
    .line 1595
    move/from16 v8, v36

    .line 1596
    .line 1597
    move/from16 v4, v39

    .line 1598
    .line 1599
    const/4 v5, 0x0

    .line 1600
    const/4 v10, 0x0

    .line 1601
    :goto_23
    const/16 v16, 0x0

    .line 1602
    .line 1603
    :goto_24
    const/16 v23, 0x0

    .line 1604
    .line 1605
    goto/16 :goto_3e

    .line 1606
    .line 1607
    :goto_25
    if-eqz v18, :cond_2d

    .line 1608
    .line 1609
    :try_start_e
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 1610
    .line 1611
    .line 1612
    move-result v17

    .line 1613
    if-nez v17, :cond_2b

    .line 1614
    .line 1615
    :goto_26
    move/from16 v31, v4

    .line 1616
    .line 1617
    :goto_27
    const/4 v4, 0x1

    .line 1618
    goto :goto_28

    .line 1619
    :cond_2b
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mFrequency:I

    .line 1620
    .line 1621
    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 1622
    .line 1623
    .line 1624
    move-result v0

    .line 1625
    if-eqz v0, :cond_2c

    .line 1626
    .line 1627
    goto :goto_26

    .line 1628
    :cond_2c
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRssi:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 1629
    .line 1630
    move/from16 v31, v4

    .line 1631
    .line 1632
    const/16 v4, -0x41

    .line 1633
    .line 1634
    if-ge v0, v4, :cond_2e

    .line 1635
    .line 1636
    move/from16 v4, v26

    .line 1637
    .line 1638
    const/16 v0, 0x50

    .line 1639
    .line 1640
    if-ge v4, v0, :cond_2e

    .line 1641
    .line 1642
    goto :goto_27

    .line 1643
    :catch_8
    move-exception v0

    .line 1644
    move/from16 v31, v4

    .line 1645
    .line 1646
    move/from16 v8, v36

    .line 1647
    .line 1648
    move/from16 v4, v39

    .line 1649
    .line 1650
    const/4 v5, 0x0

    .line 1651
    goto :goto_23

    .line 1652
    :cond_2d
    move/from16 v31, v4

    .line 1653
    .line 1654
    :cond_2e
    const/4 v4, 0x0

    .line 1655
    :goto_28
    if-eqz v6, :cond_30

    .line 1656
    .line 1657
    :try_start_f
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 1658
    .line 1659
    .line 1660
    move-result v0

    .line 1661
    if-nez v0, :cond_2f

    .line 1662
    .line 1663
    move/from16 v16, v4

    .line 1664
    .line 1665
    :goto_29
    const/4 v4, 0x1

    .line 1666
    goto :goto_2a

    .line 1667
    :cond_2f
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRssi:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 1668
    .line 1669
    move/from16 v16, v4

    .line 1670
    .line 1671
    const/16 v4, -0x41

    .line 1672
    .line 1673
    if-ge v0, v4, :cond_31

    .line 1674
    .line 1675
    move/from16 v4, v49

    .line 1676
    .line 1677
    const/16 v0, 0x50

    .line 1678
    .line 1679
    if-ge v4, v0, :cond_31

    .line 1680
    .line 1681
    goto :goto_29

    .line 1682
    :catch_9
    move-exception v0

    .line 1683
    move/from16 v16, v4

    .line 1684
    .line 1685
    move/from16 v8, v36

    .line 1686
    .line 1687
    move/from16 v4, v39

    .line 1688
    .line 1689
    const/4 v5, 0x0

    .line 1690
    goto :goto_24

    .line 1691
    :cond_30
    move/from16 v16, v4

    .line 1692
    .line 1693
    :cond_31
    const/4 v4, 0x0

    .line 1694
    :goto_2a
    :try_start_10
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isWellTrained:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    .line 1695
    .line 1696
    move/from16 v26, v0

    .line 1697
    .line 1698
    const-string v0, " -BL-> "

    .line 1699
    .line 1700
    move/from16 v32, v7

    .line 1701
    .line 1702
    move/from16 v30, v8

    .line 1703
    .line 1704
    if-eqz v26, :cond_45

    .line 1705
    .line 1706
    const v8, 0x7fffffff

    .line 1707
    .line 1708
    .line 1709
    if-eq v5, v8, :cond_32

    .line 1710
    .line 1711
    :try_start_11
    iget v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aBenefit:I

    .line 1712
    .line 1713
    sub-int v5, v36, v5

    .line 1714
    .line 1715
    add-int/2addr v5, v8

    .line 1716
    iput v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aBenefit:I

    .line 1717
    .line 1718
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->bfCnt:I

    .line 1719
    .line 1720
    const/16 v25, 0x1

    .line 1721
    .line 1722
    add-int/lit8 v5, v5, 0x1

    .line 1723
    .line 1724
    iput v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->bfCnt:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 1725
    .line 1726
    goto :goto_2d

    .line 1727
    :catch_a
    move-exception v0

    .line 1728
    move/from16 v23, v4

    .line 1729
    .line 1730
    :goto_2b
    move/from16 v8, v36

    .line 1731
    .line 1732
    :goto_2c
    move/from16 v4, v39

    .line 1733
    .line 1734
    const/4 v5, 0x0

    .line 1735
    goto/16 :goto_3e

    .line 1736
    .line 1737
    :cond_32
    :goto_2d
    :try_start_12
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mOpportunisticFullScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1738
    .line 1739
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1740
    .line 1741
    .line 1742
    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    .line 1743
    if-nez v5, :cond_3a

    .line 1744
    .line 1745
    :try_start_13
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEstimatedTput:I

    .line 1746
    .line 1747
    if-lez v5, :cond_3a

    .line 1748
    .line 1749
    iget v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->linkOutageCnt:I

    .line 1750
    .line 1751
    if-nez v8, :cond_3a

    .line 1752
    .line 1753
    iget v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiOutageCnt:I

    .line 1754
    .line 1755
    if-nez v8, :cond_3a

    .line 1756
    .line 1757
    if-eqz p1, :cond_33

    .line 1758
    .line 1759
    iget v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 1760
    .line 1761
    const/16 v25, 0x1

    .line 1762
    .line 1763
    add-int/lit8 v8, v8, 0x1

    .line 1764
    .line 1765
    iput v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 1766
    .line 1767
    iget v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 1768
    .line 1769
    iget v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRssi:I

    .line 1770
    .line 1771
    add-int/2addr v8, v7

    .line 1772
    iput v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aRssi:I

    .line 1773
    .line 1774
    iget v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 1775
    .line 1776
    add-int/2addr v7, v5

    .line 1777
    iput v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->aScore:I

    .line 1778
    .line 1779
    goto :goto_2e

    .line 1780
    :cond_33
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1781
    .line 1782
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1783
    .line 1784
    .line 1785
    move-result v5

    .line 1786
    if-eqz v5, :cond_34

    .line 1787
    .line 1788
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->linkOutageCnt:I

    .line 1789
    .line 1790
    if-gtz v5, :cond_35

    .line 1791
    .line 1792
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiOutageCnt:I

    .line 1793
    .line 1794
    if-gtz v5, :cond_35

    .line 1795
    .line 1796
    :cond_34
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 1797
    .line 1798
    const/16 v25, 0x1

    .line 1799
    .line 1800
    add-int/lit8 v5, v5, 0x1

    .line 1801
    .line 1802
    iput v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 1803
    .line 1804
    :cond_35
    :goto_2e
    if-eqz v6, :cond_36

    .line 1805
    .line 1806
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssid:Ljava/lang/String;

    .line 1807
    .line 1808
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1809
    .line 1810
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1811
    .line 1812
    .line 1813
    move-result v5

    .line 1814
    if-nez v5, :cond_36

    .line 1815
    .line 1816
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEstimatedTput:I

    .line 1817
    .line 1818
    sub-int v7, v36, v5

    .line 1819
    .line 1820
    mul-int/lit8 v7, v7, 0x64

    .line 1821
    .line 1822
    div-int/2addr v7, v5

    .line 1823
    const/16 v5, 0x1e

    .line 1824
    .line 1825
    if-gt v7, v5, :cond_37

    .line 1826
    .line 1827
    :cond_36
    if-eqz v24, :cond_3a

    .line 1828
    .line 1829
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1830
    .line 1831
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1832
    .line 1833
    .line 1834
    move-result v5

    .line 1835
    if-eqz v5, :cond_3a

    .line 1836
    .line 1837
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mEstimatedTput:I

    .line 1838
    .line 1839
    sub-int v8, v30, v5

    .line 1840
    .line 1841
    mul-int/lit8 v8, v8, 0x64

    .line 1842
    .line 1843
    div-int/2addr v8, v5

    .line 1844
    const/16 v5, 0x1e

    .line 1845
    .line 1846
    if-le v8, v5, :cond_3a

    .line 1847
    .line 1848
    :cond_37
    if-eqz p1, :cond_38

    .line 1849
    .line 1850
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 1851
    .line 1852
    const/16 v25, 0x1

    .line 1853
    .line 1854
    add-int/lit8 v5, v5, 0x1

    .line 1855
    .line 1856
    iput v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 1857
    .line 1858
    goto :goto_2f

    .line 1859
    :cond_38
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1860
    .line 1861
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1862
    .line 1863
    .line 1864
    move-result v5

    .line 1865
    if-eqz v5, :cond_39

    .line 1866
    .line 1867
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->linkOutageCnt:I

    .line 1868
    .line 1869
    if-gtz v5, :cond_3a

    .line 1870
    .line 1871
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiOutageCnt:I

    .line 1872
    .line 1873
    if-gtz v5, :cond_3a

    .line 1874
    .line 1875
    :cond_39
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 1876
    .line 1877
    const/16 v25, 0x1

    .line 1878
    .line 1879
    add-int/lit8 v5, v5, 0x1

    .line 1880
    .line 1881
    iput v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 1882
    .line 1883
    :cond_3a
    :goto_2f
    if-eqz v14, :cond_3e

    .line 1884
    .line 1885
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1886
    .line 1887
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1888
    .line 1889
    .line 1890
    move-result v0

    .line 1891
    if-eqz v0, :cond_3b

    .line 1892
    .line 1893
    if-eqz v18, :cond_3b

    .line 1894
    .line 1895
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 1896
    .line 1897
    .line 1898
    move-result v0

    .line 1899
    const/16 v37, 0x1e

    .line 1900
    .line 1901
    mul-int/lit8 v0, v0, 0x1e

    .line 1902
    .line 1903
    div-int/lit8 v0, v0, 0x64

    .line 1904
    .line 1905
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 1906
    .line 1907
    .line 1908
    move-result v5

    .line 1909
    sub-int v5, v5, v36

    .line 1910
    .line 1911
    if-ge v0, v5, :cond_3b

    .line 1912
    .line 1913
    cmp-long v0, v28, v34

    .line 1914
    .line 1915
    if-lez v0, :cond_3b

    .line 1916
    .line 1917
    if-eqz v12, :cond_3b

    .line 1918
    .line 1919
    if-nez v10, :cond_3b

    .line 1920
    .line 1921
    if-nez v39, :cond_3b

    .line 1922
    .line 1923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1924
    .line 1925
    .line 1926
    move-result-wide v7

    .line 1927
    iput-wide v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggerTimeStamp:J

    .line 1928
    .line 1929
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1930
    .line 1931
    const/4 v5, 0x1

    .line 1932
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    .line 1933
    .line 1934
    .line 1935
    const/4 v5, 0x0

    .line 1936
    :try_start_14
    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTargetAbnormalAP:Ljava/lang/String;

    .line 1937
    .line 1938
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->makeWifiManagerWithAttributionSourceUsingWifiUid()Landroid/net/wifi/WifiManager;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v0

    .line 1942
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActionListener:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;

    .line 1943
    .line 1944
    move-object/from16 v7, v23

    .line 1945
    .line 1946
    invoke-virtual {v0, v7, v5}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    .line 1947
    .line 1948
    .line 1949
    :goto_30
    move/from16 v23, v4

    .line 1950
    .line 1951
    move v5, v10

    .line 1952
    move/from16 v8, v36

    .line 1953
    .line 1954
    :goto_31
    const/4 v4, 0x1

    .line 1955
    goto/16 :goto_3c

    .line 1956
    .line 1957
    :catch_b
    move-exception v0

    .line 1958
    move/from16 v23, v4

    .line 1959
    .line 1960
    move/from16 v8, v36

    .line 1961
    .line 1962
    :goto_32
    move/from16 v4, v39

    .line 1963
    .line 1964
    const/4 v5, 0x1

    .line 1965
    goto/16 :goto_3e

    .line 1966
    .line 1967
    :cond_3b
    if-eqz v6, :cond_3d

    .line 1968
    .line 1969
    :try_start_15
    iget v0, v6, Landroid/net/wifi/ScanResult;->level:I

    .line 1970
    .line 1971
    const/16 v5, -0x41

    .line 1972
    .line 1973
    if-le v0, v5, :cond_3d

    .line 1974
    .line 1975
    if-nez v15, :cond_3d

    .line 1976
    .line 1977
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mlConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1978
    .line 1979
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1980
    .line 1981
    .line 1982
    move-result v0

    .line 1983
    if-eqz v0, :cond_3c

    .line 1984
    .line 1985
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssidMap:Ljava/util/Map;

    .line 1986
    .line 1987
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v0

    .line 1991
    iget-object v5, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1992
    .line 1993
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1994
    .line 1995
    .line 1996
    move-result v0

    .line 1997
    if-eqz v0, :cond_3c

    .line 1998
    .line 1999
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v0

    .line 2003
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMldMacAddress:Landroid/net/MacAddress;

    .line 2004
    .line 2005
    invoke-virtual {v0, v5}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    .line 2006
    .line 2007
    .line 2008
    move-result v0

    .line 2009
    if-eqz v0, :cond_3c

    .line 2010
    .line 2011
    goto :goto_33

    .line 2012
    :cond_3c
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2013
    .line 2014
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isNormalAP(Ljava/lang/String;)Z

    .line 2015
    .line 2016
    .line 2017
    move-result v0

    .line 2018
    if-eqz v0, :cond_3d

    .line 2019
    .line 2020
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2021
    .line 2022
    .line 2023
    move-result-wide v7

    .line 2024
    iput-wide v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggerTimeStamp:J

    .line 2025
    .line 2026
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2027
    .line 2028
    const/4 v5, 0x1

    .line 2029
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2030
    .line 2031
    .line 2032
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 2033
    .line 2034
    const/4 v5, 0x4

    .line 2035
    invoke-static {v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 2036
    .line 2037
    .line 2038
    move-result-object v5

    .line 2039
    const-wide/16 v7, 0x1770

    .line 2040
    .line 2041
    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2042
    .line 2043
    .line 2044
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2045
    .line 2046
    iget v5, v6, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2047
    .line 2048
    invoke-direct {v1, v0, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->associationCtl(Ljava/lang/String;I)V

    .line 2049
    .line 2050
    .line 2051
    :cond_3d
    :goto_33
    move/from16 v23, v4

    .line 2052
    .line 2053
    move v5, v10

    .line 2054
    move/from16 v8, v36

    .line 2055
    .line 2056
    goto/16 :goto_3b

    .line 2057
    .line 2058
    :cond_3e
    move-object/from16 v7, v23

    .line 2059
    .line 2060
    if-eqz v31, :cond_3f

    .line 2061
    .line 2062
    if-eqz v16, :cond_3f

    .line 2063
    .line 2064
    cmp-long v5, v28, v34

    .line 2065
    .line 2066
    if-lez v5, :cond_3f

    .line 2067
    .line 2068
    if-eqz v12, :cond_3f

    .line 2069
    .line 2070
    if-nez v10, :cond_3f

    .line 2071
    .line 2072
    if-nez v39, :cond_3f

    .line 2073
    .line 2074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2075
    .line 2076
    .line 2077
    move-result-wide v8

    .line 2078
    iput-wide v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggerTimeStamp:J

    .line 2079
    .line 2080
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2081
    .line 2082
    const/4 v5, 0x1

    .line 2083
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    .line 2084
    .line 2085
    .line 2086
    const/4 v5, 0x0

    .line 2087
    :try_start_16
    iput-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTargetAbnormalAP:Ljava/lang/String;

    .line 2088
    .line 2089
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->makeWifiManagerWithAttributionSourceUsingWifiUid()Landroid/net/wifi/WifiManager;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v0

    .line 2093
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActionListener:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;

    .line 2094
    .line 2095
    invoke-virtual {v0, v7, v5}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    .line 2096
    .line 2097
    .line 2098
    goto/16 :goto_30

    .line 2099
    .line 2100
    :cond_3f
    if-eqz v6, :cond_3d

    .line 2101
    .line 2102
    if-eqz v4, :cond_3d

    .line 2103
    .line 2104
    sub-int v7, v36, v32

    .line 2105
    .line 2106
    mul-int/lit8 v7, v7, 0x64

    .line 2107
    .line 2108
    :try_start_17
    div-int v7, v7, v32

    .line 2109
    .line 2110
    const/16 v5, 0x1e

    .line 2111
    .line 2112
    if-le v7, v5, :cond_3d

    .line 2113
    .line 2114
    sub-int v7, v22, v9

    .line 2115
    .line 2116
    mul-int/lit8 v7, v7, 0x64

    .line 2117
    .line 2118
    div-int/2addr v7, v9

    .line 2119
    if-le v7, v5, :cond_3d

    .line 2120
    .line 2121
    iget v5, v6, Landroid/net/wifi/ScanResult;->level:I

    .line 2122
    .line 2123
    const/16 v7, -0x41

    .line 2124
    .line 2125
    if-le v5, v7, :cond_3d

    .line 2126
    .line 2127
    if-nez v15, :cond_3d

    .line 2128
    .line 2129
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mlConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2130
    .line 2131
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2132
    .line 2133
    .line 2134
    move-result v5
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    .line 2135
    if-eqz v5, :cond_43

    .line 2136
    .line 2137
    :try_start_18
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssidMap:Ljava/util/Map;

    .line 2138
    .line 2139
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v5

    .line 2143
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2144
    .line 2145
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2146
    .line 2147
    .line 2148
    move-result v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    .line 2149
    if-eqz v5, :cond_40

    .line 2150
    .line 2151
    :try_start_19
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v5

    .line 2155
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMldMacAddress:Landroid/net/MacAddress;

    .line 2156
    .line 2157
    invoke-virtual {v5, v7}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    .line 2158
    .line 2159
    .line 2160
    move-result v5
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a

    .line 2161
    if-eqz v5, :cond_40

    .line 2162
    .line 2163
    const/4 v5, 0x1

    .line 2164
    goto :goto_34

    .line 2165
    :cond_40
    const/4 v5, 0x0

    .line 2166
    :goto_34
    if-eqz v5, :cond_42

    .line 2167
    .line 2168
    :try_start_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    .line 2170
    .line 2171
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2172
    .line 2173
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2174
    .line 2175
    .line 2176
    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    .line 2177
    if-eqz v0, :cond_41

    .line 2178
    .line 2179
    :try_start_1b
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v0

    .line 2183
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v0

    .line 2187
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    .line 2189
    .line 2190
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a

    .line 2191
    .line 2192
    .line 2193
    :cond_41
    :try_start_1c
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2194
    .line 2195
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2196
    .line 2197
    .line 2198
    move-result v7

    .line 2199
    add-int/lit8 v7, v7, -0x5

    .line 2200
    .line 2201
    iget-object v8, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2202
    .line 2203
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 2204
    .line 2205
    .line 2206
    move-result v8

    .line 2207
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v0

    .line 2211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    .line 2213
    .line 2214
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    .line 2216
    .line 2217
    iget v0, v6, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2218
    .line 2219
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2220
    .line 2221
    .line 2222
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    .line 2224
    .line 2225
    iget v0, v6, Landroid/net/wifi/ScanResult;->level:I

    .line 2226
    .line 2227
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2228
    .line 2229
    .line 2230
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    .line 2231
    .line 2232
    .line 2233
    move/from16 v8, v36

    .line 2234
    .line 2235
    :try_start_1d
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    .line 2236
    .line 2237
    .line 2238
    goto :goto_36

    .line 2239
    :catch_c
    move-exception v0

    .line 2240
    :goto_35
    move/from16 v23, v4

    .line 2241
    .line 2242
    goto/16 :goto_2c

    .line 2243
    .line 2244
    :catch_d
    move-exception v0

    .line 2245
    move/from16 v8, v36

    .line 2246
    .line 2247
    goto :goto_35

    .line 2248
    :cond_42
    move/from16 v8, v36

    .line 2249
    .line 2250
    goto :goto_36

    .line 2251
    :cond_43
    move/from16 v8, v36

    .line 2252
    .line 2253
    const/4 v5, 0x0

    .line 2254
    :goto_36
    if-nez v5, :cond_44

    .line 2255
    .line 2256
    :try_start_1e
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2257
    .line 2258
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isNormalAP(Ljava/lang/String;)Z

    .line 2259
    .line 2260
    .line 2261
    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    .line 2262
    if-eqz v0, :cond_44

    .line 2263
    .line 2264
    move/from16 v23, v4

    .line 2265
    .line 2266
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2267
    .line 2268
    .line 2269
    move-result-wide v4

    .line 2270
    iput-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggerTimeStamp:J

    .line 2271
    .line 2272
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2273
    .line 2274
    const/4 v5, 0x1

    .line 2275
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2276
    .line 2277
    .line 2278
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 2279
    .line 2280
    const/4 v5, 0x4

    .line 2281
    invoke-static {v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v4
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    .line 2285
    move v5, v10

    .line 2286
    const-wide/16 v9, 0x1770

    .line 2287
    .line 2288
    :try_start_20
    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2289
    .line 2290
    .line 2291
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2292
    .line 2293
    iget v4, v6, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2294
    .line 2295
    invoke-direct {v1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->associationCtl(Ljava/lang/String;I)V

    .line 2296
    .line 2297
    .line 2298
    goto/16 :goto_3b

    .line 2299
    .line 2300
    :catch_e
    move-exception v0

    .line 2301
    move v10, v5

    .line 2302
    goto/16 :goto_2c

    .line 2303
    .line 2304
    :catch_f
    move-exception v0

    .line 2305
    :goto_37
    move v5, v10

    .line 2306
    goto/16 :goto_2c

    .line 2307
    .line 2308
    :cond_44
    move/from16 v23, v4

    .line 2309
    .line 2310
    move v5, v10

    .line 2311
    goto/16 :goto_3b

    .line 2312
    .line 2313
    :catch_10
    move-exception v0

    .line 2314
    move/from16 v23, v4

    .line 2315
    .line 2316
    goto :goto_37

    .line 2317
    :catch_11
    move-exception v0

    .line 2318
    move/from16 v23, v4

    .line 2319
    .line 2320
    move v5, v10

    .line 2321
    goto/16 :goto_2b

    .line 2322
    .line 2323
    :cond_45
    move v5, v10

    .line 2324
    move-object/from16 v7, v23

    .line 2325
    .line 2326
    move/from16 v8, v36

    .line 2327
    .line 2328
    move/from16 v23, v4

    .line 2329
    .line 2330
    if-eqz v14, :cond_48

    .line 2331
    .line 2332
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2333
    .line 2334
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2335
    .line 2336
    .line 2337
    move-result v0

    .line 2338
    if-eqz v0, :cond_46

    .line 2339
    .line 2340
    if-eqz v18, :cond_46

    .line 2341
    .line 2342
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 2343
    .line 2344
    .line 2345
    move-result v0

    .line 2346
    const/16 v37, 0x1e

    .line 2347
    .line 2348
    mul-int/lit8 v0, v0, 0x1e

    .line 2349
    .line 2350
    div-int/lit8 v0, v0, 0x64

    .line 2351
    .line 2352
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 2353
    .line 2354
    .line 2355
    move-result v4

    .line 2356
    sub-int/2addr v4, v8

    .line 2357
    if-ge v0, v4, :cond_46

    .line 2358
    .line 2359
    cmp-long v0, v28, v34

    .line 2360
    .line 2361
    if-lez v0, :cond_46

    .line 2362
    .line 2363
    if-eqz v12, :cond_46

    .line 2364
    .line 2365
    if-nez v5, :cond_46

    .line 2366
    .line 2367
    if-nez v39, :cond_46

    .line 2368
    .line 2369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2370
    .line 2371
    .line 2372
    move-result-wide v9

    .line 2373
    iput-wide v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggerTimeStamp:J

    .line 2374
    .line 2375
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2376
    .line 2377
    const/4 v4, 0x1

    .line 2378
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_e

    .line 2379
    .line 2380
    .line 2381
    const/4 v4, 0x0

    .line 2382
    :try_start_21
    iput-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTargetAbnormalAP:Ljava/lang/String;

    .line 2383
    .line 2384
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->makeWifiManagerWithAttributionSourceUsingWifiUid()Landroid/net/wifi/WifiManager;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v0

    .line 2388
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActionListener:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;

    .line 2389
    .line 2390
    invoke-virtual {v0, v7, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_12

    .line 2391
    .line 2392
    .line 2393
    goto/16 :goto_31

    .line 2394
    .line 2395
    :catch_12
    move-exception v0

    .line 2396
    move v10, v5

    .line 2397
    goto/16 :goto_32

    .line 2398
    .line 2399
    :cond_46
    if-eqz v6, :cond_4e

    .line 2400
    .line 2401
    :try_start_22
    iget v0, v6, Landroid/net/wifi/ScanResult;->level:I

    .line 2402
    .line 2403
    const/16 v4, -0x41

    .line 2404
    .line 2405
    if-le v0, v4, :cond_4e

    .line 2406
    .line 2407
    if-nez v15, :cond_4e

    .line 2408
    .line 2409
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mlConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2410
    .line 2411
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2412
    .line 2413
    .line 2414
    move-result v0

    .line 2415
    if-eqz v0, :cond_47

    .line 2416
    .line 2417
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssidMap:Ljava/util/Map;

    .line 2418
    .line 2419
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 2420
    .line 2421
    .line 2422
    move-result-object v0

    .line 2423
    iget-object v4, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2424
    .line 2425
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2426
    .line 2427
    .line 2428
    move-result v0

    .line 2429
    if-eqz v0, :cond_47

    .line 2430
    .line 2431
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v0

    .line 2435
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMldMacAddress:Landroid/net/MacAddress;

    .line 2436
    .line 2437
    invoke-virtual {v0, v4}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    .line 2438
    .line 2439
    .line 2440
    move-result v0

    .line 2441
    if-eqz v0, :cond_47

    .line 2442
    .line 2443
    const/4 v0, 0x1

    .line 2444
    goto :goto_38

    .line 2445
    :cond_47
    const/4 v0, 0x0

    .line 2446
    :goto_38
    if-nez v0, :cond_4e

    .line 2447
    .line 2448
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2449
    .line 2450
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isNormalAP(Ljava/lang/String;)Z

    .line 2451
    .line 2452
    .line 2453
    move-result v0

    .line 2454
    if-eqz v0, :cond_4e

    .line 2455
    .line 2456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2457
    .line 2458
    .line 2459
    move-result-wide v9

    .line 2460
    iput-wide v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggerTimeStamp:J

    .line 2461
    .line 2462
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2463
    .line 2464
    const/4 v4, 0x1

    .line 2465
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2466
    .line 2467
    .line 2468
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 2469
    .line 2470
    const/4 v4, 0x4

    .line 2471
    invoke-static {v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 2472
    .line 2473
    .line 2474
    move-result-object v4

    .line 2475
    const-wide/16 v9, 0x1770

    .line 2476
    .line 2477
    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2478
    .line 2479
    .line 2480
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2481
    .line 2482
    iget v4, v6, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2483
    .line 2484
    invoke-direct {v1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->associationCtl(Ljava/lang/String;I)V

    .line 2485
    .line 2486
    .line 2487
    goto/16 :goto_3b

    .line 2488
    .line 2489
    :cond_48
    if-eqz v31, :cond_49

    .line 2490
    .line 2491
    if-eqz v16, :cond_49

    .line 2492
    .line 2493
    cmp-long v4, v28, v34

    .line 2494
    .line 2495
    if-lez v4, :cond_49

    .line 2496
    .line 2497
    if-eqz v12, :cond_49

    .line 2498
    .line 2499
    if-nez v5, :cond_49

    .line 2500
    .line 2501
    if-nez v39, :cond_49

    .line 2502
    .line 2503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2504
    .line 2505
    .line 2506
    move-result-wide v9

    .line 2507
    iput-wide v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggerTimeStamp:J

    .line 2508
    .line 2509
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2510
    .line 2511
    const/4 v4, 0x1

    .line 2512
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e

    .line 2513
    .line 2514
    .line 2515
    const/4 v4, 0x0

    .line 2516
    :try_start_23
    iput-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mTargetAbnormalAP:Ljava/lang/String;

    .line 2517
    .line 2518
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->makeWifiManagerWithAttributionSourceUsingWifiUid()Landroid/net/wifi/WifiManager;

    .line 2519
    .line 2520
    .line 2521
    move-result-object v0

    .line 2522
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActionListener:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;

    .line 2523
    .line 2524
    invoke-virtual {v0, v7, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_12

    .line 2525
    .line 2526
    .line 2527
    goto/16 :goto_31

    .line 2528
    .line 2529
    :cond_49
    if-eqz v6, :cond_4e

    .line 2530
    .line 2531
    if-eqz v23, :cond_4e

    .line 2532
    .line 2533
    sub-int v7, v8, v32

    .line 2534
    .line 2535
    mul-int/lit8 v7, v7, 0x64

    .line 2536
    .line 2537
    :try_start_24
    div-int v7, v7, v32

    .line 2538
    .line 2539
    const/16 v4, 0x1e

    .line 2540
    .line 2541
    if-le v7, v4, :cond_4e

    .line 2542
    .line 2543
    sub-int v7, v22, v9

    .line 2544
    .line 2545
    mul-int/lit8 v7, v7, 0x64

    .line 2546
    .line 2547
    div-int/2addr v7, v9

    .line 2548
    if-le v7, v4, :cond_4e

    .line 2549
    .line 2550
    iget v4, v6, Landroid/net/wifi/ScanResult;->level:I

    .line 2551
    .line 2552
    const/16 v7, -0x41

    .line 2553
    .line 2554
    if-le v4, v7, :cond_4e

    .line 2555
    .line 2556
    if-nez v15, :cond_4e

    .line 2557
    .line 2558
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mlConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2559
    .line 2560
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2561
    .line 2562
    .line 2563
    move-result v4

    .line 2564
    if-eqz v4, :cond_4c

    .line 2565
    .line 2566
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBssidMap:Ljava/util/Map;

    .line 2567
    .line 2568
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 2569
    .line 2570
    .line 2571
    move-result-object v4

    .line 2572
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2573
    .line 2574
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2575
    .line 2576
    .line 2577
    move-result v4

    .line 2578
    if-eqz v4, :cond_4a

    .line 2579
    .line 2580
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 2581
    .line 2582
    .line 2583
    move-result-object v4

    .line 2584
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mMldMacAddress:Landroid/net/MacAddress;

    .line 2585
    .line 2586
    invoke-virtual {v4, v7}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    .line 2587
    .line 2588
    .line 2589
    move-result v4

    .line 2590
    if-eqz v4, :cond_4a

    .line 2591
    .line 2592
    const/4 v4, 0x1

    .line 2593
    goto :goto_39

    .line 2594
    :cond_4a
    const/4 v4, 0x0

    .line 2595
    :goto_39
    if-eqz v4, :cond_4d

    .line 2596
    .line 2597
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    .line 2599
    .line 2600
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2601
    .line 2602
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2603
    .line 2604
    .line 2605
    move-result v0

    .line 2606
    if-eqz v0, :cond_4b

    .line 2607
    .line 2608
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 2609
    .line 2610
    .line 2611
    move-result-object v0

    .line 2612
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    .line 2613
    .line 2614
    .line 2615
    move-result-object v0

    .line 2616
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2617
    .line 2618
    .line 2619
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2620
    .line 2621
    .line 2622
    :cond_4b
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2623
    .line 2624
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2625
    .line 2626
    .line 2627
    move-result v7

    .line 2628
    add-int/lit8 v7, v7, -0x5

    .line 2629
    .line 2630
    iget-object v9, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2631
    .line 2632
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 2633
    .line 2634
    .line 2635
    move-result v9

    .line 2636
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2637
    .line 2638
    .line 2639
    move-result-object v0

    .line 2640
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    .line 2642
    .line 2643
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2644
    .line 2645
    .line 2646
    iget v0, v6, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2647
    .line 2648
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2649
    .line 2650
    .line 2651
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2652
    .line 2653
    .line 2654
    iget v0, v6, Landroid/net/wifi/ScanResult;->level:I

    .line 2655
    .line 2656
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2657
    .line 2658
    .line 2659
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
    .line 2661
    .line 2662
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2663
    .line 2664
    .line 2665
    goto :goto_3a

    .line 2666
    :cond_4c
    const/4 v4, 0x0

    .line 2667
    :cond_4d
    :goto_3a
    if-nez v4, :cond_4e

    .line 2668
    .line 2669
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2670
    .line 2671
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isNormalAP(Ljava/lang/String;)Z

    .line 2672
    .line 2673
    .line 2674
    move-result v0

    .line 2675
    if-eqz v0, :cond_4e

    .line 2676
    .line 2677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2678
    .line 2679
    .line 2680
    move-result-wide v9

    .line 2681
    iput-wide v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggerTimeStamp:J

    .line 2682
    .line 2683
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2684
    .line 2685
    const/4 v4, 0x1

    .line 2686
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2687
    .line 2688
    .line 2689
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 2690
    .line 2691
    const/4 v4, 0x4

    .line 2692
    invoke-static {v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 2693
    .line 2694
    .line 2695
    move-result-object v4

    .line 2696
    const-wide/16 v9, 0x1770

    .line 2697
    .line 2698
    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2699
    .line 2700
    .line 2701
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2702
    .line 2703
    iget v4, v6, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2704
    .line 2705
    invoke-direct {v1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->associationCtl(Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_e

    .line 2706
    .line 2707
    .line 2708
    :cond_4e
    :goto_3b
    const/4 v4, 0x0

    .line 2709
    :goto_3c
    :try_start_25
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mOpportunisticFullScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2710
    .line 2711
    const/4 v7, 0x0

    .line 2712
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_13

    .line 2713
    .line 2714
    .line 2715
    move v10, v5

    .line 2716
    goto :goto_3f

    .line 2717
    :catch_13
    move-exception v0

    .line 2718
    move v10, v5

    .line 2719
    move v5, v4

    .line 2720
    move/from16 v4, v39

    .line 2721
    .line 2722
    goto :goto_3e

    .line 2723
    :catch_14
    move-exception v0

    .line 2724
    move/from16 v8, v36

    .line 2725
    .line 2726
    const/16 v20, 0x64

    .line 2727
    .line 2728
    :goto_3d
    const/4 v4, 0x0

    .line 2729
    const/4 v5, 0x0

    .line 2730
    const/4 v10, 0x0

    .line 2731
    const/4 v14, 0x0

    .line 2732
    goto/16 :goto_1b

    .line 2733
    .line 2734
    :catch_15
    move-exception v0

    .line 2735
    move/from16 v8, v36

    .line 2736
    .line 2737
    const/16 v20, 0x64

    .line 2738
    .line 2739
    const-wide/16 v34, 0x3840

    .line 2740
    .line 2741
    goto :goto_3d

    .line 2742
    :goto_3e
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2743
    .line 2744
    const-string v9, "HD err: "

    .line 2745
    .line 2746
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2747
    .line 2748
    .line 2749
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 2750
    .line 2751
    .line 2752
    move-result-object v0

    .line 2753
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2754
    .line 2755
    .line 2756
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2757
    .line 2758
    .line 2759
    move-result-object v0

    .line 2760
    const/4 v7, 0x1

    .line 2761
    invoke-direct {v1, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 2762
    .line 2763
    .line 2764
    move/from16 v39, v4

    .line 2765
    .line 2766
    move v4, v5

    .line 2767
    :goto_3f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2768
    .line 2769
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2770
    .line 2771
    .line 2772
    move-result v0

    .line 2773
    if-eqz v0, :cond_56

    .line 2774
    .line 2775
    const-string v0, " --> "

    .line 2776
    .line 2777
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2778
    .line 2779
    .line 2780
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2781
    .line 2782
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2783
    .line 2784
    .line 2785
    move-result v0

    .line 2786
    if-eqz v0, :cond_50

    .line 2787
    .line 2788
    if-eqz v4, :cond_4f

    .line 2789
    .line 2790
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 2791
    .line 2792
    .line 2793
    move-result-object v0

    .line 2794
    :goto_40
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v0

    .line 2798
    goto :goto_41

    .line 2799
    :cond_4f
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 2800
    .line 2801
    .line 2802
    move-result-object v0

    .line 2803
    goto :goto_40

    .line 2804
    :goto_41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2805
    .line 2806
    .line 2807
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2808
    .line 2809
    .line 2810
    :cond_50
    if-eqz v4, :cond_51

    .line 2811
    .line 2812
    iget-object v0, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2813
    .line 2814
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2815
    .line 2816
    .line 2817
    move-result v5

    .line 2818
    add-int/lit8 v5, v5, -0x5

    .line 2819
    .line 2820
    move-object/from16 v7, v24

    .line 2821
    .line 2822
    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2823
    .line 2824
    :goto_42
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 2825
    .line 2826
    .line 2827
    move-result v7

    .line 2828
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2829
    .line 2830
    .line 2831
    move-result-object v0

    .line 2832
    goto :goto_43

    .line 2833
    :cond_51
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2834
    .line 2835
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2836
    .line 2837
    .line 2838
    move-result v5

    .line 2839
    add-int/lit8 v5, v5, -0x5

    .line 2840
    .line 2841
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2842
    .line 2843
    goto :goto_42

    .line 2844
    :goto_43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2845
    .line 2846
    .line 2847
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    .line 2849
    .line 2850
    if-eqz v4, :cond_52

    .line 2851
    .line 2852
    iget v0, v3, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2853
    .line 2854
    goto :goto_44

    .line 2855
    :cond_52
    iget v0, v6, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2856
    .line 2857
    :goto_44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2858
    .line 2859
    .line 2860
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2861
    .line 2862
    .line 2863
    if-eqz v4, :cond_53

    .line 2864
    .line 2865
    iget v0, v3, Landroid/net/wifi/ScanResult;->level:I

    .line 2866
    .line 2867
    goto :goto_45

    .line 2868
    :cond_53
    iget v0, v6, Landroid/net/wifi/ScanResult;->level:I

    .line 2869
    .line 2870
    :goto_45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2871
    .line 2872
    .line 2873
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    .line 2875
    .line 2876
    if-eqz v4, :cond_54

    .line 2877
    .line 2878
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 2879
    .line 2880
    .line 2881
    move-result v7

    .line 2882
    goto :goto_46

    .line 2883
    :cond_54
    move v7, v8

    .line 2884
    :goto_46
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2885
    .line 2886
    .line 2887
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    .line 2889
    .line 2890
    if-eqz v4, :cond_55

    .line 2891
    .line 2892
    move/from16 v0, v21

    .line 2893
    .line 2894
    goto :goto_47

    .line 2895
    :cond_55
    move/from16 v0, v22

    .line 2896
    .line 2897
    :goto_47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2898
    .line 2899
    .line 2900
    if-eqz v4, :cond_56

    .line 2901
    .line 2902
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2903
    .line 2904
    .line 2905
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2906
    .line 2907
    .line 2908
    :cond_56
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 2909
    .line 2910
    const-string v3, "%"

    .line 2911
    .line 2912
    const-string v4, " | "

    .line 2913
    .line 2914
    if-lez v0, :cond_57

    .line 2915
    .line 2916
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    .line 2918
    .line 2919
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 2920
    .line 2921
    mul-int/lit8 v0, v0, 0x64

    .line 2922
    .line 2923
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 2924
    .line 2925
    div-int/2addr v0, v5

    .line 2926
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2927
    .line 2928
    .line 2929
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2930
    .line 2931
    .line 2932
    :cond_57
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 2933
    .line 2934
    if-lez v0, :cond_58

    .line 2935
    .line 2936
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2937
    .line 2938
    .line 2939
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 2940
    .line 2941
    mul-int/lit8 v0, v0, 0x64

    .line 2942
    .line 2943
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 2944
    .line 2945
    div-int/2addr v0, v5

    .line 2946
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2947
    .line 2948
    .line 2949
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2950
    .line 2951
    .line 2952
    :cond_58
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionCnt:I

    .line 2953
    .line 2954
    move/from16 v3, v20

    .line 2955
    .line 2956
    if-lt v0, v3, :cond_59

    .line 2957
    .line 2958
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSuccessCnt:I

    .line 2959
    .line 2960
    mul-int/2addr v5, v3

    .line 2961
    div-int/2addr v5, v0

    .line 2962
    const/16 v0, 0x46

    .line 2963
    .line 2964
    if-le v5, v0, :cond_5a

    .line 2965
    .line 2966
    :cond_59
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoSamplingCnt:I

    .line 2967
    .line 2968
    if-lt v0, v3, :cond_5c

    .line 2969
    .line 2970
    iget v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 2971
    .line 2972
    mul-int/2addr v5, v3

    .line 2973
    div-int/2addr v5, v0

    .line 2974
    const/16 v3, 0x28

    .line 2975
    .line 2976
    if-lt v5, v3, :cond_5c

    .line 2977
    .line 2978
    :cond_5a
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scan_count:I

    .line 2979
    .line 2980
    const/16 v3, 0x384

    .line 2981
    .line 2982
    if-lt v0, v3, :cond_5b

    .line 2983
    .line 2984
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mGroupKey:Ljava/lang/String;

    .line 2985
    .line 2986
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->resetScanData(Ljava/lang/String;)V

    .line 2987
    .line 2988
    .line 2989
    :cond_5b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 2990
    .line 2991
    const/16 v3, 0xb

    .line 2992
    .line 2993
    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 2994
    .line 2995
    .line 2996
    move-result-object v3

    .line 2997
    const-wide/16 v7, 0x0

    .line 2998
    .line 2999
    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3000
    .line 3001
    .line 3002
    goto :goto_48

    .line 3003
    :cond_5c
    const/16 v3, 0x32

    .line 3004
    .line 3005
    if-lt v0, v3, :cond_5d

    .line 3006
    .line 3007
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoMissingCnt:I

    .line 3008
    .line 3009
    const/16 v20, 0x64

    .line 3010
    .line 3011
    mul-int/lit8 v3, v3, 0x64

    .line 3012
    .line 3013
    div-int/2addr v3, v0

    .line 3014
    const/16 v0, 0x28

    .line 3015
    .line 3016
    if-ge v3, v0, :cond_5d

    .line 3017
    .line 3018
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mStabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3019
    .line 3020
    const/4 v5, 0x1

    .line 3021
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3022
    .line 3023
    .line 3024
    goto :goto_48

    .line 3025
    :cond_5d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mStabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3026
    .line 3027
    const/4 v7, 0x0

    .line 3028
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3029
    .line 3030
    .line 3031
    :goto_48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3032
    .line 3033
    .line 3034
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mStabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3035
    .line 3036
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 3037
    .line 3038
    .line 3039
    move-result v0

    .line 3040
    if-eqz v0, :cond_5e

    .line 3041
    .line 3042
    const-string v0, "S"

    .line 3043
    .line 3044
    goto :goto_49

    .line 3045
    :cond_5e
    const-string v0, "U"

    .line 3046
    .line 3047
    :goto_49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3048
    .line 3049
    .line 3050
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    .line 3052
    .line 3053
    if-eqz v31, :cond_5f

    .line 3054
    .line 3055
    const-string v0, "IWHcondTrue"

    .line 3056
    .line 3057
    goto :goto_4a

    .line 3058
    :cond_5f
    const-string v0, "IWHcondFalse"

    .line 3059
    .line 3060
    :goto_4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3061
    .line 3062
    .line 3063
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3064
    .line 3065
    .line 3066
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->currConfig:Landroid/net/wifi/WifiConfiguration;

    .line 3067
    .line 3068
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 3069
    .line 3070
    .line 3071
    move-result-object v0

    .line 3072
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->selectedKey:Ljava/lang/String;

    .line 3073
    .line 3074
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3075
    .line 3076
    .line 3077
    move-result v0

    .line 3078
    const-string v3, "F"

    .line 3079
    .line 3080
    const-string v5, "T"

    .line 3081
    .line 3082
    if-eqz v0, :cond_60

    .line 3083
    .line 3084
    move-object v0, v5

    .line 3085
    goto :goto_4b

    .line 3086
    :cond_60
    move-object v0, v3

    .line 3087
    :goto_4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    .line 3089
    .line 3090
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3091
    .line 3092
    .line 3093
    cmp-long v0, v28, v34

    .line 3094
    .line 3095
    if-lez v0, :cond_61

    .line 3096
    .line 3097
    const-string v0, "TPass"

    .line 3098
    .line 3099
    goto :goto_4c

    .line 3100
    :cond_61
    const-string v0, "TFail"

    .line 3101
    .line 3102
    :goto_4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3103
    .line 3104
    .line 3105
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3106
    .line 3107
    .line 3108
    if-eqz v12, :cond_62

    .line 3109
    .line 3110
    const-string v0, "CPass"

    .line 3111
    .line 3112
    goto :goto_4d

    .line 3113
    :cond_62
    const-string v0, "CFail"

    .line 3114
    .line 3115
    :goto_4d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    .line 3117
    .line 3118
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3119
    .line 3120
    .line 3121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3122
    .line 3123
    const-string v7, "SelectionTimeGap :"

    .line 3124
    .line 3125
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3126
    .line 3127
    .line 3128
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 3129
    .line 3130
    .line 3131
    move-result-object v7

    .line 3132
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3133
    .line 3134
    .line 3135
    const-string v7, " s "

    .line 3136
    .line 3137
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3138
    .line 3139
    .line 3140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3141
    .line 3142
    .line 3143
    move-result-object v0

    .line 3144
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3145
    .line 3146
    .line 3147
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3148
    .line 3149
    .line 3150
    if-eqz v16, :cond_63

    .line 3151
    .line 3152
    move-object v0, v5

    .line 3153
    goto :goto_4e

    .line 3154
    :cond_63
    move-object v0, v3

    .line 3155
    :goto_4e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3156
    .line 3157
    .line 3158
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3159
    .line 3160
    .line 3161
    if-eqz v23, :cond_64

    .line 3162
    .line 3163
    move-object v0, v5

    .line 3164
    goto :goto_4f

    .line 3165
    :cond_64
    move-object v0, v3

    .line 3166
    :goto_4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3167
    .line 3168
    .line 3169
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3170
    .line 3171
    .line 3172
    if-eqz v10, :cond_65

    .line 3173
    .line 3174
    move-object v0, v5

    .line 3175
    goto :goto_50

    .line 3176
    :cond_65
    move-object v0, v3

    .line 3177
    :goto_50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3178
    .line 3179
    .line 3180
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3181
    .line 3182
    .line 3183
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->linkOutageCnt:I

    .line 3184
    .line 3185
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3186
    .line 3187
    .line 3188
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3189
    .line 3190
    .line 3191
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->rssiOutageCnt:I

    .line 3192
    .line 3193
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3194
    .line 3195
    .line 3196
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3197
    .line 3198
    .line 3199
    if-eqz v14, :cond_66

    .line 3200
    .line 3201
    move-object v0, v5

    .line 3202
    goto :goto_51

    .line 3203
    :cond_66
    move-object v0, v3

    .line 3204
    :goto_51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3205
    .line 3206
    .line 3207
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3208
    .line 3209
    .line 3210
    if-eqz v39, :cond_67

    .line 3211
    .line 3212
    move-object v0, v5

    .line 3213
    goto :goto_52

    .line 3214
    :cond_67
    move-object v0, v3

    .line 3215
    :goto_52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3216
    .line 3217
    .line 3218
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3219
    .line 3220
    .line 3221
    if-eqz v15, :cond_68

    .line 3222
    .line 3223
    move-object v0, v5

    .line 3224
    goto :goto_53

    .line 3225
    :cond_68
    move-object v0, v3

    .line 3226
    :goto_53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3227
    .line 3228
    .line 3229
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mlConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3230
    .line 3231
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 3232
    .line 3233
    .line 3234
    move-result v0

    .line 3235
    if-eqz v0, :cond_69

    .line 3236
    .line 3237
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3238
    .line 3239
    .line 3240
    iget v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActiveLinkNumber:I

    .line 3241
    .line 3242
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3243
    .line 3244
    .line 3245
    :cond_69
    if-eqz v6, :cond_6b

    .line 3246
    .line 3247
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3248
    .line 3249
    .line 3250
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 3251
    .line 3252
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isNormalAP(Ljava/lang/String;)Z

    .line 3253
    .line 3254
    .line 3255
    move-result v0

    .line 3256
    if-eqz v0, :cond_6a

    .line 3257
    .line 3258
    move-object v3, v5

    .line 3259
    :cond_6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3260
    .line 3261
    .line 3262
    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 3263
    .line 3264
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isNormalAP(Ljava/lang/String;)Z

    .line 3265
    .line 3266
    .line 3267
    move-result v0

    .line 3268
    if-nez v0, :cond_6b

    .line 3269
    .line 3270
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    .line 3272
    .line 3273
    :try_start_26
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mAbnormalAPList:Ljava/util/Map;

    .line 3274
    .line 3275
    iget-object v3, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 3276
    .line 3277
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3278
    .line 3279
    .line 3280
    move-result-object v0

    .line 3281
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;

    .line 3282
    .line 3283
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->-$$Nest$fgetcnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;)I

    .line 3284
    .line 3285
    .line 3286
    move-result v3

    .line 3287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3288
    .line 3289
    .line 3290
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3291
    .line 3292
    .line 3293
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->-$$Nest$fgetlatestTimestamp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;)J

    .line 3294
    .line 3295
    .line 3296
    move-result-wide v3

    .line 3297
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_16

    .line 3298
    .line 3299
    .line 3300
    goto :goto_54

    .line 3301
    :catch_16
    move-exception v0

    .line 3302
    const-string v3, "AbnormalAP info chk err: "

    .line 3303
    .line 3304
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 3305
    .line 3306
    .line 3307
    move-result-object v0

    .line 3308
    const/4 v5, 0x1

    .line 3309
    invoke-direct {v1, v0, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 3310
    .line 3311
    .line 3312
    :cond_6b
    :goto_54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3313
    .line 3314
    .line 3315
    move-result-object v0

    .line 3316
    const/4 v14, 0x2

    .line 3317
    invoke-direct {v1, v0, v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 3318
    .line 3319
    .line 3320
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3321
    .line 3322
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 3323
    .line 3324
    .line 3325
    move-result v0

    .line 3326
    if-eqz v0, :cond_6c

    .line 3327
    .line 3328
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3329
    .line 3330
    .line 3331
    move-result-object v0

    .line 3332
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->saveDebugTestResults(Ljava/lang/String;)V

    .line 3333
    .line 3334
    .line 3335
    :cond_6c
    return-void
.end method

.method public ipRenew()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public iwhIntendedDisconnection()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggerTimeStamp:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x1770

    .line 9
    .line 10
    cmp-long p0, v0, v2

    .line 11
    .line 12
    if-gtz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 3

    .line 1
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const/16 v2, 0x1f4

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->ifaces:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 15
    .line 16
    invoke-interface {p2}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mClientIfaceName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 41
    .line 42
    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 65
    .line 66
    const/4 p1, 0x2

    .line 67
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->ifaces:Ljava/util/Set;

    .line 76
    .line 77
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mClientIfaceName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 101
    .line 102
    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 117
    .line 118
    const/4 p2, 0x0

    .line 119
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 123
    .line 124
    const/16 p1, 0x8

    .line 125
    .line 126
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    .line 132
    .line 133
    :cond_1
    return-void
.end method

.method public renewConnection(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->isHeRoamingNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mBootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWaitingReInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const-wide/16 v1, 0xbb8

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-wide/16 v1, 0x1f4

    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public requestPartialScan()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->scanProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    iput v2, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput v2, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 25
    .line 26
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRcl:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    new-array v3, v3, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 33
    .line 34
    iput-object v3, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 35
    .line 36
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRcl:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ge v2, v3, :cond_0

    .line 43
    .line 44
    iget-object v3, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 45
    .line 46
    new-instance v4, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRcl:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-direct {v4, v5}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 61
    .line 62
    .line 63
    aput-object v4, v3, v2

    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v2, 0x3

    .line 69
    iput v2, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 70
    .line 71
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 72
    .line 73
    const/4 v3, 0x6

    .line 74
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-wide/16 v4, 0x1770

    .line 79
    .line 80
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPartialScanListener:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$PartialScanListener;

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mPartialScanTime:J

    .line 93
    .line 94
    return-void
.end method

.method public setSamsungIwhCtrl(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIwhWlanTestControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->renewConnection(Z)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "WLAN test IWH mode switch: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setTestMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->testTrMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "T"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "F"

    .line 12
    .line 13
    :goto_0
    const-string v0, "Test tr. mode: "

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setWifiAiIwhInferenceResult([Z)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    aget-boolean v3, p1, v1

    .line 6
    .line 7
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->unSeenBssid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aget-boolean p1, p1, v3

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mInfServicePid:I

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    move v2, v1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-ge v2, v3, :cond_1

    .line 35
    .line 36
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 41
    .line 42
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 43
    .line 44
    const-string v5, "com.samsung.android.wifi.intelligence:iwhInfService"

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 53
    .line 54
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mInfServicePid:I

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 63
    .line 64
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_2
    const-string v2, "IWH inf result. ser. error: "

    .line 73
    .line 74
    const-string v3, "SemWifiIntelligentConnectionManager"

    .line 75
    .line 76
    invoke-static {v2, p1, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->unSeenBssid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 90
    .line 91
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public setWifiAiIwhTrainingResult(Ljava/lang/String;III)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->gKey:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->score:I

    .line 9
    .line 10
    iput p4, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->mode:I

    .line 11
    .line 12
    iput p3, v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->numBssids:I

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mIntelligentConnectionManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 15
    .line 16
    const/4 p1, 0x5

    .line 17
    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

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

.method updateExtEhtOperation(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x5

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget-byte v0, v0, v2

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    and-int/2addr v0, v3

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move v0, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_0
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 21
    .line 22
    aget-byte v4, v4, v2

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    and-int/2addr v4, v5

    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move v3, v2

    .line 30
    :goto_1
    if-eqz v0, :cond_4

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    move v0, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    const/4 v0, 0x3

    .line 37
    goto :goto_2

    .line 38
    :cond_4
    move v0, v2

    .line 39
    :goto_2
    add-int/2addr v1, v0

    .line 40
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 41
    .line 42
    array-length v0, v0

    .line 43
    if-ge v0, v1, :cond_5

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_5
    if-eqz v3, :cond_6

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 49
    .line 50
    new-array v1, v5, [B

    .line 51
    .line 52
    iput-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->mDisabledSubchannelBitmap:[B

    .line 53
    .line 54
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->mDisabledSubchannelBitmap:[B

    .line 59
    .line 60
    const/16 v0, 0x8

    .line 61
    .line 62
    invoke-static {p1, v0, p0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    :cond_6
    :goto_3
    return-void
.end method

.method public updateFromNotifyconnect(ILjava/lang/String;)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->netId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->selectedKey:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x3e8

    .line 10
    .line 11
    div-long/2addr v0, v2

    .line 12
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->selectionTimeStamp:J

    .line 13
    .line 14
    const-string p1, "notify manual connection : "

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x2

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public validationFail()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "II: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, " / "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mRssi:I

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->linkOutageCnt:I

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v2, "config not updated"

    .line 62
    .line 63
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x2

    .line 71
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->linkOutageCnt:I

    .line 83
    .line 84
    if-ge v1, v2, :cond_1

    .line 85
    .line 86
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mNoInternetList:Ljava/util/Map;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_1
    return-void
.end method

.method public validationSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "IV: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v2, "config not updated"

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->addEvent(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mNoInternetList:Ljava/util/Map;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
