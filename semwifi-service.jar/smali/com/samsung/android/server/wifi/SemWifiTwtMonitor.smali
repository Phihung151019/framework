.class public final Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;,
        Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;,
        Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;,
        Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;
    }
.end annotation


# static fields
.field private static final CREATE_SESSION:I = 0xa

.field private static final DATA_STALL_CHECK_THRESHOLD_RX:J = 0x0L

.field private static final DATA_STALL_CHECK_THRESHOLD_TX:J = 0x1L

.field private static final DATA_STALL_DURATION_THRESHOLD:J = 0x1770L

.field private static final DURATION_QUANTIZATION_UNIT:I = 0x2000

.field private static final EVENT_REACHABILITY_LOST:I = 0xe

.field private static final FILENAME_TWT_IOT_AP_RECORD:Ljava/lang/String; = "twt_iot_ap_list.json"

.field private static final GET_SCPM_POLICY:I = 0x8

.field private static final HEAVY_DUTY_CYCLE_CESSATION_THRESHOLD:F = 0.8f

.field private static final HEAVY_DUTY_CYCLE_RESUMPTION_THRESHOLD:F = 0.7f

.field private static final HEAVY_RATIO_THROTTLING_ACTIVATION_THRESHOLD:F = 0.9f

.field private static final HEAVY_RATIO_THROTTLING_DEACTIVATION_THRESHOLD:F = 0.6f

.field private static final IOT_ISSUE_CHECK_DURATION:J = 0xea60L

.field private static final LIGHT_TRAFFIC_CESSATION_THRESHOLD_BYTES:J = 0x0L

.field private static final LIGHT_TRAFFIC_RESUMPTION_THRESHOLD_BYTES:J = 0x0L

.field private static final LINK_STATE_UPDATE:I = 0x9

.field private static final MAX_DATA_SIZE:I = 0xc8

.field private static final MAX_SP_DURATION:I = 0xff00

.field private static final MAX_TWT_INTERVAL:I = 0xfa000

.field private static final PM_SCPM_CONFIGURATION_COUNT:I = 0x2

.field private static final RATE_DROP_CHECK_DURATION:J = 0x493e0L

.field private static final RATE_DROP_CHECK_THRESHOLD_RX:I = 0xa

.field private static final RATE_DROP_CHECK_THRESHOLD_TX:I = 0xc8

.field private static final RATE_DROP_DURATION_THRESHOLD:J = 0x2710L

.field private static final SCPM_SPM:I = 0x1

.field private static final SCPM_TWT:I = 0x0

.field private static final SESSION_CREATION_RESULT_EVENT:I = 0xc

.field private static final SESSION_TEARDOWN_RESULT_EVENT:I = 0xd

.field private static final SPM_CHIPSET_CAP_FEATURE_SUPPORT:I = 0x1

.field private static final SPM_CHIPSET_CAP_MIN_SERVICE_PERIOD:I = 0x6

.field private static final SPM_CHIPSET_CAP_MIN_SLEEP_PERIOD:I = 0x18

.field private static final TAG:Ljava/lang/String; = "SemWifiTwtMonitor"

.field private static final TEARDOWN_SESSION:I = 0xb

.field private static final THROTTLING_LIMIT_MAX:F = 0.8f

.field private static final THROTTLING_LIMIT_MIN:F = 0.3f

.field private static final TWT_ACTIVE:I = 0x1

.field private static final TWT_ALGORITHM_POLL:I = 0x2

.field private static final TWT_CAP_FLAGS_BROADCAST_TWT_SUPPORT:I = 0x4

.field private static final TWT_CAP_FLAGS_FLEXIBLE_TWT_SUPPORT:I = 0x8

.field private static final TWT_CAP_FLAGS_REQUESTER_SUPPORT:I = 0x1

.field private static final TWT_CAP_FLAGS_RESPONDER_SUPPORT:I = 0x2

.field private static final TWT_CAP_FLAGS_TWT_REQUIRED:I = 0x10

.field private static final TWT_CESSATION_HEAVY_TRAFFIC:I = 0x1

.field private static final TWT_CESSATION_NOT_ALLOWED_DUTY:I = 0x8

.field private static final TWT_CESSATION_NOT_PERMITTED:I = 0x10

.field private static final TWT_CESSATION_TOO_LIGHT_TRAFFIC:I = 0x2

.field private static final TWT_CESSATION_TOO_LOW_RSSI:I = 0x4

.field private static final TWT_CHIPSET_CAP_BROADCAST_TWT:I = 0x4

.field private static final TWT_CHIPSET_CAP_FEATURE_SUPPORT:I = 0x1

.field private static final TWT_CHIPSET_CAP_FLEXIBLE_TWT:I = 0x8

.field private static final TWT_CHIPSET_CAP_MIN_SERVICE_PERIOD:I = 0x30

.field private static final TWT_CHIPSET_CAP_MIN_SLEEP_PERIOD:I = 0xc0

.field private static final TWT_CHIPSET_CAP_REQUESTER:I = 0x2

.field private static final TWT_CONNECTION_FOLLOWUP_PROCESS:I = 0x5

.field private static final TWT_CONTROL_DEACTIVATION:I = 0x7

.field private static final TWT_DISCONNECTION_FOLLOWUP_PROCESS:I = 0x6

.field private static final TWT_ISSUE_TYPE_ARP_LOST:I = 0x2

.field private static final TWT_ISSUE_TYPE_DL_LINK_SPEED_DROP:I = 0x4

.field private static final TWT_ISSUE_TYPE_DL_TRAFFIC_STOP:I = 0x3

.field private static final TWT_ISSUE_TYPE_IOT:I = 0x1

.field private static final TWT_NO_NEGOTIATION:I = 0x0

.field private static final TWT_OVERFLOW_POLL:I = 0x3

.field private static final TWT_OVERFLOW_POLL_INTERVAL_MS:I = 0x1f4

.field private static final TWT_RENEW_INTERVAL_UNDER_THROTTLING_MS:I = 0x1770

.field private static final TWT_RESUMPTION_DATA_POLL:I = 0x1

.field private static final TWT_RESUMPTION_DATA_SAMPLING_INTERVAL_MS:I = 0xbb8

.field private static final TWT_SUSPENDED:I = 0x2

.field private static final TWT_TORNDOWN_BY_HOST:I = 0x0

.field private static final TWT_TORNDOWN_BY_PEER:I = 0x1

.field private static final TWT_TORNDOWN_DUE_TO_BT_COEX:I = 0x5

.field private static final TWT_TORNDOWN_DUE_TO_MULTI_CHANNEL_CONNECTION:I = 0x3

.field private static final TWT_TORNDOWN_DUE_TO_MULTI_CONNECTION_IN_SAME_CHANNEL:I = 0x2

.field private static final TWT_TORNDOWN_DUE_TO_MULTI_LINK_ACTIVATION:I = 0x8

.field private static final TWT_TORNDOWN_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final TWT_TORNDOWN_DUE_TO_PS_DISABLED:I = 0x7

.field private static final TWT_TORNDOWN_DUE_TO_ROAM_CSA:I = 0x4

.field private static final TWT_TORNDOWN_DUE_TO_WIFI_SCAN:I = 0x9

.field private static final TWT_TORNDOWN_FAILED_DUE_TO_NO_RESPONSE_FROM_PEER:I = 0x6

.field private static final TWT_TRAFFIC_CONTROL_POLL:I = 0x4

.field private static final UNKNOWN_VERSION_H:Ljava/lang/String;

.field private static final UNKNOWN_VERSION_L:Ljava/lang/String; = "0"

.field private static final twtMonitorVersion:Ljava/lang/String; = "3.2"


# instance fields
.field private final PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

.field private TdtUs:F

.field private apOUIs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final awareConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private checkDiffResult:[J

.field private chipsetVendorName:Ljava/lang/String;

.field private firstNego:Z

.field private final initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private latestSCPMVersion:Ljava/lang/String;

.field private mAssociatedApCapabilities:I

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mCurRxBytes:J

.field private mCurTime:J

.field private mDataStallDuration:J

.field private mDesiredFlowID:I

.field private mDesiredInterval:I

.field private mDesiredSP:I

.field private mDeviceCapabilities:I

.field mFirstApiLevel:I

.field private mIfaceName:Ljava/lang/String;

.field private final mIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFeatureEnabled:Z

.field private final mIsLeakyApDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsMcfMultiControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsPmControlBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsScheduledPmSupported:Z

.field private final mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsTwtSupported:Z

.field private mLastLinkStatsUpdatedTime:J

.field private mLastRxBytes:J

.field private mLastTime:J

.field private mLastTrafficStatsUpdatedTime:J

.field private mLastTwtSetupTimeWithCurrentBssid:J

.field private mLatestScpmVersionSchedPm:Ljava/lang/String;

.field private final mMediatorGranted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMinInterval:I

.field private mMinServicePeriod:I

.field private mMinSleepPeriod:I

.field private mMinSpmInterval:I

.field private mMinSpmServicePeriod:I

.field private mMinSpmSleepPeriod:I

.field private mMinTwtInterval:I

.field private mMinTwtServicePeriod:I

.field private mMinTwtSleepPeriod:I

.field private final mProductModelName:Ljava/lang/String;

.field private mRateDropDuration:J

.field mRssi:I

.field private mRxPacketCount:J

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private mSchedPmScpmOuis:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

.field private mScpmDataProviderSchedPm:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

.field private mScpmDriverVersionSchedPm:Ljava/lang/String;

.field private mScpmEnableConditionSchedPm:I

.field private final mScpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

.field private mScpmFirmwareVersionSchedPm:Ljava/lang/String;

.field private mScpmMonitorVersionSchedPm:Ljava/lang/String;

.field private final mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

.field private mTrafficLimit:I

.field private final mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

.field private mTwtCessation:I

.field private final mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

.field private final mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

.field private final mTwtIoTApListFile:Ljava/io/File;

.field private mTwtIotApList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

.field private mTxPacketCount:J

.field private final mWaitingGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWakeRatio:F

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

.field private final mWifiCtlFeatureMediatorGrantCallback:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

.field private final mWifiCtlFeatureMediatorPerformanceQuery:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

.field private final mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

.field private final mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

.field private final mWifiTrafficControlCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private final mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private final mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

.field private minServicePeriodSCPM:I

.field private final p2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private resumptionPollCnt:J

.field private scpmDriverVersion:Ljava/lang/String;

.field private scpmEnableCondition:I

.field private scpmFirmwareVersion:Ljava/lang/String;

.field private scpmOUIs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scpmTwtMonitorVersion:Ljava/lang/String;

.field private final screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private throttlingRatio:F

.field private throttlingStep:F

.field private final trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private twtControlResumptionThresholdDbm:I

.field private twtControlSuspensionThresholdDbm:I

.field private final twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$CCMngaW-6ExLKmy_JCF71550aqs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->lambda$new$1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$I1sIiZV2d8HLzkrPvCP0PhLLxPg(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->TdtUs:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetawareConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->awareConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkDiffResult:[J

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchipsetVendorName(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->chipsetVendorName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstNego(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->firstNego:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinitialTrafficCheck(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlatestSCPMVersion(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAssociatedApCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDeviceCapabilities:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLeakyApDetected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsLeakyApDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMcfMultiControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsMcfMultiControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPmControlBeneficial(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScheduledPmSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTwtSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTwtSetupTimeWithCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTwtSetupTimeWithCurrentBssid:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestScpmVersionSchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMediatorGranted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficLimit(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTrafficLimit:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingGrant(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWaitingGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWakeRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWakeRatio:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetp2pConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->p2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->resumptionPollCnt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingRatio:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthrottlingStep(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingStep:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettrafficControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettwtControlSuspensionThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlSuspensionThresholdDbm:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettwtRenewalEnabled(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->TdtUs:F

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;[J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkDiffResult:[J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstNego(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->firstNego:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTwtSetupTimeWithCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTwtSetupTimeWithCurrentBssid:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScpmDataProvider(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScpmDataProviderSchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProviderSchedPm:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWakeRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWakeRatio:F

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->resumptionPollCnt:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingRatio:F

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcapDuration(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->capDuration(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcapInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->capInterval(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mchangeSessionParameters(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->changeSessionParameters()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIfRxLinkSpeedDropped(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Landroid/net/wifi/WifiUsabilityStatsEntry;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkIfRxLinkSpeedDropped(Landroid/net/wifi/WifiUsabilityStatsEntry;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckIfRxTrafficStopped(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;JJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkIfRxTrafficStopped(JJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckResumption(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkResumption(FJF)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckScheduledPmAllowed(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkScheduledPmAllowed()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckScpmPolicy(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkScpmPolicy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckScpmPolicySchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkScpmPolicySchedPm()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSuspension(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkSuspension(FJF)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckTwtAllowed(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkTwtAllowed()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateSession(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->createSession()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mdeactivateTwt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->deactivateTwt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mdurationTC(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->durationTC(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetMacOuis(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getMacOuis(Ljava/lang/String;)Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$monConnection(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->onConnection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monDisconnection(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->onDisconnection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mprovideTwtStateToLinkInfoCollector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->provideTwtStateToLinkInfoCollector(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mreConfigureSessionParametersBoundary(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reConfigureSessionParametersBoundary()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mrenewIgnored(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->renewIgnored(II)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mstartAlgorithmPollWithNewInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->startAlgorithmPollWithNewInterval(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->startTrafficStatsPoll(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTrafficControlPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 1

    .line 1
    const/16 v0, 0x1770

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficControlPoll(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficStatsPoll(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mteardownSession(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownSession()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePackageInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updatePackageInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTwtIotIssueDetectionResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateTwtIotIssueDetectionResult(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateWifiUsabilityStatsEntry(Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->UNKNOWN_VERSION_H:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->p2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->awareConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    .line 78
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    .line 92
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMediatorGranted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    .line 106
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    .line 113
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWaitingGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    .line 120
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsLeakyApDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    .line 127
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsMcfMultiControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    .line 132
    const-string v0, "TWT_CONTROL"

    .line 133
    .line 134
    const-string v3, "scheduled-pm-control"

    .line 135
    .line 136
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    .line 141
    .line 142
    const/4 v0, 0x2

    .line 143
    new-array v3, v0, [Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 144
    .line 145
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 146
    .line 147
    const/4 v3, 0x0

    .line 148
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    .line 149
    .line 150
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSchedPmScpmOuis:Ljava/util/HashSet;

    .line 153
    .line 154
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmOUIs:Ljava/util/HashSet;

    .line 155
    .line 156
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    .line 157
    .line 158
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->minServicePeriodSCPM:I

    .line 159
    .line 160
    sget-object v4, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->UNKNOWN_VERSION_H:Ljava/lang/String;

    .line 161
    .line 162
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmTwtMonitorVersion:Ljava/lang/String;

    .line 163
    .line 164
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    .line 165
    .line 166
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmFirmwareVersion:Ljava/lang/String;

    .line 167
    .line 168
    const/16 v5, -0x41

    .line 169
    .line 170
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlSuspensionThresholdDbm:I

    .line 171
    .line 172
    const/16 v5, -0x3c

    .line 173
    .line 174
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlResumptionThresholdDbm:I

    .line 175
    .line 176
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmEnableCondition:I

    .line 177
    .line 178
    const/16 v5, 0x2800

    .line 179
    .line 180
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    .line 181
    .line 182
    const/16 v6, 0x2000

    .line 183
    .line 184
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 185
    .line 186
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 187
    .line 188
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtInterval:I

    .line 189
    .line 190
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtServicePeriod:I

    .line 191
    .line 192
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtSleepPeriod:I

    .line 193
    .line 194
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmMonitorVersionSchedPm:Ljava/lang/String;

    .line 195
    .line 196
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    .line 197
    .line 198
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmFirmwareVersionSchedPm:Ljava/lang/String;

    .line 199
    .line 200
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmEnableConditionSchedPm:I

    .line 201
    .line 202
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmInterval:I

    .line 203
    .line 204
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmServicePeriod:I

    .line 205
    .line 206
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmSleepPeriod:I

    .line 207
    .line 208
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTrafficLimit:I

    .line 209
    .line 210
    const/high16 v4, 0x3f800000    # 1.0f

    .line 211
    .line 212
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingRatio:F

    .line 213
    .line 214
    const v4, 0x3e4ccccd    # 0.2f

    .line 215
    .line 216
    .line 217
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingStep:F

    .line 218
    .line 219
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 220
    .line 221
    new-instance v3, Ljava/util/HashSet;

    .line 222
    .line 223
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 224
    .line 225
    .line 226
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaces:Ljava/util/HashSet;

    .line 227
    .line 228
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsFeatureEnabled:Z

    .line 229
    .line 230
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    .line 231
    .line 232
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    .line 233
    .line 234
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->firstNego:Z

    .line 235
    .line 236
    const/4 v3, 0x0

    .line 237
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->TdtUs:F

    .line 238
    .line 239
    const/16 v4, 0x9

    .line 240
    .line 241
    new-array v4, v4, [J

    .line 242
    .line 243
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkDiffResult:[J

    .line 244
    .line 245
    const-wide/16 v4, 0x0

    .line 246
    .line 247
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->resumptionPollCnt:J

    .line 248
    .line 249
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    .line 250
    .line 251
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWakeRatio:F

    .line 252
    .line 253
    new-instance v1, Ljava/util/HashMap;

    .line 254
    .line 255
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 256
    .line 257
    .line 258
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 259
    .line 260
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTwtSetupTimeWithCurrentBssid:J

    .line 261
    .line 262
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDataStallDuration:J

    .line 263
    .line 264
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRxPacketCount:J

    .line 265
    .line 266
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTxPacketCount:J

    .line 267
    .line 268
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTrafficStatsUpdatedTime:J

    .line 269
    .line 270
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRateDropDuration:J

    .line 271
    .line 272
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastLinkStatsUpdatedTime:J

    .line 273
    .line 274
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 275
    .line 276
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$4;

    .line 277
    .line 278
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 279
    .line 280
    .line 281
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 282
    .line 283
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$5;

    .line 284
    .line 285
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 286
    .line 287
    .line 288
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficControlCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 289
    .line 290
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;

    .line 291
    .line 292
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 293
    .line 294
    .line 295
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 296
    .line 297
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$7;

    .line 298
    .line 299
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$7;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 300
    .line 301
    .line 302
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediatorGrantCallback:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 303
    .line 304
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;

    .line 305
    .line 306
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$8;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 307
    .line 308
    .line 309
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediatorPerformanceQuery:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 310
    .line 311
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mContext:Landroid/content/Context;

    .line 312
    .line 313
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 314
    .line 315
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 316
    .line 317
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    check-cast p2, Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 322
    .line 323
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 324
    .line 325
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 326
    .line 327
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 328
    .line 329
    .line 330
    move-result-object p4

    .line 331
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 332
    .line 333
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 334
    .line 335
    .line 336
    move-result-object p4

    .line 337
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 338
    .line 339
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScheduledPmControl()Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 340
    .line 341
    .line 342
    move-result-object p4

    .line 343
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 344
    .line 345
    const-string p4, "SemWifiTwtThread"

    .line 346
    .line 347
    invoke-static {p4}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 348
    .line 349
    .line 350
    move-result-object p4

    .line 351
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 352
    .line 353
    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 354
    .line 355
    .line 356
    move-result-object p4

    .line 357
    invoke-direct {v1, p0, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Landroid/os/Looper;)V

    .line 358
    .line 359
    .line 360
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 361
    .line 362
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 363
    .line 364
    invoke-virtual {p5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->getSemServiceInfo()Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 365
    .line 366
    .line 367
    move-result-object p4

    .line 368
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 369
    .line 370
    new-instance p5, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 371
    .line 372
    invoke-direct {p5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;-><init>()V

    .line 373
    .line 374
    .line 375
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 376
    .line 377
    new-instance v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 378
    .line 379
    invoke-direct {v1, p5, p4}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;)V

    .line 380
    .line 381
    .line 382
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 383
    .line 384
    const-string p4, "wifinl80211"

    .line 385
    .line 386
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object p4

    .line 390
    check-cast p4, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 391
    .line 392
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 393
    .line 394
    const-string p4, "wifi"

    .line 395
    .line 396
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p4

    .line 400
    check-cast p4, Landroid/net/wifi/WifiManager;

    .line 401
    .line 402
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 403
    .line 404
    new-instance p4, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 405
    .line 406
    invoke-direct {p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;-><init>()V

    .line 407
    .line 408
    .line 409
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 410
    .line 411
    new-instance p4, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$1;

    .line 412
    .line 413
    invoke-direct {p4, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 414
    .line 415
    .line 416
    iget-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 417
    .line 418
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {p5, v1, p4}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 423
    .line 424
    .line 425
    new-instance p4, Landroid/content/IntentFilter;

    .line 426
    .line 427
    invoke-direct {p4}, Landroid/content/IntentFilter;-><init>()V

    .line 428
    .line 429
    .line 430
    const-string p5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 431
    .line 432
    invoke-virtual {p4, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    const-string p5, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 436
    .line 437
    invoke-virtual {p4, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    new-instance p5, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$2;

    .line 441
    .line 442
    invoke-direct {p5, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p1, p5, p4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 446
    .line 447
    .line 448
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 453
    .line 454
    new-instance p4, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$$ExternalSyntheticLambda0;

    .line 455
    .line 456
    invoke-direct {p4, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1, p4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 460
    .line 461
    .line 462
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$$ExternalSyntheticLambda1;

    .line 463
    .line 464
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 468
    .line 469
    .line 470
    const-string p1, "ro.product.model"

    .line 471
    .line 472
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getProductModelName(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mProductModelName:Ljava/lang/String;

    .line 481
    .line 482
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->setWifiScpmExecutorList()V

    .line 483
    .line 484
    .line 485
    new-instance p1, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    .line 490
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 491
    .line 492
    .line 493
    move-result-object p2

    .line 494
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string p2, "/misc/wifi/"

    .line 498
    .line 499
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    new-instance p2, Ljava/io/File;

    .line 507
    .line 508
    const-string p4, "twt_iot_ap_list.json"

    .line 509
    .line 510
    invoke-static {p1, p4}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIoTApListFile:Ljava/io/File;

    .line 518
    .line 519
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->loadDetectionResultsFromFile()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getTwtIotApInfoFileData(Ljava/lang/String;)Ljava/util/HashMap;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 528
    .line 529
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    const-string p2, "ro.product.first_api_level"

    .line 534
    .line 535
    const/4 p4, -0x1

    .line 536
    invoke-virtual {p1, p2, p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 537
    .line 538
    .line 539
    move-result p1

    .line 540
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mFirstApiLevel:I

    .line 541
    .line 542
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCtlFeatureMediator()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 547
    .line 548
    return-void
.end method

.method private capDuration(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 2
    .line 3
    if-ge p1, p0, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    const p0, 0xff00

    .line 7
    .line 8
    .line 9
    if-le p1, p0, :cond_1

    .line 10
    .line 11
    return p0

    .line 12
    :cond_1
    return p1
.end method

.method private capInterval(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    .line 2
    .line 3
    if-ge p1, p0, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    const p0, 0xfa000

    .line 7
    .line 8
    .line 9
    if-le p1, p0, :cond_1

    .line 10
    .line 11
    return p0

    .line 12
    :cond_1
    return p1
.end method

.method private changeSessionParameters()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 12
    .line 13
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    .line 14
    .line 15
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    .line 16
    .line 17
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->changeSessionParameters(Ljava/lang/String;III)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 34
    .line 35
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    .line 36
    .line 37
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    .line 38
    .line 39
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->changeSessionParameters(Ljava/lang/String;III)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private checkIfRxLinkSpeedDropped(Landroid/net/wifi/WifiUsabilityStatsEntry;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkSpeedMbps()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRxLinkSpeedMbps()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastLinkStatsUpdatedTime:J

    .line 18
    .line 19
    sub-long v4, v2, v4

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastLinkStatsUpdatedTime:J

    .line 22
    .line 23
    iget v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlSuspensionThresholdDbm:I

    .line 24
    .line 25
    if-le p1, v6, :cond_0

    .line 26
    .line 27
    const-wide/16 v6, 0xdac

    .line 28
    .line 29
    cmp-long p1, v4, v6

    .line 30
    .line 31
    if-gez p1, :cond_0

    .line 32
    .line 33
    const/16 p1, 0xc8

    .line 34
    .line 35
    if-le v0, p1, :cond_0

    .line 36
    .line 37
    const/16 p1, 0xa

    .line 38
    .line 39
    if-ge v1, p1, :cond_0

    .line 40
    .line 41
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRateDropDuration:J

    .line 42
    .line 43
    add-long/2addr v0, v4

    .line 44
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRateDropDuration:J

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRateDropDuration:J

    .line 50
    .line 51
    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRateDropDuration:J

    .line 52
    .line 53
    const-wide/16 v4, 0x2710

    .line 54
    .line 55
    cmp-long p1, v0, v4

    .line 56
    .line 57
    if-lez p1, :cond_1

    .line 58
    .line 59
    iget-wide p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTwtSetupTimeWithCurrentBssid:J

    .line 60
    .line 61
    sub-long/2addr v2, p0

    .line 62
    const-wide/32 p0, 0x493e0

    .line 63
    .line 64
    .line 65
    cmp-long p0, v2, p0

    .line 66
    .line 67
    if-gez p0, :cond_1

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    return p0

    .line 71
    :cond_1
    const/4 p0, 0x0

    .line 72
    return p0
.end method

.method private checkIfRxTrafficStopped(JJ)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTrafficStatsUpdatedTime:J

    .line 16
    .line 17
    sub-long v4, v2, v4

    .line 18
    .line 19
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTrafficStatsUpdatedTime:J

    .line 20
    .line 21
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRxPacketCount:J

    .line 22
    .line 23
    sub-long v6, p1, v6

    .line 24
    .line 25
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTxPacketCount:J

    .line 26
    .line 27
    sub-long v8, p3, v8

    .line 28
    .line 29
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRxPacketCount:J

    .line 30
    .line 31
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTxPacketCount:J

    .line 32
    .line 33
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 34
    .line 35
    iget p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlSuspensionThresholdDbm:I

    .line 36
    .line 37
    const-wide/16 p3, 0x0

    .line 38
    .line 39
    if-le p1, p2, :cond_1

    .line 40
    .line 41
    const-wide/16 p1, 0xdac

    .line 42
    .line 43
    cmp-long p1, v4, p1

    .line 44
    .line 45
    if-gez p1, :cond_1

    .line 46
    .line 47
    cmp-long p1, v6, p3

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    const-wide/16 p1, 0x1

    .line 52
    .line 53
    cmp-long p1, v8, p1

    .line 54
    .line 55
    if-lez p1, :cond_1

    .line 56
    .line 57
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDataStallDuration:J

    .line 58
    .line 59
    add-long/2addr p1, v4

    .line 60
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDataStallDuration:J

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDataStallDuration:J

    .line 64
    .line 65
    :goto_0
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDataStallDuration:J

    .line 66
    .line 67
    const-wide/16 p3, 0x1770

    .line 68
    .line 69
    cmp-long p1, p1, p3

    .line 70
    .line 71
    if-lez p1, :cond_2

    .line 72
    .line 73
    iget-wide p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTwtSetupTimeWithCurrentBssid:J

    .line 74
    .line 75
    sub-long/2addr v2, p0

    .line 76
    const-wide/32 p0, 0xea60

    .line 77
    .line 78
    .line 79
    cmp-long p0, v2, p0

    .line 80
    .line 81
    if-gez p0, :cond_2

    .line 82
    .line 83
    const/4 p0, 0x1

    .line 84
    return p0

    .line 85
    :cond_2
    return v1
.end method

.method private checkResumption(FJF)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 3
    .line 4
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 5
    .line 6
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlResumptionThresholdDbm:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const v1, 0x3f333333    # 0.7f

    .line 15
    .line 16
    .line 17
    cmpl-float v1, p1, v1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    cmp-long p2, p2, v3

    .line 28
    .line 29
    if-gez p2, :cond_2

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 33
    .line 34
    return v0

    .line 35
    :cond_2
    cmpl-float p1, p1, p4

    .line 36
    .line 37
    if-lez p1, :cond_3

    .line 38
    .line 39
    const/16 p1, 0x8

    .line 40
    .line 41
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 42
    .line 43
    return v0

    .line 44
    :cond_3
    return v2
.end method

.method private checkScheduledPmAllowed()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v3, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->UNKNOWN_VERSION_H:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiDriverVersion()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiFirmwareVersion()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->driverVersionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmFirmwareVersionSchedPm:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    const-string v4, "3.2"

    .line 42
    .line 43
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmMonitorVersionSchedPm:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 52
    .line 53
    const-string v5, "SchedPm Compliance violation: ver. "

    .line 54
    .line 55
    const-string v6, " "

    .line 56
    .line 57
    invoke-static {v5, v0, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, v5, v6, v3, v6}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmFirmwareVersionSchedPm:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, " 3.2 "

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmMonitorVersionSchedPm:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v4, p0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    return v2

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSchedPmScpmOuis:Ljava/util/HashSet;

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    .line 94
    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->containsNotAllowedVendorOui(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 104
    .line 105
    const-string v0, "SchedPm Compliance violation: OUI"

    .line 106
    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    return v2

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    .line 112
    .line 113
    if-nez v0, :cond_3

    .line 114
    .line 115
    return v2

    .line 116
    :cond_3
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmEnableConditionSchedPm:I

    .line 117
    .line 118
    if-ltz v0, :cond_4

    .line 119
    .line 120
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->isTwtAllowedByMacAddress(I)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_4

    .line 125
    .line 126
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 127
    .line 128
    const-string v0, "SchedPm Compliance violation: MAC"

    .line 129
    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    return v2

    .line 134
    :cond_4
    const/4 p0, 0x1

    .line 135
    return p0
.end method

.method private checkScpmPolicy()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, ","

    .line 4
    .line 5
    const-string v2, "SCPM: descriptor & stream close failure"

    .line 6
    .line 7
    const-string v3, "SCPM: new policy "

    .line 8
    .line 9
    const-string v4, "SCPM: null file descriptor "

    .line 10
    .line 11
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 17
    .line 18
    const-string v1, "SCPM: null data provider"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 v7, 0x0

    .line 25
    :try_start_0
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    aget-object v8, v8, v9

    .line 29
    .line 30
    invoke-interface {v5, v8}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    .line 33
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 34
    const-string v8, " "

    .line 35
    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 45
    .line 46
    new-instance v9, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v3, v0, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    .line 72
    .line 73
    if-eqz v5, :cond_17

    .line 74
    .line 75
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 80
    .line 81
    invoke-virtual {v0, v2, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_a

    .line 85
    .line 86
    :catchall_1
    move-exception v0

    .line 87
    move-object v4, v7

    .line 88
    move-object v10, v4

    .line 89
    :goto_1
    move-object v11, v10

    .line 90
    :goto_2
    move-object v7, v5

    .line 91
    goto/16 :goto_9

    .line 92
    .line 93
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    .line 94
    .line 95
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .line 101
    .line 102
    :try_start_4
    new-instance v10, Ljava/io/DataInputStream;

    .line 103
    .line 104
    invoke-direct {v10, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 105
    .line 106
    .line 107
    :try_start_5
    new-instance v11, Ljava/io/BufferedReader;

    .line 108
    .line 109
    new-instance v12, Ljava/io/InputStreamReader;

    .line 110
    .line 111
    invoke-direct {v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 115
    .line 116
    .line 117
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-nez v7, :cond_2

    .line 122
    .line 123
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 124
    .line 125
    const-string v3, "SCPM: empty data"

    .line 126
    .line 127
    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 128
    .line 129
    .line 130
    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catchall_2
    move-exception v0

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 150
    const-string v12, ""

    .line 151
    .line 152
    const/4 v13, 0x2

    .line 153
    if-eqz v7, :cond_3

    .line 154
    .line 155
    :try_start_9
    array-length v14, v7

    .line 156
    if-ne v14, v13, :cond_3

    .line 157
    .line 158
    aget-object v7, v7, v6

    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    goto :goto_3

    .line 165
    :cond_3
    move-object v7, v12

    .line 166
    :goto_3
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    if-eqz v12, :cond_4

    .line 171
    .line 172
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 173
    .line 174
    const-string v3, "SCPM: wrong policy version"

    .line 175
    .line 176
    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 177
    .line 178
    .line 179
    :try_start_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_4
    :try_start_b
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    .line 190
    .line 191
    if-eqz v12, :cond_5

    .line 192
    .line 193
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    if-eqz v12, :cond_5

    .line 198
    .line 199
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmOUIs:Ljava/util/HashSet;

    .line 200
    .line 201
    if-eqz v12, :cond_5

    .line 202
    .line 203
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 204
    .line 205
    const-string v3, "SCPM: existing policy"

    .line 206
    .line 207
    invoke-virtual {v0, v3, v13}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 208
    .line 209
    .line 210
    :try_start_c
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_5
    :try_start_d
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 222
    .line 223
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v12, v3, v13}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    .line 231
    .line 232
    sget-object v3, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->UNKNOWN_VERSION_H:Ljava/lang/String;

    .line 233
    .line 234
    iput-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmTwtMonitorVersion:Ljava/lang/String;

    .line 235
    .line 236
    iput-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    .line 237
    .line 238
    iput-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmFirmwareVersion:Ljava/lang/String;

    .line 239
    .line 240
    new-instance v3, Ljava/util/HashSet;

    .line 241
    .line 242
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 243
    .line 244
    .line 245
    iput-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmOUIs:Ljava/util/HashSet;

    .line 246
    .line 247
    :cond_6
    :goto_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    if-eqz v3, :cond_13

    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    if-eqz v3, :cond_6

    .line 262
    .line 263
    array-length v7, v3

    .line 264
    const/4 v12, 0x3

    .line 265
    if-ge v7, v12, :cond_7

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_7
    aget-object v7, v3, v9

    .line 269
    .line 270
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 275
    .line 276
    .line 277
    move-result v14

    .line 278
    const v15, -0x140f2c77

    .line 279
    .line 280
    .line 281
    if-eq v14, v15, :cond_a

    .line 282
    .line 283
    const v15, 0x13323

    .line 284
    .line 285
    .line 286
    if-eq v14, v15, :cond_9

    .line 287
    .line 288
    const v15, 0x782db4b8

    .line 289
    .line 290
    .line 291
    if-eq v14, v15, :cond_8

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_8
    const-string v14, "Version"

    .line 295
    .line 296
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-eqz v7, :cond_b

    .line 301
    .line 302
    move v7, v9

    .line 303
    goto :goto_6

    .line 304
    :cond_9
    const-string v14, "OUI"

    .line 305
    .line 306
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    if-eqz v7, :cond_b

    .line 311
    .line 312
    move v7, v6

    .line 313
    goto :goto_6

    .line 314
    :cond_a
    const-string v14, "Parameter"

    .line 315
    .line 316
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    if-eqz v7, :cond_b

    .line 321
    .line 322
    move v7, v13

    .line 323
    goto :goto_6

    .line 324
    :cond_b
    :goto_5
    const/4 v7, -0x1

    .line 325
    :goto_6
    const/16 v16, 0x6

    .line 326
    .line 327
    const/16 v17, 0x5

    .line 328
    .line 329
    const/16 v18, 0x4

    .line 330
    .line 331
    if-eqz v7, :cond_11

    .line 332
    .line 333
    if-eq v7, v6, :cond_10

    .line 334
    .line 335
    if-eq v7, v13, :cond_c

    .line 336
    .line 337
    move/from16 v22, v13

    .line 338
    .line 339
    goto/16 :goto_8

    .line 340
    .line 341
    :cond_c
    aget-object v7, v3, v6

    .line 342
    .line 343
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    const-string v9, "AI_INTTERFACE_LONG"

    .line 348
    .line 349
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    move/from16 v19, v12

    .line 354
    .line 355
    const/16 v12, 0xc

    .line 356
    .line 357
    const/16 v20, 0xb

    .line 358
    .line 359
    const/16 v21, 0xa

    .line 360
    .line 361
    move/from16 v22, v13

    .line 362
    .line 363
    const/16 v13, 0x9

    .line 364
    .line 365
    if-eqz v9, :cond_d

    .line 366
    .line 367
    array-length v7, v3

    .line 368
    const/16 v9, 0xf

    .line 369
    .line 370
    if-lt v7, v9, :cond_12

    .line 371
    .line 372
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 373
    .line 374
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 375
    .line 376
    aget-object v9, v3, v22

    .line 377
    .line 378
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    const/16 v23, 0x8

    .line 383
    .line 384
    const/16 v24, 0x7

    .line 385
    .line 386
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 387
    .line 388
    .line 389
    move-result-wide v14

    .line 390
    iput-wide v14, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->overHead_Tdt:J

    .line 391
    .line 392
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 393
    .line 394
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 395
    .line 396
    aget-object v9, v3, v19

    .line 397
    .line 398
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 403
    .line 404
    .line 405
    move-result-wide v14

    .line 406
    iput-wide v14, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->constOverHead_Tdt:J

    .line 407
    .line 408
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 409
    .line 410
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 411
    .line 412
    aget-object v9, v3, v18

    .line 413
    .line 414
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 419
    .line 420
    .line 421
    move-result-wide v14

    .line 422
    iput-wide v14, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetQosPatchTimeThd_Tdt:J

    .line 423
    .line 424
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 425
    .line 426
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 427
    .line 428
    aget-object v9, v3, v17

    .line 429
    .line 430
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 435
    .line 436
    .line 437
    move-result-wide v14

    .line 438
    iput-wide v14, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetAbnormalAPTimeThd_Tdt:J

    .line 439
    .line 440
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 441
    .line 442
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 443
    .line 444
    aget-object v9, v3, v16

    .line 445
    .line 446
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v9

    .line 450
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 451
    .line 452
    .line 453
    move-result-wide v14

    .line 454
    iput-wide v14, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh1_Tdt:J

    .line 455
    .line 456
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 457
    .line 458
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 459
    .line 460
    aget-object v9, v3, v24

    .line 461
    .line 462
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 467
    .line 468
    .line 469
    move-result-wide v14

    .line 470
    iput-wide v14, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh2_Tdt:J

    .line 471
    .line 472
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 473
    .line 474
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 475
    .line 476
    aget-object v9, v3, v23

    .line 477
    .line 478
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v9

    .line 482
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 483
    .line 484
    .line 485
    move-result-wide v14

    .line 486
    iput-wide v14, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSGoodInterTime_Tdt:J

    .line 487
    .line 488
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 489
    .line 490
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 491
    .line 492
    aget-object v9, v3, v13

    .line 493
    .line 494
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v9

    .line 498
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 499
    .line 500
    .line 501
    move-result-wide v13

    .line 502
    iput-wide v13, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT1_Tdt:J

    .line 503
    .line 504
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 505
    .line 506
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 507
    .line 508
    aget-object v9, v3, v21

    .line 509
    .line 510
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 515
    .line 516
    .line 517
    move-result-wide v13

    .line 518
    iput-wide v13, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT2_Tdt:J

    .line 519
    .line 520
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 521
    .line 522
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 523
    .line 524
    aget-object v9, v3, v20

    .line 525
    .line 526
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v9

    .line 530
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 531
    .line 532
    .line 533
    move-result-wide v13

    .line 534
    iput-wide v13, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT1_Tdt:J

    .line 535
    .line 536
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 537
    .line 538
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 539
    .line 540
    aget-object v9, v3, v12

    .line 541
    .line 542
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v9

    .line 546
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 547
    .line 548
    .line 549
    move-result-wide v12

    .line 550
    iput-wide v12, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT2_Tdt:J

    .line 551
    .line 552
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 553
    .line 554
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 555
    .line 556
    const/16 v9, 0xd

    .line 557
    .line 558
    aget-object v9, v3, v9

    .line 559
    .line 560
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v9

    .line 564
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 565
    .line 566
    .line 567
    move-result-wide v12

    .line 568
    iput-wide v12, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT1_Tdt:J

    .line 569
    .line 570
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 571
    .line 572
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 573
    .line 574
    const/16 v9, 0xe

    .line 575
    .line 576
    aget-object v3, v3, v9

    .line 577
    .line 578
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 583
    .line 584
    .line 585
    move-result-wide v12

    .line 586
    iput-wide v12, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT2_Tdt:J

    .line 587
    .line 588
    goto/16 :goto_8

    .line 589
    .line 590
    :cond_d
    const/16 v23, 0x8

    .line 591
    .line 592
    const/16 v24, 0x7

    .line 593
    .line 594
    const-string v9, "AI_INTTERFACE_INT"

    .line 595
    .line 596
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v9

    .line 600
    if-eqz v9, :cond_e

    .line 601
    .line 602
    array-length v7, v3

    .line 603
    if-lt v7, v12, :cond_12

    .line 604
    .line 605
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 606
    .line 607
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 608
    .line 609
    aget-object v9, v3, v22

    .line 610
    .line 611
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v9

    .line 615
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    move-result v9

    .line 619
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCntThd_Tdt:I

    .line 620
    .line 621
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 622
    .line 623
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 624
    .line 625
    aget-object v9, v3, v19

    .line 626
    .line 627
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v9

    .line 631
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 632
    .line 633
    .line 634
    move-result v9

    .line 635
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd1_Tdt:I

    .line 636
    .line 637
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 638
    .line 639
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 640
    .line 641
    aget-object v9, v3, v18

    .line 642
    .line 643
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v9

    .line 647
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 648
    .line 649
    .line 650
    move-result v9

    .line 651
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd2_Tdt:I

    .line 652
    .line 653
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 654
    .line 655
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 656
    .line 657
    aget-object v9, v3, v17

    .line 658
    .line 659
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v9

    .line 663
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 664
    .line 665
    .line 666
    move-result v9

    .line 667
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd3_Tdt:I

    .line 668
    .line 669
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 670
    .line 671
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 672
    .line 673
    aget-object v9, v3, v16

    .line 674
    .line 675
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v9

    .line 679
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    move-result v9

    .line 683
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSAnomalyCntThd_Tdt:I

    .line 684
    .line 685
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 686
    .line 687
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 688
    .line 689
    aget-object v9, v3, v24

    .line 690
    .line 691
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v9

    .line 695
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    move-result v9

    .line 699
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPCntThd_Tdt:I

    .line 700
    .line 701
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 702
    .line 703
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 704
    .line 705
    aget-object v9, v3, v23

    .line 706
    .line 707
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v9

    .line 711
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 712
    .line 713
    .line 714
    move-result v9

    .line 715
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPContCntThd_Tdt:I

    .line 716
    .line 717
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 718
    .line 719
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 720
    .line 721
    aget-object v9, v3, v13

    .line 722
    .line 723
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v9

    .line 727
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 728
    .line 729
    .line 730
    move-result v9

    .line 731
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCca1_Tdt:I

    .line 732
    .line 733
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 734
    .line 735
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 736
    .line 737
    aget-object v9, v3, v21

    .line 738
    .line 739
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v9

    .line 743
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 744
    .line 745
    .line 746
    move-result v9

    .line 747
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acCca1_Tdt:I

    .line 748
    .line 749
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 750
    .line 751
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 752
    .line 753
    aget-object v3, v3, v20

    .line 754
    .line 755
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 760
    .line 761
    .line 762
    move-result v3

    .line 763
    iput v3, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcCca1_Tdt:I

    .line 764
    .line 765
    goto/16 :goto_8

    .line 766
    .line 767
    :cond_e
    const-string v9, "AI_INTTERFACE_FLOAT"

    .line 768
    .line 769
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v9

    .line 773
    if-eqz v9, :cond_f

    .line 774
    .line 775
    array-length v7, v3

    .line 776
    if-lt v7, v13, :cond_12

    .line 777
    .line 778
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 779
    .line 780
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 781
    .line 782
    aget-object v9, v3, v22

    .line 783
    .line 784
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v9

    .line 788
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 789
    .line 790
    .line 791
    move-result v9

    .line 792
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->congestCoe_Tdt:F

    .line 793
    .line 794
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 795
    .line 796
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 797
    .line 798
    aget-object v9, v3, v19

    .line 799
    .line 800
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v9

    .line 804
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 805
    .line 806
    .line 807
    move-result v9

    .line 808
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd1_Tdt:F

    .line 809
    .line 810
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 811
    .line 812
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 813
    .line 814
    aget-object v9, v3, v18

    .line 815
    .line 816
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v9

    .line 820
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 821
    .line 822
    .line 823
    move-result v9

    .line 824
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd2_Tdt:F

    .line 825
    .line 826
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 827
    .line 828
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 829
    .line 830
    aget-object v9, v3, v17

    .line 831
    .line 832
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v9

    .line 836
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 837
    .line 838
    .line 839
    move-result v9

    .line 840
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd3_Tdt:F

    .line 841
    .line 842
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 843
    .line 844
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 845
    .line 846
    aget-object v9, v3, v16

    .line 847
    .line 848
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v9

    .line 852
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 853
    .line 854
    .line 855
    move-result v9

    .line 856
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor1_Tdt:F

    .line 857
    .line 858
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 859
    .line 860
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 861
    .line 862
    aget-object v9, v3, v24

    .line 863
    .line 864
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v9

    .line 868
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 869
    .line 870
    .line 871
    move-result v9

    .line 872
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor2_Tdt:F

    .line 873
    .line 874
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 875
    .line 876
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 877
    .line 878
    aget-object v3, v3, v23

    .line 879
    .line 880
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    iput v3, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor3_Tdt:F

    .line 889
    .line 890
    goto/16 :goto_8

    .line 891
    .line 892
    :cond_f
    const-string v9, "SP_DURATION"

    .line 893
    .line 894
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    move-result v7

    .line 898
    if-eqz v7, :cond_12

    .line 899
    .line 900
    array-length v7, v3

    .line 901
    if-lt v7, v12, :cond_12

    .line 902
    .line 903
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 904
    .line 905
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 906
    .line 907
    aget-object v9, v3, v22

    .line 908
    .line 909
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v9

    .line 913
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 914
    .line 915
    .line 916
    move-result v9

    .line 917
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowGuardThr:F

    .line 918
    .line 919
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 920
    .line 921
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 922
    .line 923
    aget-object v9, v3, v19

    .line 924
    .line 925
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v9

    .line 929
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 930
    .line 931
    .line 932
    move-result v9

    .line 933
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardLoEpsThr:F

    .line 934
    .line 935
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 936
    .line 937
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 938
    .line 939
    aget-object v9, v3, v18

    .line 940
    .line 941
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v9

    .line 945
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 946
    .line 947
    .line 948
    move-result v9

    .line 949
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardHiEpsThr:F

    .line 950
    .line 951
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 952
    .line 953
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 954
    .line 955
    aget-object v9, v3, v17

    .line 956
    .line 957
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v9

    .line 961
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 962
    .line 963
    .line 964
    move-result-wide v14

    .line 965
    iput-wide v14, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mCongestionDivider:J

    .line 966
    .line 967
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 968
    .line 969
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 970
    .line 971
    aget-object v9, v3, v16

    .line 972
    .line 973
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v9

    .line 977
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 978
    .line 979
    .line 980
    move-result v9

    .line 981
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowThresholdPercent:F

    .line 982
    .line 983
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 984
    .line 985
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 986
    .line 987
    aget-object v9, v3, v24

    .line 988
    .line 989
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v9

    .line 993
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 994
    .line 995
    .line 996
    move-result v9

    .line 997
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mEpsilonUpdateThreshold:F

    .line 998
    .line 999
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 1000
    .line 1001
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1002
    .line 1003
    aget-object v9, v3, v23

    .line 1004
    .line 1005
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v9

    .line 1009
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1010
    .line 1011
    .line 1012
    move-result v9

    .line 1013
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mMinSPDuration:I

    .line 1014
    .line 1015
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 1016
    .line 1017
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1018
    .line 1019
    aget-object v9, v3, v13

    .line 1020
    .line 1021
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v9

    .line 1025
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1026
    .line 1027
    .line 1028
    move-result v9

    .line 1029
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableTdtWeight:F

    .line 1030
    .line 1031
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 1032
    .line 1033
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1034
    .line 1035
    aget-object v9, v3, v21

    .line 1036
    .line 1037
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v9

    .line 1041
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1042
    .line 1043
    .line 1044
    move-result v9

    .line 1045
    iput v9, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowTdtWeight:F

    .line 1046
    .line 1047
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 1048
    .line 1049
    iget-object v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1050
    .line 1051
    aget-object v3, v3, v20

    .line 1052
    .line 1053
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v3

    .line 1057
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    move-result v3

    .line 1061
    iput v3, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mTdtUpdateMode:I

    .line 1062
    .line 1063
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 1064
    .line 1065
    iget-object v3, v3, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1066
    .line 1067
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->updateParameters()V

    .line 1068
    .line 1069
    .line 1070
    goto :goto_8

    .line 1071
    :cond_10
    move/from16 v22, v13

    .line 1072
    .line 1073
    move/from16 v7, v22

    .line 1074
    .line 1075
    :goto_7
    array-length v9, v3

    .line 1076
    if-ge v7, v9, :cond_12

    .line 1077
    .line 1078
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmOUIs:Ljava/util/HashSet;

    .line 1079
    .line 1080
    aget-object v12, v3, v7

    .line 1081
    .line 1082
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v12

    .line 1086
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1087
    .line 1088
    .line 1089
    add-int/lit8 v7, v7, 0x1

    .line 1090
    .line 1091
    goto :goto_7

    .line 1092
    :cond_11
    move/from16 v19, v12

    .line 1093
    .line 1094
    move/from16 v22, v13

    .line 1095
    .line 1096
    const/16 v23, 0x8

    .line 1097
    .line 1098
    const/16 v24, 0x7

    .line 1099
    .line 1100
    aget-object v7, v3, v6

    .line 1101
    .line 1102
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v7

    .line 1106
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v7

    .line 1110
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mProductModelName:Ljava/lang/String;

    .line 1111
    .line 1112
    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1113
    .line 1114
    .line 1115
    move-result v7

    .line 1116
    if-eqz v7, :cond_12

    .line 1117
    .line 1118
    array-length v7, v3

    .line 1119
    move/from16 v9, v23

    .line 1120
    .line 1121
    if-lt v7, v9, :cond_12

    .line 1122
    .line 1123
    aget-object v7, v3, v22

    .line 1124
    .line 1125
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v7

    .line 1129
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    .line 1130
    .line 1131
    aget-object v7, v3, v19

    .line 1132
    .line 1133
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v7

    .line 1137
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmFirmwareVersion:Ljava/lang/String;

    .line 1138
    .line 1139
    aget-object v7, v3, v18

    .line 1140
    .line 1141
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v7

    .line 1145
    iput-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmTwtMonitorVersion:Ljava/lang/String;

    .line 1146
    .line 1147
    aget-object v7, v3, v17

    .line 1148
    .line 1149
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v7

    .line 1153
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1154
    .line 1155
    .line 1156
    move-result v7

    .line 1157
    iput v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlSuspensionThresholdDbm:I

    .line 1158
    .line 1159
    aget-object v7, v3, v16

    .line 1160
    .line 1161
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v7

    .line 1165
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1166
    .line 1167
    .line 1168
    move-result v7

    .line 1169
    iput v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlResumptionThresholdDbm:I

    .line 1170
    .line 1171
    aget-object v3, v3, v24

    .line 1172
    .line 1173
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v3

    .line 1177
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1178
    .line 1179
    .line 1180
    move-result v3

    .line 1181
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmEnableCondition:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1182
    .line 1183
    :cond_12
    :goto_8
    move/from16 v13, v22

    .line 1184
    .line 1185
    const/4 v9, 0x0

    .line 1186
    goto/16 :goto_4

    .line 1187
    .line 1188
    :cond_13
    :try_start_e
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1195
    .line 1196
    .line 1197
    goto/16 :goto_0

    .line 1198
    .line 1199
    :catchall_3
    move-exception v0

    .line 1200
    move-object v11, v7

    .line 1201
    goto/16 :goto_2

    .line 1202
    .line 1203
    :catchall_4
    move-exception v0

    .line 1204
    move-object v10, v7

    .line 1205
    goto/16 :goto_1

    .line 1206
    .line 1207
    :catchall_5
    move-exception v0

    .line 1208
    move-object v4, v7

    .line 1209
    move-object v10, v4

    .line 1210
    move-object v11, v10

    .line 1211
    :goto_9
    :try_start_f
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1212
    .line 1213
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    .line 1217
    .line 1218
    const-string v8, "SCPM: policy query failure "

    .line 1219
    .line 1220
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    invoke-virtual {v3, v0, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1235
    .line 1236
    .line 1237
    if-eqz v11, :cond_14

    .line 1238
    .line 1239
    :try_start_10
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 1240
    .line 1241
    .line 1242
    :cond_14
    if-eqz v10, :cond_15

    .line 1243
    .line 1244
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 1245
    .line 1246
    .line 1247
    :cond_15
    if-eqz v4, :cond_16

    .line 1248
    .line 1249
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1250
    .line 1251
    .line 1252
    :cond_16
    if-eqz v7, :cond_17

    .line 1253
    .line 1254
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1255
    .line 1256
    .line 1257
    :cond_17
    :goto_a
    return-void

    .line 1258
    :catchall_6
    move-exception v0

    .line 1259
    if-eqz v11, :cond_18

    .line 1260
    .line 1261
    :try_start_11
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 1262
    .line 1263
    .line 1264
    :cond_18
    if-eqz v10, :cond_19

    .line 1265
    .line 1266
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 1267
    .line 1268
    .line 1269
    :cond_19
    if-eqz v4, :cond_1a

    .line 1270
    .line 1271
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1272
    .line 1273
    .line 1274
    :cond_1a
    if-eqz v7, :cond_1b

    .line 1275
    .line 1276
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 1277
    .line 1278
    .line 1279
    goto :goto_b

    .line 1280
    :catchall_7
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1281
    .line 1282
    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1283
    .line 1284
    .line 1285
    :cond_1b
    :goto_b
    throw v0
.end method

.method private checkScpmPolicySchedPm()V
    .locals 15

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    const-string v1, "SCPM SchedPM: descriptor & stream close failure"

    .line 4
    .line 5
    const-string v2, "SCPM SchedPM: new policy "

    .line 6
    .line 7
    const-string v3, "SCPM SchedPM: null file descriptor "

    .line 8
    .line 9
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProviderSchedPm:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 15
    .line 16
    const-string v0, "SCPM SchedPM: null data provider"

    .line 17
    .line 18
    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v6, 0x0

    .line 23
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    .line 24
    .line 25
    aget-object v7, v7, v5

    .line 26
    .line 27
    invoke-interface {v4, v7}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 31
    const-string v7, " "

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDataProviderSchedPm:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 42
    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .line 69
    .line 70
    if-eqz v4, :cond_11

    .line 71
    .line 72
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 77
    .line 78
    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :catchall_1
    move-exception v0

    .line 84
    move-object v3, v6

    .line 85
    move-object v8, v3

    .line 86
    :goto_1
    move-object v9, v8

    .line 87
    :goto_2
    move-object v6, v4

    .line 88
    goto/16 :goto_8

    .line 89
    .line 90
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    .line 91
    .line 92
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    .line 98
    .line 99
    :try_start_4
    new-instance v8, Ljava/io/DataInputStream;

    .line 100
    .line 101
    invoke-direct {v8, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 102
    .line 103
    .line 104
    :try_start_5
    new-instance v9, Ljava/io/BufferedReader;

    .line 105
    .line 106
    new-instance v10, Ljava/io/InputStreamReader;

    .line 107
    .line 108
    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 112
    .line 113
    .line 114
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    if-nez v6, :cond_2

    .line 119
    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 121
    .line 122
    const-string v2, "SCPM SchedPM: empty data"

    .line 123
    .line 124
    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 125
    .line 126
    .line 127
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catchall_2
    move-exception v0

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 147
    const-string v10, ""

    .line 148
    .line 149
    const/4 v11, 0x2

    .line 150
    if-eqz v6, :cond_3

    .line 151
    .line 152
    :try_start_9
    array-length v12, v6

    .line 153
    if-ne v12, v11, :cond_3

    .line 154
    .line 155
    aget-object v6, v6, v5

    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    goto :goto_3

    .line 162
    :cond_3
    move-object v6, v10

    .line 163
    :goto_3
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-eqz v10, :cond_4

    .line 168
    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 170
    .line 171
    const-string v2, "SCPM SchedPM: wrong policy version"

    .line 172
    .line 173
    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 174
    .line 175
    .line 176
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_4
    :try_start_b
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v10, :cond_5

    .line 189
    .line 190
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    if-eqz v10, :cond_5

    .line 195
    .line 196
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSchedPmScpmOuis:Ljava/util/HashSet;

    .line 197
    .line 198
    if-eqz v10, :cond_5

    .line 199
    .line 200
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 201
    .line 202
    const-string v2, "SCPM SchedPM: existing policy"

    .line 203
    .line 204
    invoke-virtual {v0, v2, v11}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 205
    .line 206
    .line 207
    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 214
    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_5
    :try_start_d
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 219
    .line 220
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v10, v2, v11}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    iput-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    .line 228
    .line 229
    sget-object v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->UNKNOWN_VERSION_H:Ljava/lang/String;

    .line 230
    .line 231
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmMonitorVersionSchedPm:Ljava/lang/String;

    .line 232
    .line 233
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    .line 234
    .line 235
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmFirmwareVersionSchedPm:Ljava/lang/String;

    .line 236
    .line 237
    new-instance v2, Ljava/util/HashSet;

    .line 238
    .line 239
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 240
    .line 241
    .line 242
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSchedPmScpmOuis:Ljava/util/HashSet;

    .line 243
    .line 244
    :cond_6
    :goto_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    if-eqz v2, :cond_d

    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    if-eqz v2, :cond_6

    .line 259
    .line 260
    array-length v6, v2

    .line 261
    const/4 v10, 0x3

    .line 262
    if-ge v6, v10, :cond_7

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_7
    const/4 v6, 0x0

    .line 266
    aget-object v12, v2, v6

    .line 267
    .line 268
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 273
    .line 274
    .line 275
    move-result v13

    .line 276
    const v14, 0x13323

    .line 277
    .line 278
    .line 279
    if-eq v13, v14, :cond_9

    .line 280
    .line 281
    const v14, 0x782db4b8

    .line 282
    .line 283
    .line 284
    if-eq v13, v14, :cond_8

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_8
    const-string v13, "Version"

    .line 288
    .line 289
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    if-eqz v12, :cond_a

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_9
    const-string v6, "OUI"

    .line 297
    .line 298
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    if-eqz v6, :cond_a

    .line 303
    .line 304
    move v6, v5

    .line 305
    goto :goto_6

    .line 306
    :cond_a
    :goto_5
    const/4 v6, -0x1

    .line 307
    :goto_6
    if-eqz v6, :cond_c

    .line 308
    .line 309
    if-eq v6, v5, :cond_b

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_b
    move v6, v11

    .line 313
    :goto_7
    array-length v10, v2

    .line 314
    if-ge v6, v10, :cond_6

    .line 315
    .line 316
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSchedPmScpmOuis:Ljava/util/HashSet;

    .line 317
    .line 318
    aget-object v12, v2, v6

    .line 319
    .line 320
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v12

    .line 324
    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    add-int/lit8 v6, v6, 0x1

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_c
    aget-object v6, v2, v5

    .line 331
    .line 332
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    iget-object v12, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mProductModelName:Ljava/lang/String;

    .line 341
    .line 342
    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    if-eqz v6, :cond_6

    .line 347
    .line 348
    array-length v6, v2

    .line 349
    const/4 v12, 0x6

    .line 350
    if-lt v6, v12, :cond_6

    .line 351
    .line 352
    aget-object v6, v2, v11

    .line 353
    .line 354
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    iput-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmDriverVersionSchedPm:Ljava/lang/String;

    .line 359
    .line 360
    aget-object v6, v2, v10

    .line 361
    .line 362
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    iput-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmFirmwareVersionSchedPm:Ljava/lang/String;

    .line 367
    .line 368
    const/4 v6, 0x4

    .line 369
    aget-object v6, v2, v6

    .line 370
    .line 371
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    iput-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmMonitorVersionSchedPm:Ljava/lang/String;

    .line 376
    .line 377
    const/4 v6, 0x5

    .line 378
    aget-object v2, v2, v6

    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmEnableConditionSchedPm:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 389
    .line 390
    goto/16 :goto_4

    .line 391
    .line 392
    :cond_d
    :try_start_e
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 399
    .line 400
    .line 401
    goto/16 :goto_0

    .line 402
    .line 403
    :catchall_3
    move-exception v0

    .line 404
    move-object v9, v6

    .line 405
    goto/16 :goto_2

    .line 406
    .line 407
    :catchall_4
    move-exception v0

    .line 408
    move-object v8, v6

    .line 409
    goto/16 :goto_1

    .line 410
    .line 411
    :catchall_5
    move-exception v0

    .line 412
    move-object v3, v6

    .line 413
    move-object v8, v3

    .line 414
    move-object v9, v8

    .line 415
    :goto_8
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 416
    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    const-string v7, "SCPM SchedPM: policy query failure "

    .line 423
    .line 424
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 439
    .line 440
    .line 441
    if-eqz v9, :cond_e

    .line 442
    .line 443
    :try_start_10
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 444
    .line 445
    .line 446
    :cond_e
    if-eqz v8, :cond_f

    .line 447
    .line 448
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 449
    .line 450
    .line 451
    :cond_f
    if-eqz v3, :cond_10

    .line 452
    .line 453
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 454
    .line 455
    .line 456
    :cond_10
    if-eqz v6, :cond_11

    .line 457
    .line 458
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 459
    .line 460
    .line 461
    :cond_11
    :goto_9
    return-void

    .line 462
    :catchall_6
    move-exception v0

    .line 463
    if-eqz v9, :cond_12

    .line 464
    .line 465
    :try_start_11
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 466
    .line 467
    .line 468
    :cond_12
    if-eqz v8, :cond_13

    .line 469
    .line 470
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 471
    .line 472
    .line 473
    :cond_13
    if-eqz v3, :cond_14

    .line 474
    .line 475
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 476
    .line 477
    .line 478
    :cond_14
    if-eqz v6, :cond_15

    .line 479
    .line 480
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 481
    .line 482
    .line 483
    goto :goto_a

    .line 484
    :catchall_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 485
    .line 486
    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 487
    .line 488
    .line 489
    :cond_15
    :goto_a
    throw v0
.end method

.method private checkSuspension(FJF)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 3
    .line 4
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 5
    .line 6
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtControlSuspensionThresholdDbm:I

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    const v1, 0x3f4ccccd    # 0.8f

    .line 25
    .line 26
    .line 27
    cmpl-float v1, p1, v1

    .line 28
    .line 29
    if-ltz v1, :cond_2

    .line 30
    .line 31
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 32
    .line 33
    or-int/2addr p1, v3

    .line 34
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 35
    .line 36
    return v3

    .line 37
    :cond_2
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    cmp-long p2, p2, v1

    .line 40
    .line 41
    if-gez p2, :cond_3

    .line 42
    .line 43
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 44
    .line 45
    or-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 48
    .line 49
    return v3

    .line 50
    :cond_3
    cmpl-float p1, p1, p4

    .line 51
    .line 52
    if-lez p1, :cond_4

    .line 53
    .line 54
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 55
    .line 56
    or-int/lit8 p1, p1, 0x8

    .line 57
    .line 58
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 59
    .line 60
    return v3

    .line 61
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMediatorGranted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 70
    .line 71
    or-int/lit8 p1, p1, 0x10

    .line 72
    .line 73
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 74
    .line 75
    return v3

    .line 76
    :cond_5
    return v0
.end method

.method private checkTwtAllowed()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->skipTwtVersionCheck()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiDriverVersion()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiFirmwareVersion()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->driverVersionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmFirmwareVersion:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    const-string v4, "3.2"

    .line 34
    .line 35
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmTwtMonitorVersion:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 44
    .line 45
    const-string v5, "Compliance violation: ver. "

    .line 46
    .line 47
    const-string v6, " "

    .line 48
    .line 49
    invoke-static {v5, v0, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v5, v6, v3, v6}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmFirmwareVersion:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, " 3.2 "

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmTwtMonitorVersion:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v4, p0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    return v2

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmOUIs:Ljava/util/HashSet;

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    .line 86
    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->containsNotAllowedVendorOui(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 96
    .line 97
    const-string v0, "Compliance violation: OUI"

    .line 98
    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    return v2

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    .line 104
    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    return v2

    .line 108
    :cond_3
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmEnableCondition:I

    .line 109
    .line 110
    if-ltz v0, :cond_4

    .line 111
    .line 112
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->isTwtAllowedByMacAddress(I)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_4

    .line 117
    .line 118
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 119
    .line 120
    const-string v0, "Compliance violation: MAC"

    .line 121
    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    return v2

    .line 126
    :cond_4
    const/4 p0, 0x1

    .line 127
    return p0
.end method

.method private containsNotAllowedVendorOui(Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private createSession()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 12
    .line 13
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    .line 14
    .line 15
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    .line 16
    .line 17
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->createSession(Ljava/lang/String;III)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 34
    .line 35
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    .line 36
    .line 37
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    .line 38
    .line 39
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->createSession(Ljava/lang/String;III)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private deactivateTwt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x1f4

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficStatsPoll(I)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0xbb8

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficStatsPoll(I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownAllTwtSessionIfExist()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownScheduledPmSessionIfExist()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private driverVersionViolation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->chipsetVendorName:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const-string v2, "QUALCOMM"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_1
    const-string v1, "-"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    array-length v1, p1

    .line 35
    if-ge v1, v0, :cond_2

    .line 36
    .line 37
    array-length v1, p2

    .line 38
    if-ge v1, v0, :cond_2

    .line 39
    .line 40
    return v0

    .line 41
    :cond_2
    array-length v1, p1

    .line 42
    sub-int/2addr v1, v0

    .line 43
    aget-object p1, p1, v1

    .line 44
    .line 45
    const-string v1, "[^0-9]"

    .line 46
    .line 47
    const-string v2, ""

    .line 48
    .line 49
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    array-length v3, p2

    .line 54
    sub-int/2addr v3, v0

    .line 55
    aget-object p2, p2, v3

    .line 56
    .line 57
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const-wide/16 v2, 0x0

    .line 66
    .line 67
    if-lez v1, :cond_3

    .line 68
    .line 69
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move-wide v4, v2

    .line 77
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-lez p1, :cond_4

    .line 82
    .line 83
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_4
    cmp-long p0, v2, v4

    .line 88
    .line 89
    if-lez p0, :cond_5

    .line 90
    .line 91
    return v0

    .line 92
    :cond_5
    const/4 p0, 0x0

    .line 93
    return p0

    .line 94
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "ver. violation check failure: "

    .line 99
    .line 100
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_2
    return v0
.end method

.method private durationTC(I)I
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingRatio:F

    .line 3
    .line 4
    mul-float/2addr p1, p0

    .line 5
    float-to-int p0, p1

    .line 6
    return p0
.end method

.method private getLinkInfo()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private getMacOuis(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "00:A0:C6"

    .line 4
    .line 5
    const-string v2, "50:6F:9A"

    .line 6
    .line 7
    const-string v3, "00:50:F2"

    .line 8
    .line 9
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/16 v3, 0x11

    .line 32
    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/util/WifiUtils;->getMacOuiFromVsie(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v6, "AP OUI: "

    .line 75
    .line 76
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const/4 v5, 0x2

    .line 87
    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 p0, 0x0

    .line 92
    const/16 v0, 0x8

    .line 93
    .line 94
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_2
    return-object v1
.end method

.method private getTwtIotApInfoFileData(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "twt_iot_ap_list"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ge v1, p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->fromJson(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->bssid:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string p1, "SemWifiTwtMonitor"

    .line 53
    .line 54
    const-string v1, "JSONException "

    .line 55
    .line 56
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    return-object v0

    .line 60
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 61
    .line 62
    const-string p1, "File Data is null"

    .line 63
    .line 64
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method private getWifiDriverVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getDriverVersion()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object p0

    .line 32
    :cond_2
    :goto_0
    const-string p0, "0"

    .line 33
    .line 34
    return-object p0
.end method

.method private getWifiFactoryMacAddress()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, 0x11

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    const-string p0, ""

    .line 32
    .line 33
    return-object p0
.end method

.method private getWifiFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object p0

    .line 33
    :cond_2
    :goto_0
    const-string p0, "0"

    .line 34
    .line 35
    return-object p0
.end method

.method private getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

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

.method private hasTwtIotIssue(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x11

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;

    .line 26
    .line 27
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->detectionResult:I

    .line 28
    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Connected to AP known to have an IoT issue: "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->detectionResult:I

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 v0, 0x2

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method private initializeForStartingPmControl()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->resumptionPollCnt:J

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->firstNego:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownAllTwtSessionIfExist()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownScheduledPmSessionIfExist()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtAiIntf:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->initialize()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 32
    .line 33
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    .line 34
    .line 35
    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 36
    .line 37
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateLinkLayerStats()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getMainCategoryServiceType()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ne v1, v0, :cond_0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 58
    .line 59
    const-string v2, "RTA on connection"

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 66
    .line 67
    or-int/2addr v1, v0

    .line 68
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtCessation:I

    .line 69
    .line 70
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    .line 74
    .line 75
    const/16 v1, 0xbb8

    .line 76
    .line 77
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->startTrafficStatsPoll(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateTrafficStats()V

    .line 94
    .line 95
    .line 96
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurRxBytes:J

    .line 97
    .line 98
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastRxBytes:J

    .line 99
    .line 100
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurTime:J

    .line 101
    .line 102
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTime:J

    .line 103
    .line 104
    const/16 v0, 0x1770

    .line 105
    .line 106
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->startTrafficControlPoll(I)V

    .line 107
    .line 108
    .line 109
    :cond_1
    return-void

    .line 110
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method private isTwtAllowedByMacAddress(I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiFactoryMacAddress()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const/16 p0, 0x11

    .line 15
    .line 16
    const/16 v1, 0x10

    .line 17
    .line 18
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-lt p0, p1, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    return v2

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 32
    .line 33
    const-string p1, "Invalid MAC"

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    return v2
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaces:Ljava/util/HashSet;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x6

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private loadDetectionResultsFromFile()Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "SemWifiTwtMonitor"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIoTApListFile:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 12
    .line 13
    const-string v0, "Not exist a stored result"

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string p0, ""

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const/16 v2, 0x800

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 30
    .line 31
    new-instance v4, Ljava/io/InputStreamReader;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIoTApListFile:Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 v5, 0x0

    .line 40
    new-array v6, v5, [Ljava/nio/file/OpenOption;

    .line 41
    .line 42
    invoke-static {p0, v6}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-direct {v4, p0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :try_start_1
    new-array p0, v2, [C

    .line 55
    .line 56
    :goto_0
    invoke-virtual {v3, p0}, Ljava/io/BufferedReader;->read([C)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-lez v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1, p0, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
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
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_5

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :catch_1
    move-exception p0

    .line 75
    goto :goto_4

    .line 76
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_1
    move-exception v2

    .line 81
    :try_start_4
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 85
    :goto_3
    const-string v2, "IOException "

    .line 86
    .line 87
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :goto_4
    const-string v2, "UnsupportedEncodingException "

    .line 92
    .line 93
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method

.method private onConnection()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsLeakyApDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLatestScpmVersionSchedPm:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v3, v1

    .line 30
    move v5, v3

    .line 31
    goto :goto_3

    .line 32
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getMacOuis(Ljava/lang/String;)Ljava/util/HashSet;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->apOUIs:Ljava/util/HashSet;

    .line 45
    .line 46
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkTwtAllowed()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->hasTwtIotIssue(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_4

    .line 57
    .line 58
    move v3, v4

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    move v3, v1

    .line 61
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->checkScheduledPmAllowed()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    .line 69
    .line 70
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    .line 71
    .line 72
    const/4 v7, 0x2

    .line 73
    if-eqz v6, :cond_6

    .line 74
    .line 75
    if-eqz v3, :cond_6

    .line 76
    .line 77
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 78
    .line 79
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->queryTwtCapabilities(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const v6, 0xffff

    .line 86
    .line 87
    .line 88
    and-int/2addr v6, v3

    .line 89
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    .line 90
    .line 91
    const/high16 v6, -0x10000

    .line 92
    .line 93
    and-int/2addr v3, v6

    .line 94
    shr-int/lit8 v3, v3, 0x10

    .line 95
    .line 96
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDeviceCapabilities:I

    .line 97
    .line 98
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 99
    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v8, "Cap. "

    .line 103
    .line 104
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget v8, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDeviceCapabilities:I

    .line 108
    .line 109
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v8, " "

    .line 113
    .line 114
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v8, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    .line 118
    .line 119
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    .line 130
    .line 131
    and-int/2addr v3, v7

    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDeviceCapabilities:I

    .line 135
    .line 136
    and-int/2addr v3, v4

    .line 137
    if-eqz v3, :cond_5

    .line 138
    .line 139
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->connectionStateChanged()V

    .line 142
    .line 143
    .line 144
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    .line 152
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    .line 154
    .line 155
    :cond_6
    :goto_4
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    .line 156
    .line 157
    if-eqz v3, :cond_8

    .line 158
    .line 159
    if-eqz v5, :cond_8

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    goto :goto_5

    .line 168
    :cond_7
    move v0, v1

    .line 169
    :goto_5
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLeakyApDetector()Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->isLeakyAp(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-nez v2, :cond_8

    .line 180
    .line 181
    const/16 v2, 0x1388

    .line 182
    .line 183
    if-le v0, v2, :cond_8

    .line 184
    .line 185
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->connectionStateChanged()V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    .line 192
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 193
    .line 194
    .line 195
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 196
    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v3, "Feature availability: TWT "

    .line 200
    .line 201
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v3, " S-PM "

    .line 214
    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v0, v2, v7}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-nez v0, :cond_9

    .line 241
    .line 242
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_b

    .line 249
    .line 250
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 251
    .line 252
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    .line 254
    .line 255
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reConfigureSessionParametersBoundary()V

    .line 256
    .line 257
    .line 258
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initializeForStartingPmControl()V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 262
    .line 263
    if-nez v0, :cond_a

    .line 264
    .line 265
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMediatorGranted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 266
    .line 267
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 271
    .line 272
    const-string v1, "Running without CTL feature mediator"

    .line 273
    .line 274
    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMediatorGranted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediatorGrantCallback:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 286
    .line 287
    const-string v2, "TWT/S-PM"

    .line 288
    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 293
    .line 294
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediatorPerformanceQuery:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 295
    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->registerQuery(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLeakyApDetector()Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 306
    .line 307
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->setStartCondition(Z)V

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method private onDisconnection()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x1f4

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficStatsPoll(I)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xbb8

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficStatsPoll(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x1770

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficControlPoll(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 50
    .line 51
    const-string v1, "TWT/S-PM"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->unregisterCallback(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->unregisterQuery(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    .line 63
    .line 64
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->initialTrafficCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 90
    .line 91
    iput v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 92
    .line 93
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v1, 0x0

    .line 104
    .line 105
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTwtSetupTimeWithCurrentBssid:J

    .line 106
    .line 107
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 108
    .line 109
    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setNegotiationResult(ZIII)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 113
    .line 114
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 115
    .line 116
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->provideTwtStateToLinkInfoCollector(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->connectionStateChanged()V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->connectionStateChanged()V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_2

    .line 136
    .line 137
    const/4 v0, 0x5

    .line 138
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsMcfMultiControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private provideTwtStateToLinkInfoCollector(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkInfoCollector()Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->updateTwtState(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->updateScheduledPmState(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private reConfigureSessionParametersBoundary()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtServicePeriod:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 12
    .line 13
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtSleepPeriod:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 16
    .line 17
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtInterval:I

    .line 18
    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmServicePeriod:I

    .line 31
    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 33
    .line 34
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmSleepPeriod:I

    .line 35
    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 37
    .line 38
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmInterval:I

    .line 39
    .line 40
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private removeOldRecord()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->lastUpdatedTime:J

    .line 33
    .line 34
    iget-wide v5, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->lastUpdatedTime:J

    .line 35
    .line 36
    cmp-long v3, v3, v5

    .line 37
    .line 38
    if-lez v3, :cond_0

    .line 39
    .line 40
    :cond_1
    move-object v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 45
    .line 46
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->bssid:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method private renewIgnored(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 4
    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 12
    .line 13
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 14
    .line 15
    if-ne p1, p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private sendInternalMessage(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsFeatureEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private setTWTRenewalEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x6

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private setWifiScpmExecutorList()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->PM_SCPM_CONFIGURATION_LIST:[Ljava/lang/String;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 10
    .line 11
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;

    .line 12
    .line 13
    invoke-direct {v3, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    aput-object v3, v2, v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private startAlgorithmPollWithNewInterval(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 16
    .line 17
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    int-to-long v1, p1

    .line 22
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private startTrafficControlPoll(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficControlCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private startTrafficStatsPoll(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private stopTrafficControlPoll(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficControlCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private stopTrafficStatsPoll(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private storeDetectionResultsToFile()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 2
    .line 3
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIoTApListFile:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v3, v3, [Ljava/nio/file/OpenOption;

    .line 13
    .line 14
    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    .line 27
    .line 28
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->toJson()Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    .line 64
    .line 65
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "twt_iot_ap_list"

    .line 69
    .line 70
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    const-string v0, "SemWifiTwtMonitor"

    .line 95
    .line 96
    const-string v1, "Exception during File writing"

    .line 97
    .line 98
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private teardownAllTwtSessionIfExist()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->querySessionExistence(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 17
    .line 18
    const/16 v0, 0xb

    .line 19
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
    :cond_0
    return-void
.end method

.method private teardownScheduledPmSessionIfExist()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->querySessionExistence(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 12
    .line 13
    const/16 v0, 0xb

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private teardownSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 14
    .line 15
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownSession(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 34
    .line 35
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->teardownSession(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private updateCurrentRssi(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private updatePackageInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getUsageStatsPackage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getUsageStatsPackage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setUsageStatsPackage(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private updateScheduledPmCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getScheduledPmFeature()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    and-int/lit8 v0, p1, 0x1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    .line 14
    .line 15
    and-int/lit8 v0, p1, 0x6

    .line 16
    .line 17
    shr-int/2addr v0, v1

    .line 18
    add-int/2addr v0, v1

    .line 19
    mul-int/lit16 v0, v0, 0x1000

    .line 20
    .line 21
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmServicePeriod:I

    .line 22
    .line 23
    and-int/lit8 p1, p1, 0x18

    .line 24
    .line 25
    shr-int/lit8 p1, p1, 0x3

    .line 26
    .line 27
    add-int/2addr p1, v1

    .line 28
    mul-int/lit16 p1, p1, 0x2000

    .line 29
    .line 30
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmSleepPeriod:I

    .line 31
    .line 32
    add-int/2addr v0, p1

    .line 33
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmInterval:I

    .line 34
    .line 35
    return-void
.end method

.method private updateTwtCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getTwtFeature()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    and-int/lit8 v1, v0, 0x2

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    and-int/lit8 p1, v0, 0x30

    .line 22
    .line 23
    shr-int/lit8 p1, p1, 0x4

    .line 24
    .line 25
    add-int/2addr p1, v2

    .line 26
    mul-int/lit16 p1, p1, 0x1000

    .line 27
    .line 28
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtServicePeriod:I

    .line 29
    .line 30
    and-int/lit16 v0, v0, 0xc0

    .line 31
    .line 32
    shr-int/lit8 v0, v0, 0x6

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    mul-int/lit16 v0, v0, 0x2000

    .line 36
    .line 37
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtSleepPeriod:I

    .line 38
    .line 39
    add-int/2addr p1, v0

    .line 40
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtInterval:I

    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChipsetVendorName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->chipsetVendorName:Ljava/lang/String;

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isTwtSupported()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getTwtParameters()Ljava/util/HashMap;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    const-string v0, "minServicePeriod"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->minServicePeriodSCPM:I

    .line 80
    .line 81
    if-le v1, v2, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :cond_2
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtServicePeriod:I

    .line 94
    .line 95
    const-string v0, "minInterval"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtInterval:I

    .line 108
    .line 109
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChipsetVendorName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->chipsetVendorName:Ljava/lang/String;

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    const-string v0, "QUALCOMM"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    const p1, 0x8000

    .line 128
    .line 129
    .line 130
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtSleepPeriod:I

    .line 131
    .line 132
    :cond_4
    return-void
.end method

.method private updateTwtIotIssueDetectionResult(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_8

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x11

    .line 20
    .line 21
    if-ne v1, v2, :cond_8

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0xc8

    .line 38
    .line 39
    if-lt v1, v2, :cond_1

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->removeOldRecord()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;

    .line 62
    .line 63
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->bssid:Ljava/lang/String;

    .line 67
    .line 68
    :goto_1
    const/4 v2, 0x2

    .line 69
    if-ne p1, v2, :cond_3

    .line 70
    .line 71
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->arpLostCount:I

    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->arpLostCount:I

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const/4 v3, 0x3

    .line 79
    if-ne p1, v3, :cond_4

    .line 80
    .line 81
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->dataStallCount:I

    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->dataStallCount:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const/4 v3, 0x4

    .line 89
    if-ne p1, v3, :cond_5

    .line 90
    .line 91
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->rateDropCount:I

    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->rateDropCount:I

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    iput p1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->detectionResult:I

    .line 99
    .line 100
    :goto_2
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->arpLostCount:I

    .line 101
    .line 102
    if-eq v3, v2, :cond_6

    .line 103
    .line 104
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->dataStallCount:I

    .line 105
    .line 106
    if-eq v3, v2, :cond_6

    .line 107
    .line 108
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->rateDropCount:I

    .line 109
    .line 110
    if-ne v3, v2, :cond_7

    .line 111
    .line 112
    :cond_6
    iput p1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->detectionResult:I

    .line 113
    .line 114
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    iput-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->lastUpdatedTime:J

    .line 119
    .line 120
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 121
    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v5, "Detected as abnormal AP. Type: "

    .line 125
    .line 126
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->storeDetectionResultsToFile()V

    .line 145
    .line 146
    .line 147
    :cond_8
    return-void
.end method

.method private updateWifiUsabilityStatsEntry(Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioOnFreqTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v15

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalCcaBusyFreqTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v17

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalScanTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v19

    .line 40
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 41
    .line 42
    iget v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 43
    .line 44
    iget-wide v7, v1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 45
    .line 46
    iget-wide v9, v1, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 47
    .line 48
    iget-wide v11, v1, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 49
    .line 50
    iget-wide v13, v1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 51
    .line 52
    invoke-virtual/range {v2 .. v20}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setLinkLayerStats(IIIIJJJJJJJ)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTwtStats()Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v6, "LinkStats "

    .line 66
    .line 67
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 71
    .line 72
    const-string v6, " "

    .line 73
    .line 74
    invoke-static {v5, v0, v6, v3, v6}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txGood:J

    .line 84
    .line 85
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txRetry:J

    .line 92
    .line 93
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txBad:J

    .line 100
    .line 101
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->rxGood:J

    .line 108
    .line 109
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->radioOnTimeMs:J

    .line 116
    .line 117
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->ccaBusyTimeMs:J

    .line 124
    .line 125
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-wide v0, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->scanTimeMs:J

    .line 132
    .line 133
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const/4 v1, 0x0

    .line 141
    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method private versionViolation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    const-string v1, "\\."

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    array-length v3, p2

    .line 20
    if-ge v2, v3, :cond_6

    .line 21
    .line 22
    array-length v3, p1

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    aget-object v3, p1, v2

    .line 27
    .line 28
    const-string v4, "[^0-9]"

    .line 29
    .line 30
    const-string v5, ""

    .line 31
    .line 32
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    aget-object v6, p2, v2

    .line 37
    .line 38
    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    move-wide v8, v6

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v8

    .line 56
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_2
    cmp-long v3, v6, v8

    .line 68
    .line 69
    if-lez v3, :cond_4

    .line 70
    .line 71
    return v0

    .line 72
    :cond_4
    if-gez v3, :cond_5

    .line 73
    .line 74
    return v1

    .line 75
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v1, "ver. violation check failure: "

    .line 84
    .line 85
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    return v0

    .line 103
    :cond_6
    return v1

    .line 104
    :cond_7
    :goto_3
    return v0
.end method


# virtual methods
.method public deactivateScheduledPm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsLeakyApDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->teardownScheduledPmSessionIfExist()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->dump(Ljava/io/PrintWriter;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "TWT IOT AP List --------------------------------------"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtIotApList:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;

    .line 38
    .line 39
    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->detectionResult:I

    .line 40
    .line 41
    if-lez v2, :cond_0

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v3, "BSSID "

    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->bssid:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const/16 v5, 0x8

    .line 54
    .line 55
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, " Type "

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->detectionResult:I

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "----------------------------------------------------"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->dump(Ljava/io/PrintWriter;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLeakyApDetector()Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->dump(Ljava/io/PrintWriter;)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScheduledPmControl()Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->dump(Ljava/io/PrintWriter;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->enableVerboseLogging(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public externalTwtInterface(ILjava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "\\s"

    .line 4
    .line 5
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    move v4, v3

    .line 12
    move v5, v4

    .line 13
    move v6, v5

    .line 14
    move v7, v6

    .line 15
    :goto_0
    array-length v8, p2

    .line 16
    if-ge v3, v8, :cond_4

    .line 17
    .line 18
    aget-object v8, p2, v3

    .line 19
    .line 20
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 v9, -0x1

    .line 24
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    sparse-switch v10, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :sswitch_0
    const-string v10, "interval"

    .line 33
    .line 34
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-nez v8, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 v9, 0x3

    .line 42
    goto :goto_1

    .line 43
    :sswitch_1
    const-string v10, "sp"

    .line 44
    .line 45
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-nez v8, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v9, v0

    .line 53
    goto :goto_1

    .line 54
    :sswitch_2
    const-string v10, "flowId"

    .line 55
    .line 56
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-nez v8, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move v9, v1

    .line 64
    goto :goto_1

    .line 65
    :sswitch_3
    const-string v10, "enabled"

    .line 66
    .line 67
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-nez v8, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v9, v2

    .line 75
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :pswitch_0
    add-int/lit8 v7, v3, 0x1

    .line 80
    .line 81
    aget-object v7, p2, v7

    .line 82
    .line 83
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    goto :goto_2

    .line 88
    :pswitch_1
    add-int/lit8 v6, v3, 0x1

    .line 89
    .line 90
    aget-object v6, p2, v6

    .line 91
    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    goto :goto_2

    .line 97
    :pswitch_2
    add-int/lit8 v4, v3, 0x1

    .line 98
    .line 99
    aget-object v4, p2, v4

    .line 100
    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    goto :goto_2

    .line 106
    :pswitch_3
    add-int/lit8 v5, v3, 0x1

    .line 107
    .line 108
    aget-object v5, p2, v5

    .line 109
    .line 110
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    :goto_2
    add-int/2addr v3, v0

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    if-eqz p1, :cond_8

    .line 117
    .line 118
    if-eq p1, v1, :cond_6

    .line 119
    .line 120
    if-eq p1, v0, :cond_5

    .line 121
    .line 122
    const-string p0, "SemWifiTwtMonitor"

    .line 123
    .line 124
    const-string p1, "Invalid cmdId"

    .line 125
    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_5
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->setTWTRenewalEnabled(Z)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_6
    if-ltz v4, :cond_7

    .line 135
    .line 136
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    .line 137
    .line 138
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 139
    .line 140
    const/16 p1, 0xb

    .line 141
    .line 142
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_8
    if-lez v4, :cond_9

    .line 151
    .line 152
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredFlowID:I

    .line 153
    .line 154
    :cond_9
    iput v7, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredInterval:I

    .line 155
    .line 156
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mDesiredSP:I

    .line 157
    .line 158
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 159
    .line 160
    const/16 p1, 0xa

    .line 161
    .line 162
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :sswitch_data_0
    .sparse-switch
        -0x5ff074bf -> :sswitch_3
        -0x4bcb8917 -> :sswitch_2
        0xe5d -> :sswitch_1
        0x21ffe4c5 -> :sswitch_0
    .end sparse-switch

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getProductModelName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 5
    .line 6
    const-string p1, "failed to get the product name"

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string p0, "null"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string v1, "SC"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    const-string v1, "SM-W"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x3

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/16 v3, 0x8

    .line 37
    .line 38
    if-lt v1, v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    const-string v1, "SM-"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v3, 0x7

    .line 58
    if-lt v1, v3, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 66
    .line 67
    const-string p1, "unknown formatted name"

    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    const-string p0, "unknown"

    .line 73
    .line 74
    return-object p0
.end method

.method public getScpmCount()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public getScpmExecutorList()[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mScpmExecutorList:[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTWTParams()[I
    .locals 6

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    aput v2, v0, v3

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtStatus:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 21
    .line 22
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v4

    .line 30
    :goto_0
    aput v2, v0, v4

    .line 31
    .line 32
    aget v2, v1, v3

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    aput v2, v0, v3

    .line 36
    .line 37
    aget v2, v1, v4

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    aput v2, v0, v4

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    aget v5, v1, v3

    .line 44
    .line 45
    aput v5, v0, v2

    .line 46
    .line 47
    const/4 v2, 0x5

    .line 48
    aget v1, v1, v4

    .line 49
    .line 50
    aput v1, v0, v2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->getAbnormalityOfAP()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x6

    .line 59
    aput v1, v0, v2

    .line 60
    .line 61
    const/4 v1, 0x7

    .line 62
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mAssociatedApCapabilities:I

    .line 63
    .line 64
    aput v2, v0, v1

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLeakyApDetector()Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->isLeakyApDetectionCompleted()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->isLeakyAp(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    aput p0, v0, v2

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_1
    aput v3, v0, v2

    .line 98
    .line 99
    return-object v0
.end method

.method public handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateTwtCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateScheduledPmCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 5
    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsFeatureEnabled:Z

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Feature support: TWT "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " S-PM "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtSupported:Z

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtServicePeriod:I

    .line 58
    .line 59
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 60
    .line 61
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtSleepPeriod:I

    .line 62
    .line 63
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 64
    .line 65
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinTwtInterval:I

    .line 66
    .line 67
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmSupported:Z

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmServicePeriod:I

    .line 75
    .line 76
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinServicePeriod:I

    .line 77
    .line 78
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmSleepPeriod:I

    .line 79
    .line 80
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSleepPeriod:I

    .line 81
    .line 82
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinSpmInterval:I

    .line 83
    .line 84
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mMinInterval:I

    .line 85
    .line 86
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    const/4 p1, 0x5

    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public notifyReachabilityLost()V
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 1

    .line 1
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaces:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

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
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 29
    .line 30
    const/4 p1, 0x5

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaces:Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x6

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method onSessionCreationResult(IIII)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 7
    .line 8
    iput p3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 9
    .line 10
    iput p4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 11
    .line 12
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 15
    .line 16
    const/16 p1, 0xc

    .line 17
    .line 18
    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method onSessionTeardownResult(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 2
    .line 3
    const/16 v0, 0xd

    .line 4
    .line 5
    invoke-static {p0, v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method quantizingDuration(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsTwtControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x2000

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsScheduledPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    :cond_0
    rem-int/lit16 p0, p1, 0x2000

    .line 20
    .line 21
    if-nez p0, :cond_3

    .line 22
    .line 23
    :cond_1
    if-ge p1, v1, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    return p1

    .line 27
    :cond_3
    div-int/2addr p1, v1

    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    mul-int/2addr p1, v1

    .line 31
    return p1
.end method

.method public renewTwtSession(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsFeatureEnabled:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 7
    .line 8
    const-string v0, "DR_reinit."

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->reconnectionWithoutDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x6

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setMcfMultiControlMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsMcfMultiControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x7

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->sendInternalMessage(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setTCRule(ZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v1, "TC enabled: "

    .line 6
    .line 7
    invoke-static {p2, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "TC disabled"

    .line 13
    .line 14
    :goto_0
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsFeatureEnabled:Z

    .line 19
    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIsPmControlAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->twtRenewalEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/16 v1, 0x1770

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateTrafficStats()V

    .line 52
    .line 53
    .line 54
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurRxBytes:J

    .line 55
    .line 56
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastRxBytes:J

    .line 57
    .line 58
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurTime:J

    .line 59
    .line 60
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mLastTime:J

    .line 61
    .line 62
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->startTrafficControlPoll(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->stopTrafficControlPoll(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtHandler:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 88
    .line 89
    const/4 v1, 0x7

    .line 90
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->throttlingActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    .line 107
    .line 108
    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTrafficLimit:I

    .line 109
    .line 110
    return-void

    .line 111
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->trafficControlActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    .line 115
    .line 116
    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTrafficLimit:I

    .line 117
    .line 118
    return-void
.end method

.method skipTwtVersionCheck()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mFirstApiLevel:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->latestSCPMVersion:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->scpmDriverVersion:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->UNKNOWN_VERSION_H:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method updateLinkLayerStats()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_5

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateCurrentRssi(Landroid/net/wifi/WifiInfo;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getLinkInfo()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    const-wide/16 v7, 0x0

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    iget-object v9, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    move v11, v3

    .line 64
    :goto_0
    if-ge v11, v10, :cond_3

    .line 65
    .line 66
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    check-cast v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 71
    .line 72
    iget v13, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 73
    .line 74
    if-ne v13, v6, :cond_2

    .line 75
    .line 76
    iget v7, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 77
    .line 78
    int-to-long v7, v7

    .line 79
    iget v9, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 80
    .line 81
    int-to-long v9, v9

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    move-wide v9, v7

    .line 87
    :goto_1
    iget v2, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 88
    .line 89
    int-to-long v11, v2

    .line 90
    move-wide/from16 v16, v7

    .line 91
    .line 92
    move-wide/from16 v18, v9

    .line 93
    .line 94
    move-wide/from16 v20, v11

    .line 95
    .line 96
    :goto_2
    move v2, v3

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move-wide/from16 v16, v7

    .line 99
    .line 100
    move-wide/from16 v18, v16

    .line 101
    .line 102
    move-wide/from16 v20, v18

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :goto_3
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 106
    .line 107
    iget v7, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 108
    .line 109
    iget-wide v8, v1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 110
    .line 111
    iget-wide v10, v1, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 112
    .line 113
    iget-wide v12, v1, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 114
    .line 115
    iget-wide v14, v1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 116
    .line 117
    invoke-virtual/range {v3 .. v21}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setLinkLayerStats(IIIIJJJJJJJ)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTwtStats()Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 127
    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v7, "LinkStats "

    .line 131
    .line 132
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 136
    .line 137
    const-string v7, " "

    .line 138
    .line 139
    invoke-static {v6, v0, v7, v4, v7}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txGood:J

    .line 149
    .line 150
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txRetry:J

    .line 157
    .line 158
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txBad:J

    .line 165
    .line 166
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->rxGood:J

    .line 173
    .line 174
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->radioOnTimeMs:J

    .line 181
    .line 182
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->ccaBusyTimeMs:J

    .line 189
    .line 190
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-wide v0, v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->scanTimeMs:J

    .line 197
    .line 198
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v3, v0, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    :cond_5
    :goto_4
    return-void
.end method

.method updateTrafficStats()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mIfaceName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v10

    .line 29
    iput-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurTime:J

    .line 30
    .line 31
    iput-wide v8, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mCurRxBytes:J

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 34
    .line 35
    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setTrafficStats(JJJJJ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
