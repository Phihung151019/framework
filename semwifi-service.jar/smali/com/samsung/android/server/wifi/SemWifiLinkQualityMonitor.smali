.class public final Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;,
        Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;,
        Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;,
        Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;,
        Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;,
        Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiLinkQualityMonitorCallback;,
        Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiBestLinkIdChangedCallback;
    }
.end annotation


# static fields
.field public static final AC_BE:I = 0x2

.field public static final AC_BK:I = 0x3

.field public static final AC_VI:I = 0x1

.field public static final AC_VO:I = 0x0

.field private static final BATCH_LATENCY_US:I = 0x6b49d200

.field private static final BEST_LINK_ID_CHANGED_CALLBACK_REGISTRATION:I = 0x5

.field private static final BEST_LINK_ID_CHANGED_CALLBACK_UNREGISTRATION:I = 0x6

.field private static final BORDER_RSSI:D = -70.0

.field private static final BSSID_EDITED_DEFAULT:Ljava/lang/String; = "000000000000"

.field private static final BSSID_EDITED_INVALID:Ljava/lang/String; = "XXXXXXXXXXXX"

.field private static final DECISION_TREE_FILEPATH:Ljava/lang/String; = "/system/etc/decision_tree.xml"

.field private static final DUMPSYS_AI_LINK_ASSESSMENT_COUNT_LIMIT:I = 0x1388

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x1388

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiLinkQualityMonitor history:"

.field private static final DUMP_ARG_AI_LINK_ASSESSMENT:Ljava/lang/String; = "ILA history in SemWifiLinkQualityMonitor:"

.field private static final DUMP_ARG_INS_COLLECTED_DATA:Ljava/lang/String; = "INS Collected Data:"

.field private static final EVENT_WCM_INVALID_STATE_ENTER:I = 0xc

.field private static final IDX_CWND_IN_TCP_MONITOR_INFO:I = 0x17

.field private static final IDX_DATE_IN_TCP_MONITOR_INFO:I = 0x0

.field private static final IDX_PKGN_IN_TCP_MONITOR_INFO:I = 0x2

.field private static final IDX_RTO_IN_TCP_MONITOR_INFO:I = 0x16

.field private static final IDX_SYN_IN_TCP_MONITOR_INFO:I = 0x7

.field private static final IDX_UID_IN_TCP_MONITOR_INFO:I = 0x1

.field private static final ILA_EVALUATION_DISCONNECTED:I = 0x3

.field private static final ILA_EVALUATION_L2T_BY_ILA:I = 0x1

.field private static final ILA_EVALUATION_L2T_BY_LEGACY:I = 0x2

.field private static final ILA_EVALUATION_L2T_NOT_OCCURRED_IN_TIME:I = 0x5

.field private static final ILA_EVALUATION_L2T_OCCURRED_PREV:I = 0x6

.field private static final ILA_EVALUATION_QC_FAILED:I = 0x4

.field private static final ILA_TRAIN_QUERY:I = 0x7

.field private static final ILA_TRAIN_RESULT:I = 0x8

.field private static final INITIALIZATION:I = 0x4

.field private static final INITIALIZATION_DELAY_MS:I = 0x1f4

.field private static final INS_INF_RESULT:I = 0xd

.field public static final L2_TRANSITION_AGGRESSIVE_MODE:I = 0x1

.field private static final L2_TRANSITION_LOG_ENTRY_COUNT_LIMIT:I = 0x5

.field public static final L2_TRANSITION_NORMAL_MODE:I = 0x0

.field private static final LATENCY_DATA_COLUMN_LIMIT_PER_RSSI_LEVEL:I = 0x12c

.field private static final LINK_QUALITY_MONITOR_CALLBACK_REGISTRATION:I = 0x2

.field private static final LINK_QUALITY_MONITOR_CALLBACK_UNREGISTRATION:I = 0x3

.field private static final LINK_STATE_UPDATE:I = 0x1

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field public static final MODE_AVG:I = 0x1

.field public static final MODE_MIN:I = 0x2

.field private static final NUM_CATEGORY:I = 0x5

.field private static final NUM_MEMBER_VARIABLES_IN_TCP_MONITOR_INFO:I = 0x1b

.field private static final NUM_RSSI_LEVEL:I = 0xd

.field public static final QOS_IDX_LATENCY:I = 0x0

.field public static final QOS_IDX_THROUGHPUT:I = 0x1

.field private static final REALTIME_LINK_SPEED_BOUND_REF:I = 0x6c

.field private static final ROAMING_INITIALIZATION_DELAY_MS:I = 0xbb8

.field private static final RSSI_BASED_TRANSITION_SUPPORT_CARRIER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RSSI_LEVEL_INTERVAL:D = 5.0

.field private static final RSSI_LEVEL_MAX_VALUE:D = -30.0

.field private static final RSSI_LEVEL_MIN_VALUE:D = -85.0

.field private static final RSSI_THRESHOLD_BSSIDE_INVALID:D = 4.0

.field private static final RSSI_THRESHOLD_DEFAULT_INVALID:D = 1.0

.field private static final RSSI_THRESHOLD_EXCEPTION:D = 3.0

.field private static final RSSI_THRESHOLD_FILE_NOT_EXIST:D = 2.0

.field private static final RSSI_THRESHOLD_NOT_WELL_TRAINED:D = 100.0

.field private static final RTO_HISTORY_COUNT_LIMIT:I = 0x3e8

.field private static final RTO_WHITELIST_PREFIX:Ljava/lang/String; = "com.sds."

.field private static final SAVED_NETWORK_CHANGE:I = 0x9

.field private static final SETTING_CHANGE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SemWifiLinkQualityMonitor"

.field public static final TCP_INFO_WINDOW_SIZE:I = 0x6

.field private static final TERMINATION:I = 0xb

.field private static final TRAINING_TIMEOUT_MS:I = 0x493e0

.field public static final TRIGGER:I = 0x4

.field private static final bssidEPackageNameRtoCsvFileName:Ljava/lang/String; = "bssidE-pn-rto.csv"

.field private static final bssidEditedCountValueCsvFileSuffix:Ljava/lang/String; = "-value.csv"

.field private static final evaluationLogCsvFileName:Ljava/lang/String; = "ILAevaluationLog.csv"

.field private static final mConfigKeyBssidEditedMapCsvFileName:Ljava/lang/String; = "configkey-bssidE-map.csv"

.field private static mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final AGGR_HOLD_DIFF_THRESHOLD_MS:D

.field private final AGGR_LINK_RECOVERY_EXPECTATION_TIMEOUT_CNT:I

.field private final AGGR_TRANSITION_THRESHOLD_MS:D

.field private final CALLBACK_LEVEL_GOOD_LINK:I

.field private final CALLBACK_LEVEL_POOR_LINK:I

.field private final CMD_INS_ONSTART:I

.field private final CMD_INS_ONSTOP:I

.field private final CMD_INS_ON_OUTAGE_COUNT_CHANGED:I

.field private final COMEBACK_HOLD_THRESHOLD_MS:D

.field private COMEBACK_RSSI_CNT_LIMIT:I

.field private COMEBACK_RSSI_DIFF:I

.field private final COMEBACK_THRESHOLD_MS:D

.field private COMEBACK_TRAFFIC_OUTAGE_CNT_LIMIT:I

.field private final DEFAULT_CCA_BUSY_TIME_MS:D

.field private final DEFAULT_QUERY_INTERVAL_MS:I

.field private final DEFAULT_RADIO_ON_TIME_MS:D

.field private final HOLD_DIFF_THRESHOLD_MS:D

.field private INS_SENSOR_UNREGISTRATION_TIME:J

.field private final INS_SERVICE_BOUND:I

.field private final INTELLIGENT_LINK_ASSESSMENT_TRAINING_CRITERIA:I

.field private final INTELLIGENT_LINK_ASSESSMENT_TRAINING_CRITERIA_FIRST_TRAINING:I

.field private final LAST_LINK_STATE_IDX_CCA_BUSY:I

.field private final LAST_LINK_STATE_IDX_RADIO_ON:I

.field private final LAST_LINK_STATE_IDX_TX_CNT:I

.field private final LAST_LINK_STATE_IDX_TX_SUCCESS_CNT:I

.field private final LINK_ASSESSMENT_RESET_TIMEOUT_MS:J

.field private final LINK_OUTAGE_RECOVERED_CNT:I

.field private final LINK_RECOVERY_EXPECTATION_TIMEOUT_ADDITIONAL_CNT:I

.field private final LINK_RECOVERY_EXPECTATION_TIMEOUT_CNT:I

.field private final LINK_RECOVERY_RETENTION_CNT:I

.field private final LINK_STATE_IDX_CCA_BUSY:I

.field private final LINK_STATE_IDX_RADIO_ON:I

.field private final LINK_STATE_IDX_TX_RATIO:I

.field private final MAX_BEB_CNT:[I

.field private final MAX_DELAY_MS_FOR_EVALUATION:J

.field private final MAX_TX_RATIO:D

.field private final MAX_WINDOW_SIZE:I

.field private final MIN_CW:[I

.field private final MIN_RECOVERY_NUM_FOR_FALSE_POSITIVE:I

.field private final NUM_LINK_STATE_FEATURES:I

.field private SENSOR_BUFFER_SIZE_LIMIT:I

.field private final SNS_DECISION_ABSOLUTE_POOR_RSSI_THRESHOLD:D

.field private final SNS_DECISION_RSSI_TRANSIION_THRESHOLD:D

.field private final SNS_DECISION_SUSPENSION_RSSI_THRESHOLD:D

.field private final SNS_DECISION_SUSPENSION_RSSI_THRESHOLD_2G:D

.field private final TIME_GAP_FROM_LAST_DATE_WINDOW:J

.field private final TRAFFIC_IN_USE_THRESHOLD_KBPS:I

.field private final TRAFFIC_UPDATE_INTERVAL_MS:I

.field private final TRANSITION_THRESHOLD_MS:D

.field private final WINDOW_NUMBER_FOR_EVALUATION:J

.field private activeLinkNumber:I

.field private aiTrServiceIntent:Landroid/content/Intent;

.field private bestLinkId:I

.field private final bestLinkIdChangedCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiBestLinkIdChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bssidEditedAfterILA:Ljava/lang/String;

.field private bufferIdxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private callbackRssi:D

.field private final callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiLinkQualityMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private comebackRssiCnt:I

.field private connected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private cwndWindow:[I

.field private dataCnt:I

.field private dateWindow:[Ljava/lang/String;

.field private defaultValueUsed:Z

.field private has2G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ifaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private is2G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isIlaTrInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l2tTimeByIlaMs:J

.field private l2tTimeByLegacyMs:J

.field private lastBssidEdited:Ljava/lang/String;

.field private lastLinkStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[J>;"
        }
    .end annotation
.end field

.field private lastTrTimeStampMs:J

.field private lastTxBytes:J

.field private linkActivenessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private linkIdBandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private linkStatRingBuffer:[[D

.field private linkStateRingBufferMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[[D>;"
        }
    .end annotation
.end field

.field private lqCallbackILATriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lqCallbackLegacyTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lqComebackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActionFilter:[I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBestLinkSentToWcm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mClientIfaceName:Ljava/lang/String;

.field private mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mConsecutiveAboveComebackThres:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataDirectory:Ljava/lang/String;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mINSEventHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;

.field private mINSEventHandlerThread:Landroid/os/HandlerThread;

.field private mINSSensorUnregisterTask:Ljava/lang/Runnable;

.field private mIlaResDirectory:Ljava/lang/String;

.field private mIlaServiceConnection:Landroid/content/ServiceConnection;

.field private mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInsSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mInsSensorHandler:Landroid/os/Handler;

.field private mInsSensorUnregistrationPending:Z

.field private mIsSensorEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsWifiValidState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mL2TransitionLog:Ljava/lang/StringBuilder;

.field private final mL2TransitionLogHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mL2TransitionMode:I

.field private mLastCcaBusyTimeMs:J

.field private mLastLinkStateUpdateTimeMs:J

.field private mLastRadioOnTimeMs:J

.field private mLastTxCnt:J

.field private mLastTxSuccessCnt:J

.field private mLastUpdateTimeMs:J

.field private final mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

.field private mLinkSpeedBoundMbps:I

.field private mLinkStateUpdateNumber:J

.field private mLinkVariableKeys:[Ljava/lang/String;

.field private mLinkVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMloDeterminedByMl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMloLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiLinkControl:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

.field private mNumDataInRssiLevel:[I

.field private final mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field private mQosDecisionTree:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;

.field private mQosStateMachine:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;

.field private mRssi:D

.field private final mRtoHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSemInsManager:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServicePid:I

.field private mTMIDirectory:Ljava/lang/String;

.field private mTPChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTxSpeed:I

.field private mVerbose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

.field private final mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

.field private final mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

.field private magneticSensorEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mlLinkNumber:I

.field private mloConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private numRecoveredAfterIlaL2t:I

.field private numTransitOccurredMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private outageLastingCnt:I

.field private outageRecoveredCnt:I

.field private perLinkVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private pressureSensorEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

.field private rBufferIdx:I

.field private recoveryLastingCnt:I

.field private rssiBasedTransitionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final rtoWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rtoWindow:[I

.field private scpmEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sensorFlushed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final sensorsToRegister:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private socketCritCwnd:I

.field private socketCritRto:I

.field private socketCritSyn:I

.field private synWindow:[I

.field private timeRingBuffer:[J

.field private timeRingBufferMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[J>;"
        }
    .end annotation
.end field

.field private trafficOutageCnt:I

.field private txBytes:J

.field private txSpeedRingBuffer:[I

.field private txSpeedRingBufferMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private txTrafficInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private txTrafficKbps:J

.field private voiceCallDetected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$-Ona9DPLwx49Hfov1ngkuwNs8zA(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lambda$registerSensorListener$0(Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetCOMEBACK_RSSI_CNT_LIMIT(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->COMEBACK_RSSI_CNT_LIMIT:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetCOMEBACK_RSSI_DIFF(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->COMEBACK_RSSI_DIFF:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetCOMEBACK_TRAFFIC_OUTAGE_CNT_LIMIT(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->COMEBACK_TRAFFIC_OUTAGE_CNT_LIMIT:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetINS_SENSOR_UNREGISTRATION_TIME(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->INS_SENSOR_UNREGISTRATION_TIME:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetSENSOR_BUFFER_SIZE_LIMIT(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->SENSOR_BUFFER_SIZE_LIMIT:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactiveLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaiTrServiceIntent(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->aiTrServiceIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbestLinkIdChangedCallbacks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkIdChangedCallbacks:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbssidEditedAfterILA(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bssidEditedAfterILA:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbufferIdxMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bufferIdxMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallbackRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->callbackRssi:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcallbacks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->callbacks:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcomebackRssiCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->comebackRssiCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcwndWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->cwndWindow:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdataCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->dataCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdateWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->dateWindow:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdefaultValueUsed(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->defaultValueUsed:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgethas2G(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->has2G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->ifaces:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetis2G(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->is2G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisIlaTrInProcess(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->isIlaTrInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByIlaMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastBssidEdited:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastLinkStateMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastTrTimeStampMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastTrTimeStampMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastTxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlinkActivenessMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkActivenessMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinkIdBandMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkIdBandMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinkStateRingBufferMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStateRingBufferMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqCallbackILATriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlqCallbackLegacyTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqCallbackLegacyTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlqComebackTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqComebackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionFilter(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mActionFilter:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/app/ActivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBestLinkSentToWcm(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mBestLinkSentToWcm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mClientIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConsecutiveAboveComebackThres(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mConsecutiveAboveComebackThres:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mDataDirectory:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINSEventHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mINSEventHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINSSensorUnregisterTask(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mINSSensorUnregisterTask:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIlaResDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaResDirectory:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIlaServiceConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaServiceConnection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsSensorEventListener(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/hardware/SensorEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mInsSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsSensorHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mInsSensorHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsSensorUnregistrationPending(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mInsSensorUnregistrationPending:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSensorEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIsSensorEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiValidState(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIsWifiValidState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLog:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmL2TransitionMode(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionMode:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastLinkStateUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastLinkStateUpdateTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastUpdateTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkQualityMonitorHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkStateUpdateNumber:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkVariableKeys(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkVariables(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariables:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMloDeterminedByMl(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mMloDeterminedByMl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMloLinks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mMloLinks:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumDataInRssiLevel(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mNumDataInRssiLevel:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQosDecisionTree(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mQosDecisionTree:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQosStateMachine(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mQosStateMachine:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRssi:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRtoHistory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRtoHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemContextListener(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/hardware/context/SemContextListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/hardware/context/SemContextManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemInsManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSemInsManager:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/hardware/SensorManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServicePid(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mServicePid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTMIDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTMIDirectory:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTPChecked(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTPChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiUsabilityStatsEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmagneticSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmlLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mlLinkNumber:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmloConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mloConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnumRecoveredAfterIlaL2t(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->numRecoveredAfterIlaL2t:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->numTransitOccurredMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageLastingCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageRecoveredCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetperLinkVariables(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->perLinkVariables:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpressureSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecoveryLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->recoveryLastingCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrssiBasedTransitionEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rssiBasedTransitionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrtoWhiteList(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rtoWhiteList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrtoWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rtoWindow:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscpmEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->scpmEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsensorFlushed(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->sensorFlushed:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsocketCritCwnd(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritCwnd:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsocketCritRto(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritRto:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsocketCritSyn(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritSyn:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsynWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->synWindow:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimeRingBufferMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->timeRingBufferMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettrafficOutageCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->trafficOutageCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettxBytes(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettxSpeedRingBufferMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txSpeedRingBufferMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxTrafficInUse(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txTrafficInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxTrafficKbps(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txTrafficKbps:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetvoiceCallDetected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->voiceCallDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactiveLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputbssidEditedAfterILA(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bssidEditedAfterILA:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputcallbackRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->callbackRssi:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputcomebackRssiCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->comebackRssiCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputdataCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->dataCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByIlaMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputl2tTimeByLegacyMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByLegacyMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastBssidEdited:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTrTimeStampMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastTrTimeStampMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastTxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mClientIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInsSensorUnregistrationPending(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mInsSensorUnregistrationPending:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLog:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastLinkStateUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastLinkStateUpdateTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastUpdateTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLinkSpeedBoundMbps(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkSpeedBoundMbps:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkStateUpdateNumber:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMloLinks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mMloLinks:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRssi:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Lcom/samsung/android/hardware/context/SemContextManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServicePid(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mServicePid:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxSpeed(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmlLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mlLinkNumber:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputnumRecoveredAfterIlaL2t(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->numRecoveredAfterIlaL2t:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageLastingCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageRecoveredCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputrecoveryLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->recoveryLastingCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputsocketCritCwnd(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritCwnd:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputsocketCritRto(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritRto:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputsocketCritSyn(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritSyn:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtrafficOutageCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->trafficOutageCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtxBytes(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtxTrafficKbps(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txTrafficKbps:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcallbackLinkQualityUpdateForPoorLink(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->callbackLinkQualityUpdateForPoorLink(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcallbackOutageCountChanged(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;DDIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->callbackOutageCountChanged(DDIZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckMonotonicNonDecreasing(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;[II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->checkMonotonicNonDecreasing([II)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcopyLatencyToCsvPerRssiLevel(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;DD)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->copyLatencyToCsvPerRssiLevel(Ljava/lang/String;DD)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mfromChannelNumberToFreq(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->fromChannelNumberToFreq(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getBssidEdited()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getBssidEdited(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getBssidEdited(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetIntegerFromTcpMonitorInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getIntegerFromTcpMonitorInfo(Ljava/lang/String;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetStringFromTcpMonitorInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getStringFromTcpMonitorInfo(Ljava/lang/String;I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUnixTimeFromSimpleDateFormat(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getUnixTimeFromSimpleDateFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitializeClassifier(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->initializeClassifier()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mmultiLinkCtlEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->multiLinkCtlEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mrecordIlaResults(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;IDDI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->recordIlaResults(Ljava/lang/String;IDDI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterSensorListener(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->registerSensorListener()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mtrimToSize(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->trimToSize(Ljava/util/ArrayList;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterSensorListener(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->unregisterSensorListener()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLinkLayerStats(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->updateLinkLayerStats()V

    .line 2
    .line 3
    .line 4
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
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    const/16 v0, 0x59b

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    filled-new-array {v0}, [Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->RSSI_BASED_TRANSITION_SUPPORT_CARRIER:Ljava/util/List;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/net/wifi/WifiManager;Landroid/os/HandlerThread;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v3, 0xa

    .line 11
    .line 12
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->MAX_WINDOW_SIZE:I

    .line 13
    .line 14
    const/16 v4, 0x1f4

    .line 15
    .line 16
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->TRAFFIC_UPDATE_INTERVAL_MS:I

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->TRAFFIC_IN_USE_THRESHOLD_KBPS:I

    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    iput v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->NUM_LINK_STATE_FEATURES:I

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LINK_STATE_IDX_RADIO_ON:I

    .line 26
    .line 27
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LINK_STATE_IDX_CCA_BUSY:I

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LINK_STATE_IDX_TX_RATIO:I

    .line 31
    .line 32
    const/4 v8, 0x4

    .line 33
    const/16 v9, 0x8

    .line 34
    .line 35
    const/16 v10, 0x10

    .line 36
    .line 37
    filled-new-array {v8, v9, v10, v10, v10}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->MIN_CW:[I

    .line 42
    .line 43
    const/4 v10, 0x7

    .line 44
    filled-new-array {v7, v7, v10, v10, v4}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->MAX_BEB_CNT:[I

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 52
    .line 53
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-direct {v11, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 56
    .line 57
    .line 58
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-direct {v11, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 63
    .line 64
    .line 65
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mVerbose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-direct {v11, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 70
    .line 71
    .line 72
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mloConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-direct {v11, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 77
    .line 78
    .line 79
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mMloDeterminedByMl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    invoke-direct {v11, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 84
    .line 85
    .line 86
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mBestLinkSentToWcm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    invoke-direct {v11, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 91
    .line 92
    .line 93
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mConsecutiveAboveComebackThres:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    .line 97
    invoke-direct {v11, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 98
    .line 99
    .line 100
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    .line 102
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    .line 104
    invoke-direct {v11, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 105
    .line 106
    .line 107
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->scpmEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    .line 109
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    .line 111
    invoke-direct {v11, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 112
    .line 113
    .line 114
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rssiBasedTransitionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    .line 116
    const-wide/16 v11, 0x0

    .line 117
    .line 118
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastCcaBusyTimeMs:J

    .line 119
    .line 120
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastRadioOnTimeMs:J

    .line 121
    .line 122
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxCnt:J

    .line 123
    .line 124
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxSuccessCnt:J

    .line 125
    .line 126
    const/16 v13, -0xa

    .line 127
    .line 128
    iput v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkSpeedBoundMbps:I

    .line 129
    .line 130
    const-wide/16 v13, -0x1

    .line 131
    .line 132
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkStateUpdateNumber:J

    .line 133
    .line 134
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastLinkStateUpdateTimeMs:J

    .line 135
    .line 136
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastUpdateTimeMs:J

    .line 137
    .line 138
    new-array v13, v7, [I

    .line 139
    .line 140
    aput v3, v13, v4

    .line 141
    .line 142
    aput v5, v13, v6

    .line 143
    .line 144
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 145
    .line 146
    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    check-cast v13, [[D

    .line 151
    .line 152
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStatRingBuffer:[[D

    .line 153
    .line 154
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rBufferIdx:I

    .line 155
    .line 156
    new-array v13, v3, [I

    .line 157
    .line 158
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txSpeedRingBuffer:[I

    .line 159
    .line 160
    new-array v13, v3, [J

    .line 161
    .line 162
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->timeRingBuffer:[J

    .line 163
    .line 164
    const/4 v13, 0x5

    .line 165
    iput v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->COMEBACK_TRAFFIC_OUTAGE_CNT_LIMIT:I

    .line 166
    .line 167
    const/16 v14, 0xf

    .line 168
    .line 169
    iput v14, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->COMEBACK_RSSI_DIFF:I

    .line 170
    .line 171
    iput v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->COMEBACK_RSSI_CNT_LIMIT:I

    .line 172
    .line 173
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mlLinkNumber:I

    .line 174
    .line 175
    new-instance v13, Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkIdBandMap:Ljava/util/Map;

    .line 181
    .line 182
    new-instance v13, Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkActivenessMap:Ljava/util/Map;

    .line 188
    .line 189
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkId:I

    .line 190
    .line 191
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 192
    .line 193
    new-instance v13, Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 196
    .line 197
    .line 198
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStateRingBufferMap:Ljava/util/Map;

    .line 199
    .line 200
    new-instance v13, Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bufferIdxMap:Ljava/util/Map;

    .line 206
    .line 207
    new-instance v13, Ljava/util/HashMap;

    .line 208
    .line 209
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 210
    .line 211
    .line 212
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txSpeedRingBufferMap:Ljava/util/Map;

    .line 213
    .line 214
    new-instance v13, Ljava/util/HashMap;

    .line 215
    .line 216
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 217
    .line 218
    .line 219
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->timeRingBufferMap:Ljava/util/Map;

    .line 220
    .line 221
    new-instance v13, Ljava/util/HashMap;

    .line 222
    .line 223
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 224
    .line 225
    .line 226
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariables:Ljava/util/HashMap;

    .line 227
    .line 228
    new-instance v13, Ljava/util/HashMap;

    .line 229
    .line 230
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->perLinkVariables:Ljava/util/HashMap;

    .line 234
    .line 235
    new-instance v13, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 238
    .line 239
    .line 240
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 241
    .line 242
    const-string v13, "ccaRo"

    .line 243
    .line 244
    const-string v14, "linkSpeedMbps"

    .line 245
    .line 246
    const-string v15, "successRate"

    .line 247
    .line 248
    filled-new-array {v14, v15, v13}, [Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v13

    .line 252
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 253
    .line 254
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LAST_LINK_STATE_IDX_RADIO_ON:I

    .line 255
    .line 256
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LAST_LINK_STATE_IDX_CCA_BUSY:I

    .line 257
    .line 258
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LAST_LINK_STATE_IDX_TX_CNT:I

    .line 259
    .line 260
    iput v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LAST_LINK_STATE_IDX_TX_SUCCESS_CNT:I

    .line 261
    .line 262
    new-instance v13, Ljava/lang/Object;

    .line 263
    .line 264
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 265
    .line 266
    .line 267
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLock:Ljava/lang/Object;

    .line 268
    .line 269
    new-instance v13, Ljava/util/HashSet;

    .line 270
    .line 271
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 272
    .line 273
    .line 274
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->ifaces:Ljava/util/Set;

    .line 275
    .line 276
    const/16 v13, 0xd

    .line 277
    .line 278
    new-array v13, v13, [I

    .line 279
    .line 280
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mNumDataInRssiLevel:[I

    .line 281
    .line 282
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionMode:I

    .line 283
    .line 284
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLog:Ljava/lang/StringBuilder;

    .line 285
    .line 286
    new-instance v13, Ljava/util/LinkedList;

    .line 287
    .line 288
    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 289
    .line 290
    .line 291
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLogHistory:Ljava/util/LinkedList;

    .line 292
    .line 293
    const-string v13, "/data/data/com.samsung.android.wifi.intelligence/files"

    .line 294
    .line 295
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mDataDirectory:Ljava/lang/String;

    .line 296
    .line 297
    const-string v13, "/data/data/com.samsung.android.wifi.intelligence/record"

    .line 298
    .line 299
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaResDirectory:Ljava/lang/String;

    .line 300
    .line 301
    const-string v13, "/data/data/com.samsung.android.wifi.intelligence/tmi"

    .line 302
    .line 303
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTMIDirectory:Ljava/lang/String;

    .line 304
    .line 305
    const-wide/16 v13, 0x6

    .line 306
    .line 307
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->WINDOW_NUMBER_FOR_EVALUATION:J

    .line 308
    .line 309
    const-wide/16 v13, 0x4e20

    .line 310
    .line 311
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->MAX_DELAY_MS_FOR_EVALUATION:J

    .line 312
    .line 313
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->MIN_RECOVERY_NUM_FOR_FALSE_POSITIVE:I

    .line 314
    .line 315
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByIlaMs:J

    .line 316
    .line 317
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByLegacyMs:J

    .line 318
    .line 319
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->numRecoveredAfterIlaL2t:I

    .line 320
    .line 321
    const-string v15, "000000000000"

    .line 322
    .line 323
    iput-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bssidEditedAfterILA:Ljava/lang/String;

    .line 324
    .line 325
    iput-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastBssidEdited:Ljava/lang/String;

    .line 326
    .line 327
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->dataCnt:I

    .line 328
    .line 329
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 330
    .line 331
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->DEFAULT_RADIO_ON_TIME_MS:D

    .line 332
    .line 333
    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    .line 334
    .line 335
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->DEFAULT_CCA_BUSY_TIME_MS:D

    .line 336
    .line 337
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 338
    .line 339
    invoke-direct {v10, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 340
    .line 341
    .line 342
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqCallbackLegacyTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 343
    .line 344
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 345
    .line 346
    invoke-direct {v10, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 347
    .line 348
    .line 349
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqCallbackILATriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 350
    .line 351
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 352
    .line 353
    invoke-direct {v10, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 354
    .line 355
    .line 356
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqComebackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 357
    .line 358
    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    .line 359
    .line 360
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->TRANSITION_THRESHOLD_MS:D

    .line 361
    .line 362
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 363
    .line 364
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->AGGR_TRANSITION_THRESHOLD_MS:D

    .line 365
    .line 366
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->HOLD_DIFF_THRESHOLD_MS:D

    .line 367
    .line 368
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 369
    .line 370
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->AGGR_HOLD_DIFF_THRESHOLD_MS:D

    .line 371
    .line 372
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 373
    .line 374
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->COMEBACK_THRESHOLD_MS:D

    .line 375
    .line 376
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->COMEBACK_HOLD_THRESHOLD_MS:D

    .line 377
    .line 378
    new-instance v10, Ljava/util/HashSet;

    .line 379
    .line 380
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 381
    .line 382
    .line 383
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->callbacks:Ljava/util/Set;

    .line 384
    .line 385
    new-instance v10, Ljava/util/HashSet;

    .line 386
    .line 387
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 388
    .line 389
    .line 390
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkIdChangedCallbacks:Ljava/util/Set;

    .line 391
    .line 392
    const-wide v10, -0x3fae800000000000L    # -70.0

    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRssi:D

    .line 398
    .line 399
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 400
    .line 401
    invoke-direct {v10, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 402
    .line 403
    .line 404
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->is2G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 405
    .line 406
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 407
    .line 408
    invoke-direct {v10, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 409
    .line 410
    .line 411
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->has2G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 412
    .line 413
    const-wide/high16 v10, -0x3fb5000000000000L    # -54.0

    .line 414
    .line 415
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->SNS_DECISION_SUSPENSION_RSSI_THRESHOLD_2G:D

    .line 416
    .line 417
    const-wide v10, -0x3fb0800000000000L    # -63.0

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->SNS_DECISION_SUSPENSION_RSSI_THRESHOLD:D

    .line 423
    .line 424
    const-wide/high16 v10, -0x3fac000000000000L    # -80.0

    .line 425
    .line 426
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->SNS_DECISION_ABSOLUTE_POOR_RSSI_THRESHOLD:D

    .line 427
    .line 428
    const-wide v10, -0x3fac800000000000L    # -78.0

    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->SNS_DECISION_RSSI_TRANSIION_THRESHOLD:D

    .line 434
    .line 435
    iput v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LINK_RECOVERY_EXPECTATION_TIMEOUT_CNT:I

    .line 436
    .line 437
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->AGGR_LINK_RECOVERY_EXPECTATION_TIMEOUT_CNT:I

    .line 438
    .line 439
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LINK_RECOVERY_EXPECTATION_TIMEOUT_ADDITIONAL_CNT:I

    .line 440
    .line 441
    iput v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LINK_RECOVERY_RETENTION_CNT:I

    .line 442
    .line 443
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LINK_OUTAGE_RECOVERED_CNT:I

    .line 444
    .line 445
    const-wide/16 v9, 0x4e20

    .line 446
    .line 447
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->LINK_ASSESSMENT_RESET_TIMEOUT_MS:J

    .line 448
    .line 449
    const/16 v9, 0xbb8

    .line 450
    .line 451
    iput v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->DEFAULT_QUERY_INTERVAL_MS:I

    .line 452
    .line 453
    iput v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->INTELLIGENT_LINK_ASSESSMENT_TRAINING_CRITERIA:I

    .line 454
    .line 455
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->INTELLIGENT_LINK_ASSESSMENT_TRAINING_CRITERIA_FIRST_TRAINING:I

    .line 456
    .line 457
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 458
    .line 459
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->MAX_TX_RATIO:D

    .line 460
    .line 461
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageLastingCnt:I

    .line 462
    .line 463
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageRecoveredCnt:I

    .line 464
    .line 465
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->recoveryLastingCnt:I

    .line 466
    .line 467
    new-instance v3, Ljava/util/HashMap;

    .line 468
    .line 469
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 470
    .line 471
    .line 472
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->numTransitOccurredMap:Ljava/util/Map;

    .line 473
    .line 474
    iput-boolean v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->defaultValueUsed:Z

    .line 475
    .line 476
    const-wide/16 v9, 0x0

    .line 477
    .line 478
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txBytes:J

    .line 479
    .line 480
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastTxBytes:J

    .line 481
    .line 482
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txTrafficKbps:J

    .line 483
    .line 484
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 485
    .line 486
    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 487
    .line 488
    .line 489
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txTrafficInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 490
    .line 491
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 492
    .line 493
    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 494
    .line 495
    .line 496
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->voiceCallDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 497
    .line 498
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 499
    .line 500
    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 501
    .line 502
    .line 503
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIsWifiValidState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 504
    .line 505
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 506
    .line 507
    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 508
    .line 509
    .line 510
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTPChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 511
    .line 512
    const-wide/16 v9, 0x0

    .line 513
    .line 514
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastTrTimeStampMs:J

    .line 515
    .line 516
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;

    .line 517
    .line 518
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 519
    .line 520
    .line 521
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 522
    .line 523
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 524
    .line 525
    invoke-direct {v3, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 526
    .line 527
    .line 528
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 529
    .line 530
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->CALLBACK_LEVEL_GOOD_LINK:I

    .line 531
    .line 532
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->CALLBACK_LEVEL_POOR_LINK:I

    .line 533
    .line 534
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 535
    .line 536
    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 537
    .line 538
    .line 539
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIsSensorEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 540
    .line 541
    iput-boolean v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mInsSensorUnregistrationPending:Z

    .line 542
    .line 543
    new-instance v3, Landroid/os/Handler;

    .line 544
    .line 545
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 546
    .line 547
    .line 548
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mInsSensorHandler:Landroid/os/Handler;

    .line 549
    .line 550
    const-wide/16 v9, 0x7530

    .line 551
    .line 552
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->INS_SENSOR_UNREGISTRATION_TIME:J

    .line 553
    .line 554
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$2;

    .line 555
    .line 556
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 557
    .line 558
    .line 559
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mINSSensorUnregisterTask:Ljava/lang/Runnable;

    .line 560
    .line 561
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;

    .line 562
    .line 563
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 564
    .line 565
    .line 566
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 567
    .line 568
    filled-new-array {v4, v7, v5, v8, v6}, [I

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mActionFilter:[I

    .line 573
    .line 574
    const/4 v15, 0x0

    .line 575
    iput-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mINSEventHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;

    .line 576
    .line 577
    iput v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->INS_SERVICE_BOUND:I

    .line 578
    .line 579
    iput v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->CMD_INS_ONSTART:I

    .line 580
    .line 581
    iput v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->CMD_INS_ONSTOP:I

    .line 582
    .line 583
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->CMD_INS_ON_OUTAGE_COUNT_CHANGED:I

    .line 584
    .line 585
    new-instance v3, Ljava/util/ArrayList;

    .line 586
    .line 587
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .line 589
    .line 590
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 591
    .line 592
    new-instance v3, Ljava/util/ArrayList;

    .line 593
    .line 594
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .line 596
    .line 597
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    const/4 v5, 0x6

    .line 604
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 605
    .line 606
    .line 607
    move-result-object v8

    .line 608
    invoke-static {v3, v8}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->sensorsToRegister:Ljava/util/List;

    .line 613
    .line 614
    new-instance v3, Ljava/util/HashMap;

    .line 615
    .line 616
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 617
    .line 618
    .line 619
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->sensorFlushed:Ljava/util/HashMap;

    .line 620
    .line 621
    const/16 v3, 0x3e8

    .line 622
    .line 623
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->SENSOR_BUFFER_SIZE_LIMIT:I

    .line 624
    .line 625
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;

    .line 626
    .line 627
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 628
    .line 629
    .line 630
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mInsSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 631
    .line 632
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$5;

    .line 633
    .line 634
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 635
    .line 636
    .line 637
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 638
    .line 639
    new-instance v8, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$7;

    .line 640
    .line 641
    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$7;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 642
    .line 643
    .line 644
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 645
    .line 646
    new-instance v8, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$8;

    .line 647
    .line 648
    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$8;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 649
    .line 650
    .line 651
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 652
    .line 653
    new-instance v8, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$9;

    .line 654
    .line 655
    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$9;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 656
    .line 657
    .line 658
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 659
    .line 660
    const/4 v8, -0x1

    .line 661
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mServicePid:I

    .line 662
    .line 663
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 664
    .line 665
    invoke-direct {v9, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 666
    .line 667
    .line 668
    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->isIlaTrInProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 669
    .line 670
    new-instance v9, Landroid/content/Intent;

    .line 671
    .line 672
    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 673
    .line 674
    .line 675
    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->aiTrServiceIntent:Landroid/content/Intent;

    .line 676
    .line 677
    new-instance v9, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$10;

    .line 678
    .line 679
    invoke-direct {v9, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$10;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 680
    .line 681
    .line 682
    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaServiceConnection:Landroid/content/ServiceConnection;

    .line 683
    .line 684
    new-array v9, v5, [Ljava/lang/String;

    .line 685
    .line 686
    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->dateWindow:[Ljava/lang/String;

    .line 687
    .line 688
    new-array v9, v5, [I

    .line 689
    .line 690
    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->synWindow:[I

    .line 691
    .line 692
    new-array v9, v5, [I

    .line 693
    .line 694
    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rtoWindow:[I

    .line 695
    .line 696
    new-array v5, v5, [I

    .line 697
    .line 698
    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->cwndWindow:[I

    .line 699
    .line 700
    new-instance v5, Ljava/util/LinkedList;

    .line 701
    .line 702
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 703
    .line 704
    .line 705
    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRtoHistory:Ljava/util/LinkedList;

    .line 706
    .line 707
    new-instance v5, Ljava/util/ArrayList;

    .line 708
    .line 709
    const-string v9, "com.sds.teams"

    .line 710
    .line 711
    const-string v10, "com.sds.mms.ui"

    .line 712
    .line 713
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v9

    .line 717
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 718
    .line 719
    .line 720
    move-result-object v9

    .line 721
    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 722
    .line 723
    .line 724
    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rtoWhiteList:Ljava/util/List;

    .line 725
    .line 726
    const-wide/16 v9, 0xbb8

    .line 727
    .line 728
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->TIME_GAP_FROM_LAST_DATE_WINDOW:J

    .line 729
    .line 730
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritSyn:I

    .line 731
    .line 732
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritRto:I

    .line 733
    .line 734
    iput v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritCwnd:I

    .line 735
    .line 736
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

    .line 737
    .line 738
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 739
    .line 740
    .line 741
    move-result-object v5

    .line 742
    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    .line 743
    .line 744
    move-object/from16 v9, p2

    .line 745
    .line 746
    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 747
    .line 748
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 749
    .line 750
    .line 751
    move-result-object v10

    .line 752
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 753
    .line 754
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 755
    .line 756
    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 757
    .line 758
    .line 759
    move-result-object v11

    .line 760
    invoke-direct {v10, v0, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/os/Looper;)V

    .line 761
    .line 762
    .line 763
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 764
    .line 765
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 766
    .line 767
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 768
    .line 769
    .line 770
    move-result-object v10

    .line 771
    invoke-virtual {v2, v10, v3}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 772
    .line 773
    .line 774
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 775
    .line 776
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 777
    .line 778
    invoke-interface {v2, v3}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 779
    .line 780
    .line 781
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

    .line 782
    .line 783
    const-string v3, "activity"

    .line 784
    .line 785
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    check-cast v2, Landroid/app/ActivityManager;

    .line 790
    .line 791
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mActivityManager:Landroid/app/ActivityManager;

    .line 792
    .line 793
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

    .line 794
    .line 795
    const-string v3, "phone"

    .line 796
    .line 797
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v2

    .line 801
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 802
    .line 803
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 804
    .line 805
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 810
    .line 811
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiEnhancedFeatureController()Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    iput-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 816
    .line 817
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    .line 818
    .line 819
    .line 820
    move-result v10

    .line 821
    if-lez v10, :cond_0

    .line 822
    .line 823
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 824
    .line 825
    invoke-virtual {v3, v10}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;)V

    .line 826
    .line 827
    .line 828
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 829
    .line 830
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    .line 831
    .line 832
    .line 833
    move-result v10

    .line 834
    const-string v11, "wifi_switch_to_mobile_data_ai_mode_2"

    .line 835
    .line 836
    if-lez v10, :cond_1

    .line 837
    .line 838
    invoke-virtual {v2, v5, v11, v8}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 839
    .line 840
    .line 841
    move-result v10

    .line 842
    if-eqz v10, :cond_1

    .line 843
    .line 844
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->scpmEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 845
    .line 846
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 847
    .line 848
    .line 849
    move-result v10

    .line 850
    if-eqz v10, :cond_1

    .line 851
    .line 852
    goto :goto_0

    .line 853
    :cond_1
    move v4, v6

    .line 854
    :goto_0
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 855
    .line 856
    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    .line 858
    .line 859
    const-string v4, "ILA conf: "

    .line 860
    .line 861
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    .line 865
    .line 866
    .line 867
    move-result v4

    .line 868
    if-lez v4, :cond_2

    .line 869
    .line 870
    const-string v4, "Y / "

    .line 871
    .line 872
    goto :goto_1

    .line 873
    :cond_2
    const-string v4, "N / "

    .line 874
    .line 875
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v2, v5, v11, v8}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 879
    .line 880
    .line 881
    move-result v2

    .line 882
    if-eqz v2, :cond_3

    .line 883
    .line 884
    const-string v2, "Y"

    .line 885
    .line 886
    goto :goto_2

    .line 887
    :cond_3
    const-string v2, "N"

    .line 888
    .line 889
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v2

    .line 896
    invoke-virtual {v0, v2, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 897
    .line 898
    .line 899
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;

    .line 900
    .line 901
    invoke-direct {v2, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 902
    .line 903
    .line 904
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mQosDecisionTree:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;

    .line 905
    .line 906
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;

    .line 907
    .line 908
    invoke-direct {v2, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 909
    .line 910
    .line 911
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mQosStateMachine:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;

    .line 912
    .line 913
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 914
    .line 915
    .line 916
    move-result-object v2

    .line 917
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 918
    .line 919
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$6;

    .line 920
    .line 921
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    .line 925
    .line 926
    .line 927
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->aiTrServiceIntent:Landroid/content/Intent;

    .line 928
    .line 929
    const-string v3, "com.samsung.android.wifi.intelligence"

    .line 930
    .line 931
    const-string v4, "com.samsung.android.wifi.intelligence.ila.IlaTrService"

    .line 932
    .line 933
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    .line 935
    .line 936
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->registerForSettingsChanges()V

    .line 937
    .line 938
    .line 939
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 940
    .line 941
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 942
    .line 943
    .line 944
    move-result v2

    .line 945
    if-eqz v2, :cond_4

    .line 946
    .line 947
    new-instance v2, Landroid/os/HandlerThread;

    .line 948
    .line 949
    const-string v3, "INSEventHandlerThread"

    .line 950
    .line 951
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mINSEventHandlerThread:Landroid/os/HandlerThread;

    .line 955
    .line 956
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 957
    .line 958
    .line 959
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;

    .line 960
    .line 961
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mINSEventHandlerThread:Landroid/os/HandlerThread;

    .line 962
    .line 963
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 964
    .line 965
    .line 966
    move-result-object v3

    .line 967
    invoke-direct {v2, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/os/Looper;)V

    .line 968
    .line 969
    .line 970
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mINSEventHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;

    .line 971
    .line 972
    new-instance v2, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 973
    .line 974
    invoke-direct {v2, v1}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;-><init>(Landroid/content/Context;)V

    .line 975
    .line 976
    .line 977
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSemInsManager:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 978
    .line 979
    :cond_4
    return-void
.end method

.method private callbackLinkQualityUpdateForPoorLink(D)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->callbacks:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiLinkQualityMonitorCallback;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x5

    .line 21
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiLinkQualityMonitorCallback;->linkQualityUpdate(IDI)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private callbackOutageCountChanged(DDIZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mINSEventHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    filled-new-array {p1, p2, p3, p4, p7}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x4

    .line 24
    invoke-static {p0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private checkMonotonicNonDecreasing([II)Z
    .locals 5

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p2, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x16

    .line 6
    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x17

    .line 10
    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    move p0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritCwnd:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritRto:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->socketCritSyn:I

    .line 22
    .line 23
    :goto_0
    array-length p2, p1

    .line 24
    const/4 v0, 0x6

    .line 25
    if-ge p2, v0, :cond_3

    .line 26
    .line 27
    return v1

    .line 28
    :cond_3
    const/4 v0, 0x1

    .line 29
    move v2, v0

    .line 30
    :goto_1
    if-ge v2, p2, :cond_6

    .line 31
    .line 32
    aget v3, p1, v2

    .line 33
    .line 34
    if-le v3, p0, :cond_5

    .line 35
    .line 36
    add-int/lit8 v4, v2, -0x1

    .line 37
    .line 38
    aget v4, p1, v4

    .line 39
    .line 40
    if-le v4, p0, :cond_5

    .line 41
    .line 42
    if-ge v3, v4, :cond_4

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_5
    :goto_2
    return v1

    .line 49
    :cond_6
    return v0
.end method

.method private copyLatencyToCsvPerRssiLevel(Ljava/lang/String;DD)V
    .locals 9

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getRssiLevel(D)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "-"

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v3, "%02d"

    .line 26
    .line 27
    const-string v4, ".csv"

    .line 28
    .line 29
    invoke-static {v3, p1, v2, v4}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mDataDirectory:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p2

    .line 51
    goto/16 :goto_e

    .line 52
    .line 53
    :cond_0
    :goto_0
    new-instance v4, Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 69
    .line 70
    .line 71
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v3, Ljava/util/LinkedList;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    .line 82
    .line 83
    new-instance v6, Ljava/io/FileReader;

    .line 84
    .line 85
    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .line 90
    .line 91
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const/16 v7, 0x12c

    .line 96
    .line 97
    if-eqz v6, :cond_3

    .line 98
    .line 99
    new-instance v8, Ljava/util/LinkedList;

    .line 100
    .line 101
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-direct {v8, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    .line 111
    .line 112
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-lt v2, v7, :cond_2

    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catchall_0
    move-exception p2

    .line 123
    move-object v2, v8

    .line 124
    goto :goto_5

    .line 125
    :cond_2
    move-object v2, v8

    .line 126
    goto :goto_2

    .line 127
    :catchall_1
    move-exception p2

    .line 128
    goto :goto_5

    .line 129
    :cond_3
    :try_start_4
    new-instance v6, Ljava/util/LinkedList;

    .line 130
    .line 131
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 132
    .line 133
    .line 134
    move-object v2, v6

    .line 135
    :goto_2
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    invoke-virtual {v2, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mNumDataInRssiLevel:[I

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 145
    .line 146
    .line 147
    move-result p5

    .line 148
    aput p5, p4, v1

    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p4

    .line 154
    if-eqz p4, :cond_5

    .line 155
    .line 156
    new-instance p5, Ljava/util/LinkedList;

    .line 157
    .line 158
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p4

    .line 162
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object p4

    .line 166
    invoke-direct {p5, p4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    .line 168
    .line 169
    :goto_3
    :try_start_5
    invoke-virtual {p5}, Ljava/util/LinkedList;->size()I

    .line 170
    .line 171
    .line 172
    move-result p4

    .line 173
    if-lt p4, v7, :cond_4

    .line 174
    .line 175
    invoke-virtual {p5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :catchall_2
    move-exception p2

    .line 180
    move-object v3, p5

    .line 181
    goto :goto_5

    .line 182
    :cond_4
    move-object v3, p5

    .line 183
    goto :goto_4

    .line 184
    :cond_5
    :try_start_6
    new-instance p4, Ljava/util/LinkedList;

    .line 185
    .line 186
    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    .line 187
    .line 188
    .line 189
    move-object v3, p4

    .line 190
    :goto_4
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 195
    .line 196
    .line 197
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 198
    .line 199
    .line 200
    goto :goto_8

    .line 201
    :catch_1
    move-exception p2

    .line 202
    goto :goto_7

    .line 203
    :goto_5
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 204
    .line 205
    .line 206
    goto :goto_6

    .line 207
    :catchall_3
    move-exception p3

    .line 208
    :try_start_9
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    :goto_6
    throw p2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 212
    :goto_7
    :try_start_a
    new-instance p3, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string p4, "Reading exception in copy: "

    .line 218
    .line 219
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 233
    .line 234
    .line 235
    :goto_8
    :try_start_b
    new-instance p2, Ljava/io/BufferedWriter;

    .line 236
    .line 237
    new-instance p3, Ljava/io/FileWriter;

    .line 238
    .line 239
    const/4 p4, 0x0

    .line 240
    invoke-direct {p3, v4, p4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 241
    .line 242
    .line 243
    invoke-direct {p2, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 244
    .line 245
    .line 246
    :try_start_c
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object p3

    .line 250
    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result p4

    .line 254
    if-eqz p4, :cond_6

    .line 255
    .line 256
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p4

    .line 260
    check-cast p4, Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {p2, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_9

    .line 269
    :catchall_4
    move-exception p3

    .line 270
    goto :goto_b

    .line 271
    :cond_6
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object p3

    .line 278
    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result p4

    .line 282
    if-eqz p4, :cond_7

    .line 283
    .line 284
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p4

    .line 288
    check-cast p4, Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {p2, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_7
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 301
    .line 302
    .line 303
    :try_start_d
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 304
    .line 305
    .line 306
    goto :goto_f

    .line 307
    :catch_2
    move-exception p2

    .line 308
    goto :goto_d

    .line 309
    :goto_b
    :try_start_e
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 310
    .line 311
    .line 312
    goto :goto_c

    .line 313
    :catchall_5
    move-exception p2

    .line 314
    :try_start_f
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    :goto_c
    throw p3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 318
    :goto_d
    :try_start_10
    new-instance p3, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p4, "Writing exception in copy: "

    .line 324
    .line 325
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p3

    .line 335
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 339
    .line 340
    .line 341
    goto :goto_f

    .line 342
    :goto_e
    new-instance p3, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string p4, "Exception in copy: "

    .line 345
    .line 346
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p3

    .line 356
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    .line 361
    .line 362
    :goto_f
    return-void
.end method

.method private evaluateIla(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p3

    .line 4
    .line 5
    const-string v2, "SemWifiLinkQualityMonitor"

    .line 6
    .line 7
    const-string v3, "Writing exception in evaluation: "

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    move-object/from16 v6, p1

    .line 19
    .line 20
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v6, ","

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v6, "TP,"

    .line 29
    .line 30
    const-string v7, " s"

    .line 31
    .line 32
    const-string v8, "TP, benefit="

    .line 33
    .line 34
    const-wide v9, 0x408f400000000000L    # 1000.0

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-wide/16 v11, 0x0

    .line 40
    .line 41
    const-string v13, "%.3f"

    .line 42
    .line 43
    packed-switch v0, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    const-string v6, "Invalid timing "

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :pswitch_0
    iget v6, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->numRecoveredAfterIlaL2t:I

    .line 57
    .line 58
    const/4 v7, 0x2

    .line 59
    if-lt v6, v7, :cond_0

    .line 60
    .line 61
    const-string v6, "Late legacy L2T, FP"

    .line 62
    .line 63
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v6, "FP"

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_0
    const-string v6, "TP, benefit=20.000 s"

    .line 74
    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v6, "TP,20.000"

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :pswitch_1
    const/4 v14, 0x3

    .line 86
    if-ne v0, v14, :cond_1

    .line 87
    .line 88
    const-string v14, "Disconnected, "

    .line 89
    .line 90
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const/4 v14, 0x4

    .line 95
    if-ne v0, v14, :cond_2

    .line 96
    .line 97
    const-string v14, "URLfailed, "

    .line 98
    .line 99
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    iget-wide v14, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByIlaMs:J

    .line 103
    .line 104
    cmp-long v11, v14, v11

    .line 105
    .line 106
    if-lez v11, :cond_3

    .line 107
    .line 108
    iget-wide v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByLegacyMs:J

    .line 109
    .line 110
    sub-long/2addr v11, v14

    .line 111
    long-to-double v11, v11

    .line 112
    div-double/2addr v11, v9

    .line 113
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-static {v13, v8, v4, v7}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v13, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    const-string v0, "Disc/QCFail"

    .line 147
    .line 148
    return-object v0

    .line 149
    :pswitch_2
    const-string v14, "L2T by legacy, "

    .line 150
    .line 151
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-wide v14, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByIlaMs:J

    .line 155
    .line 156
    cmp-long v11, v14, v11

    .line 157
    .line 158
    if-lez v11, :cond_5

    .line 159
    .line 160
    iget-wide v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByLegacyMs:J

    .line 161
    .line 162
    sub-long v16, v11, v14

    .line 163
    .line 164
    const-wide/16 v18, 0x4e20

    .line 165
    .line 166
    cmp-long v16, v16, v18

    .line 167
    .line 168
    if-gtz v16, :cond_4

    .line 169
    .line 170
    sub-long/2addr v11, v14

    .line 171
    long-to-double v11, v11

    .line 172
    div-double/2addr v11, v9

    .line 173
    goto :goto_1

    .line 174
    :cond_4
    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    .line 175
    .line 176
    :goto_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-static {v13, v8, v4, v7}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {v13, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_5
    const-string v6, "FN"

    .line 210
    .line 211
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :pswitch_3
    const-string v6, "L2T by ILA"

    .line 219
    .line 220
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    :goto_2
    :pswitch_4
    const/4 v6, 0x1

    .line 224
    if-le v0, v6, :cond_8

    .line 225
    .line 226
    const/4 v7, 0x6

    .line 227
    if-ge v0, v7, :cond_8

    .line 228
    .line 229
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 230
    .line 231
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaResDirectory:Ljava/lang/String;

    .line 232
    .line 233
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    if-nez v7, :cond_6

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :catch_0
    move-exception v0

    .line 247
    goto :goto_6

    .line 248
    :catch_1
    move-exception v0

    .line 249
    goto :goto_7

    .line 250
    :catch_2
    move-exception v0

    .line 251
    goto :goto_8

    .line 252
    :cond_6
    :goto_3
    new-instance v7, Ljava/io/File;

    .line 253
    .line 254
    move-object/from16 v8, p2

    .line 255
    .line 256
    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_7

    .line 264
    .line 265
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 267
    .line 268
    :cond_7
    :try_start_1
    new-instance v8, Ljava/io/BufferedWriter;

    .line 269
    .line 270
    new-instance v0, Ljava/io/FileWriter;

    .line 271
    .line 272
    invoke-direct {v0, v7, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 273
    .line 274
    .line 275
    invoke-direct {v8, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 276
    .line 277
    .line 278
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v8, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->newLine()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    .line 290
    .line 291
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 292
    .line 293
    .line 294
    goto :goto_9

    .line 295
    :catch_3
    move-exception v0

    .line 296
    goto :goto_5

    .line 297
    :catchall_0
    move-exception v0

    .line 298
    move-object v5, v0

    .line 299
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 300
    .line 301
    .line 302
    goto :goto_4

    .line 303
    :catchall_1
    move-exception v0

    .line 304
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    :goto_4
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 308
    :goto_5
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v1, v3, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 324
    .line 325
    .line 326
    goto :goto_9

    .line 327
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v3, "Other exception in evaluation: "

    .line 330
    .line 331
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    .line 346
    .line 347
    goto :goto_9

    .line 348
    :goto_7
    const-string v3, "IOException in evaluation"

    .line 349
    .line 350
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 354
    .line 355
    .line 356
    goto :goto_9

    .line 357
    :goto_8
    const-string v3, "File not found in evaluation"

    .line 358
    .line 359
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 363
    .line 364
    .line 365
    :cond_8
    :goto_9
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    return-object v0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private fromChannelNumberToFreq(II)I
    .locals 1

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p2, p0, :cond_3

    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p2, p0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p2, v0, :cond_2

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-eq p2, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, -0x1

    .line 15
    return p0

    .line 16
    :cond_0
    if-ne p1, p0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x172f

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    mul-int/lit8 p1, p1, 0x5

    .line 22
    .line 23
    add-int/lit16 p1, p1, 0x173e

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    mul-int/lit8 p1, p1, 0x5

    .line 27
    .line 28
    add-int/lit16 p1, p1, 0x1388

    .line 29
    .line 30
    return p1

    .line 31
    :cond_3
    mul-int/lit8 p1, p1, 0x5

    .line 32
    .line 33
    add-int/lit16 p1, p1, 0x967

    .line 34
    .line 35
    return p1
.end method

.method private getBssidEdited()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getBssidEdited(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    const-string p0, "XXXXXXXXXXXX"

    return-object p0
.end method

.method private getBssidEdited(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "XXXXXXXXXXXX"

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mloConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getBssidEdited(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkId:I

    if-gez p1, :cond_2

    return-object v1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mMloLinks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/MloLink;

    .line 9
    invoke-virtual {v0}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkId:I

    if-ne v1, v2, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v0}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkIdBandMap:Ljava/util/Map;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->fromChannelNumberToFreq(II)I

    move-result v0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getBssidEdited(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception on getBssidEdited WifiInfo: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiLinkQualityMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_4
    const-string p0, "000000000000"

    return-object p0
.end method

.method private getBssidEdited(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    .line 17
    const-string p0, "XXXXXXXXXXXX"

    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 22
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception on getBssidEdited String: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SemWifiLinkQualityMonitor"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    const-string p1, "000000000000"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "connectivity"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getIntegerFromTcpMonitorInfo(Ljava/lang/String;I)I
    .locals 2

    .line 1
    const-string p0, ","

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length p1, p0

    .line 8
    const-string v0, "SemWifiLinkQualityMonitor"

    .line 9
    .line 10
    const/16 v1, 0x1b

    .line 11
    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    const-string p0, "Error on getIntegerFromTcpMonitorInfo"

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 p0, -0x1

    .line 20
    return p0

    .line 21
    :cond_0
    if-lez p2, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    if-eq p2, p1, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x3

    .line 27
    if-eq p2, p1, :cond_2

    .line 28
    .line 29
    const/16 p1, 0xc

    .line 30
    .line 31
    if-eq p2, p1, :cond_2

    .line 32
    .line 33
    const/16 p1, 0xd

    .line 34
    .line 35
    if-eq p2, p1, :cond_2

    .line 36
    .line 37
    const/16 p1, 0xe

    .line 38
    .line 39
    if-eq p2, p1, :cond_2

    .line 40
    .line 41
    if-lt p2, v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_0
    aget-object p0, p0, p2

    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return p0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string p1, "Exception on getIntegerFromTcpMonitorInfo: "

    .line 53
    .line 54
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, -0x3

    .line 58
    return p0

    .line 59
    :cond_2
    :goto_0
    const-string p0, "Invalid index on getIntegerFromTcpMonitorInfo"

    .line 60
    .line 61
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/4 p0, -0x2

    .line 65
    return p0
.end method

.method private getRssiLevel(D)I
    .locals 6

    .line 1
    const-wide/high16 v0, -0x3fc2000000000000L    # -30.0

    .line 2
    .line 3
    sub-double v2, v0, p1

    .line 4
    .line 5
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 6
    .line 7
    add-double/2addr v2, v4

    .line 8
    div-double/2addr v2, v4

    .line 9
    double-to-int p0, v2

    .line 10
    cmpl-double v0, p1, v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const-wide v0, -0x3faac00000000000L    # -85.0

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmpg-double p1, p1, v0

    .line 22
    .line 23
    if-gtz p1, :cond_1

    .line 24
    .line 25
    const/16 p0, 0xc

    .line 26
    .line 27
    :cond_1
    return p0
.end method

.method private getStringFromTcpMonitorInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string p0, ","

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length p1, p0

    .line 8
    const/16 v0, 0x1b

    .line 9
    .line 10
    const-string v1, "SemWifiLinkQualityMonitor"

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const-string p0, "Error on getStringFromTcpMonitorInfo"

    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const-string p0, "error"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    if-eqz p2, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    if-eq p2, p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    if-eq p2, p1, :cond_1

    .line 29
    .line 30
    const-string p0, "Invalid index on getStringFromTcpMonitorInfo"

    .line 31
    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const-string p0, "invalid"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    aget-object p0, p0, p2

    .line 39
    .line 40
    return-object p0
.end method

.method private getUnixTimeFromSimpleDateFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-wide p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string p1, "Exception: "

    .line 12
    .line 13
    const-string p2, "SemWifiLinkQualityMonitor"

    .line 14
    .line 15
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 p0, -0x1

    .line 19
    .line 20
    return-wide p0
.end method

.method private getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

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

.method private initializeClassifier()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariables:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariables:Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    aget-object v1, v1, v3

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariables:Ljava/util/HashMap;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    aget-object v1, v1, v3

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mQosStateMachine:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->initialize()V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mQosDecisionTree:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;

    .line 42
    .line 43
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->-$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private synthetic lambda$registerSensorListener$0(Ljava/lang/Integer;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mInsSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    const v4, 0x6b49d200

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->sensorFlushed:Ljava/util/HashMap;

    .line 25
    .line 26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Sensor registraton err: "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method private latencyEstimation(DIDDDI)D
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    move-wide/from16 v1, p1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    int-to-double v1, v1

    .line 11
    div-double v1, p1, v1

    .line 12
    .line 13
    :goto_0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->MIN_CW:[I

    .line 14
    .line 15
    aget v3, v3, p10

    .line 16
    .line 17
    div-int/lit8 v3, v3, 0x2

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->defaultValueUsed:Z

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    const/4 v6, 0x1

    .line 25
    move-wide v8, v4

    .line 26
    move v7, v6

    .line 27
    :goto_1
    int-to-long v10, v7

    .line 28
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->round(D)J

    .line 29
    .line 30
    .line 31
    move-result-wide v12

    .line 32
    cmp-long v10, v10, v12

    .line 33
    .line 34
    if-gtz v10, :cond_3

    .line 35
    .line 36
    cmpl-double v10, p6, v4

    .line 37
    .line 38
    const-wide v11, 0x408f400000000000L    # 1000.0

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    if-nez v10, :cond_1

    .line 44
    .line 45
    mul-int/lit8 v10, v3, 0x9

    .line 46
    .line 47
    int-to-double v13, v10

    .line 48
    const-wide v15, 0x40f1170000000000L    # 70000.0

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    div-double/2addr v15, v13

    .line 54
    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    .line 55
    .line 56
    div-double/2addr v13, v15

    .line 57
    iput-boolean v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->defaultValueUsed:Z

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    sub-double v13, p6, p8

    .line 61
    .line 62
    mul-double/2addr v13, v11

    .line 63
    mul-int/lit8 v10, v3, 0x9

    .line 64
    .line 65
    int-to-double v4, v10

    .line 66
    div-double/2addr v13, v4

    .line 67
    div-double v13, p8, v13

    .line 68
    .line 69
    :goto_2
    div-double v4, v1, v11

    .line 70
    .line 71
    add-double/2addr v4, v13

    .line 72
    const-wide/high16 v13, 0x4022000000000000L    # 9.0

    .line 73
    .line 74
    move v10, v7

    .line 75
    int-to-double v6, v3

    .line 76
    mul-double/2addr v6, v13

    .line 77
    div-double/2addr v6, v11

    .line 78
    add-double/2addr v6, v4

    .line 79
    add-double/2addr v8, v6

    .line 80
    add-int/lit8 v7, v10, 0x1

    .line 81
    .line 82
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->MAX_BEB_CNT:[I

    .line 83
    .line 84
    aget v4, v4, p10

    .line 85
    .line 86
    if-gt v7, v4, :cond_2

    .line 87
    .line 88
    mul-int/lit8 v3, v3, 0x2

    .line 89
    .line 90
    :cond_2
    const-wide/16 v4, 0x0

    .line 91
    .line 92
    const/4 v6, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    return-wide v8
.end method

.method private multiLinkCtlEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mMultiLinkControl:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMultiLinkControl()Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mMultiLinkControl:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mMultiLinkControl:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mlCtlEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method private recordIlaResults(Ljava/lang/String;IDDI)V
    .locals 6

    .line 1
    const-string v0, "SemWifiLinkQualityMonitor"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    const-string v3, "MM-dd|HH:mm:ss.SSS"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/util/Date;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_3

    .line 31
    :catch_0
    move-exception v2

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception v2

    .line 34
    goto :goto_1

    .line 35
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v4, "Out of memory error on recording: "

    .line 38
    .line 39
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    const-string v3, "Format problem on recording: "

    .line 54
    .line 55
    invoke-static {v3, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_2
    const-string v0, "00-00|00:00:00.000"

    .line 59
    .line 60
    :goto_3
    const-string v2, ","

    .line 61
    .line 62
    invoke-static {v1, v0, v2, p1, v2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    const-string p4, "%.3f"

    .line 74
    .line 75
    invoke-static {p4, p3, v1, v2}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget p3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageLastingCnt:I

    .line 79
    .line 80
    invoke-static {v1, p3, v2, p2, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqCallbackILATriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    const-string p3, "N"

    .line 90
    .line 91
    const-string p4, "Y"

    .line 92
    .line 93
    if-eqz p2, :cond_0

    .line 94
    .line 95
    move-object p2, p4

    .line 96
    goto :goto_4

    .line 97
    :cond_0
    move-object p2, p3

    .line 98
    :goto_4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqCallbackLegacyTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_1

    .line 111
    .line 112
    move-object p3, p4

    .line 113
    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-wide p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRssi:D

    .line 120
    .line 121
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string p3, "recordIlaResults: "

    .line 139
    .line 140
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    const/4 p3, 0x2

    .line 155
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    const/4 p2, 0x1

    .line 159
    :try_start_1
    new-instance p3, Ljava/io/File;

    .line 160
    .line 161
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mDataDirectory:Ljava/lang/String;

    .line 162
    .line 163
    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 167
    .line 168
    .line 169
    move-result p4

    .line 170
    if-nez p4, :cond_2

    .line 171
    .line 172
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :catch_2
    move-exception p1

    .line 177
    goto/16 :goto_f

    .line 178
    .line 179
    :cond_2
    :goto_5
    new-instance p4, Ljava/io/File;

    .line 180
    .line 181
    const-string p5, "ILAevaluationLog.csv"

    .line 182
    .line 183
    invoke-direct {p4, p3, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    if-nez p3, :cond_3

    .line 191
    .line 192
    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    .line 193
    .line 194
    .line 195
    :cond_3
    new-instance p3, Ljava/util/LinkedList;

    .line 196
    .line 197
    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 198
    .line 199
    .line 200
    :try_start_2
    new-instance p5, Ljava/io/BufferedReader;

    .line 201
    .line 202
    new-instance p6, Ljava/io/FileReader;

    .line 203
    .line 204
    invoke-direct {p6, p4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 205
    .line 206
    .line 207
    invoke-direct {p5, p6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 208
    .line 209
    .line 210
    :cond_4
    :goto_6
    :try_start_3
    invoke-virtual {p5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p6

    .line 214
    if-eqz p6, :cond_5

    .line 215
    .line 216
    invoke-virtual {p3, p6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    .line 220
    .line 221
    .line 222
    move-result p6

    .line 223
    const/16 v2, 0x1388

    .line 224
    .line 225
    if-lt p6, v2, :cond_4

    .line 226
    .line 227
    invoke-virtual {p3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :catchall_0
    move-exception p6

    .line 232
    goto :goto_7

    .line 233
    :cond_5
    :try_start_4
    invoke-virtual {p5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 234
    .line 235
    .line 236
    goto :goto_a

    .line 237
    :catch_3
    move-exception p5

    .line 238
    goto :goto_9

    .line 239
    :goto_7
    :try_start_5
    invoke-virtual {p5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 240
    .line 241
    .line 242
    goto :goto_8

    .line 243
    :catchall_1
    move-exception p5

    .line 244
    :try_start_6
    invoke-virtual {p6, p5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 245
    .line 246
    .line 247
    :goto_8
    throw p6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 248
    :goto_9
    :try_start_7
    new-instance p6, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v2, "Reading exception in recording: "

    .line 254
    .line 255
    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p6

    .line 265
    invoke-virtual {p0, p6, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 269
    .line 270
    .line 271
    :goto_a
    :try_start_8
    new-instance p5, Ljava/io/BufferedWriter;

    .line 272
    .line 273
    new-instance p6, Ljava/io/FileWriter;

    .line 274
    .line 275
    const/4 v2, 0x0

    .line 276
    invoke-direct {p6, p4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 277
    .line 278
    .line 279
    invoke-direct {p5, p6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 280
    .line 281
    .line 282
    :try_start_9
    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object p3

    .line 286
    :goto_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result p4

    .line 290
    if-eqz p4, :cond_6

    .line 291
    .line 292
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p4

    .line 296
    check-cast p4, Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {p5, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p5}, Ljava/io/BufferedWriter;->newLine()V

    .line 302
    .line 303
    .line 304
    goto :goto_b

    .line 305
    :catchall_2
    move-exception p1

    .line 306
    goto :goto_c

    .line 307
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    invoke-virtual {p5, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p5}, Ljava/io/BufferedWriter;->newLine()V

    .line 315
    .line 316
    .line 317
    const/4 p3, 0x6

    .line 318
    if-ge p7, p3, :cond_7

    .line 319
    .line 320
    invoke-direct {p0, v0, p1, p7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->evaluateIla(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    const-string p3, "Disc/QCFail"

    .line 325
    .line 326
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p3

    .line 330
    if-nez p3, :cond_7

    .line 331
    .line 332
    invoke-virtual {p5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p5}, Ljava/io/BufferedWriter;->newLine()V

    .line 336
    .line 337
    .line 338
    :cond_7
    invoke-virtual {p5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 339
    .line 340
    .line 341
    :try_start_a
    invoke-virtual {p5}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 342
    .line 343
    .line 344
    goto :goto_10

    .line 345
    :catch_4
    move-exception p1

    .line 346
    goto :goto_e

    .line 347
    :goto_c
    :try_start_b
    invoke-virtual {p5}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 348
    .line 349
    .line 350
    goto :goto_d

    .line 351
    :catchall_3
    move-exception p3

    .line 352
    :try_start_c
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    :goto_d
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 356
    :goto_e
    :try_start_d
    new-instance p3, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    const-string p4, "Writing exception in recording: "

    .line 362
    .line 363
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p3

    .line 373
    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 377
    .line 378
    .line 379
    goto :goto_10

    .line 380
    :goto_f
    new-instance p3, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string p4, "Exception in recording: "

    .line 383
    .line 384
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p3

    .line 394
    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    .line 399
    .line 400
    :goto_10
    return-void
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$11;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$11;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 15
    .line 16
    const-string v3, "wifi_watchdog_poor_network_test_enabled"

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 33
    .line 34
    const-string v2, "wifi_switch_to_mobile_data_ai_mode_2"

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private registerSensorListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "sensor"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/SensorManager;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    const-string v0, "Sensor registration based on context"

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->sensorsToRegister:Ljava/util/List;

    .line 20
    .line 21
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIsSensorEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private trimToSize(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-le p0, p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sub-int/2addr p0, p2

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private unregisterSensorListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mInsSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIsSensorEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private updateLinkLayerStats()V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Update2: "

    .line 4
    .line 5
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v9

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioOnFreqTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalCcaBusyFreqTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 21
    .line 22
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxSuccess()J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 27
    .line 28
    invoke-virtual {v8}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxRetries()J

    .line 29
    .line 30
    .line 31
    move-result-wide v10

    .line 32
    add-long/2addr v6, v10

    .line 33
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 34
    .line 35
    invoke-virtual {v8}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxSuccess()J

    .line 36
    .line 37
    .line 38
    move-result-wide v10

    .line 39
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mloConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-nez v8, :cond_0

    .line 46
    .line 47
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 48
    .line 49
    invoke-virtual {v8}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkSpeedMbps()I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    .line 54
    .line 55
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 56
    .line 57
    invoke-virtual {v8}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    int-to-double v12, v8

    .line 62
    iput-wide v12, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRssi:D

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    move-object/from16 v16, v9

    .line 67
    .line 68
    goto/16 :goto_10

    .line 69
    .line 70
    :cond_0
    :goto_0
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastRadioOnTimeMs:J

    .line 71
    .line 72
    sub-long v12, v2, v12

    .line 73
    .line 74
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastCcaBusyTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    sub-long v14, v4, v14

    .line 77
    .line 78
    move-object/from16 v16, v9

    .line 79
    .line 80
    :try_start_1
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxCnt:J

    .line 81
    .line 82
    sub-long v8, v6, v8

    .line 83
    .line 84
    move-wide/from16 v17, v14

    .line 85
    .line 86
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxSuccessCnt:J

    .line 87
    .line 88
    sub-long v14, v10, v14

    .line 89
    .line 90
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastRadioOnTimeMs:J

    .line 91
    .line 92
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastCcaBusyTimeMs:J

    .line 93
    .line 94
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxCnt:J

    .line 95
    .line 96
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxSuccessCnt:J

    .line 97
    .line 98
    const/4 v10, 0x0

    .line 99
    iput v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 100
    .line 101
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mloConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 108
    .line 109
    const/4 v3, 0x2

    .line 110
    const/4 v6, 0x1

    .line 111
    const-wide/16 v21, 0x0

    .line 112
    .line 113
    if-eqz v2, :cond_9

    .line 114
    .line 115
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkIds()[I

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    array-length v12, v9

    .line 122
    move v13, v10

    .line 123
    :goto_1
    if-ge v13, v12, :cond_10

    .line 124
    .line 125
    aget v1, v9, v13

    .line 126
    .line 127
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-nez v2, :cond_1

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v7, "Wrong link ID: "

    .line 145
    .line 146
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->renewConnection(Z)V

    .line 160
    .line 161
    .line 162
    :goto_2
    move/from16 v25, v3

    .line 163
    .line 164
    move/from16 v26, v6

    .line 165
    .line 166
    move-object/from16 v17, v9

    .line 167
    .line 168
    move/from16 v27, v10

    .line 169
    .line 170
    move/from16 v30, v12

    .line 171
    .line 172
    const-wide/high16 v33, 0x4059000000000000L    # 100.0

    .line 173
    .line 174
    goto/16 :goto_9

    .line 175
    .line 176
    :catchall_1
    move-exception v0

    .line 177
    goto/16 :goto_10

    .line 178
    .line 179
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 180
    .line 181
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkState(I)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eq v2, v3, :cond_2

    .line 186
    .line 187
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 188
    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v8, "Link "

    .line 195
    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v8, " inactive || "

    .line 203
    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkActivenessMap:Ljava/util/Map;

    .line 215
    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-interface {v2, v1, v7}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkActivenessMap:Ljava/util/Map;

    .line 227
    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 233
    .line 234
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 238
    .line 239
    add-int/2addr v2, v6

    .line 240
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 241
    .line 242
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 243
    .line 244
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioOnFreqTimeMillis(I)J

    .line 245
    .line 246
    .line 247
    move-result-wide v7

    .line 248
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 249
    .line 250
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalCcaBusyFreqTimeMillis(I)J

    .line 251
    .line 252
    .line 253
    move-result-wide v14

    .line 254
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 255
    .line 256
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxSuccess(I)J

    .line 257
    .line 258
    .line 259
    move-result-wide v17

    .line 260
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 261
    .line 262
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxRetries(I)J

    .line 263
    .line 264
    .line 265
    move-result-wide v23

    .line 266
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 267
    .line 268
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxSuccess(I)J

    .line 269
    .line 270
    .line 271
    move-result-wide v25

    .line 272
    add-long v23, v23, v25

    .line 273
    .line 274
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 275
    .line 276
    move/from16 v25, v3

    .line 277
    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    check-cast v2, [J

    .line 287
    .line 288
    aget-wide v2, v2, v10

    .line 289
    .line 290
    sub-long v2, v7, v2

    .line 291
    .line 292
    move/from16 v26, v6

    .line 293
    .line 294
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 295
    .line 296
    move/from16 v27, v10

    .line 297
    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    check-cast v6, [J

    .line 307
    .line 308
    aget-wide v28, v6, v26

    .line 309
    .line 310
    move/from16 v30, v12

    .line 311
    .line 312
    sub-long v11, v14, v28

    .line 313
    .line 314
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 315
    .line 316
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    check-cast v6, [J

    .line 325
    .line 326
    aget-wide v31, v6, v25

    .line 327
    .line 328
    sub-long v4, v23, v31

    .line 329
    .line 330
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 331
    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    check-cast v6, [J

    .line 341
    .line 342
    const/4 v10, 0x3

    .line 343
    aget-wide v31, v6, v10

    .line 344
    .line 345
    move v6, v10

    .line 346
    move-wide/from16 v35, v11

    .line 347
    .line 348
    sub-long v10, v17, v31

    .line 349
    .line 350
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 351
    .line 352
    move/from16 v29, v6

    .line 353
    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    check-cast v6, [J

    .line 363
    .line 364
    aput-wide v7, v6, v27

    .line 365
    .line 366
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 367
    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    check-cast v6, [J

    .line 377
    .line 378
    aput-wide v14, v6, v26

    .line 379
    .line 380
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 381
    .line 382
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    check-cast v6, [J

    .line 391
    .line 392
    aput-wide v23, v6, v25

    .line 393
    .line 394
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lastLinkStateMap:Ljava/util/HashMap;

    .line 395
    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    check-cast v6, [J

    .line 405
    .line 406
    aput-wide v17, v6, v29

    .line 407
    .line 408
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txTrafficInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 409
    .line 410
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 411
    .line 412
    .line 413
    move-result v6

    .line 414
    if-eqz v6, :cond_8

    .line 415
    .line 416
    cmp-long v6, v4, v21

    .line 417
    .line 418
    if-lez v6, :cond_8

    .line 419
    .line 420
    cmp-long v6, v10, v21

    .line 421
    .line 422
    if-lez v6, :cond_3

    .line 423
    .line 424
    long-to-double v6, v4

    .line 425
    long-to-double v10, v10

    .line 426
    div-double/2addr v6, v10

    .line 427
    :goto_3
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 428
    .line 429
    goto :goto_4

    .line 430
    :cond_3
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 431
    .line 432
    goto :goto_3

    .line 433
    :goto_4
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(DD)D

    .line 434
    .line 435
    .line 436
    move-result-wide v6

    .line 437
    cmpl-double v8, v6, v10

    .line 438
    .line 439
    if-ltz v8, :cond_4

    .line 440
    .line 441
    const-string v8, "SemWifiLinkQualityMonitor"

    .line 442
    .line 443
    new-instance v12, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .line 447
    .line 448
    const-string v14, "Update1: "

    .line 449
    .line 450
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string v14, ", "

    .line 457
    .line 458
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    move-wide/from16 v14, v35

    .line 462
    .line 463
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v10, ", "

    .line 467
    .line 468
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v10, ", "

    .line 475
    .line 476
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 480
    .line 481
    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTxLinkSpeedMbps(I)I

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    const-string v10, ", "

    .line 489
    .line 490
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 494
    .line 495
    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi(I)I

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v10

    .line 506
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    goto :goto_5

    .line 510
    :cond_4
    move-wide/from16 v14, v35

    .line 511
    .line 512
    :goto_5
    cmp-long v10, v2, v21

    .line 513
    .line 514
    if-ltz v10, :cond_5

    .line 515
    .line 516
    cmp-long v8, v14, v21

    .line 517
    .line 518
    if-ltz v8, :cond_5

    .line 519
    .line 520
    cmp-long v8, v2, v14

    .line 521
    .line 522
    if-ltz v8, :cond_5

    .line 523
    .line 524
    move-wide v11, v2

    .line 525
    long-to-double v2, v11

    .line 526
    move-wide/from16 v23, v4

    .line 527
    .line 528
    long-to-double v4, v14

    .line 529
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 530
    .line 531
    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTxLinkSpeedMbps(I)I

    .line 532
    .line 533
    .line 534
    move-result v8

    .line 535
    move-object/from16 v17, v9

    .line 536
    .line 537
    move/from16 v18, v10

    .line 538
    .line 539
    move-wide/from16 v9, v23

    .line 540
    .line 541
    const-wide/high16 v33, 0x4059000000000000L    # 100.0

    .line 542
    .line 543
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->updateMlQueue(IDDDI)V

    .line 544
    .line 545
    .line 546
    goto :goto_6

    .line 547
    :cond_5
    move-wide v11, v2

    .line 548
    move-object/from16 v17, v9

    .line 549
    .line 550
    move/from16 v18, v10

    .line 551
    .line 552
    const-wide/high16 v33, 0x4059000000000000L    # 100.0

    .line 553
    .line 554
    move-wide v9, v4

    .line 555
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 556
    .line 557
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTxLinkSpeedMbps(I)I

    .line 558
    .line 559
    .line 560
    move-result v8

    .line 561
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 562
    .line 563
    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    .line 564
    .line 565
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->updateMlQueue(IDDDI)V

    .line 566
    .line 567
    .line 568
    :goto_6
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->perLinkVariables:Ljava/util/HashMap;

    .line 569
    .line 570
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    check-cast v2, Ljava/util/HashMap;

    .line 579
    .line 580
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 581
    .line 582
    aget-object v3, v3, v27

    .line 583
    .line 584
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 585
    .line 586
    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTxLinkSpeedMbps(I)I

    .line 587
    .line 588
    .line 589
    move-result v4

    .line 590
    int-to-float v4, v4

    .line 591
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 592
    .line 593
    .line 594
    move-result-object v4

    .line 595
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->perLinkVariables:Ljava/util/HashMap;

    .line 599
    .line 600
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    check-cast v2, Ljava/util/HashMap;

    .line 609
    .line 610
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 611
    .line 612
    aget-object v3, v3, v26

    .line 613
    .line 614
    div-double v4, v19, v6

    .line 615
    .line 616
    double-to-float v4, v4

    .line 617
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->perLinkVariables:Ljava/util/HashMap;

    .line 625
    .line 626
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    check-cast v2, Ljava/util/HashMap;

    .line 635
    .line 636
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 637
    .line 638
    aget-object v3, v3, v25

    .line 639
    .line 640
    if-lez v18, :cond_7

    .line 641
    .line 642
    cmp-long v4, v14, v21

    .line 643
    .line 644
    if-gez v4, :cond_6

    .line 645
    .line 646
    goto :goto_7

    .line 647
    :cond_6
    long-to-float v4, v14

    .line 648
    long-to-float v5, v11

    .line 649
    div-float/2addr v4, v5

    .line 650
    goto :goto_8

    .line 651
    :cond_7
    :goto_7
    const v4, 0x3e99999a    # 0.3f

    .line 652
    .line 653
    .line 654
    :goto_8
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 662
    .line 663
    const-string v3, "ML link stat "

    .line 664
    .line 665
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 669
    .line 670
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 674
    .line 675
    const-string v3, ": "

    .line 676
    .line 677
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 681
    .line 682
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 686
    .line 687
    const-string v3, " / "

    .line 688
    .line 689
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 693
    .line 694
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 698
    .line 699
    const-string v3, " / "

    .line 700
    .line 701
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 705
    .line 706
    const-string v3, "%.2f"

    .line 707
    .line 708
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 709
    .line 710
    .line 711
    move-result-object v4

    .line 712
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 724
    .line 725
    const-string v3, " ("

    .line 726
    .line 727
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 731
    .line 732
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 736
    .line 737
    const-string v3, ") / "

    .line 738
    .line 739
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 743
    .line 744
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 745
    .line 746
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTxLinkSpeedMbps(I)I

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 754
    .line 755
    const-string v3, " / "

    .line 756
    .line 757
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 761
    .line 762
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 763
    .line 764
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi(I)I

    .line 765
    .line 766
    .line 767
    move-result v1

    .line 768
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 772
    .line 773
    const-string v2, " || "

    .line 774
    .line 775
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    goto :goto_9

    .line 779
    :cond_8
    move-wide v11, v2

    .line 780
    move-object/from16 v17, v9

    .line 781
    .line 782
    move-wide/from16 v14, v35

    .line 783
    .line 784
    const-wide/high16 v33, 0x4059000000000000L    # 100.0

    .line 785
    .line 786
    move-wide v9, v4

    .line 787
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 788
    .line 789
    const-string v3, "Unreliable statistics "

    .line 790
    .line 791
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 795
    .line 796
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 800
    .line 801
    const-string v3, ": "

    .line 802
    .line 803
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 807
    .line 808
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 809
    .line 810
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi(I)I

    .line 811
    .line 812
    .line 813
    move-result v1

    .line 814
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 818
    .line 819
    const-string v2, " / "

    .line 820
    .line 821
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 825
    .line 826
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 830
    .line 831
    const-string v2, " / "

    .line 832
    .line 833
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 837
    .line 838
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 842
    .line 843
    const-string v2, " / "

    .line 844
    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 849
    .line 850
    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 854
    .line 855
    const-string v2, " / "

    .line 856
    .line 857
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 861
    .line 862
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txTrafficKbps:J

    .line 863
    .line 864
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 868
    .line 869
    const-string v2, " || "

    .line 870
    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 875
    .line 876
    move-object/from16 v9, v17

    .line 877
    .line 878
    move/from16 v3, v25

    .line 879
    .line 880
    move/from16 v6, v26

    .line 881
    .line 882
    move/from16 v10, v27

    .line 883
    .line 884
    move/from16 v12, v30

    .line 885
    .line 886
    goto/16 :goto_1

    .line 887
    .line 888
    :cond_9
    move/from16 v25, v3

    .line 889
    .line 890
    move/from16 v26, v6

    .line 891
    .line 892
    move/from16 v27, v10

    .line 893
    .line 894
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 895
    .line 896
    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 897
    .line 898
    add-int/lit8 v2, v2, 0x1

    .line 899
    .line 900
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 901
    .line 902
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txTrafficInUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 903
    .line 904
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 905
    .line 906
    .line 907
    move-result v2

    .line 908
    if-eqz v2, :cond_f

    .line 909
    .line 910
    cmp-long v2, v8, v21

    .line 911
    .line 912
    if-lez v2, :cond_f

    .line 913
    .line 914
    cmp-long v2, v14, v21

    .line 915
    .line 916
    if-lez v2, :cond_a

    .line 917
    .line 918
    long-to-double v2, v8

    .line 919
    long-to-double v4, v14

    .line 920
    div-double v4, v2, v4

    .line 921
    .line 922
    goto :goto_a

    .line 923
    :cond_a
    move-wide v4, v10

    .line 924
    :goto_a
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    .line 925
    .line 926
    .line 927
    move-result-wide v5

    .line 928
    cmpl-double v2, v5, v10

    .line 929
    .line 930
    if-ltz v2, :cond_b

    .line 931
    .line 932
    const-string v2, "SemWifiLinkQualityMonitor"

    .line 933
    .line 934
    new-instance v3, Ljava/lang/StringBuilder;

    .line 935
    .line 936
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    const-string v1, ", "

    .line 943
    .line 944
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    move-wide/from16 v10, v17

    .line 948
    .line 949
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    const-string v1, ", "

    .line 953
    .line 954
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    const-string v1, ", "

    .line 961
    .line 962
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    .line 966
    .line 967
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    const-string v1, ", "

    .line 971
    .line 972
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRssi:D

    .line 976
    .line 977
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v1

    .line 984
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    .line 986
    .line 987
    goto :goto_b

    .line 988
    :cond_b
    move-wide/from16 v10, v17

    .line 989
    .line 990
    :goto_b
    cmp-long v14, v12, v21

    .line 991
    .line 992
    if-ltz v14, :cond_c

    .line 993
    .line 994
    cmp-long v1, v10, v21

    .line 995
    .line 996
    if-ltz v1, :cond_c

    .line 997
    .line 998
    cmp-long v1, v12, v10

    .line 999
    .line 1000
    if-ltz v1, :cond_c

    .line 1001
    .line 1002
    long-to-double v1, v12

    .line 1003
    long-to-double v3, v10

    .line 1004
    iget v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    .line 1005
    .line 1006
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->updateQueue(DDDI)V

    .line 1007
    .line 1008
    .line 1009
    goto :goto_c

    .line 1010
    :cond_c
    iget v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    .line 1011
    .line 1012
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 1013
    .line 1014
    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    .line 1015
    .line 1016
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->updateQueue(DDDI)V

    .line 1017
    .line 1018
    .line 1019
    :goto_c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariables:Ljava/util/HashMap;

    .line 1020
    .line 1021
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 1022
    .line 1023
    aget-object v2, v2, v27

    .line 1024
    .line 1025
    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    .line 1026
    .line 1027
    int-to-float v3, v3

    .line 1028
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v3

    .line 1032
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariables:Ljava/util/HashMap;

    .line 1036
    .line 1037
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 1038
    .line 1039
    aget-object v2, v2, v26

    .line 1040
    .line 1041
    div-double v3, v19, v5

    .line 1042
    .line 1043
    double-to-float v3, v3

    .line 1044
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v3

    .line 1048
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariables:Ljava/util/HashMap;

    .line 1052
    .line 1053
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkVariableKeys:[Ljava/lang/String;

    .line 1054
    .line 1055
    aget-object v2, v2, v25

    .line 1056
    .line 1057
    if-lez v14, :cond_e

    .line 1058
    .line 1059
    cmp-long v3, v10, v21

    .line 1060
    .line 1061
    if-gez v3, :cond_d

    .line 1062
    .line 1063
    goto :goto_d

    .line 1064
    :cond_d
    long-to-float v3, v10

    .line 1065
    long-to-float v4, v12

    .line 1066
    div-float/2addr v3, v4

    .line 1067
    goto :goto_e

    .line 1068
    :cond_e
    :goto_d
    const v3, 0x3e99999a    # 0.3f

    .line 1069
    .line 1070
    .line 1071
    :goto_e
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v3

    .line 1075
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    const-string v2, "Link stat: "

    .line 1081
    .line 1082
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    const-string v2, " / "

    .line 1093
    .line 1094
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    const-string v2, " / "

    .line 1105
    .line 1106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    const-string v2, "%.2f"

    .line 1112
    .line 1113
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v3

    .line 1117
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v3

    .line 1121
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v2

    .line 1125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    const-string v2, " ("

    .line 1131
    .line 1132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    const-string v2, ") / "

    .line 1143
    .line 1144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    .line 1147
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    .line 1150
    .line 1151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    const-string v2, " / "

    .line 1157
    .line 1158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRssi:D

    .line 1164
    .line 1165
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    const-string v2, " || "

    .line 1171
    .line 1172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    .line 1174
    .line 1175
    goto :goto_f

    .line 1176
    :cond_f
    move-wide/from16 v10, v17

    .line 1177
    .line 1178
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    const-string v2, "Unreliable statistics: "

    .line 1181
    .line 1182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    .line 1184
    .line 1185
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRssi:D

    .line 1188
    .line 1189
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1190
    .line 1191
    .line 1192
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    const-string v2, " / "

    .line 1195
    .line 1196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    .line 1199
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1202
    .line 1203
    .line 1204
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1205
    .line 1206
    const-string v2, " / "

    .line 1207
    .line 1208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    .line 1211
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    const-string v2, " / "

    .line 1219
    .line 1220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1229
    .line 1230
    const-string v2, " / "

    .line 1231
    .line 1232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txTrafficKbps:J

    .line 1238
    .line 1239
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    .line 1242
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSb:Ljava/lang/StringBuilder;

    .line 1243
    .line 1244
    const-string v2, " || "

    .line 1245
    .line 1246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    :cond_10
    :goto_f
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLog:Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 1252
    .line 1253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    .line 1256
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLog:Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    const-string v1, " || "

    .line 1259
    .line 1260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    monitor-exit v16

    .line 1264
    return-void

    .line 1265
    :goto_10
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1266
    throw v0
.end method

.method private updateMlQueue(IDDDI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bufferIdxMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    add-int/2addr v0, v1

    .line 19
    rem-int/lit8 v0, v0, 0xa

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bufferIdxMap:Ljava/util/Map;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStateRingBufferMap:Ljava/util/Map;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, [[D

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    aget-object v2, v2, v3

    .line 48
    .line 49
    aput-wide p2, v2, v0

    .line 50
    .line 51
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStateRingBufferMap:Ljava/util/Map;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, [[D

    .line 62
    .line 63
    aget-object p2, p2, v1

    .line 64
    .line 65
    aput-wide p4, p2, v0

    .line 66
    .line 67
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStateRingBufferMap:Ljava/util/Map;

    .line 68
    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, [[D

    .line 78
    .line 79
    const/4 p3, 0x2

    .line 80
    aget-object p2, p2, p3

    .line 81
    .line 82
    aput-wide p6, p2, v0

    .line 83
    .line 84
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txSpeedRingBufferMap:Ljava/util/Map;

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, [I

    .line 95
    .line 96
    aput p8, p2, v0

    .line 97
    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->timeRingBufferMap:Ljava/util/Map;

    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, [J

    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 111
    .line 112
    .line 113
    move-result-wide p1

    .line 114
    const-wide/32 p3, 0xf4240

    .line 115
    .line 116
    .line 117
    div-long/2addr p1, p3

    .line 118
    aput-wide p1, p0, v0

    .line 119
    .line 120
    return-void
.end method

.method private updateQueue(DDDI)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rBufferIdx:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    rem-int/lit8 v0, v0, 0xa

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rBufferIdx:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStatRingBuffer:[[D

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aget-object v3, v2, v3

    .line 13
    .line 14
    aput-wide p1, v3, v0

    .line 15
    .line 16
    aget-object p1, v2, v1

    .line 17
    .line 18
    aput-wide p3, p1, v0

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    aget-object p1, v2, p1

    .line 22
    .line 23
    aput-wide p5, p1, v0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txSpeedRingBuffer:[I

    .line 26
    .line 27
    aput p7, p1, v0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->timeRingBuffer:[J

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    const-wide/32 p3, 0xf4240

    .line 36
    .line 37
    .line 38
    div-long/2addr p1, p3

    .line 39
    aput-wide p1, p0, v0

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;I)V
    .locals 2

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mVerbose:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    const-string p0, "SemWifiLinkQualityMonitor"

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
    const-string p0, "SemWifiLinkQualityMonitor"

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-string p0, "SemWifiLinkQualityMonitor"

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
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 72
    .line 73
    monitor-enter p1

    .line 74
    :try_start_1
    sget-object p2, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 75
    .line 76
    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :goto_1
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

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
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

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
    const-string p1, "SemWifiLinkQualityMonitor"

    .line 103
    .line 104
    const-string p2, "out of memory error in dump: "

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
    const-string p1, "SemWifiLinkQualityMonitor"

    .line 112
    .line 113
    const-string p2, "format problem in dump: "

    .line 114
    .line 115
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public addL2LogHistory(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLogHistory:Ljava/util/LinkedList;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string v3, "HH:mm:ss"

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/util/Date;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_2

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_5

    .line 34
    :catch_0
    move-exception v2

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception v2

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    :try_start_1
    const-string v3, "SemWifiLinkQualityMonitor"

    .line 39
    .line 40
    const-string v4, "out of memory error in L2log: "

    .line 41
    .line 42
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    const-string v2, "00:00:00"

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_1
    const-string v3, "SemWifiLinkQualityMonitor"

    .line 49
    .line 50
    const-string v4, "format problem in L2log: "

    .line 51
    .line 52
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    const-string v2, "00:00:00"

    .line 56
    .line 57
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, " "

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :catch_2
    :try_start_3
    const-string p1, "No log"

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :goto_3
    const-string p1, "\n"

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLogHistory:Ljava/util/LinkedList;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLogHistory:Ljava/util/LinkedList;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const/4 v0, 0x5

    .line 95
    if-le p1, v0, :cond_0

    .line 96
    .line 97
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLogHistory:Ljava/util/LinkedList;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_0
    monitor-exit v1

    .line 104
    return-void

    .line 105
    :goto_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    throw p0
.end method

.method public addRtoHistory(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRtoHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRtoHistory:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRtoHistory:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v1, 0x3e8

    .line 16
    .line 17
    if-le p1, v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRtoHistory:Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public changeWifiValidState(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "Network validated"

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "Network validation failed"

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIsWifiValidState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    sget-object v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 6
    .line 7
    monitor-enter v3

    .line 8
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    sget-object v4, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-direct {v0, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 16
    const-string v3, "SemWifiLinkQualityMonitor history:"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 45
    .line 46
    .line 47
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v3, 0x1

    .line 54
    if-eqz v0, :cond_12

    .line 55
    .line 56
    const-string v0, "ILA history in SemWifiLinkQualityMonitor:"

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Ljava/io/File;

    .line 62
    .line 63
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mDataDirectory:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v5, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/io/File;

    .line 74
    .line 75
    const-string v6, "configkey-bssidE-map.csv"

    .line 76
    .line 77
    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_11

    .line 85
    .line 86
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    .line 87
    .line 88
    new-instance v7, Ljava/io/FileReader;

    .line 89
    .line 90
    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    const-string v7, ","

    .line 103
    .line 104
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    aget-object v0, v0, v3

    .line 111
    .line 112
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    move-object v1, v0

    .line 118
    goto/16 :goto_1b

    .line 119
    .line 120
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 121
    .line 122
    .line 123
    new-instance v6, Ljava/io/File;

    .line 124
    .line 125
    const-string v0, "ILAevaluationLog.csv"

    .line 126
    .line 127
    invoke-direct {v6, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_a

    .line 135
    .line 136
    :try_start_4
    new-instance v8, Ljava/io/BufferedReader;

    .line 137
    .line 138
    new-instance v0, Ljava/io/FileReader;

    .line 139
    .line 140
    invoke-direct {v0, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 144
    .line 145
    .line 146
    :goto_2
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catchall_1
    move-exception v0

    .line 157
    move-object v9, v0

    .line 158
    goto :goto_3

    .line 159
    :cond_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 160
    .line 161
    .line 162
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :catch_0
    move-exception v0

    .line 167
    goto :goto_5

    .line 168
    :goto_3
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catchall_2
    move-exception v0

    .line 173
    :try_start_8
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    :goto_4
    throw v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 177
    :goto_5
    const-string v8, "SemWifiLinkQualityMonitor"

    .line 178
    .line 179
    new-instance v9, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v10, "Exception in dump 2: "

    .line 182
    .line 183
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v9, "Exception in ILA history dump 2: "

    .line 199
    .line 200
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    :goto_6
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 217
    .line 218
    .line 219
    new-instance v6, Ljava/io/File;

    .line 220
    .line 221
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaResDirectory:Ljava/lang/String;

    .line 222
    .line 223
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    const/4 v0, 0x0

    .line 231
    :goto_7
    if-ge v0, v8, :cond_b

    .line 232
    .line 233
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    add-int/lit8 v10, v0, 0x1

    .line 238
    .line 239
    check-cast v9, Ljava/lang/String;

    .line 240
    .line 241
    const-string v0, "ILA evaluation for "

    .line 242
    .line 243
    const-string v11, " : "

    .line 244
    .line 245
    invoke-static {v0, v9, v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    new-instance v0, Ljava/io/File;

    .line 250
    .line 251
    invoke-direct {v0, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-eqz v9, :cond_9

    .line 259
    .line 260
    :try_start_9
    new-instance v9, Ljava/io/BufferedReader;

    .line 261
    .line 262
    new-instance v12, Ljava/io/FileReader;

    .line 263
    .line 264
    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 265
    .line 266
    .line 267
    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 268
    .line 269
    .line 270
    const/4 v7, 0x0

    .line 271
    const/4 v12, 0x0

    .line 272
    const/4 v14, 0x0

    .line 273
    const-wide/16 v15, 0x0

    .line 274
    .line 275
    :goto_8
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 279
    if-eqz v13, :cond_7

    .line 280
    .line 281
    move/from16 v19, v3

    .line 282
    .line 283
    :try_start_b
    const-string v3, ","

    .line 284
    .line 285
    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    aget-object v13, v3, v19

    .line 290
    .line 291
    move-object/from16 v20, v0

    .line 292
    .line 293
    const-string v0, "TP"

    .line 294
    .line 295
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_4

    .line 300
    .line 301
    add-int/lit8 v14, v14, 0x1

    .line 302
    .line 303
    const/4 v0, 0x2

    .line 304
    aget-object v0, v3, v0

    .line 305
    .line 306
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 307
    .line 308
    .line 309
    move-result-wide v21

    .line 310
    add-double v15, v15, v21

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :catchall_3
    move-exception v0

    .line 314
    move-object v7, v0

    .line 315
    move v3, v8

    .line 316
    move-object v13, v9

    .line 317
    goto/16 :goto_c

    .line 318
    .line 319
    :cond_4
    aget-object v0, v3, v19

    .line 320
    .line 321
    const-string v13, "FN"

    .line 322
    .line 323
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eqz v0, :cond_5

    .line 328
    .line 329
    add-int/lit8 v7, v7, 0x1

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_5
    aget-object v0, v3, v19

    .line 333
    .line 334
    const-string v3, "FP"

    .line 335
    .line 336
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 340
    if-eqz v0, :cond_6

    .line 341
    .line 342
    add-int/lit8 v12, v12, 0x1

    .line 343
    .line 344
    :cond_6
    :goto_9
    move/from16 v3, v19

    .line 345
    .line 346
    move-object/from16 v0, v20

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_7
    move-object/from16 v20, v0

    .line 350
    .line 351
    move/from16 v19, v3

    .line 352
    .line 353
    move v3, v8

    .line 354
    move-object v13, v9

    .line 355
    if-lez v14, :cond_8

    .line 356
    .line 357
    int-to-double v8, v14

    .line 358
    div-double v8, v15, v8

    .line 359
    .line 360
    move-wide/from16 v17, v8

    .line 361
    .line 362
    goto :goto_a

    .line 363
    :cond_8
    const-wide/16 v17, 0x0

    .line 364
    .line 365
    :goto_a
    :try_start_c
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v0, ","

    .line 369
    .line 370
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v0, "%.3f"

    .line 374
    .line 375
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v0, ","

    .line 391
    .line 392
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v0, ","

    .line 399
    .line 400
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 407
    .line 408
    .line 409
    :try_start_d
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 410
    .line 411
    .line 412
    goto :goto_f

    .line 413
    :catch_1
    move-exception v0

    .line 414
    goto :goto_e

    .line 415
    :catchall_4
    move-exception v0

    .line 416
    :goto_b
    move-object v7, v0

    .line 417
    goto :goto_c

    .line 418
    :catchall_5
    move-exception v0

    .line 419
    move/from16 v19, v3

    .line 420
    .line 421
    move v3, v8

    .line 422
    move-object v13, v9

    .line 423
    goto :goto_b

    .line 424
    :goto_c
    :try_start_e
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 425
    .line 426
    .line 427
    goto :goto_d

    .line 428
    :catchall_6
    move-exception v0

    .line 429
    :try_start_f
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 430
    .line 431
    .line 432
    :goto_d
    throw v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 433
    :catch_2
    move-exception v0

    .line 434
    move/from16 v19, v3

    .line 435
    .line 436
    move v3, v8

    .line 437
    :goto_e
    new-instance v7, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const-string v8, "Internal reading exception in dump: "

    .line 440
    .line 441
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    move/from16 v8, v19

    .line 452
    .line 453
    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    .line 458
    .line 459
    goto :goto_f

    .line 460
    :cond_9
    move v3, v8

    .line 461
    const-string v0, "N/A"

    .line 462
    .line 463
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    :goto_f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    move v8, v3

    .line 474
    move v0, v10

    .line 475
    const/4 v3, 0x1

    .line 476
    goto/16 :goto_7

    .line 477
    .line 478
    :cond_a
    const-string v0, "SemWifiLinkQualityMonitor"

    .line 479
    .line 480
    const-string v3, "Evaluation file does not exist"

    .line 481
    .line 482
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    const-string v0, "Evaluation file does not exist"

    .line 486
    .line 487
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    :cond_b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 491
    .line 492
    .line 493
    const-string v0, "===================================================================================================================="

    .line 494
    .line 495
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    const-string v0, "ILA history data list (integrated & trained)"

    .line 499
    .line 500
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    const/4 v7, 0x0

    .line 511
    :goto_10
    if-ge v7, v3, :cond_10

    .line 512
    .line 513
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    add-int/lit8 v7, v7, 0x1

    .line 518
    .line 519
    move-object v6, v0

    .line 520
    check-cast v6, Ljava/lang/String;

    .line 521
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v8, "Data for "

    .line 525
    .line 526
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v8, ": "

    .line 533
    .line 534
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    new-instance v0, Ljava/io/File;

    .line 545
    .line 546
    const-string v8, "-integration.csv"

    .line 547
    .line 548
    invoke-static {v6, v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    invoke-direct {v0, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 556
    .line 557
    .line 558
    move-result v8

    .line 559
    if-eqz v8, :cond_d

    .line 560
    .line 561
    :try_start_10
    new-instance v8, Ljava/io/BufferedReader;

    .line 562
    .line 563
    new-instance v9, Ljava/io/FileReader;

    .line 564
    .line 565
    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 566
    .line 567
    .line 568
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 569
    .line 570
    .line 571
    :goto_11
    :try_start_11
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    if-eqz v0, :cond_c

    .line 576
    .line 577
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 578
    .line 579
    .line 580
    goto :goto_11

    .line 581
    :catchall_7
    move-exception v0

    .line 582
    move-object v9, v0

    .line 583
    goto :goto_12

    .line 584
    :cond_c
    :try_start_12
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 585
    .line 586
    .line 587
    goto :goto_15

    .line 588
    :catch_3
    move-exception v0

    .line 589
    goto :goto_14

    .line 590
    :goto_12
    :try_start_13
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 591
    .line 592
    .line 593
    goto :goto_13

    .line 594
    :catchall_8
    move-exception v0

    .line 595
    :try_start_14
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 596
    .line 597
    .line 598
    :goto_13
    throw v9
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    .line 599
    :goto_14
    const-string v8, "SemWifiLinkQualityMonitor"

    .line 600
    .line 601
    new-instance v9, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string v10, "No integration file for "

    .line 604
    .line 605
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    const-string v10, ": "

    .line 612
    .line 613
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v9

    .line 623
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    new-instance v8, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    const-string v9, "No integration file for "

    .line 629
    .line 630
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    const-string v9, ": "

    .line 637
    .line 638
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v8

    .line 648
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 652
    .line 653
    .line 654
    goto :goto_15

    .line 655
    :cond_d
    const-string v0, "SemWifiLinkQualityMonitor"

    .line 656
    .line 657
    new-instance v8, Ljava/lang/StringBuilder;

    .line 658
    .line 659
    const-string v9, "No integration file for "

    .line 660
    .line 661
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v8

    .line 671
    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .line 673
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    .line 675
    .line 676
    const-string v8, "No integration file for "

    .line 677
    .line 678
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    :goto_15
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 692
    .line 693
    .line 694
    new-instance v0, Ljava/io/File;

    .line 695
    .line 696
    const-string v8, "-train.csv"

    .line 697
    .line 698
    invoke-static {v6, v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v8

    .line 702
    invoke-direct {v0, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 706
    .line 707
    .line 708
    move-result v8

    .line 709
    if-eqz v8, :cond_f

    .line 710
    .line 711
    :try_start_15
    new-instance v8, Ljava/io/BufferedReader;

    .line 712
    .line 713
    new-instance v9, Ljava/io/FileReader;

    .line 714
    .line 715
    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 716
    .line 717
    .line 718
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    .line 719
    .line 720
    .line 721
    :goto_16
    :try_start_16
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    if-eqz v0, :cond_e

    .line 726
    .line 727
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 728
    .line 729
    .line 730
    goto :goto_16

    .line 731
    :catchall_9
    move-exception v0

    .line 732
    move-object v9, v0

    .line 733
    goto :goto_17

    .line 734
    :cond_e
    :try_start_17
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    .line 735
    .line 736
    .line 737
    goto :goto_1a

    .line 738
    :catch_4
    move-exception v0

    .line 739
    goto :goto_19

    .line 740
    :goto_17
    :try_start_18
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 741
    .line 742
    .line 743
    goto :goto_18

    .line 744
    :catchall_a
    move-exception v0

    .line 745
    :try_start_19
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 746
    .line 747
    .line 748
    :goto_18
    throw v9
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    .line 749
    :goto_19
    const-string v8, "SemWifiLinkQualityMonitor"

    .line 750
    .line 751
    new-instance v9, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    const-string v10, "No train file for "

    .line 754
    .line 755
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    const-string v10, ": "

    .line 762
    .line 763
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v9

    .line 773
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    .line 775
    .line 776
    new-instance v8, Ljava/lang/StringBuilder;

    .line 777
    .line 778
    const-string v9, "No train file for "

    .line 779
    .line 780
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    const-string v6, ": "

    .line 787
    .line 788
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v6

    .line 798
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 802
    .line 803
    .line 804
    goto :goto_1a

    .line 805
    :cond_f
    const-string v0, "SemWifiLinkQualityMonitor"

    .line 806
    .line 807
    new-instance v8, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    const-string v9, "No train file for "

    .line 810
    .line 811
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v8

    .line 821
    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .line 823
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    .line 825
    .line 826
    const-string v8, "No train file for "

    .line 827
    .line 828
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    :goto_1a
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 845
    .line 846
    .line 847
    goto/16 :goto_10

    .line 848
    .line 849
    :cond_10
    const-string v0, "===================================================================================================================="

    .line 850
    .line 851
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 858
    .line 859
    .line 860
    goto :goto_1e

    .line 861
    :catch_5
    move-exception v0

    .line 862
    goto :goto_1d

    .line 863
    :goto_1b
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 864
    .line 865
    .line 866
    goto :goto_1c

    .line 867
    :catchall_b
    move-exception v0

    .line 868
    :try_start_1b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 869
    .line 870
    .line 871
    :goto_1c
    throw v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    .line 872
    :goto_1d
    const-string v1, "SemWifiLinkQualityMonitor"

    .line 873
    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    const-string v4, "Exception in dump 1: "

    .line 877
    .line 878
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .line 890
    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    .line 892
    .line 893
    const-string v3, "Exception in ILA history dump 1: "

    .line 894
    .line 895
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 909
    .line 910
    .line 911
    return-void

    .line 912
    :cond_11
    const-string v0, "SemWifiLinkQualityMonitor"

    .line 913
    .line 914
    const-string v1, "configKey-BssidE file does not exist"

    .line 915
    .line 916
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    .line 918
    .line 919
    const-string v0, "configKey-BssidE file does not exist"

    .line 920
    .line 921
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    return-void

    .line 925
    :cond_12
    :goto_1e
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 929
    .line 930
    .line 931
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 932
    .line 933
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-eqz v0, :cond_14

    .line 938
    .line 939
    const-string v0, "INS Collected Data:"

    .line 940
    .line 941
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    :try_start_1c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSemInsManager:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 945
    .line 946
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->getCompressedFilesWithBssid()Ljava/util/List;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 958
    .line 959
    .line 960
    move-result v3

    .line 961
    if-eqz v3, :cond_13

    .line 962
    .line 963
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v3

    .line 967
    check-cast v3, Ljava/lang/String;

    .line 968
    .line 969
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6

    .line 970
    .line 971
    .line 972
    goto :goto_1f

    .line 973
    :catch_6
    move-exception v0

    .line 974
    new-instance v3, Ljava/lang/StringBuilder;

    .line 975
    .line 976
    const-string v4, "INS data dump err: "

    .line 977
    .line 978
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v4

    .line 985
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v3

    .line 992
    const/4 v8, 0x1

    .line 993
    invoke-virtual {v1, v3, v8}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 994
    .line 995
    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    .line 997
    .line 998
    const-string v4, "INS data dump err: "

    .line 999
    .line 1000
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    .line 1016
    .line 1017
    :cond_13
    const-string v0, "===================================================================================================================="

    .line 1018
    .line 1019
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1026
    .line 1027
    .line 1028
    :cond_14
    const-string v0, "RTO history from SemWifiLinkQualityMonitor: "

    .line 1029
    .line 1030
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRtoHistory:Ljava/util/LinkedList;

    .line 1034
    .line 1035
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v0

    .line 1039
    if-nez v0, :cond_16

    .line 1040
    .line 1041
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRtoHistory:Ljava/util/LinkedList;

    .line 1042
    .line 1043
    monitor-enter v3

    .line 1044
    :try_start_1d
    new-instance v0, Ljava/util/LinkedList;

    .line 1045
    .line 1046
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRtoHistory:Ljava/util/LinkedList;

    .line 1047
    .line 1048
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1049
    .line 1050
    .line 1051
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 1052
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v1

    .line 1056
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1057
    .line 1058
    .line 1059
    move-result v3

    .line 1060
    if-eqz v3, :cond_15

    .line 1061
    .line 1062
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v3

    .line 1066
    check-cast v3, Ljava/lang/String;

    .line 1067
    .line 1068
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    goto :goto_20

    .line 1072
    :cond_15
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1073
    .line 1074
    .line 1075
    goto :goto_22

    .line 1076
    :catchall_c
    move-exception v0

    .line 1077
    :try_start_1e
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    .line 1078
    throw v0

    .line 1079
    :cond_16
    new-instance v0, Ljava/io/File;

    .line 1080
    .line 1081
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTMIDirectory:Ljava/lang/String;

    .line 1082
    .line 1083
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1087
    .line 1088
    .line 1089
    move-result v1

    .line 1090
    if-nez v1, :cond_17

    .line 1091
    .line 1092
    const-string v0, "No tmi history directory"

    .line 1093
    .line 1094
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    const-string v0, "\n\n"

    .line 1098
    .line 1099
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    return-void

    .line 1103
    :cond_17
    new-instance v1, Ljava/io/File;

    .line 1104
    .line 1105
    const-string v3, "bssidE-pn-rto.csv"

    .line 1106
    .line 1107
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 1111
    .line 1112
    .line 1113
    move-result v0

    .line 1114
    if-nez v0, :cond_18

    .line 1115
    .line 1116
    const-string v0, "No tmi hitory file"

    .line 1117
    .line 1118
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    const-string v0, "\n\n"

    .line 1122
    .line 1123
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    return-void

    .line 1127
    :cond_18
    :try_start_1f
    new-instance v3, Ljava/io/BufferedReader;

    .line 1128
    .line 1129
    new-instance v0, Ljava/io/FileReader;

    .line 1130
    .line 1131
    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 1132
    .line 1133
    .line 1134
    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_7

    .line 1135
    .line 1136
    .line 1137
    :goto_21
    :try_start_20
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v0

    .line 1141
    if-eqz v0, :cond_19

    .line 1142
    .line 1143
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    .line 1144
    .line 1145
    .line 1146
    goto :goto_21

    .line 1147
    :catchall_d
    move-exception v0

    .line 1148
    move-object v1, v0

    .line 1149
    goto :goto_23

    .line 1150
    :cond_19
    :try_start_21
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_7

    .line 1151
    .line 1152
    .line 1153
    :goto_22
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1157
    .line 1158
    .line 1159
    return-void

    .line 1160
    :catch_7
    move-exception v0

    .line 1161
    goto :goto_25

    .line 1162
    :goto_23
    :try_start_22
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    .line 1163
    .line 1164
    .line 1165
    goto :goto_24

    .line 1166
    :catchall_e
    move-exception v0

    .line 1167
    :try_start_23
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1168
    .line 1169
    .line 1170
    :goto_24
    throw v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_7

    .line 1171
    :goto_25
    const-string v1, "SemWifiLinkQualityMonitor"

    .line 1172
    .line 1173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    const-string v4, "RTO reading exception on dump: "

    .line 1176
    .line 1177
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v3

    .line 1187
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    .line 1189
    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    const-string v3, "RTO reading exception on dump: "

    .line 1193
    .line 1194
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    const-string v0, "\n\n"

    .line 1208
    .line 1209
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    return-void

    .line 1213
    :catchall_f
    move-exception v0

    .line 1214
    :try_start_24
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    .line 1215
    throw v0
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mVerbose:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public getActiveLinkNumber()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 2
    .line 3
    return p0
.end method

.method public getBestLinkId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkId:I

    .line 2
    .line 3
    return p0
.end method

.method public getCurrentL2TransitionMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionMode:I

    .line 2
    .line 3
    return p0
.end method

.method public getCurrentL2TransitionModeStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionMode:I

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const-string p0, "@"

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const-string p0, "A"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    const-string p0, "N"

    .line 15
    .line 16
    return-object p0
.end method

.method public getL2TransitionLog()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionLogHistory:Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string v0, "Exception on getL2TransitionLog: "

    .line 37
    .line 38
    const-string v1, "SemWifiLinkQualityMonitor"

    .line 39
    .line 40
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p0, "No log"

    .line 44
    .line 45
    return-object p0
.end method

.method public getLinkIds()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkIds()[I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mloConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    filled-new-array {p0, p0}, [I

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public getLinkSpeed()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    .line 2
    .line 3
    return p0
.end method

.method public getLinkSpeedInDecisionTree()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkSpeedBoundMbps:I

    .line 2
    .line 3
    return p0
.end method

.method public getLinkStateUpdateNumber()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkStateUpdateNumber:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMloDeterminedByDecisionTree()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mMloDeterminedByMl:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public getNumberOfDataInEachRssiLevel()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "No connection\n"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string p0, "ILA not supported\n"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getBssidEdited()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v2, " || "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getRssiThresholdFromResultFile(Ljava/lang/String;)D

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, "\n"

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mNumDataInRssiLevel:[I

    .line 50
    .line 51
    array-length v4, v3

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_0
    if-ge v5, v4, :cond_2

    .line 54
    .line 55
    aget v6, v3, v5

    .line 56
    .line 57
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v6, "/"

    .line 61
    .line 62
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    add-int/lit8 v3, v3, -0x1

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->numTransitOccurredMap:Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-object p0

    .line 94
    :catch_0
    move-exception p0

    .line 95
    const-string v0, "Exception on getNumberOfDataInEachRssiLevel: "

    .line 96
    .line 97
    const-string v1, "SemWifiLinkQualityMonitor"

    .line 98
    .line 99
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p0, "N/A"

    .line 103
    .line 104
    return-object p0
.end method

.method public getRssiThreshold()D
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->rssiThreshold:D

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    return-wide v0
.end method

.method public getRssiThresholdFromResultFile(Ljava/lang/String;)D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->bssidEdited:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 24
    .line 25
    iget-wide v0, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->rssiThreshold:D

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmpg-double v2, v0, v2

    .line 30
    .line 31
    if-gez v2, :cond_1

    .line 32
    .line 33
    return-wide v0

    .line 34
    :cond_1
    const-string v0, "XXXXXXXXXXXX"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 43
    .line 44
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 45
    .line 46
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->rssiThreshold:D

    .line 47
    .line 48
    return-wide v0

    .line 49
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mDataDirectory:Ljava/lang/String;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 63
    .line 64
    .line 65
    :cond_3
    const-string v1, "-threshold.csv"

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Ljava/io/File;

    .line 72
    .line 73
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 83
    .line 84
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 85
    .line 86
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->rssiThreshold:D

    .line 87
    .line 88
    return-wide v0

    .line 89
    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 90
    .line 91
    new-instance v1, Ljava/io/FileReader;

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 108
    .line 109
    iput-object p1, v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->bssidEdited:Ljava/lang/String;

    .line 110
    .line 111
    iput-wide v1, v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->rssiThreshold:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    .line 115
    .line 116
    return-wide v1

    .line 117
    :catch_0
    move-exception p1

    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 129
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v1, "Exception in get result: "

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/4 v1, 0x1

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 151
    .line 152
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 153
    .line 154
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->rssiThreshold:D

    .line 155
    .line 156
    return-wide v0
.end method

.method public getWifiUsabilityStatsEntry()Landroid/net/wifi/WifiUsabilityStatsEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 2
    .line 3
    return-object p0
.end method

.method public linkQosEstimation(IJIJI)[D
    .locals 34

    move-object/from16 v0, p0

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    .line 16
    const-string v1, "Wrong link ID: "

    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v15

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p2

    :goto_0
    long-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    mul-double/2addr v2, v4

    .line 17
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v16, v4, v6

    .line 18
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkIdBandMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v18, 0x0

    if-nez v4, :cond_1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 20
    new-array v0, v13, [D

    fill-array-data v0, :array_0

    monitor-exit v15

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    move v4, v12

    move v5, v4

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    move-wide/from16 v24, v22

    move-wide/from16 v26, v24

    :goto_1
    move/from16 v1, p1

    if-ge v4, v11, :cond_3

    .line 21
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bufferIdxMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v4

    rem-int/2addr v6, v11

    if-gez v6, :cond_2

    add-int/2addr v6, v11

    .line 22
    :cond_2
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->timeRingBufferMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    aget-wide v7, v7, v6

    sub-long v7, v16, v7

    cmp-long v7, v7, p5

    if-lez v7, :cond_4

    :cond_3
    move/from16 v29, v12

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v28, v5, 0x1

    .line 23
    iput-boolean v12, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->defaultValueUsed:Z

    .line 24
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txSpeedRingBufferMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v5, v5, v6

    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStateRingBufferMap:Ljava/util/Map;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    aget-object v7, v7, v13

    aget-wide v7, v7, v6

    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStateRingBufferMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    aget-object v9, v9, v12

    aget-wide v9, v9, v6

    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStateRingBufferMap:Ljava/util/Map;

    move/from16 v29, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    aget-object v11, v11, v14

    aget-wide v11, v11, v6

    move-wide v1, v2

    move v3, v5

    move-wide/from16 v30, v9

    move/from16 v10, p4

    move-wide/from16 v32, v11

    move v12, v4

    move-wide v4, v7

    move-wide/from16 v6, v30

    move-wide/from16 v8, v32

    .line 26
    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->latencyEstimation(DIDDDI)D

    move-result-wide v3

    cmpl-double v0, v3, v18

    if-nez v0, :cond_5

    move-wide/from16 v5, v18

    goto :goto_2

    :cond_5
    div-double v5, v1, v3

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    :goto_2
    add-double v26, v26, v3

    add-double v20, v20, v5

    cmpl-double v0, v22, v18

    if-eqz v0, :cond_6

    cmpl-double v0, v22, v3

    if-lez v0, :cond_7

    :cond_6
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    :cond_7
    add-int/lit8 v4, v12, 0x1

    move-object/from16 v0, p0

    move-wide v2, v1

    move/from16 v5, v28

    move/from16 v12, v29

    const/16 v11, 0xa

    goto/16 :goto_1

    :goto_3
    if-lez v5, :cond_8

    int-to-double v0, v5

    div-double v26, v26, v0

    div-double v20, v20, v0

    :cond_8
    move/from16 v0, p7

    if-ne v0, v13, :cond_9

    .line 27
    new-array v0, v13, [D

    aput-wide v22, v0, v29

    aput-wide v24, v0, v14

    goto :goto_4

    :cond_9
    new-array v0, v13, [D

    aput-wide v26, v0, v29

    aput-wide v20, v0, v14

    :goto_4
    monitor-exit v15

    return-object v0

    .line 28
    :goto_5
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public linkQosEstimation(JIJI)[D
    .locals 35

    move-object/from16 v0, p0

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    .line 1
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v15

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const-wide/16 v1, 0x3e8

    move-wide v2, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    long-to-double v4, v2

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double/2addr v4, v6

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long v16, v6, v8

    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mloConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-wide/16 v18, 0x0

    if-eqz v1, :cond_6

    .line 4
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkActivenessMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v1, 0x0

    move-object v9, v1

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkActivenessMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-wide/from16 v5, p4

    move/from16 v7, p6

    move v1, v4

    move/from16 v4, p3

    .line 6
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosEstimation(IJIJI)[D

    move-result-object v10

    .line 7
    aget-wide v4, v10, v12

    cmpl-double v6, v4, v18

    if-lez v6, :cond_1

    if-eqz v9, :cond_3

    aget-wide v6, v9, v12

    cmpl-double v4, v6, v4

    if-lez v4, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 8
    :cond_3
    :goto_2
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkId:I

    move-object v9, v10

    goto :goto_1

    :cond_4
    if-nez v9, :cond_5

    .line 9
    new-array v9, v13, [D

    fill-array-data v9, :array_0

    :cond_5
    monitor-exit v15

    return-object v9

    :cond_6
    move v1, v12

    move v2, v1

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    move-wide/from16 v24, v22

    move-wide/from16 v26, v24

    :goto_3
    if-ge v1, v11, :cond_c

    .line 10
    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rBufferIdx:I

    sub-int/2addr v3, v1

    rem-int/2addr v3, v11

    if-gez v3, :cond_7

    add-int/2addr v3, v11

    .line 11
    :cond_7
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->timeRingBuffer:[J

    aget-wide v6, v6, v3

    sub-long v6, v16, v6

    cmp-long v6, v6, p4

    if-lez v6, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v28, v2, 0x1

    .line 12
    iput-boolean v12, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->defaultValueUsed:Z

    .line 13
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->txSpeedRingBuffer:[I

    aget v2, v2, v3

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkStatRingBuffer:[[D

    aget-object v7, v6, v13

    aget-wide v7, v7, v3

    aget-object v9, v6, v12

    aget-wide v9, v9, v3

    aget-object v6, v6, v14

    aget-wide v29, v6, v3

    move v3, v2

    move-wide/from16 v31, v9

    move/from16 v10, p3

    move-wide/from16 v33, v29

    move/from16 v29, v1

    move-wide v1, v4

    move-wide v4, v7

    move-wide/from16 v6, v31

    move-wide/from16 v8, v33

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->latencyEstimation(DIDDDI)D

    move-result-wide v3

    cmpl-double v0, v3, v18

    if-nez v0, :cond_9

    move-wide/from16 v5, v18

    goto :goto_4

    :cond_9
    div-double v5, v1, v3

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    :goto_4
    add-double v26, v26, v3

    add-double v20, v20, v5

    cmpl-double v0, v22, v18

    if-eqz v0, :cond_a

    cmpl-double v0, v22, v3

    if-lez v0, :cond_b

    :cond_a
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    :cond_b
    add-int/lit8 v0, v29, 0x1

    move-wide v4, v1

    move/from16 v2, v28

    move v1, v0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_c
    :goto_5
    if-lez v2, :cond_d

    int-to-double v0, v2

    div-double v26, v26, v0

    div-double v20, v20, v0

    :cond_d
    move/from16 v7, p6

    if-ne v7, v13, :cond_e

    .line 14
    new-array v0, v13, [D

    aput-wide v22, v0, v12

    aput-wide v24, v0, v14

    goto :goto_6

    :cond_e
    new-array v0, v13, [D

    aput-wide v26, v0, v12

    aput-wide v20, v0, v14

    :goto_6
    monitor-exit v15

    return-object v0

    .line 15
    :goto_7
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public linkQosQuery(JJJIJ)Z
    .locals 14

    .line 1
    move-wide/from16 v7, p3

    .line 2
    .line 3
    move-wide/from16 v9, p5

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v11, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "Query without connection"

    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return v11

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "Link QoS query: "

    .line 24
    .line 25
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-wide v3, p1

    .line 29
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v5, " / "

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move/from16 v6, p7

    .line 38
    .line 39
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-wide/from16 v12, p8

    .line 46
    .line 47
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x1

    .line 58
    move-object v0, p0

    .line 59
    move-wide v1, v3

    .line 60
    move-wide v4, v12

    .line 61
    move/from16 v3, p7

    .line 62
    .line 63
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosEstimation(JIJI)[D

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    aget-wide v1, v0, v11

    .line 68
    .line 69
    const-wide/16 v3, 0x0

    .line 70
    .line 71
    cmpl-double v3, v1, v3

    .line 72
    .line 73
    if-nez v3, :cond_1

    .line 74
    .line 75
    return v11

    .line 76
    :cond_1
    const-wide/16 v3, 0x0

    .line 77
    .line 78
    cmp-long v5, v7, v3

    .line 79
    .line 80
    if-lez v5, :cond_2

    .line 81
    .line 82
    long-to-double v5, v7

    .line 83
    cmpl-double v1, v1, v5

    .line 84
    .line 85
    if-gtz v1, :cond_3

    .line 86
    .line 87
    :cond_2
    cmp-long v1, v9, v3

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    if-lez v1, :cond_4

    .line 91
    .line 92
    aget-wide v0, v0, v2

    .line 93
    .line 94
    long-to-double v3, v9

    .line 95
    cmpg-double v0, v0, v3

    .line 96
    .line 97
    if-gez v0, :cond_4

    .line 98
    .line 99
    :cond_3
    return v11

    .line 100
    :cond_4
    return v2
.end method

.method public mlQosEstimation(JIJI)[D
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/4 v9, 0x1

    .line 5
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v10

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    cmp-long v1, p1, v1

    .line 11
    .line 12
    if-gtz v1, :cond_0

    .line 13
    .line 14
    const-wide/16 v1, 0x3e8

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide/from16 v1, p1

    .line 18
    .line 19
    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mloConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_6

    .line 26
    .line 27
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkActivenessMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    const-wide/16 v12, 0x0

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    move-object v14, v3

    .line 41
    move-wide v15, v12

    .line 42
    move-wide/from16 v17, v15

    .line 43
    .line 44
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 49
    .line 50
    if-eqz v3, :cond_5

    .line 51
    .line 52
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/Integer;

    .line 57
    .line 58
    move-wide v4, v1

    .line 59
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkActivenessMap:Ljava/util/Map;

    .line 64
    .line 65
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    move-wide v1, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move/from16 v7, p6

    .line 80
    .line 81
    move-wide v2, v4

    .line 82
    move/from16 v4, p3

    .line 83
    .line 84
    move-wide/from16 v5, p4

    .line 85
    .line 86
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosEstimation(IJIJI)[D

    .line 87
    .line 88
    .line 89
    move-result-object v21

    .line 90
    move-wide/from16 v22, v2

    .line 91
    .line 92
    move v3, v1

    .line 93
    move-wide/from16 v1, v22

    .line 94
    .line 95
    aget-wide v4, v21, v8

    .line 96
    .line 97
    cmpl-double v6, v4, v12

    .line 98
    .line 99
    if-lez v6, :cond_3

    .line 100
    .line 101
    if-eqz v14, :cond_2

    .line 102
    .line 103
    aget-wide v6, v14, v8

    .line 104
    .line 105
    cmpl-double v6, v6, v4

    .line 106
    .line 107
    if-lez v6, :cond_3

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto :goto_4

    .line 112
    :cond_2
    :goto_2
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bestLinkId:I

    .line 113
    .line 114
    move-object/from16 v14, v21

    .line 115
    .line 116
    :cond_3
    cmpg-double v3, v4, v12

    .line 117
    .line 118
    if-gtz v3, :cond_4

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    div-double v19, v19, v4

    .line 122
    .line 123
    add-double v15, v19, v15

    .line 124
    .line 125
    aget-wide v3, v21, v9

    .line 126
    .line 127
    add-double v17, v17, v3

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    cmpl-double v0, v15, v12

    .line 131
    .line 132
    if-lez v0, :cond_7

    .line 133
    .line 134
    div-double v12, v19, v15

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    move/from16 v3, p3

    .line 138
    .line 139
    move-wide/from16 v4, p4

    .line 140
    .line 141
    move/from16 v6, p6

    .line 142
    .line 143
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosEstimation(JIJI)[D

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    aget-wide v12, v0, v8

    .line 148
    .line 149
    aget-wide v17, v0, v9

    .line 150
    .line 151
    :cond_7
    :goto_3
    const/4 v0, 0x2

    .line 152
    new-array v0, v0, [D

    .line 153
    .line 154
    aput-wide v12, v0, v8

    .line 155
    .line 156
    aput-wide v17, v0, v9

    .line 157
    .line 158
    monitor-exit v10

    .line 159
    return-object v0

    .line 160
    :goto_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    throw v0
.end method

.method public onInvalidState()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 4

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
    const/4 v3, 0x0

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->ifaces:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 16
    .line 17
    invoke-interface {p2}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mClientIfaceName:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mINSEventHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;

    .line 44
    .line 45
    const/4 p2, 0x2

    .line 46
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 71
    .line 72
    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->voiceCallDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    .line 77
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 81
    .line 82
    const/4 p1, 0x4

    .line 83
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->ifaces:Ljava/util/Set;

    .line 92
    .line 93
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mClientIfaceName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    .line 106
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mINSEventHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;

    .line 118
    .line 119
    const/4 p2, 0x3

    .line 120
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 128
    .line 129
    const/4 p2, 0x0

    .line 130
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 134
    .line 135
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 153
    .line 154
    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 158
    .line 159
    const/16 p2, 0xb

    .line 160
    .line 161
    invoke-static {p1, p2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIsWifiValidState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    .line 170
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    .line 172
    .line 173
    :cond_3
    return-void
.end method

.method public registerBestLinkIdChangedCallback(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiBestLinkIdChangedCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 4
    .line 5
    const/4 v0, 0x5

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

.method public registerCallback(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiLinkQualityMonitorCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 4
    .line 5
    const/4 v0, 0x2

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

.method public renewConnection(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->activeLinkNumber:I

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/16 p1, 0xbb8

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 p1, 0x1f4

    .line 24
    .line 25
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 26
    .line 27
    const/16 v1, 0xb

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-static {p0, v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    int-to-long v1, p1

    .line 35
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public resetCallbackCondition()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqCallbackLegacyTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqCallbackILATriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTPChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageLastingCnt:I

    .line 5
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageRecoveredCnt:I

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByIlaMs:J

    .line 7
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByLegacyMs:J

    .line 8
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->numRecoveredAfterIlaL2t:I

    .line 9
    const-string v0, "000000000000"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bssidEditedAfterILA:Ljava/lang/String;

    .line 10
    const-string v0, "LQ L2 callback initialized"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public resetCallbackCondition(I)V
    .locals 8

    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqCallbackLegacyTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqCallbackILATriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTPChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v2, 0x0

    .line 14
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByIlaMs:J

    .line 15
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->l2tTimeByLegacyMs:J

    .line 16
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageLastingCnt:I

    .line 17
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->outageRecoveredCnt:I

    .line 18
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->numRecoveredAfterIlaL2t:I

    .line 19
    const-string v0, "000000000000"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->bssidEditedAfterILA:Ljava/lang/String;

    .line 20
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionMode:I

    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierIdFromSimMccMnc()I

    move-result v0

    .line 22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rssiBasedTransitionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v3, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->RSSI_BASED_TRANSITION_SUPPORT_CARRIER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mIlaSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const-string v6, "wifi_switch_to_mobile_data_ai_mode_2"

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v7, v6, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->scpmEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LQ L2 callback initialized: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "Y / "

    goto :goto_1

    :cond_1
    const-string v3, "N / "

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v7, v6, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Y"

    goto :goto_2

    :cond_2
    const-string v3, "N"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rssiBasedTransition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->rssiBasedTransitionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 27
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    if-gt p1, v4, :cond_4

    if-gez p1, :cond_3

    goto :goto_3

    :cond_3
    return-void

    .line 28
    :cond_4
    :goto_3
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mL2TransitionMode:I

    return-void
.end method

.method public resetComebackCondition()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->lqComebackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->recoveryLastingCnt:I

    .line 8
    .line 9
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->trafficOutageCnt:I

    .line 10
    .line 11
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->comebackRssiCnt:I

    .line 12
    .line 13
    const-string v0, "LQ L1 callback initialized"

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setIlaTrainingResult(DLjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Writing exception in result setting: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 9
    .line 10
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 16
    .line 17
    iput-wide p1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->rssiThreshold:D

    .line 18
    .line 19
    iput-object p3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;->bssidEdited:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "ILA training result: "

    .line 24
    .line 25
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ", "

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 48
    .line 49
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/16 v4, 0x8

    .line 54
    .line 55
    invoke-static {v1, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mDataDirectory:Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_1

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p3, "-threshold.csv"

    .line 91
    .line 92
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    new-instance v4, Ljava/io/File;

    .line 100
    .line 101
    invoke-direct {v4, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    if-nez p3, :cond_2

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    :cond_2
    :try_start_1
    new-instance p3, Ljava/io/BufferedWriter;

    .line 114
    .line 115
    new-instance v3, Ljava/io/FileWriter;

    .line 116
    .line 117
    invoke-direct {v3, v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p3, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .line 122
    .line 123
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    .line 136
    :try_start_3
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :catch_1
    move-exception p1

    .line 141
    goto :goto_2

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    :try_start_4
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catchall_1
    move-exception p2

    .line 148
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 152
    :goto_2
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string p3, "Exception in result setting: "

    .line 174
    .line 175
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .line 190
    .line 191
    :goto_4
    return-void
.end method

.method public setInsEnableInfer(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSemInsManager:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->setEnableInfer(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInsEnableTrain(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSemInsManager:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->setEnableTrain(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInsInferenceResult(IFFFFLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p6, " prediction: "

    .line 10
    .line 11
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p6, " path prob: "

    .line 18
    .line 19
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, " nsm prob: "

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, " path threshold: "

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, " nsm threshold: "

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const/4 p3, 0x2

    .line 54
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/16 p2, 0xd

    .line 64
    .line 65
    invoke-static {p0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public unRegisterBestLinkIdChangedCallback(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiBestLinkIdChangedCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 4
    .line 5
    const/4 v0, 0x6

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

.method public unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiLinkQualityMonitorCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 4
    .line 5
    const/4 v0, 0x3

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
