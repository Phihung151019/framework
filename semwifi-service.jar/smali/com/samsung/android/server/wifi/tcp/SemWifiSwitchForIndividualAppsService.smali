.class public Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;,
        Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetworkRequestCallback;,
        Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x211f4

.field private static final BEACON_COUNT_RANGE:I = 0x28

.field private static DBG:Z = false

.field private static final DETECTION_MODE_ALL_APP_EXCEPT_SYSTEM:I = 0x2

.field private static final DETECTION_MODE_CHAT_ONLY:I = 0x0

.field private static final DETECTION_MODE_FILTERED_APP:I = 0x1

.field private static final DNS_HISTORY_MAX_COUNT:I = 0x258

.field private static final DNS_ROUTE_CHANGE_ENABLED:Z = true

.field private static final HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final INVALID_UID:I = -0x1

.field private static final LATEST_TX_RX_LENGTH:I = 0x3

.field private static final MAX_IP_ADDRESS:I = 0xa

.field private static final RESULT_BLOCKING_DNS:Ljava/lang/String; = "BD"

.field private static final RESULT_BLOCKING_RECEIEVE_QUEUE_SYN:Ljava/lang/String; = "BQ"

.field private static final RESULT_BLOCKING_RETRANS:Ljava/lang/String; = "BR"

.field private static final RESULT_BLOCKING_RETRANS_CONT:Ljava/lang/String; = "BR_cont"

.field private static final RESULT_BLOCKING_SYN:Ljava/lang/String; = "BS"

.field private static final RESULT_NORMAL:Ljava/lang/String; = "NORMAL"

.field private static final RESULT_SLOW:Ljava/lang/String; = "SLOW"

.field private static final RUNNING_HISTORY_MAX_COUNT:I = 0x258

.field public static final SWITCH_TO_MOBILE_DATA_DISABLED:I = 0x211ff

.field public static final SWITCH_TO_MOBILE_DATA_ENABLED:I = 0x211fe

.field public static final SWITCH_TO_MOBILE_DATA_QAI:I = 0x21200

.field private static final TAG:Ljava/lang/String; = "SemWifiSwitchForIndividualAppsService"

.field private static final TCP_COLUMN_REMOTE_ADDRESS:I = 0x3

.field private static final TCP_COLUMN_STATUS:I = 0x4

.field private static final TCP_COLUMN_UID:I = 0x8

.field private static final TCP_MONITOR_SETTINGS_CHANGED:I = 0x6

.field private static final TCP_MONITOR_START_FIRST_DETECTION:I = 0x3

.field private static final TCP_MONITOR_START_SCREEN_ON:I = 0x2

.field private static final TCP_MONITOR_STOP_FIRST_DETECTION:I = 0x5

.field private static final TCP_MONITOR_STOP_SCREEN_OFF:I = 0x4

.field private static final TCP_MONITOR_WIFI_CHANGED:I = 0x1

.field private static final TCP_STATUS_LAST_ACK:Ljava/lang/String; = "09"

.field private static final TCP_STATUS_SYN_SENT:Ljava/lang/String; = "02"

.field private static final THRESHOLD_ACCUMULATED_SUM_TX_RX:I = 0x7d0

.field private static final THRESHOLD_ALL_SOCKET_RATIO:I = 0x32

.field private static final THRESHOLD_CHAT_ESTABLISH:I = 0x5

.field private static final THRESHOLD_CHAT_SUM_TX_RX:I = 0x1e

.field private static final THRESHOLD_DETECTION_IGNORED_AGGRESSIVE:I = 0x5

.field private static final THRESHOLD_DETECTION_IGNORED_NORMAL:I = 0x3

.field private static final THRESHOLD_DNS_BLOCK_COUNTER:I = 0x3

.field private static final THRESHOLD_GENERAL_ESTABLISH:I = 0xa

.field private static final THRESHOLD_GENERAL_SUM_TX_RX:I = 0x64

.field private static final THRESHOLD_LINK_SPEED_24G:I = 0x1e

.field private static final THRESHOLD_LINK_SPEED_5G:I = 0x28

.field private static final THRESHOLD_LINK_SPEED_6G:I = 0x32

.field private static final THRESHOLD_LOSS:D = 0.1

.field private static final THRESHOLD_POOR_LINK_SPEED:I = 0x14

.field private static final THRESHOLD_POOR_RSSI:I = -0x50

.field private static final THRESHOLD_RECEIVE_QUEUE_COUNTER:I = 0x2

.field private static final THRESHOLD_RETRANSMISSION_COUNTER:I = 0x5

.field private static final THRESHOLD_RETRANSMISSION_SOCKET_RATIO:I = 0x19

.field private static final THRESHOLD_RSSI_24GHz:I = -0x37

.field private static final THRESHOLD_RSSI_5GHz:I = -0x3c

.field private static final THRESHOLD_RSSI_6GHz:I = -0x46

.field private static final THRESHOLD_SYN_BLOCK_AGGRESSIVE_MODE_DETECTION_COUNT:I = 0x5

.field private static final THRESHOLD_SYN_BLOCK_COUNT_DETECTED_APP:I = 0x2

.field private static final THRESHOLD_SYN_BLOCK_COUNT_HIGH:I = 0x5

.field private static final THRESHOLD_SYN_BLOCK_COUNT_LOW:I = 0x3

.field private static final THRESHOLD_SYN_SOCKET_RATIO:I = 0x32

.field private static final THRESHOLD_TCP_MONITOR_STOP_SCREEN_OFF_DETECTION:I = 0xa

.field private static final TIMEOUT_QC_REQEUST:I = 0xbb8

.field private static mDnsdatalock:Ljava/lang/Object;

.field private static mRunningDnsListlock:Ljava/lang/Object;

.field private static mRunningSynlock:Ljava/lang/Object;

.field private static mTCPEAllSocketlock:Ljava/lang/Object;

.field private static mTCPEdatalock:Ljava/lang/Object;


# instance fields
.field private final BEACON_AVERAGE_RATE_TRHESHOLD:I

.field private final BEACON_SAMPLE_THRESHOLD:I

.field private final EXTRA_SHOW_SWITCH_FOR_INDIVIDUAL_APPS:Ljava/lang/String;

.field private final KEY_TCP_MONITOR_COMMAND:Ljava/lang/String;

.field private final MOBILE_DATA_ENABLE_CHECK_DELAY:I

.field private final MOBILE_DATA_ENABLE_CHECK_MAX:I

.field private final RECEIVE_QUEUE_COLUMN:I

.field private final TCP_COLUMN_CWND:I

.field private final TCP_COLUMN_LOCAL_ADDRESS:I

.field private final TCP_COLUMN_RETRANSMISSION:I

.field private final TCP_COLUMN_RTO:I

.field private final TCP_COLUMN_TX_RX_QUEUE:I

.field private final TCP_DETECTED_HISTORY_SIZE:I

.field private final TCP_HISTORY_MAX_COUNT:I

.field private final TCP_MONITOR_CHECK_MOBILE_DATA_ENABLED:I

.field private final TCP_MONITOR_DETECT_INTERVAL:J

.field private final TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT:I

.field private final TCP_MONITOR_FOREGROUND_ACTIVITY_START:I

.field private final TCP_MONITOR_FOREGROUND_ACTIVITY_STOP:I

.field private final TCP_MONITOR_QC_REQUEST:I

.field private final TCP_MONITOR_QC_RESULT_TIMEOUT:I

.field private final TCP_MONITOR_QC_RESULT_UPDATED:I

.field private final TCP_MONITOR_RESET_TCP_TIMEOUT_VALUE:I

.field private final TCP_MONITOR_RUN_SHELL_COMMAND_AGAIN:I

.field private final TCP_MONITOR_SHELL_COMMAND_RESULT:I

.field private final TCP_MONITOR_SWITCH_INDIVIDUAL_APP_LIST_CHANGED:I

.field private final TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_MOBILE_DATA:I

.field private final TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_WIFI:I

.field private final TCP_MONITOR_TURN_OFF_MOBILE_NETWORK:I

.field private final TCP_MONITOR_TURN_ON_MOBILE_NETWORK:I

.field private final TCP_MONITOR_UID_BLOCK_NETD_MODE:Z

.field private final TCP_MONITOR_VOIP_STATE_CHANGED:I

.field private final TCP_STATUS_ESTABLISHED:Ljava/lang/String;

.field private final TIME_DELAY_VOIP_STATE_FINISHED:I

.field private final TIME_RESET_TCP_TIMEOUT:I

.field private isDnsCallbackRegistered:Z

.field private mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBeaconRateCount:I

.field private final mBigDataStatLock:Ljava/lang/Object;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentQai:I

.field private mCurrentUidBlockedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentUidBlockedListLock:Ljava/lang/Object;

.field private mDetectionMode:I

.field private mDnsBlockCounter:I

.field private mDnsDetected:Z

.field private mDnsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpHandlerMsg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInUseCheckBytes:J

.field private mInuseCheckTime:I

.field private mInuseTotalTime:I

.field private mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private mIsForegroundActivityDetectionStarted:Z

.field private mIsForegroundAppTx:Z

.field private mIsForegroundAppTx2:Z

.field private mIsInterfaceNameNotAvailable:Z

.field private mIsMobileDataEnabledByTcpMonitor:Z

.field private mIsQaiSwitchableMode:Z

.field private mIsScreenOn:Z

.field private mIsVoipOngoing:Z

.field private mIsWaitForQCResult:Z

.field private mIsWifiConnected:Z

.field private mIsWifiValidState:Z

.field private mLastAutoSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

.field private mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

.field private mLastSuggestionNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

.field private mLastSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

.field private mLastTcpMonitorTime:J

.field private mLatestTxRx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLinkRssiThreshold:I

.field private mLinkSpeed:I

.field private mLinkSpeedThreshold:I

.field private final mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private mLoss:D

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

.field private final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field private mNotificationCount:I

.field private mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPoorNetworkDetectionEnabled:Z

.field private mPrevAccumulatedTime:I

.field private mPrevRunningBeaconCount:I

.field private mRSSI:I

.field private mRunningBeaconCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningCurrEstablish:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningCurrSyn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningDnsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningIpListSyn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningPrevSyn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSkipUid:I

.field private mSkipUidNotified:Z

.field private mSsid:Ljava/lang/String;

.field private mSwitchForIndividualAppsEnabled:Z

.field private mSwitchForIndividualAppsEverDetected:Z

.field private mSynBlockCountSum:I

.field private mTcpAllSocketInfoHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpMonitorDetectedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpMonitorDnsHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpMonitorInfoHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpMonitorInfoHistoryForL2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

.field private mTcpeOffByUser:I

.field private mTcpeOffByUser24H:I

.field private mTcpeOffDefault:I

.field private mTcpeOnByNotification:I

.field private mTcpeOnByOther:I

.field private mTcpeOnBySetting:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThresholdDetectionIgnored:I

.field private mThresholdLatestSumTxRx:I

.field private mThresholdNormalEstablish:I

.field private mUidAccumulatedTxRx:J

.field private mUidAccumulatedTxRx2:J

.field private mUidChangedTime:J

.field private mUidChatAppRetransmissionCounter:I

.field private mUidListWaitingForQcResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUidPrevRx:J

.field private mUidPrevRx2:J

.field private mUidPrevSynSize:I

.field private mUidPrevTx:J

.field private mUidPrevTx2:J

.field private mUidReceiveQueueCounter:I

.field private mUidRetransmissionCounter:I

.field private mUidRxDiff:J

.field private mUidRxDiff2:J

.field private mUidSynBlockCounter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUidSynBlockNoEstablishCounter:I

.field private mUidTxDiff:J

.field private mUidTxDiff2:J

.field private mUsedBytes:J

.field private mWifiConnectedTime:J

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiNetwork:Landroid/net/Network;

.field private mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

.field private final mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

.field uidPortListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UnMkMfv00WAfY9dInU3Jy_qisSI(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBigDataStatLock(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUidBlockedList(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetectionMode(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInUseCheckBytes(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmInuseCheckTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInuseTotalTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsForegroundActivityDetectionStarted(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWaitForQCResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiValidState(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastAutoSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastAutoSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSuggestionNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSuggestionNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTcpMonitorTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastTcpMonitorTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLogUtils(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationCount(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotificationCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifier(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicyManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/net/NetworkPolicyManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrevAccumulatedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevAccumulatedTime:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSsid(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSsid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchForIndividualAppsEnabled(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchForIndividualAppsEverDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpeOffByUser(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpeOffByUser24H(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser24H:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpeOffDefault(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffDefault:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpeOnByNotification(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnByNotification:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpeOnByOther(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnByOther:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpeOnBySetting(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnBySetting:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsedBytes(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnectedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiConnectedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTransportLayerMonitor(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDetectionMode(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDnsDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsDetected:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInuseTotalTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWaitForQCResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWifiConnected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWifiValidState(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSsid(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSsid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchForIndividualAppsEnabled(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchForIndividualAppsEverDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTcpeOffByUser(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTcpeOffByUser24H(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser24H:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTcpeOffDefault(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffDefault:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTcpeOnByNotification(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnByNotification:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTcpeOnByOther(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnByOther:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTcpeOnBySetting(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnBySetting:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsedBytes(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiConnectedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiConnectedTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiNetwork(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/net/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetwork:Landroid/net/Network;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAudioManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getAudioManager()Landroid/media/AudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPackageManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetBigDataValues(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->resetBigDataValues()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mrunDelayedNetdShellCommandAgain(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->runDelayedNetdShellCommandAgain(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mrunShellCommandResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->runShellCommandResult(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetVoipOngoing(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->setVoipOngoing(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateDnsInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateDnsInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMonitoringOperation(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRunningDnsList(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateRunningDnsList(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTcpDnsHistory(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateTcpDnsHistory(Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEdatalock:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEAllSocketlock:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsdatalock:Ljava/lang/Object;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsListlock:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningSynlock:Ljava/lang/Object;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 9

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const p2, 0x211f5

    .line 5
    .line 6
    .line 7
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_FOREGROUND_ACTIVITY_START:I

    .line 8
    .line 9
    const p2, 0x211f6

    .line 10
    .line 11
    .line 12
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_FOREGROUND_ACTIVITY_STOP:I

    .line 13
    .line 14
    const p2, 0x211f7

    .line 15
    .line 16
    .line 17
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT:I

    .line 18
    .line 19
    const p2, 0x21209

    .line 20
    .line 21
    .line 22
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_QC_REQUEST:I

    .line 23
    .line 24
    const p2, 0x2120a

    .line 25
    .line 26
    .line 27
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_QC_RESULT_UPDATED:I

    .line 28
    .line 29
    const p2, 0x2120b

    .line 30
    .line 31
    .line 32
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_QC_RESULT_TIMEOUT:I

    .line 33
    .line 34
    const p2, 0x2120c

    .line 35
    .line 36
    .line 37
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_MOBILE_DATA:I

    .line 38
    .line 39
    const p2, 0x2120d

    .line 40
    .line 41
    .line 42
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_WIFI:I

    .line 43
    .line 44
    const p2, 0x2120e

    .line 45
    .line 46
    .line 47
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_SWITCH_INDIVIDUAL_APP_LIST_CHANGED:I

    .line 48
    .line 49
    const p2, 0x21213

    .line 50
    .line 51
    .line 52
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_TURN_ON_MOBILE_NETWORK:I

    .line 53
    .line 54
    const p2, 0x21214

    .line 55
    .line 56
    .line 57
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_TURN_OFF_MOBILE_NETWORK:I

    .line 58
    .line 59
    const p2, 0x21215

    .line 60
    .line 61
    .line 62
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_CHECK_MOBILE_DATA_ENABLED:I

    .line 63
    .line 64
    const p2, 0x21216

    .line 65
    .line 66
    .line 67
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_RESET_TCP_TIMEOUT_VALUE:I

    .line 68
    .line 69
    const p2, 0x2121d

    .line 70
    .line 71
    .line 72
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_SHELL_COMMAND_RESULT:I

    .line 73
    .line 74
    const p2, 0x2121e

    .line 75
    .line 76
    .line 77
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_RUN_SHELL_COMMAND_AGAIN:I

    .line 78
    .line 79
    const p2, 0x21227

    .line 80
    .line 81
    .line 82
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_VOIP_STATE_CHANGED:I

    .line 83
    .line 84
    const/4 p2, 0x2

    .line 85
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_COLUMN_LOCAL_ADDRESS:I

    .line 86
    .line 87
    const/4 p2, 0x5

    .line 88
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_COLUMN_TX_RX_QUEUE:I

    .line 89
    .line 90
    const/4 v0, 0x7

    .line 91
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_COLUMN_RETRANSMISSION:I

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->RECEIVE_QUEUE_COLUMN:I

    .line 95
    .line 96
    const/16 v1, 0xd

    .line 97
    .line 98
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_COLUMN_RTO:I

    .line 99
    .line 100
    const/16 v1, 0x10

    .line 101
    .line 102
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_COLUMN_CWND:I

    .line 103
    .line 104
    const-string v1, "01"

    .line 105
    .line 106
    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_STATUS_ESTABLISHED:Ljava/lang/String;

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    .line 110
    .line 111
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUidNotified:Z

    .line 112
    .line 113
    const/16 v2, -0xc8

    .line 114
    .line 115
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    .line 116
    .line 117
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeedThreshold:I

    .line 122
    .line 123
    const/16 v2, -0x37

    .line 124
    .line 125
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkRssiThreshold:I

    .line 126
    .line 127
    const-wide/16 v2, 0x0

    .line 128
    .line 129
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLoss:D

    .line 130
    .line 131
    const-string v2, ""

    .line 132
    .line 133
    iput-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSsid:Ljava/lang/String;

    .line 134
    .line 135
    const-wide/16 v2, 0x0

    .line 136
    .line 137
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx:J

    .line 138
    .line 139
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx:J

    .line 140
    .line 141
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxDiff:J

    .line 142
    .line 143
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRxDiff:J

    .line 144
    .line 145
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    .line 146
    .line 147
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    .line 148
    .line 149
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    .line 150
    .line 151
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 152
    .line 153
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 154
    .line 155
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsQaiSwitchableMode:Z

    .line 156
    .line 157
    const/4 v4, -0x1

    .line 158
    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentQai:I

    .line 159
    .line 160
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    .line 161
    .line 162
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsScreenOn:Z

    .line 163
    .line 164
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiConnected:Z

    .line 165
    .line 166
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    .line 167
    .line 168
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    .line 169
    .line 170
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    .line 171
    .line 172
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsMobileDataEnabledByTcpMonitor:Z

    .line 173
    .line 174
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevSynSize:I

    .line 175
    .line 176
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 177
    .line 178
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 179
    .line 180
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 181
    .line 182
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    .line 183
    .line 184
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 185
    .line 186
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 187
    .line 188
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiConnectedTime:J

    .line 189
    .line 190
    new-instance v4, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 196
    .line 197
    const/16 v4, 0x3a98

    .line 198
    .line 199
    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TIME_RESET_TCP_TIMEOUT:I

    .line 200
    .line 201
    const/4 v4, 0x3

    .line 202
    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->MOBILE_DATA_ENABLE_CHECK_MAX:I

    .line 203
    .line 204
    const/16 v5, 0xbb8

    .line 205
    .line 206
    iput v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->MOBILE_DATA_ENABLE_CHECK_DELAY:I

    .line 207
    .line 208
    const-wide/16 v6, 0x3e8

    .line 209
    .line 210
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_DETECT_INTERVAL:J

    .line 211
    .line 212
    const-string v6, "TCPMONITOR"

    .line 213
    .line 214
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->KEY_TCP_MONITOR_COMMAND:Ljava/lang/String;

    .line 215
    .line 216
    const-string v6, "show_individual_apps"

    .line 217
    .line 218
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->EXTRA_SHOW_SWITCH_FOR_INDIVIDUAL_APPS:Ljava/lang/String;

    .line 219
    .line 220
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_MONITOR_UID_BLOCK_NETD_MODE:Z

    .line 221
    .line 222
    new-instance v6, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 223
    .line 224
    invoke-direct {v6}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 225
    .line 226
    .line 227
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 228
    .line 229
    const/4 v6, 0x0

    .line 230
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 231
    .line 232
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 233
    .line 234
    new-instance v7, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    iput-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLatestTxRx:Ljava/util/ArrayList;

    .line 240
    .line 241
    const/16 v7, 0xa

    .line 242
    .line 243
    iput v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdNormalEstablish:I

    .line 244
    .line 245
    const/16 v8, 0x64

    .line 246
    .line 247
    iput v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdLatestSumTxRx:I

    .line 248
    .line 249
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdDetectionIgnored:I

    .line 250
    .line 251
    new-instance v8, Ljava/lang/Object;

    .line 252
    .line 253
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    .line 257
    .line 258
    new-instance v8, Ljava/util/HashMap;

    .line 259
    .line 260
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 264
    .line 265
    new-instance v8, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .line 269
    .line 270
    iput-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    .line 271
    .line 272
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevRunningBeaconCount:I

    .line 273
    .line 274
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBeaconRateCount:I

    .line 275
    .line 276
    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->BEACON_SAMPLE_THRESHOLD:I

    .line 277
    .line 278
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->BEACON_AVERAGE_RATE_TRHESHOLD:I

    .line 279
    .line 280
    new-instance p2, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    .line 285
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 286
    .line 287
    new-instance p2, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .line 291
    .line 292
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    .line 293
    .line 294
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsVoipOngoing:Z

    .line 295
    .line 296
    iput v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TIME_DELAY_VOIP_STATE_FINISHED:I

    .line 297
    .line 298
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChangedTime:J

    .line 299
    .line 300
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 301
    .line 302
    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 303
    .line 304
    .line 305
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 306
    .line 307
    new-instance p2, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .line 311
    .line 312
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    .line 313
    .line 314
    new-instance p2, Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .line 318
    .line 319
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 320
    .line 321
    new-instance p2, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .line 325
    .line 326
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistoryForL2:Ljava/util/ArrayList;

    .line 327
    .line 328
    new-instance p2, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    .line 334
    .line 335
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 336
    .line 337
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSuggestionNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 338
    .line 339
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 340
    .line 341
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastAutoSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 342
    .line 343
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastTcpMonitorTime:J

    .line 344
    .line 345
    const/16 p2, 0x258

    .line 346
    .line 347
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_HISTORY_MAX_COUNT:I

    .line 348
    .line 349
    iput v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->TCP_DETECTED_HISTORY_SIZE:I

    .line 350
    .line 351
    iput-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mAudioManager:Landroid/media/AudioManager;

    .line 352
    .line 353
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundAppTx:Z

    .line 354
    .line 355
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx2:J

    .line 356
    .line 357
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx2:J

    .line 358
    .line 359
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxDiff2:J

    .line 360
    .line 361
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRxDiff2:J

    .line 362
    .line 363
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx2:J

    .line 364
    .line 365
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundAppTx2:Z

    .line 366
    .line 367
    new-instance p2, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .line 371
    .line 372
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 373
    .line 374
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsDetected:Z

    .line 375
    .line 376
    new-instance p2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;

    .line 377
    .line 378
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$5;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    .line 379
    .line 380
    .line 381
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 382
    .line 383
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsCallbackRegistered:Z

    .line 384
    .line 385
    new-instance p2, Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .line 389
    .line 390
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 391
    .line 392
    new-instance p2, Ljava/util/HashMap;

    .line 393
    .line 394
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 395
    .line 396
    .line 397
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 398
    .line 399
    new-instance p2, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .line 403
    .line 404
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    .line 405
    .line 406
    new-instance p2, Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .line 410
    .line 411
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 412
    .line 413
    new-instance p2, Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .line 417
    .line 418
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    .line 419
    .line 420
    new-instance p2, Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .line 424
    .line 425
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 426
    .line 427
    new-instance p2, Ljava/util/ArrayList;

    .line 428
    .line 429
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .line 431
    .line 432
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    .line 433
    .line 434
    new-instance p2, Ljava/lang/Object;

    .line 435
    .line 436
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 437
    .line 438
    .line 439
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 440
    .line 441
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnByNotification:I

    .line 442
    .line 443
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnBySetting:I

    .line 444
    .line 445
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnByOther:I

    .line 446
    .line 447
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser:I

    .line 448
    .line 449
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser24H:I

    .line 450
    .line 451
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffDefault:I

    .line 452
    .line 453
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 454
    .line 455
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 456
    .line 457
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 458
    .line 459
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 460
    .line 461
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotificationCount:I

    .line 462
    .line 463
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevAccumulatedTime:I

    .line 464
    .line 465
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 466
    .line 467
    iput-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 468
    .line 469
    iput-object p4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 470
    .line 471
    new-instance p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 472
    .line 473
    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;-><init>(Landroid/content/Context;)V

    .line 474
    .line 475
    .line 476
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 477
    .line 478
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 479
    .line 480
    .line 481
    move-result-object p2

    .line 482
    const-string p3, "wifi_switch_for_individual_apps_ever_detected"

    .line 483
    .line 484
    invoke-static {p2, p3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 485
    .line 486
    .line 487
    move-result p2

    .line 488
    if-ne p2, v0, :cond_0

    .line 489
    .line 490
    goto :goto_0

    .line 491
    :cond_0
    move v0, v1

    .line 492
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 493
    .line 494
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 495
    .line 496
    if-eqz p2, :cond_1

    .line 497
    .line 498
    new-instance p2, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    const-string p3, "mSwitchForIndividualAppsEverDetected: "

    .line 501
    .line 502
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 506
    .line 507
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object p2

    .line 514
    const-string p3, "SemWifiSwitchForIndividualAppsService"

    .line 515
    .line 516
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->startHandler()V

    .line 520
    .line 521
    .line 522
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->setupBroadcastReceiver()V

    .line 523
    .line 524
    .line 525
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->registerWifiNetworkCallbacks()V

    .line 526
    .line 527
    .line 528
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->registerForSwitchForIndividualAppsChange()V

    .line 529
    .line 530
    .line 531
    new-instance p2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$$ExternalSyntheticLambda0;

    .line 532
    .line 533
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p4, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 537
    .line 538
    .line 539
    const-class p2, Landroid/net/NetworkPolicyManager;

    .line 540
    .line 541
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    check-cast p1, Landroid/net/NetworkPolicyManager;

    .line 546
    .line 547
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 548
    .line 549
    return-void
.end method

.method private addAllTcpSocketInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEAllSocketlock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/16 v2, 0x258

    .line 37
    .line 38
    if-lt v1, v2, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->retransmission:I

    .line 52
    .line 53
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->syn:I

    .line 54
    .line 55
    add-int v3, v1, v2

    .line 56
    .line 57
    if-lez v3, :cond_2

    .line 58
    .line 59
    iget v3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 60
    .line 61
    mul-int/lit8 v3, v3, 0x64

    .line 62
    .line 63
    add-int/2addr v1, v2

    .line 64
    div-int/2addr v3, v1

    .line 65
    const/16 v1, 0x32

    .line 66
    .line 67
    if-ge v3, v1, :cond_2

    .line 68
    .line 69
    const-string v1, "SLOW"

    .line 70
    .line 71
    iput-object v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->result:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const-string v1, "NORMAL"

    .line 75
    .line 76
    iput-object v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->result:Ljava/lang/String;

    .line 77
    .line 78
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_3
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method private addCurrentUidBlockedList(I)V
    .locals 3

    .line 1
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    const-string v1, "addCurrentUidBlockedList: "

    .line 4
    .line 5
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->DETECTED:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    .line 35
    .line 36
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0

    .line 44
    :cond_0
    return-void
.end method

.method private addProblematicDomainName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    sub-int/2addr v3, v4

    .line 20
    if-ge v1, v3, :cond_2

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    const/16 v3, 0x257

    .line 25
    .line 26
    if-ge v1, v3, :cond_2

    .line 27
    .line 28
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    new-instance v3, Ljava/util/Date;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 56
    .line 57
    const-string v6, "yyyy-MM-dd HH:mm:ss "

    .line 58
    .line 59
    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Ljava/lang/String;

    .line 69
    .line 70
    const-string v7, ","

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    array-length v8, v6

    .line 77
    if-le v8, v4, :cond_1

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    aget-object v3, v6, v0

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    aget-object v3, v6, v4

    .line 107
    .line 108
    invoke-static {v2, v3, v7, p1, v7}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateRunningSynList(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 122
    .line 123
    if-eqz v2, :cond_0

    .line 124
    .line 125
    const-string v2, "mRunningDnsList - addProblematicDomainName Index :"

    .line 126
    .line 127
    const-string v3, " size: "

    .line 128
    .line 129
    invoke-static {v2, v1, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v3, "SemWifiSwitchForIndividualAppsService"

    .line 147
    .line 148
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_0
    move v2, v4

    .line 152
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_2
    return-void
.end method

.method private addTcpMonitorInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastTcpMonitorTime:J

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEdatalock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 13
    .line 14
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/16 v2, 0x258

    .line 39
    .line 40
    if-lt v1, v2, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method private addTcpMonitorInfoListForL2(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEdatalock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistoryForL2:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x258

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistoryForL2:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistoryForL2:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistoryForL2:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method private changeAllRouteToDefaultNetwork()V
    .locals 4

    .line 1
    const-string v0, " while ip rule del pref 2 2>/dev/null; do true; done"

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 8
    .line 9
    const-string v2, "changeAllRouteToDefaultNetwork - command:  while ip rule del pref 2 2>/dev/null; do true; done"

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    long-to-int v2, v2

    .line 36
    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 37
    .line 38
    sub-int/2addr v2, v3

    .line 39
    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevAccumulatedTime:I

    .line 40
    .line 41
    sub-int/2addr v2, v3

    .line 42
    add-int/2addr v2, v1

    .line 43
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 47
    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeAllDnsRoutes()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method

.method private changeDnsRouteUid(ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->checkNoSpecialChar(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 35
    .line 36
    const-string v5, "SemWifiSwitchForIndividualAppsService"

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v6, "changeDnsRouteUid: "

    .line 43
    .line 44
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v6, " - "

    .line 51
    .line 52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_1
    const-string v4, "ip -4 rule add from all uidrange "

    .line 66
    .line 67
    const-string v6, "-"

    .line 68
    .line 69
    const-string v7, " to "

    .line 70
    .line 71
    invoke-static {v4, v6, p1, p1, v7}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, " table "

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, " pref 1"

    .line 87
    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 96
    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    const-string v4, "changeDnsRouteUid - command: "

    .line 100
    .line 101
    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 109
    .line 110
    if-eqz v4, :cond_0

    .line 111
    .line 112
    const/4 v5, 0x1

    .line 113
    invoke-virtual {p0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    return-void
.end method

.method private changeRouteToDefaultNetwork(I)V
    .locals 11

    .line 1
    const-string v0, "changeRouteToDefaultNetwork - command: "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "ip -4 rule del from all uidrange "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "-"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " pref 2"

    .line 22
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
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const-string v2, "SemWifiSwitchForIndividualAppsService"

    .line 35
    .line 36
    const-string v3, "changeRouteToDefaultNetwork - command: "

    .line 37
    .line 38
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v2

    .line 60
    :try_start_0
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 61
    .line 62
    const-wide/16 v5, 0x0

    .line 63
    .line 64
    cmp-long v3, v3, v5

    .line 65
    .line 66
    if-lez v3, :cond_2

    .line 67
    .line 68
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 69
    .line 70
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v9

    .line 78
    add-long/2addr v7, v9

    .line 79
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 80
    .line 81
    sub-long/2addr v7, v9

    .line 82
    add-long/2addr v7, v3

    .line 83
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 84
    .line 85
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 86
    .line 87
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 88
    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    const-string v3, "SemWifiSwitchForIndividualAppsService"

    .line 92
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 113
    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "changeRouteToDefaultNetwork mUsedBytes: "

    .line 121
    .line 122
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 126
    .line 127
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, " mInUseCheckBytes"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 136
    .line 137
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v2, " mInuseCheckTime"

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, " mInuseTotalTime "

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_3
    const-string v0, "wlan0"

    .line 168
    .line 169
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeDnsRouteUid(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    throw p0
.end method

.method private changeRouteToMobileNetwork(I)V
    .locals 8

    .line 1
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    const-string v1, "cRToMobile: "

    .line 4
    .line 5
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getMobileInterfaceName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 29
    .line 30
    const-string v1, "cRToMobile - check interface name again"

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    const v0, 0x21215

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-wide/16 v0, 0xbb8

    .line 43
    .line 44
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 45
    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const-string p1, "SemWifiSwitchForIndividualAppsService"

    .line 55
    .line 56
    const-string v0, "cRToMobile - failed to get interface name"

    .line 57
    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->checkNoSpecialChar(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_7

    .line 69
    .line 70
    const-string v3, "ip -4 rule add from all uidrange "

    .line 71
    .line 72
    const-string v4, "-"

    .line 73
    .line 74
    const-string v5, " table "

    .line 75
    .line 76
    invoke-static {v3, v4, p1, p1, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v4, " pref 2"

    .line 81
    .line 82
    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    const-string v3, "SemWifiSwitchForIndividualAppsService"

    .line 91
    .line 92
    const-string v4, "changeRouteToMobileNetwork - command: "

    .line 93
    .line 94
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 102
    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->modifyTcpTimeOut()V

    .line 113
    .line 114
    .line 115
    const v0, 0x21216

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-wide/16 v2, 0x3a98

    .line 126
    .line 127
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 128
    .line 129
    .line 130
    const-string v0, "wlan0"

    .line 131
    .line 132
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->changeDnsRouteUid(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter v0

    .line 138
    :try_start_0
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 139
    .line 140
    if-lez v2, :cond_6

    .line 141
    .line 142
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 143
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    long-to-int v3, v3

    .line 149
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 150
    .line 151
    sub-int/2addr v3, v4

    .line 152
    add-int/2addr v3, v2

    .line 153
    iput v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    goto :goto_1

    .line 158
    :cond_6
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    long-to-int v2, v2

    .line 163
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 164
    .line 165
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 166
    .line 167
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 168
    .line 169
    .line 170
    move-result-wide v4

    .line 171
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v6

    .line 175
    add-long/2addr v4, v6

    .line 176
    add-long/2addr v4, v2

    .line 177
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 178
    .line 179
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser24H:I

    .line 180
    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 183
    .line 184
    if-eqz p1, :cond_7

    .line 185
    .line 186
    const-string p1, "SemWifiSwitchForIndividualAppsService"

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v1, "changeRouteToMobileNetwork mUsedBytes: "

    .line 191
    .line 192
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, " mInUseCheckBytes"

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 206
    .line 207
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, " mInuseCheckTime"

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, " mInuseTotalTime "

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 226
    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    throw p0

    .line 240
    :cond_7
    return-void
.end method

.method private checkNoSpecialChar(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, "[$&+,:;=\\\\?@#|/\'<>.^*()%!]"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p0, "SemWifiSwitchForIndividualAppsService"

    .line 18
    .line 19
    const-string p1, "Non-standard Mobile interface"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method private clearCurrentUidBlockedList()V
    .locals 9

    .line 1
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    const-string v1, "clearCurrentUidBlockedList:"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 76
    .line 77
    .line 78
    move-result-wide v7

    .line 79
    add-long/2addr v5, v7

    .line 80
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 81
    .line 82
    sub-long/2addr v5, v7

    .line 83
    add-long/2addr v5, v3

    .line 84
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 85
    .line 86
    monitor-exit v2

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v3, "dump - Exception "

    .line 97
    .line 98
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 115
    .line 116
    monitor-enter v0

    .line 117
    const-wide/16 v1, 0x0

    .line 118
    .line 119
    :try_start_3
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 120
    .line 121
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 122
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 123
    .line 124
    if-eqz v0, :cond_1

    .line 125
    .line 126
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v2, "clearCurrentUidBlockedList mUsedBytes: "

    .line 131
    .line 132
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 136
    .line 137
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v2, " mInUseCheckBytes"

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 146
    .line 147
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, " mInuseCheckTime"

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, " mInuseTotalTime "

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 178
    .line 179
    if-eqz v0, :cond_2

    .line 180
    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    .line 182
    .line 183
    monitor-enter v0

    .line 184
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 187
    .line 188
    .line 189
    monitor-exit v0

    .line 190
    goto :goto_1

    .line 191
    :catchall_1
    move-exception p0

    .line 192
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    throw p0

    .line 194
    :cond_2
    :goto_1
    return-void

    .line 195
    :catchall_2
    move-exception p0

    .line 196
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 197
    throw p0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "audio"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/media/AudioManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mAudioManager:Landroid/media/AudioManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mAudioManager:Landroid/media/AudioManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getCurrentUidBlockedListStatus(I)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-object p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->NONE:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    .line 36
    .line 37
    return-object p0

    .line 38
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method private getMobileInterfaceName()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v1, :cond_3

    .line 14
    .line 15
    aget-object v5, v0, v4

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v6, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eqz v7, :cond_2

    .line 30
    .line 31
    const/16 v7, 0xc

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_2

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroid/net/LinkAddress;

    .line 66
    .line 67
    invoke-virtual {v7}, Landroid/net/LinkAddress;->isIpv4()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_0

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :cond_1
    if-nez v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v7, "Stacked"

    .line 84
    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    invoke-virtual {v5}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const/4 v5, 0x1

    .line 100
    aget-object v2, v2, v5

    .line 101
    .line 102
    const-string v5, " "

    .line 103
    .line 104
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const/4 v5, 0x3

    .line 109
    aget-object v2, v2, v5

    .line 110
    .line 111
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 115
    .line 116
    if-eqz p0, :cond_4

    .line 117
    .line 118
    const-string p0, "getMobileInterfaceName - "

    .line 119
    .line 120
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 125
    .line 126
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_4
    return-object v2
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    return-object p0
.end method

.method private hasActivatedCurrentUidBlockedList()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    .line 35
    .line 36
    sget-object v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->ACTIVATED:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    .line 37
    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    monitor-exit v0

    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const-string p0, "SemWifiSwitchForIndividualAppsService"

    .line 47
    .line 48
    const-string v0, "hasActivatedCurrentUidBlockedList: no items"

    .line 49
    .line 50
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p0
.end method

.method private static hexa2decIPv4(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    add-int/lit8 v2, v1, -0x1

    .line 15
    .line 16
    add-int/lit8 v3, v1, 0x1

    .line 17
    .line 18
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/16 v3, 0x10

    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "."

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, -0x2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    add-int/lit8 p0, p0, -0x1

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method private static hexa2decIPv6(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x20

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v2, v3, :cond_0

    .line 21
    .line 22
    add-int/lit8 v3, v2, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hexa2decIPv4(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "."

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move v2, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    add-int/lit8 p0, p0, -0x1

    .line 47
    .line 48
    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    if-eq v0, v1, :cond_2

    .line 64
    .line 65
    const-string p0, "0.0.0.0"

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hexa2decIPv4(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method private intToIp(I)Ljava/lang/String;
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

.method private isAggressiveMode()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentQai:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    if-ne p0, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    return v1

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method private isBeaconRatePoor()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevRunningBeaconCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevRunningBeaconCount:I

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    rsub-int/lit8 v0, v0, 0x0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-gez v0, :cond_2

    .line 13
    .line 14
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBeaconRateCount:I

    .line 15
    .line 16
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->trimToSize()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    move v5, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/4 v3, 0x3

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBeaconRateCount:I

    .line 40
    .line 41
    add-int/2addr v4, v2

    .line 42
    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBeaconRateCount:I

    .line 43
    .line 44
    if-le v4, v3, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    move v2, v1

    .line 48
    move v5, v2

    .line 49
    goto :goto_2

    .line 50
    :cond_4
    const/16 v4, 0x28

    .line 51
    .line 52
    if-ge v0, v4, :cond_1

    .line 53
    .line 54
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBeaconRateCount:I

    .line 55
    .line 56
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ne v4, v3, :cond_5

    .line 63
    .line 64
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/ArrayList;->trimToSize()V

    .line 72
    .line 73
    .line 74
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-lez v3, :cond_1

    .line 90
    .line 91
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    move v5, v1

    .line 98
    move v6, v5

    .line 99
    :goto_1
    if-ge v6, v4, :cond_6

    .line 100
    .line 101
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    check-cast v7, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    add-int/2addr v5, v7

    .line 114
    goto :goto_1

    .line 115
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningBeaconCountList:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    div-int/2addr v5, v3

    .line 122
    const/4 v3, 0x5

    .line 123
    if-le v5, v3, :cond_7

    .line 124
    .line 125
    move v2, v1

    .line 126
    :cond_7
    :goto_2
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 127
    .line 128
    if-eqz v3, :cond_8

    .line 129
    .line 130
    if-eqz v2, :cond_8

    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v4, "isBeaconRatePoor: "

    .line 135
    .line 136
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v4, ", "

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevRunningBeaconCount:I

    .line 148
    .line 149
    const-string v7, ", 0, "

    .line 150
    .line 151
    invoke-static {v3, v6, v7, v0, v4}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v3, "SemWifiSwitchForIndividualAppsService"

    .line 162
    .line 163
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_8
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevRunningBeaconCount:I

    .line 167
    .line 168
    return v2
.end method

.method private isBlockingApp(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)Z
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 9
    .line 10
    const-string v3, ", MAC = "

    .line 11
    .line 12
    const/16 v4, 0xa

    .line 13
    .line 14
    const-string v5, "BR"

    .line 15
    .line 16
    const-string v6, "BS"

    .line 17
    .line 18
    const/4 v7, 0x2

    .line 19
    const/16 v8, 0x32

    .line 20
    .line 21
    const/4 v9, 0x5

    .line 22
    const-string v10, "SemWifiSwitchForIndividualAppsService"

    .line 23
    .line 24
    const/4 v11, 0x1

    .line 25
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    if-eqz v2, :cond_1c

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1c

    .line 36
    .line 37
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundAppTx:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1c

    .line 40
    .line 41
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    const-string v2, "isBlockingApp CHAT"

    .line 46
    .line 47
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 51
    .line 52
    if-lez v2, :cond_4

    .line 53
    .line 54
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    .line 55
    .line 56
    if-le v2, v9, :cond_2

    .line 57
    .line 58
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "isBlockingApp CHAT RC DETECTED = "

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_1
    iput-object v5, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 82
    .line 83
    return v11

    .line 84
    :cond_2
    add-int/2addr v2, v11

    .line 85
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    .line 86
    .line 87
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v5, "isBlockingApp CHAT RC = "

    .line 94
    .line 95
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    .line 99
    .line 100
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_3
    const-string v2, "BR_cont"

    .line 111
    .line 112
    iput-object v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 113
    .line 114
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    .line 115
    .line 116
    iput v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->chatRetrans:I

    .line 117
    .line 118
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-ne v2, v4, :cond_5

    .line 125
    .line 126
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 134
    .line 135
    .line 136
    :cond_5
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 137
    .line 138
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevSynSize:I

    .line 139
    .line 140
    if-ge v2, v4, :cond_6

    .line 141
    .line 142
    iget v5, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 143
    .line 144
    if-ge v5, v4, :cond_6

    .line 145
    .line 146
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_6
    if-nez v2, :cond_7

    .line 153
    .line 154
    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 155
    .line 156
    if-lez v4, :cond_7

    .line 157
    .line 158
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_7
    if-lez v2, :cond_a

    .line 165
    .line 166
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    .line 167
    .line 168
    if-lez v2, :cond_8

    .line 169
    .line 170
    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 171
    .line 172
    mul-int/lit8 v4, v4, 0x64

    .line 173
    .line 174
    div-int/2addr v4, v2

    .line 175
    if-gt v4, v8, :cond_9

    .line 176
    .line 177
    :cond_8
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    .line 178
    .line 179
    if-lez v2, :cond_a

    .line 180
    .line 181
    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 182
    .line 183
    mul-int/lit8 v4, v4, 0x64

    .line 184
    .line 185
    div-int/2addr v4, v2

    .line 186
    if-le v4, v8, :cond_a

    .line 187
    .line 188
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :goto_0
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 200
    .line 201
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    move v4, v0

    .line 208
    :goto_1
    if-ge v4, v2, :cond_b

    .line 209
    .line 210
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    add-int/lit8 v4, v4, 0x1

    .line 215
    .line 216
    check-cast v5, Ljava/lang/Integer;

    .line 217
    .line 218
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    iget v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 223
    .line 224
    add-int/2addr v8, v5

    .line 225
    iput v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 229
    .line 230
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isSwitchEnabledApp(I)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    const/4 v2, 0x3

    .line 237
    if-eqz v1, :cond_d

    .line 238
    .line 239
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 240
    .line 241
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_d

    .line 246
    .line 247
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    iget-object v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_d

    .line 260
    .line 261
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iget-object v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-le v1, v9, :cond_d

    .line 280
    .line 281
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 282
    .line 283
    if-eqz v1, :cond_c

    .line 284
    .line 285
    const-string v1, "isBlockingApp CHAT isBlockingApp - SBC aggressive"

    .line 286
    .line 287
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :cond_c
    move v9, v7

    .line 291
    goto :goto_2

    .line 292
    :cond_d
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 293
    .line 294
    if-ge v1, v9, :cond_f

    .line 295
    .line 296
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 297
    .line 298
    if-eqz v1, :cond_e

    .line 299
    .line 300
    const-string v1, "isBlockingApp CHAT isBlockingApp - SBC low"

    .line 301
    .line 302
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    :cond_e
    move v9, v2

    .line 306
    :cond_f
    :goto_2
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 307
    .line 308
    if-eqz v1, :cond_10

    .line 309
    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v4, "isBlockingApp CHAT SBC = "

    .line 313
    .line 314
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 318
    .line 319
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    :cond_10
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 336
    .line 337
    if-lt v1, v9, :cond_11

    .line 338
    .line 339
    iput-object v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 340
    .line 341
    return v11

    .line 342
    :cond_11
    if-lez v1, :cond_13

    .line 343
    .line 344
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 345
    .line 346
    if-nez v1, :cond_13

    .line 347
    .line 348
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 349
    .line 350
    add-int/2addr v1, v11

    .line 351
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 352
    .line 353
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 354
    .line 355
    if-eqz v1, :cond_12

    .line 356
    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v3, "isBlockingApp CHAT SBNEC = "

    .line 360
    .line 361
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 365
    .line 366
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    :cond_12
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 377
    .line 378
    iput v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->synBlockNoEstablish:I

    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_13
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 382
    .line 383
    :goto_3
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 384
    .line 385
    if-lt v1, v9, :cond_14

    .line 386
    .line 387
    iput-object v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 388
    .line 389
    return v11

    .line 390
    :cond_14
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    .line 391
    .line 392
    if-lez v1, :cond_16

    .line 393
    .line 394
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 395
    .line 396
    if-lez v1, :cond_16

    .line 397
    .line 398
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 399
    .line 400
    add-int/2addr v1, v11

    .line 401
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 402
    .line 403
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 404
    .line 405
    if-eqz v1, :cond_15

    .line 406
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v3, "isBlockingApp CHAT SQC = "

    .line 410
    .line 411
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 415
    .line 416
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    :cond_15
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 427
    .line 428
    iput v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueueCount:I

    .line 429
    .line 430
    if-le v1, v7, :cond_17

    .line 431
    .line 432
    const-string p0, "BQ"

    .line 433
    .line 434
    iput-object p0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 435
    .line 436
    return v11

    .line 437
    :cond_16
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 438
    .line 439
    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsDetected()Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    const-string v3, "BD"

    .line 444
    .line 445
    const-string v4, "isBlockingApp CHAT DBC = "

    .line 446
    .line 447
    if-eqz v1, :cond_19

    .line 448
    .line 449
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->resetDnsDetected()V

    .line 450
    .line 451
    .line 452
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 453
    .line 454
    if-nez v1, :cond_2a

    .line 455
    .line 456
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 457
    .line 458
    add-int/2addr v1, v11

    .line 459
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 460
    .line 461
    iput v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->dnsBlockCount:I

    .line 462
    .line 463
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 464
    .line 465
    if-eqz v1, :cond_18

    .line 466
    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 473
    .line 474
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    :cond_18
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 485
    .line 486
    if-le p0, v2, :cond_2a

    .line 487
    .line 488
    iput-object v3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 489
    .line 490
    return v11

    .line 491
    :cond_19
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 492
    .line 493
    if-nez v1, :cond_1a

    .line 494
    .line 495
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 496
    .line 497
    if-lez v1, :cond_1a

    .line 498
    .line 499
    add-int/2addr v1, v11

    .line 500
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 501
    .line 502
    goto :goto_4

    .line 503
    :cond_1a
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 504
    .line 505
    :goto_4
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 506
    .line 507
    if-eqz v1, :cond_1b

    .line 508
    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 515
    .line 516
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .line 525
    .line 526
    :cond_1b
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 527
    .line 528
    iput p0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->dnsBlockCount:I

    .line 529
    .line 530
    if-le p0, v2, :cond_2a

    .line 531
    .line 532
    iput-object v3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 533
    .line 534
    return v11

    .line 535
    :cond_1c
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 536
    .line 537
    if-eqz v2, :cond_1d

    .line 538
    .line 539
    const-string v2, "isBlockingApp SWITCHABLE"

    .line 540
    .line 541
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    :cond_1d
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 545
    .line 546
    if-lez v2, :cond_1e

    .line 547
    .line 548
    mul-int/lit8 v2, v2, 0x64

    .line 549
    .line 550
    iget v13, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 551
    .line 552
    div-int/2addr v2, v13

    .line 553
    const/16 v13, 0x19

    .line 554
    .line 555
    if-lt v2, v13, :cond_1e

    .line 556
    .line 557
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 558
    .line 559
    add-int/2addr v2, v11

    .line 560
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 561
    .line 562
    iput v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransCount:I

    .line 563
    .line 564
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 565
    .line 566
    if-eqz v2, :cond_1f

    .line 567
    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    const-string v13, "isBlockingApp SWITCHABLE RC = "

    .line 571
    .line 572
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    iget v13, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 576
    .line 577
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    goto :goto_5

    .line 588
    :cond_1e
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 589
    .line 590
    :cond_1f
    :goto_5
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 591
    .line 592
    if-le v2, v9, :cond_20

    .line 593
    .line 594
    iput-object v5, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 595
    .line 596
    return v11

    .line 597
    :cond_20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    if-ne v2, v4, :cond_21

    .line 604
    .line 605
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 611
    .line 612
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 613
    .line 614
    .line 615
    :cond_21
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 616
    .line 617
    if-nez v2, :cond_22

    .line 618
    .line 619
    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 620
    .line 621
    if-lez v4, :cond_22

    .line 622
    .line 623
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 624
    .line 625
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    goto :goto_6

    .line 629
    :cond_22
    if-lez v2, :cond_25

    .line 630
    .line 631
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    .line 632
    .line 633
    if-lez v2, :cond_23

    .line 634
    .line 635
    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 636
    .line 637
    mul-int/lit8 v4, v4, 0x64

    .line 638
    .line 639
    div-int/2addr v4, v2

    .line 640
    if-gt v4, v8, :cond_24

    .line 641
    .line 642
    :cond_23
    iget v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    .line 643
    .line 644
    if-lez v2, :cond_25

    .line 645
    .line 646
    iget v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 647
    .line 648
    mul-int/lit8 v4, v4, 0x64

    .line 649
    .line 650
    div-int/2addr v4, v2

    .line 651
    if-le v4, v8, :cond_25

    .line 652
    .line 653
    :cond_24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 654
    .line 655
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    goto :goto_6

    .line 659
    :cond_25
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 660
    .line 661
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    :goto_6
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 665
    .line 666
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 667
    .line 668
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    move v4, v0

    .line 673
    :goto_7
    if-ge v4, v2, :cond_26

    .line 674
    .line 675
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    add-int/lit8 v4, v4, 0x1

    .line 680
    .line 681
    check-cast v5, Ljava/lang/Integer;

    .line 682
    .line 683
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 684
    .line 685
    .line 686
    move-result v5

    .line 687
    iget v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 688
    .line 689
    add-int/2addr v8, v5

    .line 690
    iput v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 691
    .line 692
    goto :goto_7

    .line 693
    :cond_26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 694
    .line 695
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    if-eqz v1, :cond_27

    .line 700
    .line 701
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 702
    .line 703
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    iget-object v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    .line 708
    .line 709
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    if-eqz v1, :cond_27

    .line 714
    .line 715
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 716
    .line 717
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    iget-object v2, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    .line 722
    .line 723
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 728
    .line 729
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    if-le v1, v9, :cond_27

    .line 734
    .line 735
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 736
    .line 737
    if-eqz v1, :cond_28

    .line 738
    .line 739
    const-string v1, "isBlockingApp SWITCHABLE - SBC aggressive"

    .line 740
    .line 741
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    goto :goto_8

    .line 745
    :cond_27
    move v7, v9

    .line 746
    :cond_28
    :goto_8
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 747
    .line 748
    if-eqz v1, :cond_29

    .line 749
    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    .line 751
    .line 752
    const-string v2, "isBlockingApp SWITCHABLE  SBC = "

    .line 753
    .line 754
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 758
    .line 759
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    .line 774
    .line 775
    :cond_29
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSynBlockCountSum:I

    .line 776
    .line 777
    if-lt p0, v7, :cond_2a

    .line 778
    .line 779
    iput-object v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 780
    .line 781
    return v11

    .line 782
    :cond_2a
    return v0
.end method

.method private isCurrentUidBlockedList(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method private isDnsDetected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsDetected:Z

    .line 2
    .line 3
    return p0
.end method

.method private isMdoEnabledUid(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method private isMobileDataConnected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "phone"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 v0, 0x2

    .line 24
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 25
    .line 26
    if-ne p0, v0, :cond_2

    .line 27
    .line 28
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    const-string p0, "isMobileDataConnected: true"

    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_2
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 40
    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    const-string p0, "isMobileDataConnected: false"

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_3
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method private isMonitoringEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsScreenOn:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsQaiSwitchableMode:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

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

.method private isNotifyEnabledApp(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z
    .locals 5

    .line 1
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p0, "isNotifyEnabledApp - null WifiPackageInfo"

    .line 7
    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isSwitchEnabledApp(I)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdDetectionIgnored:I

    .line 47
    .line 48
    if-lt v3, v4, :cond_1

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p1, "isNotifyEnabledApp - detection ignored time:"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    if-eq p0, v0, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSwitchable()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    return v0

    .line 87
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_4

    .line 92
    .line 93
    return v0

    .line 94
    :cond_4
    :goto_0
    return v1
.end method

.method private isPackageException(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    const-string v3, "SemWifiSwitchForIndividualAppsService"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "isPackageException - uid 1000 or INVALID app"

    .line 17
    .line 18
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    move v1, v2

    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isCurrentUidBlockedList(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v5, "isPackageException - already blocked "

    .line 37
    .line 38
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 v1, 0x2

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->hasInternetPermission()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v5, "isPackageException - no internet permission "

    .line 70
    .line 71
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_4
    const/4 v1, 0x3

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMdoEnabledUid(I)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 97
    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v5, "isPackageException - mdo enabled: "

    .line 103
    .line 104
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_6
    const/4 v1, 0x4

    .line 122
    goto :goto_0

    .line 123
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_9

    .line 128
    .line 129
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    .line 130
    .line 131
    const-wide/16 v7, 0x7d0

    .line 132
    .line 133
    cmp-long v1, v5, v7

    .line 134
    .line 135
    if-lez v1, :cond_9

    .line 136
    .line 137
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 138
    .line 139
    if-eqz v1, :cond_8

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v5, "isPackageException - txrx:"

    .line 144
    .line 145
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    .line 149
    .line 150
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_8
    const/4 v1, 0x5

    .line 161
    goto :goto_0

    .line 162
    :cond_9
    move v1, v4

    .line 163
    :goto_0
    if-eqz v1, :cond_a

    .line 164
    .line 165
    const-string v4, "isPackageException - result:"

    .line 166
    .line 167
    const-string v5, ", "

    .line 168
    .line 169
    invoke-static {v4, v1, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    .line 188
    .line 189
    return v2

    .line 190
    :cond_a
    iput v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    .line 191
    .line 192
    return v4
.end method

.method private isPackageSystemException(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "isPackageSystemException - system app"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "SemWifiSwitchForIndividualAppsService"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method private isSkipNetworkCondition()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeedThreshold:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "SemWifiSwitchForIndividualAppsService"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "isSkipNetworkCondition - linkspeed :"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    move p0, v2

    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    .line 38
    .line 39
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkRssiThreshold:I

    .line 40
    .line 41
    if-ge v0, v1, :cond_3

    .line 42
    .line 43
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "isSkipNetworkCondition - rssi :"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_2
    const/4 p0, 0x2

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLoss:D

    .line 69
    .line 70
    const-wide v5, 0x3fb999999999999aL    # 0.1

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    cmpl-double v0, v0, v5

    .line 76
    .line 77
    if-lez v0, :cond_5

    .line 78
    .line 79
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "isSkipNetworkCondition - loss :"

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLoss:D

    .line 91
    .line 92
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_4
    const/4 p0, 0x3

    .line 103
    goto :goto_0

    .line 104
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isVoipOngoing()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 111
    .line 112
    if-eqz p0, :cond_6

    .line 113
    .line 114
    const-string p0, "isSkipNetworkCondition - voip ongoing"

    .line 115
    .line 116
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_6
    const/4 p0, 0x5

    .line 120
    goto :goto_0

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const/16 v1, 0xa

    .line 128
    .line 129
    if-ge v0, v1, :cond_9

    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 134
    .line 135
    .line 136
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 137
    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v1, "isSkipNetworkCondition - screen turned on"

    .line 143
    .line 144
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p0, " : seconds"

    .line 157
    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :cond_8
    const/4 p0, 0x6

    .line 169
    goto :goto_0

    .line 170
    :cond_9
    move p0, v4

    .line 171
    :goto_0
    if-eqz p0, :cond_a

    .line 172
    .line 173
    const-string v0, "isSkipNetworkCondition - result:"

    .line 174
    .line 175
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    return v2

    .line 183
    :cond_a
    return v4
.end method

.method private isSkipPoorLinkCondition()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "SemWifiSwitchForIndividualAppsService"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "isSkipPoorLinkCondition - linkspeed :"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    move p0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    .line 37
    .line 38
    const/16 v1, -0x50

    .line 39
    .line 40
    if-ge v0, v1, :cond_3

    .line 41
    .line 42
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "isSkipPoorLinkCondition - rssi :"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_2
    const/4 p0, 0x2

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move p0, v4

    .line 68
    :goto_0
    if-eqz p0, :cond_4

    .line 69
    .line 70
    const-string v0, "isSkipPoorLinkCondition - result:"

    .line 71
    .line 72
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return v2

    .line 80
    :cond_4
    return v4
.end method

.method private isSkipTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLatestTxRx:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v4, 0x3

    .line 13
    if-lt v0, v4, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLatestTxRx:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLatestTxRx:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-wide v4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    .line 23
    .line 24
    iget-wide v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    .line 25
    .line 26
    add-long/2addr v4, v6

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLatestTxRx:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    move v5, v1

    .line 41
    :goto_0
    if-ge v5, v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    check-cast v6, Ljava/lang/Long;

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    add-long/2addr v2, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 58
    .line 59
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdNormalEstablish:I

    .line 60
    .line 61
    const-string v5, "SemWifiSwitchForIndividualAppsService"

    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    if-le v0, v4, :cond_3

    .line 65
    .line 66
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 67
    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "isSkipTcpMonitorInfo - e:"

    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget p1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_2
    move p0, v6

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdLatestSumTxRx:I

    .line 92
    .line 93
    int-to-long p0, p0

    .line 94
    cmp-long p0, v2, p0

    .line 95
    .line 96
    if-lez p0, :cond_5

    .line 97
    .line 98
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 99
    .line 100
    if-eqz p0, :cond_4

    .line 101
    .line 102
    const-string p0, "isSkipTcpMonitorInfo - txrx:"

    .line 103
    .line 104
    invoke-static {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_4
    const/4 p0, 0x2

    .line 112
    goto :goto_1

    .line 113
    :cond_5
    move p0, v1

    .line 114
    :goto_1
    if-eqz p0, :cond_6

    .line 115
    .line 116
    const-string p1, "isSkipTcpMonitorInfo - result:"

    .line 117
    .line 118
    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return v6

    .line 126
    :cond_6
    return v1
.end method

.method private isSwitchingEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMonitoringEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method private isVoipOngoing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsVoipOngoing:Z

    .line 2
    .line 3
    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsScreenOn:Z

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsScreenOn:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mScreenOnCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x4

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private loadTcpInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;)Z
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "loadTcpInfo finally - Exception: "

    .line 8
    .line 9
    const-string v4, "SemWifiSwitchForIndividualAppsService"

    .line 10
    .line 11
    iget-object v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    .line 23
    .line 24
    const-string v8, "/proc/net/tcp"

    .line 25
    .line 26
    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 27
    .line 28
    .line 29
    :try_start_1
    new-instance v8, Ljava/io/FileReader;

    .line 30
    .line 31
    const-string v9, "/proc/net/tcp6"

    .line 32
    .line 33
    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 34
    .line 35
    .line 36
    :try_start_2
    new-instance v9, Ljava/io/BufferedReader;

    .line 37
    .line 38
    invoke-direct {v9, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 39
    .line 40
    .line 41
    :try_start_3
    new-instance v10, Ljava/io/BufferedReader;

    .line 42
    .line 43
    invoke-direct {v10, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 44
    .line 45
    .line 46
    :try_start_4
    iget-object v6, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 47
    .line 48
    iget v11, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 49
    .line 50
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 58
    if-nez v6, :cond_0

    .line 59
    .line 60
    :try_start_5
    iget-object v6, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 61
    .line 62
    iget v11, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 63
    .line 64
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    new-instance v12, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object v1, v0

    .line 79
    move-object v6, v7

    .line 80
    goto/16 :goto_16

    .line 81
    .line 82
    :catch_0
    move-exception v0

    .line 83
    move-object v6, v7

    .line 84
    goto/16 :goto_f

    .line 85
    .line 86
    :catch_1
    move-exception v0

    .line 87
    move-object v6, v7

    .line 88
    goto/16 :goto_15

    .line 89
    .line 90
    :cond_0
    :try_start_6
    iget-object v6, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 91
    .line 92
    iget v11, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 93
    .line 94
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    check-cast v6, Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 105
    .line 106
    .line 107
    :goto_0
    const/4 v6, 0x0

    .line 108
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v11
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 112
    const-string v12, "09"

    .line 113
    .line 114
    const-string v13, "02"

    .line 115
    .line 116
    const-string v14, ":"

    .line 117
    .line 118
    const/16 v16, 0x5

    .line 119
    .line 120
    const/16 v17, 0xd

    .line 121
    .line 122
    const-string v5, "01"

    .line 123
    .line 124
    const-string v15, " +"

    .line 125
    .line 126
    move/from16 v18, v6

    .line 127
    .line 128
    const-string v6, "\n"

    .line 129
    .line 130
    const/16 v19, 0x7

    .line 131
    .line 132
    const-wide/16 v20, 0x0

    .line 133
    .line 134
    const/16 v22, 0x8

    .line 135
    .line 136
    const/16 v23, 0x4

    .line 137
    .line 138
    const/16 v24, 0x3

    .line 139
    .line 140
    move-object/from16 v25, v7

    .line 141
    .line 142
    const/16 v26, 0x10

    .line 143
    .line 144
    if-eqz v11, :cond_b

    .line 145
    .line 146
    const/16 v27, 0x1

    .line 147
    .line 148
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    add-int/lit8 v7, v18, 0x1

    .line 164
    .line 165
    move/from16 v11, v27

    .line 166
    .line 167
    if-le v7, v11, :cond_a

    .line 168
    .line 169
    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    aget-object v15, v6, v23

    .line 174
    .line 175
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_8

    .line 180
    .line 181
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 182
    .line 183
    add-int/2addr v5, v11

    .line 184
    iput v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 185
    .line 186
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 187
    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    aget-object v11, v6, v22

    .line 193
    .line 194
    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_7

    .line 199
    .line 200
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    .line 201
    .line 202
    const/16 v27, 0x1

    .line 203
    .line 204
    add-int/lit8 v5, v5, 0x1

    .line 205
    .line 206
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    .line 207
    .line 208
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 209
    .line 210
    add-int/lit8 v5, v5, 0x1

    .line 211
    .line 212
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 213
    .line 214
    aget-object v5, v6, v17

    .line 215
    .line 216
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    const/16 v11, 0x64

    .line 221
    .line 222
    if-le v5, v11, :cond_1

    .line 223
    .line 224
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rto:I

    .line 225
    .line 226
    add-int/lit8 v5, v5, 0x1

    .line 227
    .line 228
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rto:I

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :catchall_1
    move-exception v0

    .line 232
    :goto_2
    move-object v1, v0

    .line 233
    :goto_3
    move-object/from16 v6, v25

    .line 234
    .line 235
    goto/16 :goto_16

    .line 236
    .line 237
    :catch_2
    move-exception v0

    .line 238
    :goto_4
    move-object/from16 v6, v25

    .line 239
    .line 240
    goto/16 :goto_f

    .line 241
    .line 242
    :catch_3
    move-exception v0

    .line 243
    :goto_5
    move-object/from16 v6, v25

    .line 244
    .line 245
    goto/16 :goto_15

    .line 246
    .line 247
    :cond_1
    :goto_6
    aget-object v5, v6, v26

    .line 248
    .line 249
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    const/16 v11, 0xa

    .line 254
    .line 255
    if-ge v5, v11, :cond_2

    .line 256
    .line 257
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->cwnd:I

    .line 258
    .line 259
    const/16 v27, 0x1

    .line 260
    .line 261
    add-int/lit8 v5, v5, 0x1

    .line 262
    .line 263
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->cwnd:I

    .line 264
    .line 265
    :cond_2
    iget-object v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    .line 266
    .line 267
    aget-object v11, v6, v24

    .line 268
    .line 269
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-nez v5, :cond_3

    .line 274
    .line 275
    iget-object v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    .line 276
    .line 277
    aget-object v11, v6, v24

    .line 278
    .line 279
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    :cond_3
    aget-object v5, v6, v16

    .line 283
    .line 284
    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    const/16 v27, 0x1

    .line 289
    .line 290
    aget-object v5, v5, v27

    .line 291
    .line 292
    move/from16 v11, v26

    .line 293
    .line 294
    invoke-static {v5, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 295
    .line 296
    .line 297
    move-result-wide v12

    .line 298
    cmp-long v5, v12, v20

    .line 299
    .line 300
    if-lez v5, :cond_4

    .line 301
    .line 302
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    .line 303
    .line 304
    add-int/lit8 v5, v5, 0x1

    .line 305
    .line 306
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    .line 307
    .line 308
    :cond_4
    aget-object v5, v6, v19

    .line 309
    .line 310
    const/16 v11, 0x10

    .line 311
    .line 312
    invoke-static {v5, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 313
    .line 314
    .line 315
    move-result-wide v11

    .line 316
    cmp-long v5, v11, v20

    .line 317
    .line 318
    if-lez v5, :cond_5

    .line 319
    .line 320
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 321
    .line 322
    const/16 v27, 0x1

    .line 323
    .line 324
    add-int/lit8 v5, v5, 0x1

    .line 325
    .line 326
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 327
    .line 328
    :cond_5
    const/4 v5, 0x2

    .line 329
    aget-object v5, v6, v5

    .line 330
    .line 331
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getPortFromHexForm(Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    iget-object v6, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 336
    .line 337
    iget v11, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 338
    .line 339
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v11

    .line 343
    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    if-nez v6, :cond_6

    .line 348
    .line 349
    iget-object v6, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 350
    .line 351
    iget v11, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 352
    .line 353
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    new-instance v12, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    :cond_6
    iget-object v6, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 366
    .line 367
    iget v11, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 368
    .line 369
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    check-cast v6, Ljava/util/List;

    .line 378
    .line 379
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_7
    aget-object v5, v6, v19

    .line 388
    .line 389
    const/16 v11, 0x10

    .line 390
    .line 391
    invoke-static {v5, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 392
    .line 393
    .line 394
    move-result-wide v5

    .line 395
    cmp-long v5, v5, v20

    .line 396
    .line 397
    if-lez v5, :cond_a

    .line 398
    .line 399
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 400
    .line 401
    const/16 v27, 0x1

    .line 402
    .line 403
    add-int/lit8 v5, v5, -0x1

    .line 404
    .line 405
    iput v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_8
    aget-object v5, v6, v23

    .line 409
    .line 410
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    if-eqz v5, :cond_9

    .line 415
    .line 416
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->syn:I

    .line 417
    .line 418
    const/16 v27, 0x1

    .line 419
    .line 420
    add-int/lit8 v5, v5, 0x1

    .line 421
    .line 422
    iput v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->syn:I

    .line 423
    .line 424
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 425
    .line 426
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    aget-object v11, v6, v22

    .line 431
    .line 432
    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-eqz v5, :cond_a

    .line 437
    .line 438
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 439
    .line 440
    const/16 v27, 0x1

    .line 441
    .line 442
    add-int/lit8 v5, v5, 0x1

    .line 443
    .line 444
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 445
    .line 446
    iget-object v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 447
    .line 448
    aget-object v11, v6, v24

    .line 449
    .line 450
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    if-nez v5, :cond_a

    .line 455
    .line 456
    iget-object v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 457
    .line 458
    aget-object v6, v6, v24

    .line 459
    .line 460
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_9
    aget-object v5, v6, v23

    .line 465
    .line 466
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-eqz v5, :cond_a

    .line 471
    .line 472
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 473
    .line 474
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    aget-object v6, v6, v22

    .line 479
    .line 480
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-eqz v5, :cond_a

    .line 485
    .line 486
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    .line 487
    .line 488
    const/16 v27, 0x1

    .line 489
    .line 490
    add-int/lit8 v5, v5, 0x1

    .line 491
    .line 492
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    .line 493
    .line 494
    :cond_a
    :goto_7
    move v6, v7

    .line 495
    move-object/from16 v7, v25

    .line 496
    .line 497
    goto/16 :goto_1

    .line 498
    .line 499
    :cond_b
    const/4 v7, 0x0

    .line 500
    :goto_8
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v11

    .line 504
    if-eqz v11, :cond_15

    .line 505
    .line 506
    move/from16 v18, v7

    .line 507
    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v7

    .line 523
    move-object/from16 v28, v6

    .line 524
    .line 525
    const/4 v11, 0x1

    .line 526
    add-int/lit8 v6, v18, 0x1

    .line 527
    .line 528
    if-le v6, v11, :cond_14

    .line 529
    .line 530
    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v7

    .line 534
    move/from16 v27, v11

    .line 535
    .line 536
    aget-object v11, v7, v23

    .line 537
    .line 538
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v11

    .line 542
    if-eqz v11, :cond_12

    .line 543
    .line 544
    iget v11, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 545
    .line 546
    add-int/lit8 v11, v11, 0x1

    .line 547
    .line 548
    iput v11, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 549
    .line 550
    iget v11, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 551
    .line 552
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v11

    .line 556
    move-object/from16 v18, v5

    .line 557
    .line 558
    aget-object v5, v7, v22

    .line 559
    .line 560
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    if-eqz v5, :cond_11

    .line 565
    .line 566
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    .line 567
    .line 568
    const/16 v27, 0x1

    .line 569
    .line 570
    add-int/lit8 v5, v5, 0x1

    .line 571
    .line 572
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    .line 573
    .line 574
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 575
    .line 576
    add-int/lit8 v5, v5, 0x1

    .line 577
    .line 578
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 579
    .line 580
    aget-object v5, v7, v17

    .line 581
    .line 582
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    const/16 v11, 0x64

    .line 587
    .line 588
    if-le v5, v11, :cond_c

    .line 589
    .line 590
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rto:I

    .line 591
    .line 592
    add-int/lit8 v5, v5, 0x1

    .line 593
    .line 594
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rto:I

    .line 595
    .line 596
    :cond_c
    const/16 v26, 0x10

    .line 597
    .line 598
    aget-object v5, v7, v26

    .line 599
    .line 600
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    const/16 v11, 0xa

    .line 605
    .line 606
    if-ge v5, v11, :cond_d

    .line 607
    .line 608
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->cwnd:I

    .line 609
    .line 610
    const/16 v27, 0x1

    .line 611
    .line 612
    add-int/lit8 v5, v5, 0x1

    .line 613
    .line 614
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->cwnd:I

    .line 615
    .line 616
    :cond_d
    iget-object v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    .line 617
    .line 618
    aget-object v11, v7, v24

    .line 619
    .line 620
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v5

    .line 624
    if-nez v5, :cond_e

    .line 625
    .line 626
    iget-object v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    .line 627
    .line 628
    aget-object v11, v7, v24

    .line 629
    .line 630
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    :cond_e
    aget-object v5, v7, v16

    .line 634
    .line 635
    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    const/16 v27, 0x1

    .line 640
    .line 641
    aget-object v5, v5, v27

    .line 642
    .line 643
    const/16 v11, 0x10

    .line 644
    .line 645
    invoke-static {v5, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 646
    .line 647
    .line 648
    move-result-wide v29

    .line 649
    cmp-long v5, v29, v20

    .line 650
    .line 651
    if-lez v5, :cond_f

    .line 652
    .line 653
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    .line 654
    .line 655
    add-int/lit8 v5, v5, 0x1

    .line 656
    .line 657
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    .line 658
    .line 659
    :cond_f
    aget-object v5, v7, v19

    .line 660
    .line 661
    const/16 v11, 0x10

    .line 662
    .line 663
    invoke-static {v5, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 664
    .line 665
    .line 666
    move-result-wide v29

    .line 667
    cmp-long v5, v29, v20

    .line 668
    .line 669
    if-lez v5, :cond_10

    .line 670
    .line 671
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 672
    .line 673
    const/16 v27, 0x1

    .line 674
    .line 675
    add-int/lit8 v5, v5, 0x1

    .line 676
    .line 677
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 678
    .line 679
    :cond_10
    :goto_9
    const/16 v27, 0x1

    .line 680
    .line 681
    goto/16 :goto_a

    .line 682
    .line 683
    :cond_11
    aget-object v5, v7, v19

    .line 684
    .line 685
    const/16 v11, 0x10

    .line 686
    .line 687
    invoke-static {v5, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 688
    .line 689
    .line 690
    move-result-wide v29

    .line 691
    cmp-long v5, v29, v20

    .line 692
    .line 693
    if-lez v5, :cond_10

    .line 694
    .line 695
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 696
    .line 697
    const/16 v27, 0x1

    .line 698
    .line 699
    add-int/lit8 v5, v5, -0x1

    .line 700
    .line 701
    iput v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->establishAllNoRetrans:I

    .line 702
    .line 703
    goto :goto_9

    .line 704
    :cond_12
    move-object/from16 v18, v5

    .line 705
    .line 706
    const/16 v11, 0x10

    .line 707
    .line 708
    aget-object v5, v7, v23

    .line 709
    .line 710
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    if-eqz v5, :cond_13

    .line 715
    .line 716
    iget v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->syn:I

    .line 717
    .line 718
    const/16 v27, 0x1

    .line 719
    .line 720
    add-int/lit8 v5, v5, 0x1

    .line 721
    .line 722
    iput v5, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->syn:I

    .line 723
    .line 724
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 725
    .line 726
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v5

    .line 730
    aget-object v11, v7, v22

    .line 731
    .line 732
    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    if-eqz v5, :cond_10

    .line 737
    .line 738
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 739
    .line 740
    const/16 v27, 0x1

    .line 741
    .line 742
    add-int/lit8 v5, v5, 0x1

    .line 743
    .line 744
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 745
    .line 746
    iget-object v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 747
    .line 748
    aget-object v11, v7, v24

    .line 749
    .line 750
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v5

    .line 754
    if-nez v5, :cond_10

    .line 755
    .line 756
    iget-object v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 757
    .line 758
    aget-object v7, v7, v24

    .line 759
    .line 760
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    goto :goto_9

    .line 764
    :cond_13
    aget-object v5, v7, v23

    .line 765
    .line 766
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v5

    .line 770
    if-eqz v5, :cond_10

    .line 771
    .line 772
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 773
    .line 774
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v5

    .line 778
    aget-object v7, v7, v22

    .line 779
    .line 780
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 781
    .line 782
    .line 783
    move-result v5

    .line 784
    if-eqz v5, :cond_10

    .line 785
    .line 786
    iget v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    .line 787
    .line 788
    const/16 v27, 0x1

    .line 789
    .line 790
    add-int/lit8 v5, v5, 0x1

    .line 791
    .line 792
    iput v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    .line 793
    .line 794
    goto :goto_a

    .line 795
    :cond_14
    move-object/from16 v18, v5

    .line 796
    .line 797
    move/from16 v27, v11

    .line 798
    .line 799
    :goto_a
    move v7, v6

    .line 800
    move-object/from16 v5, v18

    .line 801
    .line 802
    move-object/from16 v6, v28

    .line 803
    .line 804
    goto/16 :goto_8

    .line 805
    .line 806
    :cond_15
    const/16 v27, 0x1

    .line 807
    .line 808
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxDiff:J

    .line 809
    .line 810
    iput-wide v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    .line 811
    .line 812
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRxDiff:J

    .line 813
    .line 814
    iput-wide v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    .line 815
    .line 816
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLoss:D

    .line 817
    .line 818
    iput-wide v5, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->loss:D

    .line 819
    .line 820
    iget v2, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    .line 821
    .line 822
    iput v2, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rssi:I

    .line 823
    .line 824
    iget v2, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    .line 825
    .line 826
    iput v2, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->linkSpeed:I

    .line 827
    .line 828
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 829
    .line 830
    if-eqz v1, :cond_16

    .line 831
    .line 832
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->syncUpList()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 833
    .line 834
    .line 835
    :cond_16
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileReader;->close()V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 845
    .line 846
    .line 847
    goto :goto_b

    .line 848
    :catch_4
    move-exception v0

    .line 849
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 850
    .line 851
    if-eqz v1, :cond_17

    .line 852
    .line 853
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .line 859
    .line 860
    :cond_17
    :goto_b
    move/from16 v5, v27

    .line 861
    .line 862
    goto/16 :goto_14

    .line 863
    .line 864
    :catchall_2
    move-exception v0

    .line 865
    move-object/from16 v25, v7

    .line 866
    .line 867
    goto/16 :goto_2

    .line 868
    .line 869
    :catch_5
    move-exception v0

    .line 870
    move-object/from16 v25, v7

    .line 871
    .line 872
    goto/16 :goto_4

    .line 873
    .line 874
    :catch_6
    move-exception v0

    .line 875
    move-object/from16 v25, v7

    .line 876
    .line 877
    goto/16 :goto_5

    .line 878
    .line 879
    :catchall_3
    move-exception v0

    .line 880
    move-object/from16 v25, v7

    .line 881
    .line 882
    move-object v1, v0

    .line 883
    move-object v10, v6

    .line 884
    goto/16 :goto_3

    .line 885
    .line 886
    :catch_7
    move-exception v0

    .line 887
    move-object/from16 v25, v7

    .line 888
    .line 889
    move-object v10, v6

    .line 890
    goto/16 :goto_4

    .line 891
    .line 892
    :catch_8
    move-exception v0

    .line 893
    move-object/from16 v25, v7

    .line 894
    .line 895
    move-object v10, v6

    .line 896
    goto/16 :goto_5

    .line 897
    .line 898
    :catchall_4
    move-exception v0

    .line 899
    move-object/from16 v25, v7

    .line 900
    .line 901
    move-object v1, v0

    .line 902
    move-object v9, v6

    .line 903
    :goto_c
    move-object v10, v9

    .line 904
    goto/16 :goto_3

    .line 905
    .line 906
    :catch_9
    move-exception v0

    .line 907
    move-object/from16 v25, v7

    .line 908
    .line 909
    move-object v9, v6

    .line 910
    :goto_d
    move-object v10, v9

    .line 911
    goto/16 :goto_4

    .line 912
    .line 913
    :catch_a
    move-exception v0

    .line 914
    move-object/from16 v25, v7

    .line 915
    .line 916
    move-object v9, v6

    .line 917
    :goto_e
    move-object v10, v9

    .line 918
    goto/16 :goto_5

    .line 919
    .line 920
    :catchall_5
    move-exception v0

    .line 921
    move-object/from16 v25, v7

    .line 922
    .line 923
    move-object v1, v0

    .line 924
    move-object v8, v6

    .line 925
    move-object v9, v8

    .line 926
    goto :goto_c

    .line 927
    :catch_b
    move-exception v0

    .line 928
    move-object/from16 v25, v7

    .line 929
    .line 930
    move-object v8, v6

    .line 931
    move-object v9, v8

    .line 932
    goto :goto_d

    .line 933
    :catch_c
    move-exception v0

    .line 934
    move-object/from16 v25, v7

    .line 935
    .line 936
    move-object v8, v6

    .line 937
    move-object v9, v8

    .line 938
    goto :goto_e

    .line 939
    :catchall_6
    move-exception v0

    .line 940
    move-object v1, v0

    .line 941
    move-object v8, v6

    .line 942
    move-object v9, v8

    .line 943
    move-object v10, v9

    .line 944
    goto/16 :goto_16

    .line 945
    .line 946
    :catch_d
    move-exception v0

    .line 947
    move-object v8, v6

    .line 948
    move-object v9, v8

    .line 949
    move-object v10, v9

    .line 950
    goto :goto_f

    .line 951
    :catch_e
    move-exception v0

    .line 952
    move-object v8, v6

    .line 953
    move-object v9, v8

    .line 954
    move-object v10, v9

    .line 955
    goto :goto_15

    .line 956
    :goto_f
    :try_start_9
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 957
    .line 958
    if-eqz v1, :cond_18

    .line 959
    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    .line 961
    .line 962
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    .line 964
    .line 965
    const-string v2, "loadTcpInfo - Exception: "

    .line 966
    .line 967
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .line 979
    .line 980
    goto :goto_10

    .line 981
    :catchall_7
    move-exception v0

    .line 982
    move-object v1, v0

    .line 983
    goto :goto_16

    .line 984
    :cond_18
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 985
    .line 986
    .line 987
    if-eqz v6, :cond_19

    .line 988
    .line 989
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 990
    .line 991
    .line 992
    goto :goto_11

    .line 993
    :catch_f
    move-exception v0

    .line 994
    goto :goto_12

    .line 995
    :cond_19
    :goto_11
    if-eqz v8, :cond_1a

    .line 996
    .line 997
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 998
    .line 999
    .line 1000
    :cond_1a
    if-eqz v9, :cond_1b

    .line 1001
    .line 1002
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 1003
    .line 1004
    .line 1005
    :cond_1b
    if-eqz v10, :cond_1c

    .line 1006
    .line 1007
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    .line 1008
    .line 1009
    .line 1010
    goto :goto_13

    .line 1011
    :goto_12
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 1012
    .line 1013
    if-eqz v1, :cond_1c

    .line 1014
    .line 1015
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .line 1021
    .line 1022
    :cond_1c
    :goto_13
    const/4 v5, 0x0

    .line 1023
    :goto_14
    return v5

    .line 1024
    :goto_15
    :try_start_b
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 1025
    .line 1026
    if-eqz v1, :cond_1d

    .line 1027
    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .line 1032
    .line 1033
    const-string v2, "loadTcpInfo - RuntimeException: "

    .line 1034
    .line 1035
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .line 1047
    .line 1048
    :cond_1d
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1049
    :goto_16
    if-eqz v6, :cond_1e

    .line 1050
    .line 1051
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 1052
    .line 1053
    .line 1054
    goto :goto_17

    .line 1055
    :catch_10
    move-exception v0

    .line 1056
    goto :goto_18

    .line 1057
    :cond_1e
    :goto_17
    if-eqz v8, :cond_1f

    .line 1058
    .line 1059
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 1060
    .line 1061
    .line 1062
    :cond_1f
    if-eqz v9, :cond_20

    .line 1063
    .line 1064
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 1065
    .line 1066
    .line 1067
    :cond_20
    if-eqz v10, :cond_21

    .line 1068
    .line 1069
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    .line 1070
    .line 1071
    .line 1072
    goto :goto_19

    .line 1073
    :goto_18
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 1074
    .line 1075
    if-eqz v2, :cond_21

    .line 1076
    .line 1077
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    .line 1083
    .line 1084
    :cond_21
    :goto_19
    throw v1
.end method

.method private loadTcpInfoForL2(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)Z
    .locals 13

    .line 1
    const-string v0, "loadTcpInfoForL2 finally - Exception: "

    .line 2
    .line 3
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    .line 8
    .line 9
    const-string v5, "/proc/net/tcp"

    .line 10
    .line 11
    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    .line 13
    .line 14
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    .line 15
    .line 16
    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    .line 18
    .line 19
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 20
    .line 21
    iget v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 22
    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 34
    .line 35
    iget v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 36
    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    new-instance v7, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :goto_0
    move-object v3, v4

    .line 52
    goto/16 :goto_c

    .line 53
    .line 54
    :catch_0
    move-exception p0

    .line 55
    :goto_1
    move-object v3, v4

    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :catch_1
    move-exception p0

    .line 59
    :goto_2
    move-object v3, v4

    .line 60
    goto/16 :goto_b

    .line 61
    .line 62
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 63
    .line 64
    iget v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 65
    .line 66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 77
    .line 78
    .line 79
    :goto_3
    move v3, v2

    .line 80
    :cond_1
    :goto_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const/4 v7, 0x1

    .line 85
    if-eqz v6, :cond_9

    .line 86
    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, "\n"

    .line 96
    .line 97
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    add-int/2addr v3, v7

    .line 105
    if-le v3, v7, :cond_1

    .line 106
    .line 107
    const-string v8, " +"

    .line 108
    .line 109
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const/4 v8, 0x4

    .line 114
    aget-object v9, v6, v8

    .line 115
    .line 116
    const-string v10, "01"

    .line 117
    .line 118
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    const/16 v10, 0x8

    .line 123
    .line 124
    if-eqz v9, :cond_7

    .line 125
    .line 126
    iget v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 127
    .line 128
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    aget-object v9, v6, v10

    .line 133
    .line 134
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_1

    .line 139
    .line 140
    iget v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    .line 141
    .line 142
    add-int/2addr v8, v7

    .line 143
    iput v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    .line 144
    .line 145
    iget v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 146
    .line 147
    add-int/2addr v8, v7

    .line 148
    iput v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 149
    .line 150
    const/16 v8, 0xd

    .line 151
    .line 152
    aget-object v8, v6, v8

    .line 153
    .line 154
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    const/16 v9, 0x64

    .line 159
    .line 160
    if-le v8, v9, :cond_2

    .line 161
    .line 162
    iget v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rto:I

    .line 163
    .line 164
    add-int/2addr v8, v7

    .line 165
    iput v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rto:I

    .line 166
    .line 167
    :cond_2
    const/16 v8, 0x10

    .line 168
    .line 169
    aget-object v9, v6, v8

    .line 170
    .line 171
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    const/16 v10, 0xa

    .line 176
    .line 177
    if-ge v9, v10, :cond_3

    .line 178
    .line 179
    iget v9, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->cwnd:I

    .line 180
    .line 181
    add-int/2addr v9, v7

    .line 182
    iput v9, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->cwnd:I

    .line 183
    .line 184
    :cond_3
    const/4 v9, 0x5

    .line 185
    aget-object v9, v6, v9

    .line 186
    .line 187
    const-string v10, ":"

    .line 188
    .line 189
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    aget-object v9, v9, v7

    .line 194
    .line 195
    invoke-static {v9, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 196
    .line 197
    .line 198
    move-result-wide v9

    .line 199
    const-wide/16 v11, 0x0

    .line 200
    .line 201
    cmp-long v9, v9, v11

    .line 202
    .line 203
    if-lez v9, :cond_4

    .line 204
    .line 205
    iget v9, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    .line 206
    .line 207
    add-int/2addr v9, v7

    .line 208
    iput v9, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    .line 209
    .line 210
    :cond_4
    const/4 v9, 0x7

    .line 211
    aget-object v9, v6, v9

    .line 212
    .line 213
    invoke-static {v9, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 214
    .line 215
    .line 216
    move-result-wide v8

    .line 217
    cmp-long v8, v8, v11

    .line 218
    .line 219
    if-lez v8, :cond_5

    .line 220
    .line 221
    iget v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 222
    .line 223
    add-int/2addr v8, v7

    .line 224
    iput v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 225
    .line 226
    :cond_5
    const/4 v7, 0x2

    .line 227
    aget-object v6, v6, v7

    .line 228
    .line 229
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getPortFromHexForm(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    iget-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 234
    .line 235
    iget v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 236
    .line 237
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-nez v7, :cond_6

    .line 246
    .line 247
    iget-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 248
    .line 249
    iget v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 250
    .line 251
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    new-instance v9, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 264
    .line 265
    iget v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 266
    .line 267
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    check-cast v7, Ljava/util/List;

    .line 276
    .line 277
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto/16 :goto_4

    .line 285
    .line 286
    :cond_7
    aget-object v9, v6, v8

    .line 287
    .line 288
    const-string v11, "02"

    .line 289
    .line 290
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    if-eqz v9, :cond_8

    .line 295
    .line 296
    iget v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 297
    .line 298
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    aget-object v6, v6, v10

    .line 303
    .line 304
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    if-eqz v6, :cond_1

    .line 309
    .line 310
    iget v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 311
    .line 312
    add-int/2addr v6, v7

    .line 313
    iput v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 314
    .line 315
    goto/16 :goto_4

    .line 316
    .line 317
    :cond_8
    aget-object v8, v6, v8

    .line 318
    .line 319
    const-string v9, "09"

    .line 320
    .line 321
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    if-eqz v8, :cond_1

    .line 326
    .line 327
    iget v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 328
    .line 329
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    aget-object v6, v6, v10

    .line 334
    .line 335
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    if-eqz v6, :cond_1

    .line 340
    .line 341
    iget v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    .line 342
    .line 343
    add-int/2addr v6, v7

    .line 344
    iput v6, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    .line 345
    .line 346
    goto/16 :goto_4

    .line 347
    .line 348
    :cond_9
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxDiff2:J

    .line 349
    .line 350
    iput-wide v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    .line 351
    .line 352
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRxDiff2:J

    .line 353
    .line 354
    iput-wide v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    .line 355
    .line 356
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLoss:D

    .line 357
    .line 358
    iput-wide v8, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->loss:D

    .line 359
    .line 360
    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    .line 361
    .line 362
    iput v3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rssi:I

    .line 363
    .line 364
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    .line 365
    .line 366
    iput p0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->linkSpeed:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    .line 368
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 372
    .line 373
    .line 374
    goto :goto_5

    .line 375
    :catch_2
    move-exception p0

    .line 376
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 377
    .line 378
    if-eqz p1, :cond_a

    .line 379
    .line 380
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    :cond_a
    :goto_5
    move v2, v7

    .line 388
    goto :goto_a

    .line 389
    :catchall_1
    move-exception p0

    .line 390
    move-object v5, v3

    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :catch_3
    move-exception p0

    .line 394
    move-object v5, v3

    .line 395
    goto/16 :goto_1

    .line 396
    .line 397
    :catch_4
    move-exception p0

    .line 398
    move-object v5, v3

    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :catchall_2
    move-exception p0

    .line 402
    move-object v5, v3

    .line 403
    goto :goto_c

    .line 404
    :catch_5
    move-exception p0

    .line 405
    move-object v5, v3

    .line 406
    goto :goto_6

    .line 407
    :catch_6
    move-exception p0

    .line 408
    move-object v5, v3

    .line 409
    goto :goto_b

    .line 410
    :goto_6
    :try_start_4
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 411
    .line 412
    if-eqz p1, :cond_b

    .line 413
    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    const-string v4, "loadTcpInfoForL2 - Exception: "

    .line 420
    .line 421
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    goto :goto_7

    .line 435
    :catchall_3
    move-exception p0

    .line 436
    goto :goto_c

    .line 437
    :cond_b
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 438
    .line 439
    .line 440
    if-eqz v3, :cond_c

    .line 441
    .line 442
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 443
    .line 444
    .line 445
    goto :goto_8

    .line 446
    :catch_7
    move-exception p0

    .line 447
    goto :goto_9

    .line 448
    :cond_c
    :goto_8
    if-eqz v5, :cond_d

    .line 449
    .line 450
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 451
    .line 452
    .line 453
    goto :goto_a

    .line 454
    :goto_9
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 455
    .line 456
    if-eqz p1, :cond_d

    .line 457
    .line 458
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p0

    .line 462
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    :cond_d
    :goto_a
    return v2

    .line 466
    :goto_b
    :try_start_6
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 467
    .line 468
    if-eqz p1, :cond_e

    .line 469
    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    const-string v2, "loadTcpInfoForL2 - RuntimeException: "

    .line 476
    .line 477
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    :cond_e
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 491
    :goto_c
    if-eqz v3, :cond_f

    .line 492
    .line 493
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 494
    .line 495
    .line 496
    goto :goto_d

    .line 497
    :catch_8
    move-exception p1

    .line 498
    goto :goto_e

    .line 499
    :cond_f
    :goto_d
    if-eqz v5, :cond_10

    .line 500
    .line 501
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 502
    .line 503
    .line 504
    goto :goto_f

    .line 505
    :goto_e
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 506
    .line 507
    if-eqz v2, :cond_10

    .line 508
    .line 509
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    :cond_10
    :goto_f
    throw p0
.end method

.method public static makeSemWifiSwitchForIndividualAppsService(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;
    .locals 5

    .line 1
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Landroid/os/HandlerThread;

    .line 5
    .line 6
    const-string v3, "SemWifiTransportLayerMonitor"

    .line 7
    .line 8
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v3, v2, v1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;-><init>(Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v4, p0, v2, v3, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-object v4

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "makeSemWifiSwitchForIndividualAppsService - Exception "

    .line 45
    .line 46
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    return-object v1
.end method

.method private modifyTcpTimeOut()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 6
    .line 7
    const-string v1, "modifyTcpTimeOut - command: echo 3 > /proc/sys/net/ipv4/tcp_retries2"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "echo 3 > /proc/sys/net/ipv4/tcp_retries2"

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method private parseIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string p0, ":"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    aget-object p0, p0, v1

    .line 17
    .line 18
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hexa2decIPv4(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    aget-object p0, p0, v1

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hexa2decIPv6(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "255.255."

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    array-length p1, p0

    .line 36
    const/4 v0, 0x1

    .line 37
    if-le p1, v0, :cond_1

    .line 38
    .line 39
    aget-object p0, p0, v0

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    aget-object p0, p0, v1

    .line 43
    .line 44
    return-object p0
.end method

.method private parsePort(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, ":"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    aget-object p1, p1, v0

    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method private registerDnsCallback()V
    .locals 4

    .line 1
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "connmetrics"

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 18
    .line 19
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsCallbackRegistered:Z

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-interface {v1, v3, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const-string v1, "registerDnsCallback - added"

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsCallbackRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "registerDnsCallback - RemoteException:"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method private registerForSwitchForIndividualAppsChange()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "wifi_switch_for_individual_apps_enabled"

    .line 13
    .line 14
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v1, v3, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v4

    .line 37
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "SwitchForIndividualApps - "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$3;

    .line 61
    .line 62
    invoke-direct {v0, p0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$3;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/os/Handler;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "wifi_switch_for_individual_apps_detection_mode"

    .line 72
    .line 73
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v2, v5, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    .line 88
    .line 89
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "mDetectionMode: "

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_1
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
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 26
    .line 27
    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private removeAllDnsRoutes()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 6
    .line 7
    const-string v1, "RemoveAllDnsRoutes - command:  while ip rule del pref 1 2>/dev/null; do true; done"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, " while ip rule del pref 1 2>/dev/null; do true; done"

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method private removeCurrentUidblockedList(I)V
    .locals 2

    .line 1
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    const-string v1, "removeCurrentUidblockedList: "

    .line 4
    .line 5
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_0
    return-void
.end method

.method private removeDnsRouteUid(ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->checkNoSpecialChar(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    const-string v4, "ip -4 rule del from all uidrange "

    .line 35
    .line 36
    const-string v5, "-"

    .line 37
    .line 38
    const-string v6, " to "

    .line 39
    .line 40
    invoke-static {v4, v5, p1, p1, v6}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, " table "

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, " pref 1"

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    const-string v4, "removeDnsRouteUid - command: "

    .line 69
    .line 70
    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v5, "SemWifiSwitchForIndividualAppsService"

    .line 75
    .line 76
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 80
    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    invoke-virtual {p0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-void
.end method

.method private removeFile(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    const-string v0, "removeFile - Failed to remove file - "

    .line 4
    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception p1

    .line 39
    const-string v0, "removeFile - Exception - "

    .line 40
    .line 41
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private reportNetworkConnectivity()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetwork:Landroid/net/Network;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetwork:Landroid/net/Network;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiNetwork:Landroid/net/Network;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 27
    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private resetBigDataValues()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnByNotification:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnBySetting:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnByOther:I

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser:I

    .line 17
    .line 18
    if-gtz v1, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser24H:I

    .line 21
    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    :cond_0
    const/4 v1, 0x1

    .line 25
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser24H:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser24H:I

    .line 29
    .line 30
    :goto_0
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser:I

    .line 31
    .line 32
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevAccumulatedTime:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevAccumulatedTime:I

    .line 40
    .line 41
    add-int/2addr v2, v1

    .line 42
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevAccumulatedTime:I

    .line 43
    .line 44
    :goto_1
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotificationCount:I

    .line 45
    .line 46
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 47
    .line 48
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 49
    .line 50
    return-void
.end method

.method private resetDnsDetected()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsDetected:Z

    .line 3
    .line 4
    return-void
.end method

.method private resetTcpTimeOut()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 6
    .line 7
    const-string v1, "resetTcpTimeOut - command: echo 15 > /proc/sys/net/ipv4/tcp_retries2"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "echo 15 > /proc/sys/net/ipv4/tcp_retries2"

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method private resetUidBaseHistory(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx:J

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx:J

    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx2:J

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx2:J

    .line 50
    .line 51
    :cond_0
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx2:J

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundAppTx:Z

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundAppTx2:Z

    .line 61
    .line 62
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRetransmissionCounter:I

    .line 63
    .line 64
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChatAppRetransmissionCounter:I

    .line 65
    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockNoEstablishCounter:I

    .line 67
    .line 68
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidReceiveQueueCounter:I

    .line 69
    .line 70
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsBlockCounter:I

    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidSynBlockCounter:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 75
    .line 76
    .line 77
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevSynSize:I

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    const/16 p1, 0x1e

    .line 82
    .line 83
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdLatestSumTxRx:I

    .line 84
    .line 85
    const/4 p1, 0x5

    .line 86
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdNormalEstablish:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/16 p1, 0x64

    .line 90
    .line 91
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdLatestSumTxRx:I

    .line 92
    .line 93
    const/16 p1, 0xa

    .line 94
    .line 95
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdNormalEstablish:I

    .line 96
    .line 97
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChangedTime:J

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->resetDnsDetected()V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private runDelayedNetdShellCommandAgain(Ljava/lang/String;)V
    .locals 2

    .line 1
    const v0, 0x2121e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-wide/16 v0, 0xbb8

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private runShellCommandResult(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x2121d

    .line 2
    .line 3
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

.method private sendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;ZZ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getTcpeManager()Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    iget-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 19
    .line 20
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 21
    .line 22
    invoke-virtual {p3, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 29
    .line 30
    iget p3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 31
    .line 32
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isSwitchEnabledApp(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    move-object v1, p1

    .line 37
    move v5, p2

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->sendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;ZZ)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    move v5, p2

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    if-nez p3, :cond_2

    .line 46
    .line 47
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnByNotification:I

    .line 48
    .line 49
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnBySetting:I

    .line 50
    .line 51
    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOnByOther:I

    .line 52
    .line 53
    iget v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser:I

    .line 54
    .line 55
    move v11, v5

    .line 56
    iget v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser24H:I

    .line 57
    .line 58
    iget v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffDefault:I

    .line 59
    .line 60
    iget v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 61
    .line 62
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 63
    .line 64
    iget v10, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotificationCount:I

    .line 65
    .line 66
    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->sendBigDataFeatureForTcpe(IIIIIIIJIZ)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    const-string p0, "SemWifiSwitchForIndividualAppsService"

    .line 71
    .line 72
    const-string p1, "sendBigDataFeatureForTcpe - Failed to send bigdata"

    .line 73
    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private setVoipOngoing(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x21227

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-wide/16 v0, 0xbb8

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private setupBroadcastReceiver()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "com.samsung.android.net.wifi.TCP_MONITOR_ACTION_USE_MOBILE_DATA"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_ACTION_SETTINGS"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private startHandler()V
    .locals 2

    .line 1
    const-string v0, "NetdCommandHandler"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 17
    .line 18
    return-void
.end method

.method private startTCPMonitoring(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 2
    .line 3
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string p0, "startTCPMonitoring : already started"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const-string v0, "startTCPMonitoring - "

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_2
    const v0, 0x211f5

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private stopTCPMonitoring(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 2
    .line 3
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "stopTCPMonitoring - "

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    const v0, 0x211f6

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->saveTcpMonitorFiles()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const-string p0, "stopTCPMonitoring : already stopped"

    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private turnOffMobileData()V
    .locals 3

    .line 1
    const-string v0, "turnOffMobileData"

    .line 2
    .line 3
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsMobileDataEnabledByTcpMonitor:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "turnOffMobileData - Exception "

    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "turnOffMobileData - IllegalArgumentException "

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    :goto_2
    return-void
.end method

.method private turnOnMobileData()V
    .locals 3

    .line 1
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    const-string v1, "turnOnMobileData"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v2, 0xc

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v2, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetworkRequestCallback;

    .line 29
    .line 30
    invoke-direct {v2, p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetworkRequestCallback;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsMobileDataEnabledByTcpMonitor:Z

    .line 46
    .line 47
    return-void
.end method

.method private uidBlockedAppDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->isNormalRunningTimePrevention(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p0, "SemWifiSwitchForIndividualAppsService"

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "uidBlockedAppDetected: Normal running time prevention - "

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isNotifyEnabledApp(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 62
    .line 63
    const-string v3, "uidBlockedAppDetected: first detected"

    .line 64
    .line 65
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v3, "wifi_switch_for_individual_apps_ever_detected"

    .line 77
    .line 78
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSuggestionNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, v2, v3, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showNotification(IILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 99
    .line 100
    monitor-enter v0

    .line 101
    :try_start_0
    iget p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotificationCount:I

    .line 102
    .line 103
    add-int/2addr p1, v2

    .line 104
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotificationCount:I

    .line 105
    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 108
    .line 109
    if-eqz p1, :cond_1

    .line 110
    .line 111
    const/4 p1, 0x5

    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    .line 113
    .line 114
    .line 115
    :cond_1
    return v1

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 120
    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->updateNormalOperationTime(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 131
    .line 132
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 133
    .line 134
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    .line 138
    .line 139
    if-nez v0, :cond_5

    .line 140
    .line 141
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 142
    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v4, "uidBlockedAppDetected: qc trigger "

    .line 150
    .line 151
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    const v0, 0x21209

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 189
    .line 190
    if-eqz v0, :cond_6

    .line 191
    .line 192
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 193
    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v4, "uidBlockedAppDetected: add "

    .line 197
    .line 198
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isNotifyEnabledApp(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-nez p0, :cond_8

    .line 243
    .line 244
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 245
    .line 246
    if-eqz p0, :cond_7

    .line 247
    .line 248
    const-string p0, "SemWifiSwitchForIndividualAppsService"

    .line 249
    .line 250
    const-string p1, "uidBlockedAppDetected: do not notify to user "

    .line 251
    .line 252
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    :cond_7
    return v1

    .line 256
    :cond_8
    return v2
.end method

.method private unregisterDnsCallback()V
    .locals 3

    .line 1
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "connmetrics"

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 18
    .line 19
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsCallbackRegistered:Z

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    :try_start_0
    invoke-interface {v1, v2}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const-string v1, "unregisterDnsCallback - removed"

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isDnsCallbackRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "unregisterDnsCallback - RemoteException:"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method private updateCurrentUidBlockedListStatus(ILcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;)Z
    .locals 3

    .line 1
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "updateCurrentUidBlockedListStatus: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ", "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedListLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    monitor-exit v0

    .line 65
    return p0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    monitor-exit v0

    .line 69
    const/4 p0, 0x0

    .line 70
    return p0

    .line 71
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method private updateDnsInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    iget v1, v0, Landroid/net/DhcpInfo;->dns1:I

    .line 13
    .line 14
    iget v0, v0, Landroid/net/DhcpInfo;->dns2:I

    .line 15
    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->intToIp(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    if-lez v0, :cond_1

    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->intToIp(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsList:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method private updateLinkStatistics()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeed:I

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRSSI:I

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x1e

    .line 26
    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeedThreshold:I

    .line 28
    .line 29
    const/16 v0, -0x37

    .line 30
    .line 31
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkRssiThreshold:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/16 v0, 0x28

    .line 41
    .line 42
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeedThreshold:I

    .line 43
    .line 44
    const/16 v0, -0x3c

    .line 45
    .line 46
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkRssiThreshold:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 v0, 0x32

    .line 50
    .line 51
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkSpeedThreshold:I

    .line 52
    .line 53
    const/16 v0, -0x46

    .line 54
    .line 55
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLinkRssiThreshold:I

    .line 56
    .line 57
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isAggressiveMode()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v0, 0x3

    .line 66
    :goto_1
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mThresholdDetectionIgnored:I

    .line 67
    .line 68
    return-void
.end method

.method private updateMonitoringOperation(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 2
    .line 3
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "updateMonitoringOperation : "

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMonitoringEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->startTCPMonitoring(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->stopTCPMonitoring(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsQaiSwitchableMode:Z

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsMobileDataEnabledByTcpMonitor:Z

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const-string v0, "updateMonitoringOperation : stop switching"

    .line 50
    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->useDefaultNetworkForAllApp()V

    .line 55
    .line 56
    .line 57
    :cond_3
    const/4 v0, 0x6

    .line 58
    if-eq p1, v0, :cond_5

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    if-ne p1, v0, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    return-void

    .line 65
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->clearNotificationAll()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private updateQcResult(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    if-eqz p1, :cond_5

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    .line 14
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
    if-ge v2, v0, :cond_5

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
    check-cast v3, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isNotifyEnabledApp(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    const-string v4, "SemWifiSwitchForIndividualAppsService"

    .line 52
    .line 53
    const-string v5, "updateQcResult - skip switching "

    .line 54
    .line 55
    invoke-static {v3, v5}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isSwitchEnabledApp(I)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_3

    .line 70
    .line 71
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 72
    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    const-string v4, "SemWifiSwitchForIndividualAppsService"

    .line 76
    .line 77
    const-string v5, "updateQcResult - show first notification "

    .line 78
    .line 79
    invoke-static {v3, v5}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 87
    .line 88
    iput-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 91
    .line 92
    iget-object v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 93
    .line 94
    invoke-virtual {v5, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const/4 v6, 0x2

    .line 99
    invoke-virtual {v4, v6, v3, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showNotification(IILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v4

    .line 105
    :try_start_0
    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotificationCount:I

    .line 106
    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    iput v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotificationCount:I

    .line 110
    .line 111
    monitor-exit v4

    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p0

    .line 116
    :cond_3
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 117
    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    const-string v4, "SemWifiSwitchForIndividualAppsService"

    .line 121
    .line 122
    const-string v5, "updateQcResult - switch "

    .line 123
    .line 124
    invoke-static {v3, v5}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 132
    .line 133
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    const v5, 0x2120c

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v5, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidListWaitingForQcResult:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 151
    .line 152
    .line 153
    :cond_6
    return-void
.end method

.method private updateRunningDnsList(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsListlock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/16 v1, 0x258

    .line 18
    .line 19
    if-le p1, v1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningDnsList:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method private updateRunningSynList(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningSynlock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x258

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method private updateRxTx(I)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx:J

    .line 10
    .line 11
    sub-long v4, v0, v4

    .line 12
    .line 13
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxDiff:J

    .line 14
    .line 15
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx:J

    .line 16
    .line 17
    sub-long v6, v2, v6

    .line 18
    .line 19
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRxDiff:J

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx:J

    .line 22
    .line 23
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx:J

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    .line 26
    .line 27
    add-long/2addr v6, v4

    .line 28
    add-long/2addr v6, v0

    .line 29
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx:J

    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    cmp-long v0, v4, v0

    .line 34
    .line 35
    if-lez v0, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundAppTx:Z

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const-string v0, "No foreground traffic is detected for uid "

    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 52
    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateRxTxForL2(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private updateRxTxForL2(I)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx2:J

    .line 10
    .line 11
    sub-long v4, v0, v4

    .line 12
    .line 13
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidTxDiff2:J

    .line 14
    .line 15
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx2:J

    .line 16
    .line 17
    sub-long v6, v2, v6

    .line 18
    .line 19
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidRxDiff2:J

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevTx2:J

    .line 22
    .line 23
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevRx2:J

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx2:J

    .line 26
    .line 27
    add-long/2addr v6, v4

    .line 28
    add-long/2addr v6, v0

    .line 29
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidAccumulatedTxRx2:J

    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    cmp-long v0, v4, v0

    .line 34
    .line 35
    if-lez v0, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundAppTx2:Z

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    const-string p0, "No foreground traffic is detected for uid "

    .line 46
    .line 47
    const-string v0, " (2)"

    .line 48
    .line 49
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "SemWifiSwitchForIndividualAppsService"

    .line 54
    .line 55
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method private updateSwitchedPackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChangedTime:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/32 v2, 0xea60

    .line 13
    .line 14
    .line 15
    div-long/2addr v0, v2

    .line 16
    long-to-int p1, v0

    .line 17
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 18
    .line 19
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "updateSwitchedPackageInfo - "

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    if-lez p1, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 47
    .line 48
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->updateNormalOperationTime(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    const-string v0, "updateSwitchedPackageInfo - create new DetectedPackage info"

    .line 64
    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 69
    .line 70
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->addDetectedPakcageInfo(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method private updateTcpDetectedHistory()V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEdatalock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/lit8 v2, v1, -0xa

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-gez v2, :cond_0

    .line 24
    .line 25
    move v2, v3

    .line 26
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v5, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/16 v2, 0x258

    .line 44
    .line 45
    if-le v1, v2, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method private updateTcpDnsHistory(Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDnsdatalock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget v1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->uid:I

    .line 7
    .line 8
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0x258

    .line 33
    .line 34
    if-lt v1, v2, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method private useDefaultNetworkForAllApp()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->clearCurrentUidBlockedList()V

    .line 2
    .line 3
    .line 4
    const v0, 0x21215

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->changeAllRouteToDefaultNetwork()V

    .line 11
    .line 12
    .line 13
    const v0, 0x21214

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private useDefaultNetworkForBlockedApp(I)V
    .locals 5

    .line 1
    const-string v0, "changeRouteToDefaultNetwork mUsedBytes: "

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->changeRouteToDefaultNetwork(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->hasActivatedCurrentUidBlockedList()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 16
    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    long-to-int v1, v1

    .line 24
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPrevAccumulatedTime:I

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUsedBytes:J

    .line 50
    .line 51
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, " mInUseCheckBytes"

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInUseCheckBytes:J

    .line 60
    .line 61
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, " mInuseCheckTime"

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseCheckTime:I

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, " mInuseTotalTime "

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mInuseTotalTime:I

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const p1, 0x21214

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0

    .line 105
    :cond_2
    return-void
.end method

.method private useMobileDataForBlockedApp(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsMobileDataEnabledByTcpMonitor:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x21213

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMobileDataConnected()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->changeRouteToMobileNetwork(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const v0, 0x21215

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-wide/16 v0, 0xbb8

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private writeHandlerMsg(Landroid/os/Message;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/Date;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string v3, "yyyy-MM-dd HH:mm:ss "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p1, Landroid/os/Message;->what:I

    .line 30
    .line 31
    const v2, 0x21227

    .line 32
    .line 33
    .line 34
    const-string v3, " "

    .line 35
    .line 36
    if-eq v1, v2, :cond_0

    .line 37
    .line 38
    packed-switch v1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    packed-switch v1, :pswitch_data_1

    .line 42
    .line 43
    .line 44
    packed-switch v1, :pswitch_data_2

    .line 45
    .line 46
    .line 47
    packed-switch v1, :pswitch_data_3

    .line 48
    .line 49
    .line 50
    packed-switch v1, :pswitch_data_4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :pswitch_0
    const-string v1, "TCP_MONITOR_RUN_SHELL_COMMAND_AGAIN"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :pswitch_1
    const-string v1, "TCP_MONITOR_SHELL_COMMAND_RESULT"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :pswitch_2
    const-string v1, "TCP_MONITOR_RESET_TCP_TIMEOUT_VALUE"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_3
    const-string v1, "TCP_MONITOR_CHECK_MOBILE_DATA_ENABLED"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_4
    const-string v1, "TCP_MONITOR_TURN_OFF_MOBILE_NETWORK"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_5
    const-string v1, "TCP_MONITOR_TURN_ON_MOBILE_NETWORK"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_6
    const-string v1, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_LIST_CHANGED"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_7
    const-string v1, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_WIFI"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_8
    const-string v1, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_MOBILE_DATA"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_9
    const-string v1, "TCP_MONITOR_QC_RESULT_TIMEOUT"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_a
    const-string v1, "TCP_MONITOR_QC_RESULT_UPDATED"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_b
    const-string v1, "TCP_MONITOR_QC_REQUEST"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_c
    const-string v1, "SWITCH_TO_MOBILE_DATA_QAI"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :pswitch_d
    const-string v1, "SWITCH_TO_MOBILE_DATA_DISABLED"

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :pswitch_e
    const-string v1, "SWITCH_TO_MOBILE_DATA_ENABLED"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :pswitch_f
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :pswitch_10
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_STOP"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :pswitch_11
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_START"

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_0
    const-string v1, "TCP_MONITOR_VOIP_STATE_CHANGED"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    const/16 v1, 0x258

    .line 217
    .line 218
    if-le p1, v1, :cond_1

    .line 219
    .line 220
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    .line 221
    .line 222
    const/4 v1, 0x0

    .line 223
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    return-object p0

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x211f5
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :pswitch_data_1
    .packed-switch 0x211fe
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_2
    .packed-switch 0x21209
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x21213
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2121d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 11

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
    const-string v2, "[isMonitoringEnabled] "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMonitoringEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "\n"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "[isSwitchingEnabled] "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isSwitchingEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "\n"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "[mSwitchForIndividualAppsEnabled] "

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEnabled:Z

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, "\n"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, "[mSwitchForIndividualAppsEverDetected] "

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSwitchForIndividualAppsEverDetected:Z

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, "\n"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "[mPoorNetworkDetectionEnabled] "

    .line 109
    .line 110
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, "\n"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, "[mCurrentQai] "

    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentQai:I

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v2, "\n"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v2, "[mDetectionMode] "

    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDetectionMode:I

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v2, "\n"

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v2, "[mIsWifiValidState] "

    .line 181
    .line 182
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v2, "\n"

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v2, "[mIsScreenOn] "

    .line 205
    .line 206
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsScreenOn:Z

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v2, "\n"

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, "[TCPE version] 20220712\n\n[CURRENT UID LIST]\n"

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 232
    .line 233
    const/4 v2, 0x1

    .line 234
    if-eqz v1, :cond_0

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_0

    .line 241
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Ljava/util/HashMap;

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    move v3, v2

    .line 259
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_1

    .line 264
    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    check-cast v4, Ljava/util/Map$Entry;

    .line 270
    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v6, "["

    .line 277
    .line 278
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v6, "] "

    .line 285
    .line 286
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v6, ":"

    .line 297
    .line 298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 302
    .line 303
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    check-cast v7, Ljava/lang/Integer;

    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v6, ":"

    .line 321
    .line 322
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v4, "\n"

    .line 333
    .line 334
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .line 343
    .line 344
    add-int/lit8 v3, v3, 0x1

    .line 345
    .line 346
    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    .line 348
    const-string v3, "SemWifiSwitchForIndividualAppsService"

    .line 349
    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v5, "dump - Exception "

    .line 353
    .line 354
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    .line 369
    .line 370
    goto :goto_1

    .line 371
    :cond_0
    const-string v1, "EMPTY\n"

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    :cond_1
    :goto_1
    const-string v1, "\n[LATEST HISTORY]\n"

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    sget-object v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEdatalock:Ljava/lang/Object;

    .line 382
    .line 383
    monitor-enter v1

    .line 384
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 385
    .line 386
    const/4 v4, 0x0

    .line 387
    if-eqz v3, :cond_2

    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-nez v3, :cond_2

    .line 394
    .line 395
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    move v6, v2

    .line 402
    move v7, v4

    .line 403
    :goto_2
    if-ge v7, v5, :cond_3

    .line 404
    .line 405
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    add-int/lit8 v7, v7, 0x1

    .line 410
    .line 411
    check-cast v8, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 412
    .line 413
    new-instance v9, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    const-string v10, "["

    .line 419
    .line 420
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v10, "] "

    .line 427
    .line 428
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v8, "\n"

    .line 439
    .line 440
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    add-int/lit8 v6, v6, 0x1

    .line 451
    .line 452
    goto :goto_2

    .line 453
    :catchall_0
    move-exception p0

    .line 454
    goto/16 :goto_8

    .line 455
    .line 456
    :cond_2
    const-string v3, "EMPTY\n"

    .line 457
    .line 458
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    :cond_3
    const-string v3, "\n\n[DETECTED HISTORY]\n"

    .line 462
    .line 463
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    .line 467
    .line 468
    if-eqz v3, :cond_4

    .line 469
    .line 470
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    if-nez v3, :cond_4

    .line 475
    .line 476
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDetectedHistory:Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 479
    .line 480
    .line 481
    move-result v5

    .line 482
    move v6, v2

    .line 483
    move v7, v4

    .line 484
    :goto_3
    if-ge v7, v5, :cond_5

    .line 485
    .line 486
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v8

    .line 490
    add-int/lit8 v7, v7, 0x1

    .line 491
    .line 492
    check-cast v8, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 493
    .line 494
    new-instance v9, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    const-string v10, "["

    .line 500
    .line 501
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const-string v10, "] "

    .line 508
    .line 509
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v8

    .line 516
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v8, "\n"

    .line 520
    .line 521
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v8

    .line 528
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    add-int/lit8 v6, v6, 0x1

    .line 532
    .line 533
    goto :goto_3

    .line 534
    :cond_4
    const-string v3, "EMPTY\n"

    .line 535
    .line 536
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 541
    .line 542
    if-eqz v1, :cond_b

    .line 543
    .line 544
    const-string v1, "\n\n[DNS HISTORY]\ndateTime,UID,PackageName,HostName/Domain Name,Result,Blocked,Policy,Foreground App, IPList\n"

    .line 545
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 550
    .line 551
    if-eqz v1, :cond_6

    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    if-nez v1, :cond_6

    .line 558
    .line 559
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    move v5, v2

    .line 566
    move v6, v4

    .line 567
    :goto_4
    if-ge v6, v3, :cond_7

    .line 568
    .line 569
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v7

    .line 573
    add-int/lit8 v6, v6, 0x1

    .line 574
    .line 575
    check-cast v7, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;

    .line 576
    .line 577
    const-string v8, "["

    .line 578
    .line 579
    const-string v9, "] "

    .line 580
    .line 581
    invoke-static {v8, v5, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    move-result-object v8

    .line 585
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v7

    .line 589
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v7, "\n"

    .line 593
    .line 594
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    add-int/2addr v5, v2

    .line 605
    goto :goto_4

    .line 606
    :cond_6
    const-string v1, "EMPTY\n"

    .line 607
    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    :cond_7
    const-string v1, "\n\n[TCP ALL SOCKET HISTORY]\ndateTime,Establish,SYN,Retransmission,Result\n"

    .line 612
    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 617
    .line 618
    if-eqz v1, :cond_8

    .line 619
    .line 620
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    if-nez v1, :cond_8

    .line 625
    .line 626
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    move v5, v2

    .line 633
    move v6, v4

    .line 634
    :goto_5
    if-ge v6, v3, :cond_9

    .line 635
    .line 636
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v7

    .line 640
    add-int/lit8 v6, v6, 0x1

    .line 641
    .line 642
    check-cast v7, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;

    .line 643
    .line 644
    const-string v8, "["

    .line 645
    .line 646
    const-string v9, "] "

    .line 647
    .line 648
    invoke-static {v8, v5, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    move-result-object v8

    .line 652
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v7

    .line 656
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v7, "\n"

    .line 660
    .line 661
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    add-int/2addr v5, v2

    .line 672
    goto :goto_5

    .line 673
    :cond_8
    const-string v1, "EMPTY\n"

    .line 674
    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    :cond_9
    const-string v1, "\n\n[IP ADDRESS COULD NOT CONVERT TO ESTABLISH STATE HISTORY]\nDate,UID,DomainNmae,IPAddress, PortNo\n"

    .line 679
    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    .line 684
    .line 685
    if-eqz v1, :cond_a

    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-nez v1, :cond_a

    .line 692
    .line 693
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningIpListSyn:Ljava/util/ArrayList;

    .line 694
    .line 695
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    move v5, v4

    .line 700
    :goto_6
    if-ge v5, v3, :cond_b

    .line 701
    .line 702
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v6

    .line 706
    add-int/lit8 v5, v5, 0x1

    .line 707
    .line 708
    check-cast v6, Ljava/lang/String;

    .line 709
    .line 710
    new-instance v7, Ljava/lang/StringBuilder;

    .line 711
    .line 712
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    const-string v6, "\n"

    .line 719
    .line 720
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v6

    .line 727
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    goto :goto_6

    .line 731
    :cond_a
    const-string v1, "EMPTY\n"

    .line 732
    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    :cond_b
    const-string v1, "\n\n[HANDLER MESSAGES]\n"

    .line 737
    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    .line 742
    .line 743
    if-eqz v1, :cond_c

    .line 744
    .line 745
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 746
    .line 747
    .line 748
    move-result v1

    .line 749
    if-nez v1, :cond_c

    .line 750
    .line 751
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mDumpHandlerMsg:Ljava/util/ArrayList;

    .line 752
    .line 753
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 754
    .line 755
    .line 756
    move-result v3

    .line 757
    move v5, v2

    .line 758
    :goto_7
    if-ge v4, v3, :cond_d

    .line 759
    .line 760
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v6

    .line 764
    add-int/lit8 v4, v4, 0x1

    .line 765
    .line 766
    check-cast v6, Ljava/lang/String;

    .line 767
    .line 768
    new-instance v7, Ljava/lang/StringBuilder;

    .line 769
    .line 770
    const-string v8, "["

    .line 771
    .line 772
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    const-string v8, "] "

    .line 779
    .line 780
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    const-string v6, "\n"

    .line 787
    .line 788
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v6

    .line 795
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    add-int/2addr v5, v2

    .line 799
    goto :goto_7

    .line 800
    :cond_c
    const-string v1, "EMPTY\n"

    .line 801
    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 806
    .line 807
    if-eqz p0, :cond_e

    .line 808
    .line 809
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->dump()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object p0

    .line 813
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object p0

    .line 820
    return-object p0

    .line 821
    :goto_8
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 822
    throw p0
.end method

.method public factoryResetForTcpMonitoring()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "wifi_switch_for_individual_apps_enabled"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "wifi_switch_for_individual_apps_ever_detected"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    const-string v0, "/data/misc/wifi/TcpMonitorApInfo.json"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeFile(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "/data/misc/wifi/TcpMonitorPackageInfo.json"

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeFile(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "/data/misc/wifi/TcpMonitorSwitchEnabledUID.xml"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeFile(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public getIpv4FromHexForm(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string p0, ":"

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
    const/4 v0, 0x2

    .line 9
    if-ne p1, v0, :cond_3

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    aget-object v0, p0, p1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    aget-object v1, p0, p1

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    sub-int/2addr v1, v2

    .line 38
    :goto_0
    if-ltz v1, :cond_2

    .line 39
    .line 40
    aget-object v3, p0, p1

    .line 41
    .line 42
    add-int/lit8 v4, v1, -0x1

    .line 43
    .line 44
    add-int/lit8 v5, v1, 0x1

    .line 45
    .line 46
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/16 v4, 0x10

    .line 51
    .line 52
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    const-string v3, "999"

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :goto_1
    if-le v1, v2, :cond_1

    .line 66
    .line 67
    const-string v3, "."

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_1
    add-int/lit8 v1, v1, -0x2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_3
    :goto_2
    const-string p0, "0.0.0.0"

    .line 81
    .line 82
    return-object p0
.end method

.method public getPortFromHexForm(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string p0, ":"

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
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    :try_start_0
    aget-object p0, p0, p1

    .line 15
    .line 16
    const/16 p1, 0x10

    .line 17
    .line 18
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    const/4 p0, -0x2

    .line 24
    return p0
.end method

.method public getTcpMonitorAllSocketHistory(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    const-string v1, "dateTime,E,S,Retransmission,Result\n"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-gt v1, v2, :cond_1

    .line 31
    .line 32
    if-gt v1, p1, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpAllSocketInfoHistory:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    sub-int/2addr v3, v1

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "\n"

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const-string p0, "EMPTY\n"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public getTcpMonitorDnsHistory(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    const-string v1, "dateTime,UID,PN,HN,R,B,P,FG\n"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-gt v1, v2, :cond_1

    .line 31
    .line 32
    if-gt v1, p1, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorDnsHistory:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    sub-int/2addr v3, v1

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiDnsInfo;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "\n"

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const-string p0, "EMPTY\n"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public getTcpMonitorInfoHistoryList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    sget-object v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEdatalock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistoryForL2:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    add-int/lit8 v4, v4, -0x6

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistoryForL2:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {v3, v4, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    :cond_0
    :goto_0
    if-ge v5, p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    check-cast v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->date:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v6, ","

    .line 62
    .line 63
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 67
    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v6, ","

    .line 72
    .line 73
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v6, ","

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v6, ","

    .line 92
    .line 93
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 97
    .line 98
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v6, ","

    .line 102
    .line 103
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    .line 107
    .line 108
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v6, ","

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    .line 117
    .line 118
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v6, ","

    .line 122
    .line 123
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 127
    .line 128
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v6, ","

    .line 132
    .line 133
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 137
    .line 138
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v6, ","

    .line 142
    .line 143
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->fin:I

    .line 147
    .line 148
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v6, ","

    .line 152
    .line 153
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->closing:I

    .line 157
    .line 158
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v6, ","

    .line 162
    .line 163
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    .line 167
    .line 168
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v6, ","

    .line 172
    .line 173
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    .line 177
    .line 178
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v6, ","

    .line 182
    .line 183
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    .line 187
    .line 188
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v6, ","

    .line 192
    .line 193
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->loss:D

    .line 197
    .line 198
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v6, ","

    .line 202
    .line 203
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rssi:I

    .line 207
    .line 208
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v6, ","

    .line 212
    .line 213
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->linkSpeed:I

    .line 217
    .line 218
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v6, ","

    .line 222
    .line 223
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionDuration:I

    .line 227
    .line 228
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v6, ","

    .line 232
    .line 233
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 237
    .line 238
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v6, ","

    .line 242
    .line 243
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    .line 247
    .line 248
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v6, ","

    .line 252
    .line 253
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->chatRetrans:I

    .line 257
    .line 258
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v6, ","

    .line 262
    .line 263
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransCount:I

    .line 267
    .line 268
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v6, ","

    .line 272
    .line 273
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rto:I

    .line 277
    .line 278
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v6, ","

    .line 282
    .line 283
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->cwnd:I

    .line 287
    .line 288
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v6, ","

    .line 292
    .line 293
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->synBlockNoEstablish:I

    .line 297
    .line 298
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v6, ","

    .line 302
    .line 303
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueueCount:I

    .line 307
    .line 308
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v6, ","

    .line 312
    .line 313
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    iget v6, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->dnsBlockCount:I

    .line 317
    .line 318
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    iget v4, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 329
    .line 330
    if-gtz v4, :cond_1

    .line 331
    .line 332
    iget v4, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rto:I

    .line 333
    .line 334
    if-gtz v4, :cond_1

    .line 335
    .line 336
    iget v4, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->cwnd:I

    .line 337
    .line 338
    if-lez v4, :cond_0

    .line 339
    .line 340
    goto :goto_1

    .line 341
    :catchall_0
    move-exception p0

    .line 342
    goto :goto_2

    .line 343
    :cond_1
    :goto_1
    const-string v4, "SemWifiSwitchForIndividualAppsService"

    .line 344
    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    const-string v7, "TMI window: "

    .line 351
    .line 352
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    iget-object v7, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->date:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v7, "syn="

    .line 361
    .line 362
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget v7, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 366
    .line 367
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v7, ", rto="

    .line 371
    .line 372
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    iget v7, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rto:I

    .line 376
    .line 377
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v7, ", cwnd="

    .line 381
    .line 382
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    iget v3, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->cwnd:I

    .line 386
    .line 387
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    goto/16 :goto_0

    .line 398
    .line 399
    :cond_2
    monitor-exit v1

    .line 400
    return-object v0

    .line 401
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    throw p0
.end method

.method public getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTCPEdatalock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    if-lez p1, :cond_0

    .line 20
    .line 21
    const-string v2, "dateTime,UID,PN,E,S,R,Result\n"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-gt v2, v3, :cond_1

    .line 34
    .line 35
    if-gt v2, p1, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpMonitorInfoHistory:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-int/2addr v4, v2

    .line 44
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v5, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->date:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v5, ","

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v5, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v5, ","

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v5, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v5, ","

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v5, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v5, ","

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v5, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v5, ","

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v5, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v5, ","

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v3, v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v3, "\n"

    .line 121
    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    goto :goto_1

    .line 137
    :cond_0
    const-string p0, "EMPTY\n"

    .line 138
    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v1, 0x21227

    .line 4
    .line 5
    .line 6
    const v2, 0x211f7

    .line 7
    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->writeHandlerMsg(Landroid/os/Message;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v0, v1, :cond_2d

    .line 21
    .line 22
    const-wide/16 v5, 0x3e8

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    const/4 v7, 0x6

    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    packed-switch v0, :pswitch_data_1

    .line 30
    .line 31
    .line 32
    const v1, 0x2120b

    .line 33
    .line 34
    .line 35
    const-wide/16 v5, 0xbb8

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    packed-switch v0, :pswitch_data_2

    .line 39
    .line 40
    .line 41
    packed-switch v0, :pswitch_data_3

    .line 42
    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 51
    .line 52
    const-string v1, "TCP_RESET_TCP_TIMEOUT_VALUE"

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->resetTcpTimeOut()V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v7, "TCP_CHECK_MOBILE_DATA_ENABLED: "

    .line 71
    .line 72
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 76
    .line 77
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v7, ", "

    .line 81
    .line 82
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 86
    .line 87
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 98
    .line 99
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Ljava/lang/String;

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isMobileDataConnected()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_3

    .line 108
    .line 109
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsInterfaceNameNotAvailable:Z

    .line 110
    .line 111
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->changeRouteToMobileNetwork(I)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 117
    .line 118
    if-ge v3, v2, :cond_31

    .line 119
    .line 120
    const v2, 0x21215

    .line 121
    .line 122
    .line 123
    add-int/2addr v3, v4

    .line 124
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    .line 130
    .line 131
    goto/16 :goto_5

    .line 132
    .line 133
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 138
    .line 139
    const-string v1, "TCP_MONITOR_TURN_OFF_MOBILE_NETWORK"

    .line 140
    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->turnOffMobileData()V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_5

    .line 148
    .line 149
    :pswitch_3
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 150
    .line 151
    if-eqz v0, :cond_5

    .line 152
    .line 153
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 154
    .line 155
    const-string v1, "TCP_MONITOR_TURN_ON_MOBILE_NETWORK"

    .line 156
    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->turnOnMobileData()V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_5

    .line 164
    .line 165
    :pswitch_4
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 170
    .line 171
    const-string v1, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_LIST_CHANGED"

    .line 172
    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v0, Ljava/util/ArrayList;

    .line 179
    .line 180
    if-eqz v0, :cond_31

    .line 181
    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateSwitchEnabledAppList(Ljava/util/ArrayList;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_31

    .line 194
    .line 195
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentUidBlockedList:Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    move v5, v3

    .line 214
    :cond_7
    :goto_0
    if-ge v5, v2, :cond_31

    .line 215
    .line 216
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    add-int/lit8 v5, v5, 0x1

    .line 221
    .line 222
    check-cast v6, Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-nez v6, :cond_8

    .line 233
    .line 234
    new-instance v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 235
    .line 236
    iget-object v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 237
    .line 238
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-direct {v6, v7, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;-><init>(ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const/16 v8, 0xc

    .line 246
    .line 247
    iput v8, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 248
    .line 249
    iget v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser:I

    .line 250
    .line 251
    add-int/2addr v8, v4

    .line 252
    iput v8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mTcpeOffByUser:I

    .line 253
    .line 254
    invoke-direct {p0, v6, v3, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;ZZ)V

    .line 255
    .line 256
    .line 257
    const v6, 0x2120d

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v6, v7, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    .line 266
    .line 267
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    goto :goto_1

    .line 270
    :cond_8
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getCurrentUidBlockedListStatus(I)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    sget-object v8, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->REMOVED:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    .line 275
    .line 276
    if-ne v6, v8, :cond_7

    .line 277
    .line 278
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->removeCurrentUidblockedList(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .line 280
    .line 281
    goto :goto_0

    .line 282
    :goto_1
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 283
    .line 284
    if-eqz v1, :cond_9

    .line 285
    .line 286
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 287
    .line 288
    const-string v2, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_LIST_CHANGED - Exception: "

    .line 289
    .line 290
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_5

    .line 301
    .line 302
    :pswitch_5
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 303
    .line 304
    if-eqz v0, :cond_a

    .line 305
    .line 306
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 307
    .line 308
    const-string v1, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_WIFI"

    .line 309
    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    :cond_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 314
    .line 315
    sget-object v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->REMOVED:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    .line 316
    .line 317
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateCurrentUidBlockedListStatus(ILcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;)Z

    .line 318
    .line 319
    .line 320
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->useDefaultNetworkForBlockedApp(I)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->removeNotification(I)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_5

    .line 329
    .line 330
    :pswitch_6
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 331
    .line 332
    if-eqz v0, :cond_b

    .line 333
    .line 334
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 335
    .line 336
    const-string v1, "TCP_MONITOR_SWITCH_INDIVIDUAL_APP_TO_MOBILE_DATA"

    .line 337
    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    :cond_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 342
    .line 343
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v1, Ljava/lang/String;

    .line 346
    .line 347
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addCurrentUidBlockedList(I)V

    .line 348
    .line 349
    .line 350
    sget-object v3, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;->ACTIVATED:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;

    .line 351
    .line 352
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateCurrentUidBlockedListStatus(ILcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$UID_STATUS;)Z

    .line 353
    .line 354
    .line 355
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->useMobileDataForBlockedApp(I)V

    .line 356
    .line 357
    .line 358
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 359
    .line 360
    iput-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastAutoSwitchNotifiedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 361
    .line 362
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotifier:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 363
    .line 364
    invoke-virtual {v3, v2, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showNotification(IILjava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mBigDataStatLock:Ljava/lang/Object;

    .line 368
    .line 369
    monitor-enter v1

    .line 370
    :try_start_1
    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotificationCount:I

    .line 371
    .line 372
    add-int/2addr v2, v4

    .line 373
    iput v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNotificationCount:I

    .line 374
    .line 375
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 377
    .line 378
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->enableSwitchEnabledAppInfo(I)V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_5

    .line 382
    .line 383
    :catchall_0
    move-exception p0

    .line 384
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    throw p0

    .line 386
    :pswitch_7
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 387
    .line 388
    if-eqz v0, :cond_c

    .line 389
    .line 390
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 391
    .line 392
    const-string v1, "TCP_MONITOR_QC_RESULT_TIMEOUT"

    .line 393
    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    .line 398
    .line 399
    if-eqz v0, :cond_d

    .line 400
    .line 401
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWaitForQCResult:Z

    .line 402
    .line 403
    :cond_d
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    .line 404
    .line 405
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateQcResult(Z)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_5

    .line 409
    .line 410
    :pswitch_8
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 411
    .line 412
    if-eqz v0, :cond_e

    .line 413
    .line 414
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 415
    .line 416
    const-string v2, "TCP_MONITOR_QC_RESULT_UPDATED"

    .line 417
    .line 418
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    :cond_e
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    .line 423
    .line 424
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsWifiValidState:Z

    .line 425
    .line 426
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateQcResult(Z)V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_5

    .line 430
    .line 431
    :pswitch_9
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 432
    .line 433
    if-eqz v0, :cond_f

    .line 434
    .line 435
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 436
    .line 437
    const-string v2, "TCP_MONITOR_QC_REQUEST"

    .line 438
    .line 439
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->reportNetworkConnectivity()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 446
    .line 447
    .line 448
    goto/16 :goto_5

    .line 449
    .line 450
    :pswitch_a
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 451
    .line 452
    if-eqz v0, :cond_10

    .line 453
    .line 454
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 455
    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    const-string v5, "SWITCH_TO_MOBILE_DATA_QAI "

    .line 459
    .line 460
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 464
    .line 465
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .line 474
    .line 475
    :cond_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 476
    .line 477
    const/4 v2, -0x1

    .line 478
    if-eq v0, v2, :cond_11

    .line 479
    .line 480
    if-eq v0, v4, :cond_11

    .line 481
    .line 482
    if-ne v0, v1, :cond_12

    .line 483
    .line 484
    :cond_11
    move v3, v4

    .line 485
    :cond_12
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsQaiSwitchableMode:Z

    .line 486
    .line 487
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mCurrentQai:I

    .line 488
    .line 489
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_5

    .line 493
    .line 494
    :pswitch_b
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 495
    .line 496
    if-eqz v0, :cond_13

    .line 497
    .line 498
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 499
    .line 500
    const-string v1, "SWITCH_TO_MOBILE_DATA_DISABLED"

    .line 501
    .line 502
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .line 504
    .line 505
    :cond_13
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    .line 506
    .line 507
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_5

    .line 511
    .line 512
    :pswitch_c
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 513
    .line 514
    if-eqz v0, :cond_14

    .line 515
    .line 516
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 517
    .line 518
    const-string v1, "SWITCH_TO_MOBILE_DATA_ENABLED"

    .line 519
    .line 520
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    :cond_14
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mPoorNetworkDetectionEnabled:Z

    .line 524
    .line 525
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateMonitoringOperation(I)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_5

    .line 529
    .line 530
    :pswitch_d
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 531
    .line 532
    if-eqz v0, :cond_25

    .line 533
    .line 534
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 535
    .line 536
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getCurrentPackageInfo()Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    if-nez v0, :cond_15

    .line 541
    .line 542
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 543
    .line 544
    if-eqz v0, :cond_24

    .line 545
    .line 546
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 547
    .line 548
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT - NULL"

    .line 549
    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    goto/16 :goto_3

    .line 554
    .line 555
    :cond_15
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    .line 556
    .line 557
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 558
    .line 559
    .line 560
    move-result v7

    .line 561
    if-ne v1, v7, :cond_17

    .line 562
    .line 563
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 564
    .line 565
    if-eqz v0, :cond_16

    .line 566
    .line 567
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUidNotified:Z

    .line 568
    .line 569
    if-nez v0, :cond_16

    .line 570
    .line 571
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 572
    .line 573
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT - SKIP"

    .line 574
    .line 575
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    :cond_16
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUidNotified:Z

    .line 579
    .line 580
    goto/16 :goto_3

    .line 581
    .line 582
    :cond_17
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUidNotified:Z

    .line 583
    .line 584
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 585
    .line 586
    if-eqz v1, :cond_18

    .line 587
    .line 588
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 593
    .line 594
    .line 595
    move-result v7

    .line 596
    if-eq v1, v7, :cond_1a

    .line 597
    .line 598
    :cond_18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 599
    .line 600
    if-eqz v1, :cond_19

    .line 601
    .line 602
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    iget v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    .line 607
    .line 608
    if-eq v1, v7, :cond_19

    .line 609
    .line 610
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSsid:Ljava/lang/String;

    .line 611
    .line 612
    iget-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 613
    .line 614
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v7

    .line 618
    invoke-direct {p0, v1, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateSwitchedPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    :cond_19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 622
    .line 623
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->resetUidBaseHistory(Z)V

    .line 628
    .line 629
    .line 630
    :cond_1a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateLinkStatistics()V

    .line 631
    .line 632
    .line 633
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 634
    .line 635
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isPackageException(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    if-nez v0, :cond_22

    .line 640
    .line 641
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isSkipPoorLinkCondition()Z

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    if-nez v0, :cond_22

    .line 646
    .line 647
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 648
    .line 649
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 650
    .line 651
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    iget-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 656
    .line 657
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v7

    .line 661
    invoke-direct {v0, v1, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;-><init>(ILjava/lang/String;)V

    .line 662
    .line 663
    .line 664
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;

    .line 665
    .line 666
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;-><init>()V

    .line 667
    .line 668
    .line 669
    new-instance v7, Ljava/util/Date;

    .line 670
    .line 671
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 672
    .line 673
    .line 674
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 675
    .line 676
    const-string v9, "yyyy-MM-dd HH:mm:ss "

    .line 677
    .line 678
    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v9

    .line 685
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v9

    .line 689
    iput-object v9, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->date:Ljava/lang/String;

    .line 690
    .line 691
    const-string v9, "NORMAL"

    .line 692
    .line 693
    iput-object v9, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 694
    .line 695
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v7

    .line 699
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v7

    .line 703
    iput-object v7, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->date:Ljava/lang/String;

    .line 704
    .line 705
    const-string v7, "NORMAL"

    .line 706
    .line 707
    iput-object v7, v1, Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;->result:Ljava/lang/String;

    .line 708
    .line 709
    iget v7, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 710
    .line 711
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateRxTx(I)V

    .line 712
    .line 713
    .line 714
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->loadTcpInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;)Z

    .line 715
    .line 716
    .line 717
    move-result v7

    .line 718
    if-eqz v7, :cond_21

    .line 719
    .line 720
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addTcpMonitorInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)V

    .line 721
    .line 722
    .line 723
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addTcpMonitorInfoListForL2(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)V

    .line 724
    .line 725
    .line 726
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addAllTcpSocketInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiAllTcpSocketInfo;)V

    .line 727
    .line 728
    .line 729
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isSkipNetworkCondition()Z

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    if-nez v1, :cond_1f

    .line 734
    .line 735
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isSkipTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)Z

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    if-nez v1, :cond_1f

    .line 740
    .line 741
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isBlockingApp(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)Z

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    if-eqz v1, :cond_1f

    .line 746
    .line 747
    iput v3, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 748
    .line 749
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateTcpDetectedHistory()V

    .line 750
    .line 751
    .line 752
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mLastDetectedTcpMonitorInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 753
    .line 754
    invoke-direct {p0, v0, v4, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;ZZ)V

    .line 755
    .line 756
    .line 757
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isSwitchingEnabled()Z

    .line 758
    .line 759
    .line 760
    move-result v1

    .line 761
    if-eqz v1, :cond_1c

    .line 762
    .line 763
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 764
    .line 765
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->isNotifyEnabledApp(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    .line 766
    .line 767
    .line 768
    move-result v1

    .line 769
    if-eqz v1, :cond_1c

    .line 770
    .line 771
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 772
    .line 773
    iget v3, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 774
    .line 775
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->addWifiPackageDetectedCount(I)V

    .line 776
    .line 777
    .line 778
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 779
    .line 780
    if-eqz v1, :cond_1b

    .line 781
    .line 782
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 783
    .line 784
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->addSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 792
    .line 793
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 794
    .line 795
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 796
    .line 797
    .line 798
    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 799
    .line 800
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidBlockedAppDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)Z

    .line 801
    .line 802
    .line 803
    move-result v1

    .line 804
    if-eqz v1, :cond_1e

    .line 805
    .line 806
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 807
    .line 808
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addCurrentUidBlockedList(I)V

    .line 813
    .line 814
    .line 815
    goto :goto_2

    .line 816
    :cond_1c
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 817
    .line 818
    if-eqz v1, :cond_1d

    .line 819
    .line 820
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 821
    .line 822
    const-string v3, "BLOCKED - request QC"

    .line 823
    .line 824
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .line 826
    .line 827
    :cond_1d
    const v1, 0x21209

    .line 828
    .line 829
    .line 830
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 831
    .line 832
    .line 833
    :cond_1e
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 834
    .line 835
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    .line 840
    .line 841
    :cond_1f
    iget v1, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 842
    .line 843
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidPrevSynSize:I

    .line 844
    .line 845
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 846
    .line 847
    if-nez v1, :cond_20

    .line 848
    .line 849
    const-string v1, "NORMAL"

    .line 850
    .line 851
    iget-object v3, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 852
    .line 853
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v1

    .line 857
    if-nez v1, :cond_24

    .line 858
    .line 859
    :cond_20
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 860
    .line 861
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->toString()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    .line 867
    .line 868
    goto :goto_3

    .line 869
    :cond_21
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 870
    .line 871
    if-eqz v0, :cond_24

    .line 872
    .line 873
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 874
    .line 875
    const-string v1, "Failed to load TCP data"

    .line 876
    .line 877
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .line 879
    .line 880
    goto :goto_3

    .line 881
    :cond_22
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 882
    .line 883
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 884
    .line 885
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 890
    .line 891
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v3

    .line 895
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;-><init>(ILjava/lang/String;)V

    .line 896
    .line 897
    .line 898
    new-instance v1, Ljava/util/Date;

    .line 899
    .line 900
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 901
    .line 902
    .line 903
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 904
    .line 905
    const-string v4, "yyyy-MM-dd HH:mm:ss "

    .line 906
    .line 907
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v1

    .line 918
    iput-object v1, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->date:Ljava/lang/String;

    .line 919
    .line 920
    const-string v1, "NORMAL"

    .line 921
    .line 922
    iput-object v1, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 923
    .line 924
    iget v1, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 925
    .line 926
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateRxTxForL2(I)V

    .line 927
    .line 928
    .line 929
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->loadTcpInfoForL2(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)Z

    .line 930
    .line 931
    .line 932
    move-result v1

    .line 933
    if-eqz v1, :cond_23

    .line 934
    .line 935
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addTcpMonitorInfoListForL2(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)V

    .line 936
    .line 937
    .line 938
    goto :goto_3

    .line 939
    :cond_23
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 940
    .line 941
    if-eqz v0, :cond_24

    .line 942
    .line 943
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 944
    .line 945
    const-string v1, "Failed to load TCP data"

    .line 946
    .line 947
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    .line 949
    .line 950
    :cond_24
    :goto_3
    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 951
    .line 952
    .line 953
    goto/16 :goto_5

    .line 954
    .line 955
    :cond_25
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 956
    .line 957
    if-eqz v0, :cond_31

    .line 958
    .line 959
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 960
    .line 961
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_DETECT - STOP"

    .line 962
    .line 963
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .line 965
    .line 966
    goto/16 :goto_5

    .line 967
    .line 968
    :pswitch_e
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 969
    .line 970
    if-eqz v0, :cond_26

    .line 971
    .line 972
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 973
    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    .line 975
    .line 976
    const-string v5, "TCP_MONITOR_FOREGROUND_ACTIVITY_STOP - "

    .line 977
    .line 978
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 982
    .line 983
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    .line 992
    .line 993
    :cond_26
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 994
    .line 995
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 996
    .line 997
    if-eq v0, v4, :cond_27

    .line 998
    .line 999
    if-eq v0, v7, :cond_27

    .line 1000
    .line 1001
    const/4 v1, 0x5

    .line 1002
    if-ne v0, v1, :cond_28

    .line 1003
    .line 1004
    :cond_27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->clearCurrentUidBlockedList()V

    .line 1005
    .line 1006
    .line 1007
    :cond_28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->unregisterDnsCallback()V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1014
    .line 1015
    if-eqz v0, :cond_31

    .line 1016
    .line 1017
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 1018
    .line 1019
    .line 1020
    move-result v0

    .line 1021
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSkipUid:I

    .line 1022
    .line 1023
    if-eq v0, v1, :cond_31

    .line 1024
    .line 1025
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 1026
    .line 1027
    if-eqz v0, :cond_29

    .line 1028
    .line 1029
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 1030
    .line 1031
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_STOP - update running time"

    .line 1032
    .line 1033
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    .line 1035
    .line 1036
    :cond_29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mSsid:Ljava/lang/String;

    .line 1037
    .line 1038
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 1039
    .line 1040
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->updateSwitchedPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    goto :goto_5

    .line 1048
    :pswitch_f
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 1049
    .line 1050
    if-eqz v0, :cond_2a

    .line 1051
    .line 1052
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 1053
    .line 1054
    const-string v3, "TCP_MONITOR_FOREGROUND_ACTIVITY_START - "

    .line 1055
    .line 1056
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    .line 1058
    .line 1059
    :cond_2a
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsForegroundActivityDetectionStarted:Z

    .line 1060
    .line 1061
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->registerDnsCallback()V

    .line 1062
    .line 1063
    .line 1064
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1065
    .line 1066
    if-ne v0, v1, :cond_2c

    .line 1067
    .line 1068
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 1069
    .line 1070
    if-eqz v0, :cond_2b

    .line 1071
    .line 1072
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 1073
    .line 1074
    const-string v1, "TCP_MONITOR_FOREGROUND_ACTIVITY_START - update start time"

    .line 1075
    .line 1076
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .line 1078
    .line 1079
    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1080
    .line 1081
    .line 1082
    move-result-wide v0

    .line 1083
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mUidChangedTime:J

    .line 1084
    .line 1085
    :cond_2c
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1089
    .line 1090
    .line 1091
    goto :goto_5

    .line 1092
    :cond_2d
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsVoipOngoing:Z

    .line 1093
    .line 1094
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1095
    .line 1096
    if-ne v1, v4, :cond_2e

    .line 1097
    .line 1098
    move v1, v4

    .line 1099
    goto :goto_4

    .line 1100
    :cond_2e
    move v1, v3

    .line 1101
    :goto_4
    if-eq v0, v1, :cond_31

    .line 1102
    .line 1103
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 1104
    .line 1105
    if-eqz v0, :cond_2f

    .line 1106
    .line 1107
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 1108
    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    const-string v2, "TCP_MONITOR_VOIP_STATE_CHANGED "

    .line 1112
    .line 1113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1117
    .line 1118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v1

    .line 1125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    .line 1127
    .line 1128
    :cond_2f
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->writeHandlerMsg(Landroid/os/Message;)Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1132
    .line 1133
    if-ne v0, v4, :cond_30

    .line 1134
    .line 1135
    move v3, v4

    .line 1136
    :cond_30
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mIsVoipOngoing:Z

    .line 1137
    .line 1138
    :cond_31
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1139
    .line 1140
    .line 1141
    return-void

    .line 1142
    nop

    .line 1143
    :pswitch_data_0
    .packed-switch 0x211f5
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    :pswitch_data_1
    .packed-switch 0x211fe
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    :pswitch_data_2
    .packed-switch 0x21209
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    :pswitch_data_3
    .packed-switch 0x21213
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public killTcpSocket(I)V
    .locals 2

    .line 1
    const-string v0, "ss  --tcp --kill sport = "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->DBG:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "killTcpSocket - command:"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mNetdCommandHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public killTcpSockets(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "killTcpSockets: no ports for UID "

    .line 12
    .line 13
    const-string v2, "SemWifiSwitchForIndividualAppsService"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " 1"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->uidPortListMap:Ljava/util/Map;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " 2"

    .line 65
    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v4, "killTcpSockets: kill "

    .line 99
    .line 100
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v4, " for UID "

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->killTcpSocket(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mWifiTransportLayerMonitor:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->onBootCompleted()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method syncUpList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v2, v1

    .line 16
    :goto_1
    and-int/2addr v0, v2

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrEstablish:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningPrevSyn:Ljava/util/ArrayList;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->mRunningCurrSyn:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-lez v2, :cond_2

    .line 76
    .line 77
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-ge v1, v2, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/String;

    .line 88
    .line 89
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->parseIP(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->parsePort(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->addProblematicDomainName(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    return-void
.end method
