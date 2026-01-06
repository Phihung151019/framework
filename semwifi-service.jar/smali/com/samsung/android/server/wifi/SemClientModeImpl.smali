.class public Lcom/samsung/android/server/wifi/SemClientModeImpl;
.super Lcom/android/internal/util/StateMachine;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemClientModeImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;,
        Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;
    }
.end annotation


# static fields
.field public static final ANDROID_AUTO_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.projection.gearhead"

.field static final BASE:I = 0x20000

.field static final CMD_ADVANCED_DEBUG_LOG_STATE_CHANGED:I = 0x2020a

.field static final CMD_AIRPLANE_MODE_CHANGED:I = 0x2006d

.field static final CMD_BCMPKTLOG_FILTER_DISABLE:I = 0x20209

.field static final CMD_BCMPKTLOG_FILTER_ENABLE:I = 0x20208

.field static final CMD_DISABLE_RANDOM_MAC:I = 0x2006a

.field static final CMD_DISCONNECT:I = 0x20049

.field static final CMD_DISCONNECTING_WATCHDOG_TIMER:I = 0x20060

.field static final CMD_ENABLE_B2B_NETWORK:I = 0x2006b

.field static final CMD_ENHANCED_FEATURE_UPDATED:I = 0x2021c

.field static final CMD_IMS_CALL_ESTABLISHED:I = 0x200f3

.field static final CMD_INITIALIZE:I = 0x20087

.field static final CMD_IP_CONFIGURATION_LOST:I = 0x2008b

.field static final CMD_IP_CONFIGURATION_SUCCESSFUL:I = 0x2008a

.field static final CMD_LINK_CONFIGURATION_POLLING:I = 0x2008c

.field static final CMD_PRIMARY_INTERFACE_CHANGED:I = 0x2008d

.field static final CMD_RESET_SIM_NETWORKS:I = 0x20065

.field static final CMD_SCAN_RESULT_AVAILABLE:I = 0x201f6

.field static final CMD_SET_ADPS_MODE:I = 0x20137

.field static final CMD_SET_DTIM_IN_SUSPEND_MODE:I = 0x201f5

.field static final CMD_SET_MAX_DTIM_IN_SUSPEND_MODE:I = 0x201f4

.field static final CMD_START_CONNECT_MODE:I = 0x20088

.field static final CMD_STOP_CONNECT_MODE:I = 0x20089

.field static final CMD_SUPPORTED_COUNTRY_UPDATED:I = 0x2021d

.field static final CMD_TELEPHONY_COUNTRY_CODE_CHANGED:I = 0x20070

.field static final CMD_TELEPHONY_SERVICE_STATE_CHANGED:I = 0x2006e

.field static final CMD_UPDATE_B2B_POLICY:I = 0x2006c

.field static final CMD_WIFI_7_MODE_ENABLED_CHANGED:I = 0x20071

.field static final CMD_WIFI_MLO_LINK_COUNT_CHANGED:I = 0x20072

.field static final CMD_WIFI_SAFE_MODE_CHANGED:I = 0x2006f

.field public static final CONNECT_MODE:I = 0x1

.field private static final DBG_PRODUCT_DEV:Z

.field public static final DISABLED_MODE:I = 0x4

.field private static final DISCONNECTING_GUARD_TIMER_MS:J = 0x1388L

.field public static final EAP_EVENT_ANONYMOUS_IDENTITY_UPDATED:I = 0x1

.field public static final EAP_EVENT_DEAUTH_8021X_AUTH_FAILED:I = 0x2

.field public static final EAP_EVENT_EAP_FAILURE:I = 0x3

.field public static final EAP_EVENT_ERROR_MESSAGE:I = 0x4

.field public static final EAP_EVENT_LOGGING:I = 0x5

.field public static final EAP_EVENT_NOTIFICATION:I = 0x7

.field public static final EAP_EVENT_NOTI_NO_INFO:I = 0x1

.field public static final EAP_EVENT_NOTI_PROPOSED_METHOD:I = 0x3

.field public static final EAP_EVENT_NOTI_SERVER_CERT_VALID:I = 0x2

.field public static final EAP_EVENT_NOTI_SIM_AUTH_FAIL:I = 0x4

.field public static final EAP_EVENT_NOTI_SIM_AUTH_SUCCESS:I = 0x5

.field public static final EAP_EVENT_NOTI_TRUSTED_ROOT_CERT_LOADED:I = 0x6

.field public static final EAP_EVENT_NO_CREDENTIALS:I = 0x6

.field public static final EAP_EVENT_SUCCESS:I = 0x8

.field public static final EAP_EVENT_TLS_ALERT:I = 0x9

.field public static final EAP_EVENT_TLS_CERT_ERROR:I = 0xa

.field public static final EAP_EVENT_TLS_HANDSHAKE_FAIL:I = 0xb

.field public static final EAP_NOTIFICATION_NO_NOTIFICATION_INFORMATION:I = 0x3ade68b1

.field public static final EAP_TLS_FAIL_ALTSUBJECT_MISMATCH:I = 0x6

.field public static final EAP_TLS_FAIL_BAD_CERTIFICATE:I = 0x7

.field public static final EAP_TLS_FAIL_DN_MISMATCH:I = 0xc

.field public static final EAP_TLS_FAIL_DOMAIN_MISMATCH:I = 0xa

.field public static final EAP_TLS_FAIL_DOMAIN_SUFFIX_MISMATCH:I = 0x9

.field public static final EAP_TLS_FAIL_EXPIRED:I = 0x4

.field public static final EAP_TLS_FAIL_INSUFFICIENT_KEY_LEN:I = 0xb

.field public static final EAP_TLS_FAIL_NOT_YET_VALID:I = 0x3

.field public static final EAP_TLS_FAIL_REVOKED:I = 0x2

.field public static final EAP_TLS_FAIL_SERVER_CHAIN_PROBE:I = 0x8

.field public static final EAP_TLS_FAIL_SUBJECT_MISMATCH:I = 0x5

.field public static final EAP_TLS_FAIL_UNSPECIFIED:I = 0x0

.field public static final EAP_TLS_FAIL_UNTRUSTED:I = 0x1

.field static final ENABLE_B2B_NETWORK_DELAY_MS:J = 0xbb8L

.field public static final ERROR_CODE_802_1X_AUTH_FAILED:I = 0x13953

.field public static final ERROR_CODE_NO_ERROR_AUTH_FAILED:I = -0x1

.field public static final ERROR_CODE_SIM_GENERAL_FAILURE_AFTER_AUTH_FAILED:I = 0x0

.field public static final ERROR_CODE_SIM_GENERAL_FAILURE_BEFORE_AUTH_FAILED:I = 0x4000

.field public static final ERROR_CODE_SIM_NOT_SUBSCRIBED_AUTH_FAILED:I = 0x407

.field public static final ERROR_CODE_SIM_TEMPORARILY_DENIED_AUTH_FAILED:I = 0x402

.field public static final ERROR_CODE_SIM_VENDOR_SPECIFIC_CERT_EXPIRED_AUTH_FAILED:I = 0x4001

.field static final LINK_CONFIGURATION_POLLING_DELAY_MS:J = 0x3e8L

.field public static final NUM_LOG_RECS_NORMAL:S = 0x1f4s

.field public static final NUM_LOG_RECS_VERBOSE:S = 0xbb8s

.field public static final NUM_LOG_RECS_VERBOSE_LOW_MEMORY:S = 0xc8s

.field private static final PASSWORD_MASK:Ljava/lang/String; = "*"

.field private static final REMOVE_CHIPSET_LOG_TIMEOUT_MS:I = 0x927c0

.field public static final SUPPLICANT_BSSID_ANY:Ljava/lang/String; = "any"

.field private static final TAG:Ljava/lang/String; = "SemClientModeImpl"

.field private static final WIFI_MONITOR_EVENTS:[I

.field private static mDisabledCountry:Ljava/lang/String;

.field private static final sGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMessageClasses:[Ljava/lang/Class;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

.field private final mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mConnectModeState:Lcom/android/internal/util/State;

.field private final mConnectedState:Lcom/android/internal/util/State;

.field private final mConnectionSpeed:[J

.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDisconnectedState:Lcom/android/internal/util/State;

.field private final mDisconnectingState:Lcom/android/internal/util/State;

.field private mDisconnectingWatchdogCount:I

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mFwLogTimer:Ljava/util/Timer;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mIsAuthFailedWithTlsCertFail:Z

.field mIsAuthFailedWithUmtsAuthTokenNumber:Z

.field private mIsEapMethodConverted:Z

.field private mIsImsCallEstablished:Z

.field private final mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mIsServerCertValid:Z

.field private final mIsSupportAdps:Z

.field mIsSystemCertLoaded:Z

.field private mIsWiFi7Enabled:I

.field private final mIsWiFi7Supported:Z

.field private mIsWifi7PendingCommand:Z

.field private final mIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

.field private final mL2ConnectedState:Lcom/android/internal/util/State;

.field private final mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

.field private mLastNetworkType:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

.field mLastRejectedSaeConfigKey:Ljava/lang/String;

.field private mLastSubId:I

.field private mListener:Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private mMessageHandlingStatus:I

.field private final mObtainingIpState:Lcom/android/internal/util/State;

.field private mOperationalMode:I

.field private final mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

.field private final mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

.field private mScpmWifi7Disabled:Z

.field private mScreenOn:Z

.field private final mSemMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

.field private final mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

.field private mTargetBssid:Ljava/lang/String;

.field mTargetNetworkId:I

.field private mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mTlsCertFailReason:I

.field private mTlsCertFailReasonString:Ljava/lang/String;

.field private final mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

.field private mVerboseLoggingEnabled:Z

.field private mWiFi7MlMaxLink:I

.field private mWifiAdpsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

.field private final mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private final mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

.field private final mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

.field private final mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

.field private final mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

.field private final mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;


# direct methods
.method public static synthetic $r8$lambda$Cs1ng_jXGf6f4ZKbRrIl0qqv5BE(ILandroid/net/wifi/SecurityParams;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->lambda$isBssidAllowedAkms$3(ILandroid/net/wifi/SecurityParams;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$U35vRpLhy1kKFaKc2zCZa5E5vi8(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->lambda$new$2(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$VlZcx8m9rr5TT5SyXaj5I_1uZIw(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->lambda$new$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$aSHW60e4KWJjm4kMzf2g4kJ27-U(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->lambda$enableB2bNetworks$1(Landroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$s3BbtVb0sYLRgudXa257CyM86yE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->lambda$isBssidAllowSsid$4(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectedState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountryCode(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mCountryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDefaultState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectingState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingWatchdogCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsActive(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsImsCallEstablished:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSupportAdps(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsSupportAdps:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWiFi7Supported(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWiFi7Supported:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifi7PendingCommand(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWifi7PendingCommand:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/diagnostics/NetworkType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastNetworkType:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ClientModeImplStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mListener:Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObtainingIpState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamingAssistant(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemRoamingAssistant;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanResultUpdatedListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScpmWifi7Disabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScpmWifi7Disabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScreenOn:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mSemMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTlsCertFailReason(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReason:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTlsCertFailReasonString(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReasonString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserConnectionSaLogging(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiAdpsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiB2BPolicyManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNotificationController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiSafeModeObserver(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCountryCode(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mCountryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisconnectingWatchdogCount(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingWatchdogCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFwLogTimer(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFwLogTimer:Ljava/util/Timer;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsEapMethodConverted(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsEapMethodConverted:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsImsCallEstablished:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWiFi7Enabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWiFi7Enabled:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWifi7PendingCommand(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWifi7PendingCommand:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;Lcom/samsung/android/server/wifi/diagnostics/NetworkType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastNetworkType:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastSubId(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastSubId:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMessageHandlingStatus(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mMessageHandlingStatus:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOperationalMode(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mOperationalMode:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScpmWifi7Disabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScpmWifi7Disabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWiFi7MlMaxLink(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWiFi7MlMaxLink:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndEnable80211be(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->checkAndEnable80211be(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndUpdateAllowedBssidNetwork(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->checkAndUpdateAllowedBssidNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTlsCertErrorData(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->clearTlsCertErrorData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$menableB2bNetworks(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->enableB2bNetworks()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMatchedWifiConfig(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getMatchedWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getWifiInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAdvancedLogStateChanged(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->handleAdvancedLogStateChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEapMessage(IILcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->handleEapMessage(IILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->handleNetworkDisconnect()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSupplicantStateChange(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$misBssidAllowNetwork(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isBssidAllowNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misEapMethodServerCertUsed(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isEapMethodServerCertUsed(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misSupplicantConnecting(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/SupplicantState;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isSupplicantConnecting(Landroid/net/wifi/SupplicantState;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misTlsDomainMismatch(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isTlsDomainMismatch(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessBigDataLogEvent(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->processBigDataLogEvent(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->report(ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mresetFwLogFolder(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->resetFwLogFolder()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mresetSpeedTimesAndMarkWifiOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->resetSpeedTimesAndMarkWifiOn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mretryConnectionForB2bNetwork(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->retryConnectionForB2bNetwork()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendNetworkConnectionFailEventToSettings(IILcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p3, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendNetworkConnectionFailEventToSettings(ILjava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setAdpsEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetConnectionSpeedTime(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setConnectionSpeedTime(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldSuggestEapTofu(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->shouldSuggestEapTofu()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetDBG_PRODUCT_DEV()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->DBG_PRODUCT_DEV:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmDisabledCountry()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisabledCountry:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmDisabledCountry(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisabledCountry:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

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
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->DBG_PRODUCT_DEV:Z

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisabledCountry:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [Ljava/lang/Class;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-class v3, Lcom/android/internal/util/AsyncChannel;

    .line 20
    .line 21
    aput-object v3, v0, v2

    .line 22
    .line 23
    const-class v2, Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 24
    .line 25
    aput-object v2, v0, v1

    .line 26
    .line 27
    sput-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sMessageClasses:[Ljava/lang/Class;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sGetWhatToString:Landroid/util/SparseArray;

    .line 34
    .line 35
    const/16 v0, 0x16

    .line 36
    .line 37
    new-array v0, v0, [I

    .line 38
    .line 39
    fill-array-data v0, :array_0

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->WIFI_MONITOR_EVENTS:[I

    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 4
        0x2402e
        0x2402d
        0x2402b
        0x24007
        0x24003
        0x24004
        0x24006
        0x24051
        0x24052
        0x2400d
        0x2402f
        0x2406a
        0x2406b
        0x2406c
        0x2406d
        0x2406e
        0x2406f
        0x24070
        0x24071
        0x24072
        0x24074
        0x24076
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 17

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
    const-string v3, "SemClientModeImpl"

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    invoke-direct {v0, v3, v4}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScreenOn:Z

    .line 16
    .line 17
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    sget-object v4, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->UNKNOWN:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 32
    .line 33
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastNetworkType:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    iput v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mOperationalMode:I

    .line 37
    .line 38
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiAdpsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    const-string v5, "any"

    .line 46
    .line 47
    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetBssid:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v5, -0x1

    .line 50
    iput v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 54
    .line 55
    iput v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingWatchdogCount:I

    .line 56
    .line 57
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    .line 58
    .line 59
    iput v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReason:I

    .line 60
    .line 61
    const-string v6, ""

    .line 62
    .line 63
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReasonString:Ljava/lang/String;

    .line 64
    .line 65
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithUmtsAuthTokenNumber:Z

    .line 66
    .line 67
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsServerCertValid:Z

    .line 68
    .line 69
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsSystemCertLoaded:Z

    .line 70
    .line 71
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsEapMethodConverted:Z

    .line 72
    .line 73
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWifi7PendingCommand:Z

    .line 74
    .line 75
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScpmWifi7Disabled:Z

    .line 76
    .line 77
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mCountryCode:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v6, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;

    .line 80
    .line 81
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 82
    .line 83
    .line 84
    iput-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDefaultState:Lcom/android/internal/util/State;

    .line 85
    .line 86
    new-instance v7, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;

    .line 87
    .line 88
    invoke-direct {v7, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 89
    .line 90
    .line 91
    iput-object v7, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectModeState:Lcom/android/internal/util/State;

    .line 92
    .line 93
    new-instance v8, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;

    .line 94
    .line 95
    invoke-direct {v8, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 96
    .line 97
    .line 98
    iput-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mL2ConnectedState:Lcom/android/internal/util/State;

    .line 99
    .line 100
    new-instance v9, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;

    .line 101
    .line 102
    invoke-direct {v9, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 103
    .line 104
    .line 105
    iput-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 106
    .line 107
    new-instance v10, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;

    .line 108
    .line 109
    invoke-direct {v10, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 110
    .line 111
    .line 112
    iput-object v10, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectedState:Lcom/android/internal/util/State;

    .line 113
    .line 114
    new-instance v11, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;

    .line 115
    .line 116
    invoke-direct {v11, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectingState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 117
    .line 118
    .line 119
    iput-object v11, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 120
    .line 121
    new-instance v12, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;

    .line 122
    .line 123
    invoke-direct {v12, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 124
    .line 125
    .line 126
    iput-object v12, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 127
    .line 128
    new-array v4, v4, [J

    .line 129
    .line 130
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectionSpeed:[J

    .line 131
    .line 132
    new-instance v4, Lcom/samsung/android/server/wifi/SemClientModeImpl$1;

    .line 133
    .line 134
    invoke-direct {v4, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 135
    .line 136
    .line 137
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 138
    .line 139
    iput v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mMessageHandlingStatus:I

    .line 140
    .line 141
    new-instance v4, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda3;

    .line 142
    .line 143
    invoke-direct {v4, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 144
    .line 145
    .line 146
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 147
    .line 148
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    move-object/from16 v4, p2

    .line 151
    .line 152
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 153
    .line 154
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 155
    .line 156
    move-object/from16 v4, p5

    .line 157
    .line 158
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 159
    .line 160
    move-object/from16 v4, p6

    .line 161
    .line 162
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 165
    .line 166
    .line 167
    move-result-object v13

    .line 168
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 169
    .line 170
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 175
    .line 176
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNotificationController()Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 193
    .line 194
    const-class v13, Landroid/app/ActivityManager;

    .line 195
    .line 196
    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    check-cast v13, Landroid/app/ActivityManager;

    .line 201
    .line 202
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 203
    .line 204
    new-instance v13, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 205
    .line 206
    invoke-direct {v13}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 207
    .line 208
    .line 209
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 210
    .line 211
    new-instance v13, Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 212
    .line 213
    invoke-direct {v13}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 217
    .line 218
    iput v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastSubId:I

    .line 219
    .line 220
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 225
    .line 226
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 227
    .line 228
    .line 229
    move-result v13

    .line 230
    iput-boolean v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 231
    .line 232
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiBackOffController()Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 233
    .line 234
    .line 235
    move-result-object v13

    .line 236
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 237
    .line 238
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getMobileWipsFrameworkService()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mSemMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 243
    .line 244
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getCellularStateManager()Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 249
    .line 250
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 255
    .line 256
    new-instance v13, Lcom/samsung/android/server/wifi/util/SemClock;

    .line 257
    .line 258
    invoke-direct {v13}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    .line 259
    .line 260
    .line 261
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 268
    .line 269
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNl80211Util()Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 274
    .line 275
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getB2BPolicyManager()Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 276
    .line 277
    .line 278
    move-result-object v13

    .line 279
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 280
    .line 281
    new-instance v14, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda4;

    .line 282
    .line 283
    invoke-direct {v14, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v14}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->registerListener(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$B2bPolicyListener;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiSafeModeObserver()Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    iput-object v13, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 294
    .line 295
    const/16 v13, 0x8

    .line 296
    .line 297
    invoke-virtual {v5, v13}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiStandardSupported(I)Z

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    iput-boolean v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWiFi7Supported:Z

    .line 302
    .line 303
    const-string v13, "sec_wifi_mlo_link_count"

    .line 304
    .line 305
    invoke-virtual {v2, v1, v13, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    iput v14, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWiFi7MlMaxLink:I

    .line 310
    .line 311
    const-string v14, "sec_wifi_7_mode_enabled"

    .line 312
    .line 313
    const/4 v15, 0x1

    .line 314
    invoke-virtual {v2, v1, v14, v15}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    iput v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWiFi7Enabled:I

    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedAdps()Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsSupportAdps:Z

    .line 325
    .line 326
    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 327
    .line 328
    move/from16 p5, v3

    .line 329
    .line 330
    const-string v3, "wifi_adps_enable"

    .line 331
    .line 332
    move/from16 v16, v5

    .line 333
    .line 334
    if-eqz p5, :cond_0

    .line 335
    .line 336
    const/4 v4, 0x0

    .line 337
    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    const/4 v4, 0x1

    .line 342
    if-ne v5, v4, :cond_0

    .line 343
    .line 344
    goto :goto_0

    .line 345
    :cond_0
    const/4 v4, 0x0

    .line 346
    :goto_0
    invoke-direct {v15, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 347
    .line 348
    .line 349
    iput-object v15, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiAdpsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 350
    .line 351
    if-eqz p5, :cond_1

    .line 352
    .line 353
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    new-instance v4, Lcom/samsung/android/server/wifi/SemClientModeImpl$2;

    .line 358
    .line 359
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    invoke-direct {v4, v0, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl$2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Handler;)V

    .line 364
    .line 365
    .line 366
    const/4 v5, 0x0

    .line 367
    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 368
    .line 369
    .line 370
    goto :goto_1

    .line 371
    :cond_1
    const/4 v5, 0x0

    .line 372
    :goto_1
    if-eqz v16, :cond_2

    .line 373
    .line 374
    invoke-static {v14}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    new-instance v4, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;

    .line 379
    .line 380
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 381
    .line 382
    .line 383
    move-result-object v14

    .line 384
    invoke-direct {v4, v0, v14}, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Handler;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 388
    .line 389
    .line 390
    invoke-static {v13}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    new-instance v4, Lcom/samsung/android/server/wifi/SemClientModeImpl$4;

    .line 395
    .line 396
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 397
    .line 398
    .line 399
    move-result-object v13

    .line 400
    invoke-direct {v4, v0, v13}, Lcom/samsung/android/server/wifi/SemClientModeImpl$4;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Handler;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 404
    .line 405
    .line 406
    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getPickerDialogController()Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 411
    .line 412
    new-instance v2, Lcom/samsung/android/server/wifi/SemClientModeImpl$5;

    .line 413
    .line 414
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$5;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->setAdapter(Lcom/samsung/android/server/wifi/ui/PickerDialogController$Adapter;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getRoamingAssistant()Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 425
    .line 426
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 431
    .line 432
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCoexManager()Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 437
    .line 438
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiResourceManager()Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 443
    .line 444
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiEnhancedFeatureController()Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 449
    .line 450
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 451
    .line 452
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIssueTrackerLogManager()Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 460
    .line 461
    new-instance v2, Lcom/samsung/android/server/wifi/SemClientModeImpl$6;

    .line 462
    .line 463
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$6;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->registerListener(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getUserConnectionSaLogging()Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 474
    .line 475
    invoke-virtual {v0, v6}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0, v7, v6}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0, v8, v7}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v9, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, v10, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v11, v7}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v12, v7}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v6}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 497
    .line 498
    .line 499
    const/16 v1, 0x1f4

    .line 500
    .line 501
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->setLogRecSize(I)V

    .line 502
    .line 503
    .line 504
    const/4 v4, 0x0

    .line 505
    invoke-virtual {v0, v4}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 509
    .line 510
    .line 511
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->logw(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->logi(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->logw(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->logw(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkAndEnable80211be(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisabledCountry:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisabledCountry:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "checkAndEnable: countryCode = "

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, ", disabled = "

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, ", enabled = "

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWiFi7Enabled:I

    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, ", num = "

    .line 57
    .line 58
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWiFi7MlMaxLink:I

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v3, "SemClientModeImpl"

    .line 71
    .line 72
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScpmWifi7Disabled:Z

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iget p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWiFi7Enabled:I

    .line 83
    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->enable80211be(I)V

    .line 85
    .line 86
    .line 87
    iget p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWiFi7Enabled:I

    .line 88
    .line 89
    if-ne p1, v1, :cond_3

    .line 90
    .line 91
    iget p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWiFi7MlMaxLink:I

    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setNumOfAllowedMloLink(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void

    .line 97
    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->enable80211be(I)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private checkAndSendIpConfigurationState(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectedState:Lcom/android/internal/util/State;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    const-string p1, "networkInfo == null"

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/net/LinkProperties;->isProvisioned()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const p1, 0x2008b

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    :goto_0
    const p1, 0x2008a

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private checkAndUpdateAllowedBssidNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getBssidAllowlistInternal()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getMacAddressFromBssidString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :cond_0
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/net/MacAddress;

    .line 36
    .line 37
    invoke-virtual {p2, v3}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    :goto_0
    if-eqz p2, :cond_6

    .line 45
    .line 46
    if-nez v2, :cond_6

    .line 47
    .line 48
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setBssidAllowlist(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const-string v0, "*"

    .line 61
    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 68
    .line 69
    if-eqz p2, :cond_5

    .line 70
    .line 71
    :goto_1
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 72
    .line 73
    array-length v2, p2

    .line 74
    if-ge v1, v2, :cond_5

    .line 75
    .line 76
    aget-object p2, p2, v1

    .line 77
    .line 78
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_4

    .line 83
    .line 84
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 85
    .line 86
    aput-object v0, p2, v1

    .line 87
    .line 88
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 94
    .line 95
    .line 96
    :cond_6
    return-void
.end method

.method private clearTlsCertErrorData()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Clear TLS cert error"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReason:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReasonString:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsServerCertValid:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsSystemCertLoaded:Z

    .line 22
    .line 23
    return-void
.end method

.method private convertToEapMethod(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_4

    .line 14
    .line 15
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_4

    .line 22
    .line 23
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const-string v1, "PEAP"

    .line 33
    .line 34
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v1, "TTLS"

    .line 48
    .line 49
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "PWD"

    .line 68
    .line 69
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/4 v2, 0x1

    .line 87
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsEapMethodConverted:Z

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "update EAP method for EAP TargetConfig: "

    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, " netId = "

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, " method = "

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_3
    const-string v0, "update EAP method : unknown EAP method error : "

    .line 128
    .line 129
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_1
    return-void
.end method

.method private convertToEapPhase2Method(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "update EAP phase2Method for EAP TargetConfig: "

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, " netId = "

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " phase2Method = "

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method private deregisterForWifiMonitorEvents()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->WIFI_MONITOR_EVENTS:[I

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    aget v3, v0, v2

    .line 15
    .line 16
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v4, v5, v3, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private eapMessageToString(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "ignore eap message : not implementation yet"

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    const-string p0, "TLS_CERT_ERROR "

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_1
    const-string p0, "TLS_HANDSHAKE_FAIL "

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    const-string p0, "SUCCESS "

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_3
    const-string p0, "NOTIFICATION "

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_4
    const-string p0, "NO_CREDENTIALS "

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_5
    const-string p0, "LOG "

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_6
    const-string p0, "ERROR "

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_7
    const-string p0, "FAIL "

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_8
    const-string p0, "DEAUTH_8021X_AUTH_FAILED "

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_9
    const-string p0, "ANONYMOUS_IDENTITY_UPDATED "

    .line 43
    .line 44
    :goto_0
    const-string p1, "events: { EAP_EVENT_"

    .line 45
    .line 46
    const-string v0, "},"

    .line 47
    .line 48
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const p1, 0x3ade68b1

    .line 53
    .line 54
    .line 55
    if-eq p2, p1, :cond_1

    .line 56
    .line 57
    const-string p1, " notification_status="

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_1
    const-string p1, " extra_info: { "

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " }"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1
    .end packed-switch
.end method

.method private enable80211be(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->enable80211be(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private enableB2bNetworks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private getMacAddressFromBssidString(Ljava/lang/String;)Landroid/net/MacAddress;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    const-string v0, "Invalid BSSID format: "

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "SemClientModeImpl"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method private getMatchedWifiConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasNetworkIdInWifiInfo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method private getWifiInfo(Z)Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->updateWifiInfo(Ljava/lang/String;Landroid/net/wifi/WifiInfo;)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method private handleAdvancedLogStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method private handleEapMessage(IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const v0, 0x3ade68b1

    .line 6
    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    const-string v0, "none"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "eap message : mLastNetworkId: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 25
    .line 26
    iget v2, v2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", mLastSubId: "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastSubId:I

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", mTargetNetworkId: "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 47
    .line 48
    const-string v3, ", event ["

    .line 49
    .line 50
    const-string v4, "] , status ["

    .line 51
    .line 52
    invoke-static {v1, v2, v3, p1, v4}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "], message: "

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 76
    .line 77
    invoke-static {v0, p1, p2, p3, v1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForEapMessage(Ljava/lang/String;IILjava/lang/String;Landroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/16 v1, 0x13

    .line 82
    .line 83
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->report(ILandroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    const/4 v1, 0x1

    .line 88
    if-eq p1, v1, :cond_b

    .line 89
    .line 90
    const/4 v2, 0x2

    .line 91
    if-eq p1, v2, :cond_b

    .line 92
    .line 93
    const/4 v3, 0x3

    .line 94
    if-eq p1, v3, :cond_b

    .line 95
    .line 96
    const/4 v4, 0x7

    .line 97
    if-eq p1, v4, :cond_4

    .line 98
    .line 99
    const-string p2, ""

    .line 100
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :pswitch_0
    if-nez p3, :cond_2

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    move-object p2, p3

    .line 110
    :goto_1
    const/16 p1, 0x167

    .line 111
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->insertKnoxAuditLogAndNotifyCertificationFailure(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isTrustOnFirstUseSupported()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_c

    .line 122
    .line 123
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->parseTlsCertErrorToSuggestTofu(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_1
    if-nez p3, :cond_3

    .line 128
    .line 129
    move-object p3, p2

    .line 130
    :cond_3
    const/16 p1, 0x168

    .line 131
    .line 132
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->insertKnoxAuditLogAndNotifyCertificationFailure(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isTrustOnFirstUseSupported()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    if-ne p2, v2, :cond_5

    .line 145
    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsServerCertValid:Z

    .line 147
    .line 148
    :cond_5
    if-ne p2, v3, :cond_6

    .line 149
    .line 150
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->convertToEapMethod(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_6
    const/4 p1, 0x6

    .line 155
    if-ne p2, p1, :cond_7

    .line 156
    .line 157
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsSystemCertLoaded:Z

    .line 158
    .line 159
    return-void

    .line 160
    :cond_7
    const/4 p1, 0x4

    .line 161
    if-eq p2, p1, :cond_8

    .line 162
    .line 163
    const/4 v2, 0x5

    .line 164
    if-ne p2, v2, :cond_c

    .line 165
    .line 166
    :cond_8
    if-ne p2, p1, :cond_9

    .line 167
    .line 168
    move v0, v1

    .line 169
    :cond_9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithUmtsAuthTokenNumber:Z

    .line 170
    .line 171
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 172
    .line 173
    if-eqz p1, :cond_c

    .line 174
    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string p2, "Notification SIM auth "

    .line 178
    .line 179
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithUmtsAuthTokenNumber:Z

    .line 183
    .line 184
    if-eqz p0, :cond_a

    .line 185
    .line 186
    const-string p0, "Failed"

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_a
    const-string p0, "Success"

    .line 190
    .line 191
    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p0, ", "

    .line 195
    .line 196
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    const-string p1, "SemClientModeImpl"

    .line 207
    .line 208
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->updateAnonymousIdentityForEnterpriseNetwork()V

    .line 213
    .line 214
    .line 215
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsEapMethodConverted:Z

    .line 216
    .line 217
    if-eqz p1, :cond_c

    .line 218
    .line 219
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->convertToEapPhase2Method(I)V

    .line 220
    .line 221
    .line 222
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsEapMethodConverted:Z

    .line 223
    .line 224
    :cond_c
    :goto_3
    return-void

    .line 225
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleNetworkDisconnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasNetworkIdInWifiInfo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 12
    .line 13
    iget v1, v1, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->reportNetworkDisconnect(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->clearNetworkNotFoundData()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->reset()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getWifiInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastSubId:I

    .line 41
    .line 42
    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 0

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 6
    .line 7
    return-object p0
.end method

.method private insertKnoxAuditLogAndNotifyCertificationFailure(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->notifyCertificateFailureAsUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->auditLogEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private isBssidAllowNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isBssidAllowedAkms(Landroid/net/wifi/WifiConfiguration;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isBssidAllowSsid(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    return v0

    .line 33
    :cond_2
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_3
    :goto_0
    return v0
.end method

.method private isBssidAllowSsid(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string p0, "iptime"

    .line 2
    .line 3
    const-string v0, "iptime5G"

    .line 4
    .line 5
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda7;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

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

.method private isBssidAllowedAkms(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6

    .line 1
    const/4 p0, 0x4

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/16 v3, 0x9

    .line 7
    .line 8
    filled-new-array {v0, v1, p0, v2, v3}, [I

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    move v2, v0

    .line 13
    :goto_0
    const/4 v3, 0x5

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    aget v3, p0, v2

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-instance v5, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda5;

    .line 27
    .line 28
    invoke-direct {v5, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return v0
.end method

.method private isEapMethodServerCertUsed(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodServerCertUsed()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private isForceConnectionB2bNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNetworkRequiresForceConnection(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private isSupplicantConnecting(Landroid/net/wifi/SupplicantState;)Z
    .locals 0

    .line 1
    sget-object p0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    .line 2
    .line 3
    if-eq p1, p0, :cond_1

    .line 4
    .line 5
    sget-object p0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    .line 6
    .line 7
    if-eq p1, p0, :cond_1

    .line 8
    .line 9
    sget-object p0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    .line 10
    .line 11
    if-eq p1, p0, :cond_1

    .line 12
    .line 13
    sget-object p0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 14
    .line 15
    if-eq p1, p0, :cond_1

    .line 16
    .line 17
    sget-object p0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 18
    .line 19
    if-ne p1, p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method private isSupportedReasonForIssueTracker(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChipsetVendorName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    const-string v0, "QUALCOMM"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p0, "\\s+"

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    array-length p1, p0

    .line 31
    const/4 v0, 0x2

    .line 32
    if-lt p1, v0, :cond_0

    .line 33
    .line 34
    aget-object p0, p0, v1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p0, ""

    .line 38
    .line 39
    :goto_0
    const-string p1, "Qualcomm hangReason : "

    .line 40
    .line 41
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "SemClientModeImpl"

    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 v2, 0x0

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    const-string p1, "99"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    const-string p0, "Bighammer triggered by wlan"

    .line 66
    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const-string p0, "bluetooth.isbighammer"

    .line 71
    .line 72
    const-string p1, "true"

    .line 73
    .line 74
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v2

    .line 78
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    const-string p1, "36"

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    const-string p1, "IssueTracker not support Qualcomm hangReason : "

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return v2

    .line 102
    :cond_2
    return v1
.end method

.method private isTlsDomainMismatch(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x9

    .line 2
    .line 3
    if-eq p1, p0, :cond_1

    .line 4
    .line 5
    const/16 p0, 0xa

    .line 6
    .line 7
    if-eq p1, p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x6

    .line 10
    if-ne p1, p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method private synthetic lambda$enableB2bNetworks$1(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isForceConnectionB2bNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "enable b2b network "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->logi(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 27
    .line 28
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private static synthetic lambda$isBssidAllowSsid$4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$isBssidAllowedAkms$3(ILandroid/net/wifi/SecurityParams;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getAllowedKeyManagement()Ljava/util/BitSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Ljava/util/BitSet;->get(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 1
    const v0, 0x2006c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getInstance()Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isConnectivityCheckDisabled()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setConnectivityCheckDisabled(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/util/List;)V
    .locals 0

    .line 1
    const p1, 0x201f6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mMessageHandlingStatus:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v2, p1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->updateClientModeImplProcessMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, " "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method private parseTlsCertErrorToSuggestTofu(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Parse error message to suggest TOFU, message= "

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "reason="

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "depth="

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "err="

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    :try_start_0
    const-string v0, "reason=|depth=|subject=|err="

    .line 45
    .line 46
    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setTlsCertErrorData([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "Failed to parse TLS error message, "

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v1, "SemClientModeImpl"

    .line 62
    .line 63
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->clearTlsCertErrorData()V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method private processBigDataLogEvent(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataFeature(Landroid/os/Bundle;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataArgument(Landroid/os/Bundle;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->reportBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendBigData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private registerForWifiMonitorEvents()V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->WIFI_MONITOR_EVENTS:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget v3, v0, v2

    .line 8
    .line 9
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {v4, v5, v3, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v2, Lcom/samsung/android/server/wifi/SemClientModeImpl$8;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$8;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setupInterfaceForClientInConnectivityMode(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const-string v1, "failed to setup WifiMonitor, iface="

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method private removeFolderFiles(Ljava/io/File;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "failed to remove "

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_1
    return-void
.end method

.method private report(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getInstance()Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCaptivePortalMode(ILandroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method private reportBigDataLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sparse-switch v2, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string v2, "HANG"

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x2

    .line 24
    goto :goto_0

    .line 25
    :sswitch_1
    const-string v2, "DISC"

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :sswitch_2
    const-string v2, "ASSO"

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v1, v0

    .line 46
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForFwHang(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v1, 0x7

    .line 57
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->report(ILandroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->increaseEventCounter(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isSupportedReasonForIssueTracker(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->sendBroadcastIssueTrackerSysDump(I)V

    .line 74
    .line 75
    .line 76
    :cond_3
    if-eqz p1, :cond_4

    .line 77
    .line 78
    const-string p0, "true"

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const-string p0, "false"

    .line 82
    .line 83
    :goto_1
    const-string p1, "sendBroadcastIssueTracker - Supported Hang Reason : "

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string p1, "SemClientModeImpl"

    .line 90
    .line 91
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastNetworkType:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getAndResetLastInternalReason()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 110
    .line 111
    iget v2, v2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 112
    .line 113
    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataFromBigDataParamsOfDISC(Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/16 p2, 0xc8

    .line 118
    .line 119
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->report(ILandroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 126
    .line 127
    iget v0, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 128
    .line 129
    invoke-static {p1, p2, v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataFromBigDataParamsOfASSO(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const/16 p2, 0xca

    .line 134
    .line 135
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->report(ILandroid/os/Bundle;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x1ece0e -> :sswitch_2
        0x200595 -> :sswitch_1
        0x21b872 -> :sswitch_0
    .end sparse-switch

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetFwLogFolder()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->DBG_PRODUCT_DEV:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    const-string v1, "/data/log/wifi/"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->removeFolderFiles(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removeVendorLogFiles()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const-string v0, "Removing vendor logs got failed."

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_1
    return-void
.end method

.method private resetSpeedTimesAndMarkWifiOn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectionSpeed:[J

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectionSpeed:[J

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const/4 p0, 0x0

    .line 17
    aput-wide v1, v0, p0

    .line 18
    .line 19
    return-void
.end method

.method private retryConnectionForB2bNetwork()V
    .locals 4

    .line 1
    const v0, 0x2006b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->hasMessages(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isForceConnectionB2bNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 19
    .line 20
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 21
    .line 22
    const-wide/16 v2, 0xbb8

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IIJ)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private runFwLogTimer()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->DBG_PRODUCT_DEV:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFwLogTimer:Ljava/util/Timer;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "SemClientModeImpl"

    .line 11
    .line 12
    const-string v1, "mFwLogTimer timer cancled"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFwLogTimer:Ljava/util/Timer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 20
    .line 21
    .line 22
    :cond_1
    new-instance v0, Ljava/util/Timer;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mFwLogTimer:Ljava/util/Timer;

    .line 28
    .line 29
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeImpl$7;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$7;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 32
    .line 33
    .line 34
    const-wide/32 v2, 0x927c0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private sendBigData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string v0, "DISC"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getCurrentBackOffType(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0xe

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getBackOffDurationSecondForCurrentNetwork(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v1, 0xf

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getBackOffCountForCurrentNetwork(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 52
    .line 53
    .line 54
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsWiFi7Supported:Z

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->setWifi7Supported(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 78
    .line 79
    const/16 v2, 0x12

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 86
    .line 87
    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getInformationElements()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getInformationElements()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 v0, 0x0

    .line 103
    move v1, v0

    .line 104
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Landroid/net/wifi/ScanResult$InformationElement;

    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    const/16 v4, 0xff

    .line 121
    .line 122
    if-ne v3, v4, :cond_1

    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getIdExt()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    const/16 v4, 0x6b

    .line 129
    .line 130
    if-ne v3, v4, :cond_1

    .line 131
    .line 132
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;

    .line 133
    .line 134
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->getMaxNumOfSimultaneousLinks()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->getTidToLinkMappingNegotiationSupport()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    move v5, v1

    .line 149
    move v1, v0

    .line 150
    move v0, v5

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 153
    .line 154
    const/16 v2, 0x13

    .line 155
    .line 156
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 160
    .line 161
    const/16 v0, 0x14

    .line 162
    .line 163
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 164
    .line 165
    .line 166
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 167
    .line 168
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method private sendNetworkConnectionFailEventToSettings(ILjava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x4000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "reason_code"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p1, "bssid"

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string p1, "networkId"

    .line 24
    .line 25
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 31
    .line 32
    const-string p3, "android.permission.NETWORK_SETTINGS"

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemClientModeImpl;->DBG_PRODUCT_DEV:Z

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    new-instance p1, Landroid/content/Intent;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "com.samsung.android.net.wifi.wlanautotest"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method private setAdpsEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setAdpsEnabled(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 9
    .line 10
    const/16 v0, 0xd

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private setConnectionSpeedTime(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectionSpeed:[J

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    aput-wide v1, v0, p1

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private setNumOfAllowedMloLink(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setNumOfAllowedMloLink(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private setTlsCertErrorData([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x5

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    aget-object v1, p1, v0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReason:I

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    aget-object p1, p1, v1

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReasonString:Ljava/lang/String;

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "EAP TLS Certification failure, reason="

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReason:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", detail="

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTlsCertFailReasonString:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->logi(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method private shouldSuggestEapTofu()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isTrustOnFirstUseSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsServerCertValid:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsSystemCertLoaded:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isEapMethodServerCertUsed(Landroid/net/wifi/WifiConfiguration;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return v2

    .line 53
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "shouldSuggestEapTofu - "

    .line 56
    .line 57
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isTrustOnFirstUseSupported()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    xor-int/2addr v3, v2

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, "/"

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    .line 76
    .line 77
    xor-int/2addr v4, v2

    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsServerCertValid:Z

    .line 85
    .line 86
    xor-int/2addr v4, v2

    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsSystemCertLoaded:Z

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 102
    .line 103
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isEapMethodServerCertUsed(Landroid/net/wifi/WifiConfiguration;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    xor-int/2addr v2, v4

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 115
    .line 116
    if-nez v2, :cond_2

    .line 117
    .line 118
    const-string v1, "true"

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v4, "false/"

    .line 124
    .line 125
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 145
    .line 146
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/4 p0, 0x0

    .line 168
    return p0
.end method

.method private updateAnonymousIdentityForEnterpriseNetwork()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "update sim based EAP TargetConfig: "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, " netId = "

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method private updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->updateLinkProperties(Ljava/lang/String;Landroid/net/LinkProperties;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->updateDhcpResults(Ljava/lang/String;Landroid/net/DhcpInfo;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public disableRandomMac()V
    .locals 1

    .line 1
    const v0, 0x2006a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string p3, "SafeWifiMode: "

    .line 7
    .line 8
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isWifiSafeModeEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p3, "mIsImsCallEstablished "

    .line 30
    .line 31
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsImsCallEstablished:Z

    .line 35
    .line 36
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p3, "mOperationalMode "

    .line 49
    .line 50
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mOperationalMode:I

    .line 54
    .line 55
    const-string v0, "mTargetWifiConfiguration: "

    .line 56
    .line 57
    invoke-static {p1, p3, p2, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 62
    .line 63
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string p3, "mTargetNetworkId: "

    .line 76
    .line 77
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 81
    .line 82
    const-string v0, "mLastInfo: "

    .line 83
    .line 84
    invoke-static {p1, p3, p2, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 89
    .line 90
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p3, "mWifiAdpsEnabled: "

    .line 103
    .line 104
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiAdpsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 124
    .line 125
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->dump(Ljava/io/PrintWriter;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->runFwLogTimer()V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0xc8

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v0, 0xbb8

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->setLogRecSize(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 25
    .line 26
    const/16 v0, 0x1f4

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->setLogRecSize(I)V

    .line 29
    .line 30
    .line 31
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->enableVerboseLogging(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->enableVerboseLogging(I)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->enableVerboseLogging(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public getChannelUtilization()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChannelUtilization(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getChannelUtilizationExtended()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChannelUtilizationExtended(Ljava/lang/String;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getConnectionSpeed()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectionSpeed:[J

    .line 2
    .line 3
    return-object p0
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getCountryRev(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "screen="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScreenOn:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "on"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "off"

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mMessageHandlingStatus:I

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v1, "("

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mMessageHandlingStatus:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ")"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_1
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    .line 40
    .line 41
    if-lez v1, :cond_2

    .line 42
    .line 43
    const/16 v2, 0x3f2

    .line 44
    .line 45
    if-eq v1, v2, :cond_2

    .line 46
    .line 47
    const-string v1, " uid="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_2
    const-string v1, " "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v2, p1, Landroid/os/Message;->what:I

    .line 76
    .line 77
    sparse-switch v2, :sswitch_data_0

    .line 78
    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_3

    .line 91
    .line 92
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 93
    .line 94
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 95
    .line 96
    invoke-direct {p0, v2, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->eapMessageToString(IILjava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :sswitch_1
    const-string p0, " ssid="

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string v1, " state="

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->name()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p1, " targetNetworkId="

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, " targetBssid="

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetBssid:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :sswitch_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 164
    .line 165
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getPrintableBssid()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p1, " nid="

    .line 179
    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 184
    .line 185
    iget p1, p1, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasConfigKey()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_3

    .line 197
    .line 198
    const-string p1, " configKey="

    .line 199
    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastInfo:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getConfigKey()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :sswitch_4
    const-string p1, " isPrimary="

    .line 214
    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :sswitch_5
    const-string p0, " networkId="

    .line 229
    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 234
    .line 235
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :sswitch_6
    const-string p1, " cur="

    .line 240
    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisconnectingWatchdogCount:I

    .line 245
    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    return-object p0

    .line 254
    nop

    .line 255
    :sswitch_data_0
    .sparse-switch
        0x20060 -> :sswitch_6
        0x2006b -> :sswitch_5
        0x2008d -> :sswitch_4
        0x24003 -> :sswitch_3
        0x24006 -> :sswitch_2
        0x2402f -> :sswitch_1
        0x24051 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMaxTdlsSession()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getMaxTdlsSession(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Messenger;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getNumOfTdlsSession()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getNumOfTdlsSession(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method protected getOperationalModeForTest()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mOperationalMode:I

    .line 2
    .line 3
    return p0
.end method

.method public getRoamBand()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getRoamBand(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getRoamDelta()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getRoamDelta(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getRoamScanPeriod()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getRoamScanPeriod(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getRoamTrigger()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getRoamTrigger(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sGetWhatToString:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    const-string p0, "what:"

    .line 16
    .line 17
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :sswitch_0
    const-string p0, "TDLS_REQUEST_EVENT"

    .line 23
    .line 24
    return-object p0

    .line 25
    :sswitch_1
    const-string p0, "BW_SWITCHED_EVENT"

    .line 26
    .line 27
    return-object p0

    .line 28
    :sswitch_2
    const-string p0, "LEAKY_AP_DETECTION_EVENT"

    .line 29
    .line 30
    return-object p0

    .line 31
    :sswitch_3
    const-string p0, "SCHEDULED_PM_TEARDOWN_EVENT"

    .line 32
    .line 33
    return-object p0

    .line 34
    :sswitch_4
    const-string p0, "CHANNEL_SWITCH_EVENT"

    .line 35
    .line 36
    return-object p0

    .line 37
    :sswitch_5
    const-string p0, "TWT_NOTIFICATION_EVENT"

    .line 38
    .line 39
    return-object p0

    .line 40
    :sswitch_6
    const-string p0, "TWT_TEARDOWN_EVENT"

    .line 41
    .line 42
    return-object p0

    .line 43
    :sswitch_7
    const-string p0, "TWT_SETUP_EVENT"

    .line 44
    .line 45
    return-object p0

    .line 46
    :sswitch_8
    const-string p0, "BEACON_ABORT_EVENT"

    .line 47
    .line 48
    return-object p0

    .line 49
    :sswitch_9
    const-string p0, "BEACON_INTERVAL_EVENT"

    .line 50
    .line 51
    return-object p0

    .line 52
    :sswitch_a
    const-string p0, "NETWORK_ADDED_EVENT"

    .line 53
    .line 54
    return-object p0

    .line 55
    :sswitch_b
    const-string p0, "EAP_MESSAGE_HANDLE_EVENT"

    .line 56
    .line 57
    return-object p0

    .line 58
    :sswitch_c
    const-string p0, "MBO_OCE_BSS_TM_HANDLING_DONE"

    .line 59
    .line 60
    return-object p0

    .line 61
    :sswitch_d
    const-string p0, "HS20_REMEDIATION_EVENT"

    .line 62
    .line 63
    return-object p0

    .line 64
    :sswitch_e
    const-string p0, "RX_HS20_ANQP_ICON_EVENT"

    .line 65
    .line 66
    return-object p0

    .line 67
    :sswitch_f
    const-string p0, "GAS_QUERY_DONE_EVENT"

    .line 68
    .line 69
    return-object p0

    .line 70
    :sswitch_10
    const-string p0, "GAS_QUERY_START_EVENT"

    .line 71
    .line 72
    return-object p0

    .line 73
    :sswitch_11
    const-string p0, "NETWORK_NOT_FOUND_EVENT"

    .line 74
    .line 75
    return-object p0

    .line 76
    :sswitch_12
    const-string p0, "ASSOCIATED_BSSID_EVENT"

    .line 77
    .line 78
    return-object p0

    .line 79
    :sswitch_13
    const-string p0, "ANQP_DONE_EVENT"

    .line 80
    .line 81
    return-object p0

    .line 82
    :sswitch_14
    const-string p0, "ASSOCIATION_REJECTION_EVENT"

    .line 83
    .line 84
    return-object p0

    .line 85
    :sswitch_15
    const-string p0, "SUP_REQUEST_IDENTITY"

    .line 86
    .line 87
    return-object p0

    .line 88
    :sswitch_16
    const-string p0, "SUP_BIGDATA_EVENT"

    .line 89
    .line 90
    return-object p0

    .line 91
    :sswitch_17
    const-string p0, "AUTHENTICATION_FAILURE_EVENT"

    .line 92
    .line 93
    return-object p0

    .line 94
    :sswitch_18
    const-string p0, "SUPPLICANT_STATE_CHANGE_EVENT"

    .line 95
    .line 96
    return-object p0

    .line 97
    :sswitch_19
    const-string p0, "NETWORK_DISCONNECTION_EVENT"

    .line 98
    .line 99
    return-object p0

    .line 100
    :sswitch_1a
    const-string p0, "NETWORK_CONNECTION_EVENT"

    .line 101
    .line 102
    return-object p0

    .line 103
    :sswitch_1b
    const-string p0, "CMD_CHANNEL_DISCONNECTED"

    .line 104
    .line 105
    return-object p0

    .line 106
    :sswitch_1c
    const-string p0, "CMD_CHANNEL_HALF_CONNECTED"

    .line 107
    .line 108
    return-object p0

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1c
        0x11004 -> :sswitch_1b
        0x24003 -> :sswitch_1a
        0x24004 -> :sswitch_19
        0x24006 -> :sswitch_18
        0x24007 -> :sswitch_17
        0x2400d -> :sswitch_16
        0x2400f -> :sswitch_15
        0x2402b -> :sswitch_14
        0x2402c -> :sswitch_13
        0x2402d -> :sswitch_12
        0x2402f -> :sswitch_11
        0x24033 -> :sswitch_10
        0x24034 -> :sswitch_f
        0x24035 -> :sswitch_e
        0x2403d -> :sswitch_d
        0x24047 -> :sswitch_c
        0x24051 -> :sswitch_b
        0x24052 -> :sswitch_a
        0x2406a -> :sswitch_9
        0x2406b -> :sswitch_8
        0x2406d -> :sswitch_7
        0x2406e -> :sswitch_6
        0x2406f -> :sswitch_5
        0x24070 -> :sswitch_4
        0x24071 -> :sswitch_3
        0x24072 -> :sswitch_2
        0x24074 -> :sswitch_1
        0x24076 -> :sswitch_0
    .end sparse-switch
.end method

.method public getWifi7DisabledCountry()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mDisabledCountry:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public handleAirplaneModeChanged(Z)V
    .locals 1

    .line 1
    const v0, 0x2006d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public handleCapabilitiesChanged(Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleLinkConfiguredChanged(Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->checkAndSendIpConfigurationState(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public handleNetworkStateChanged(Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->checkAndSendIpConfigurationState(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public handleScreenStateChanged(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mScreenOn:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mVerboseLoggingEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "handleScreenStateChanged: screenOn="

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
    const-string p1, " state "

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public handleSimStateChanged(Z)V
    .locals 1

    .line 1
    const v0, 0x20065

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public handleTelephonyCountryCodeChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x20070

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public handleTelephonyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 1
    const v0, 0x2006e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public initialize()V
    .locals 1

    .line 1
    const v0, 0x20087

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public isAvailableTdls()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isAvailableTdls(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mConnectedState:Lcom/android/internal/util/State;

    .line 6
    .line 7
    if-ne v0, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public isNCHOModeEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNCHOModeEnabled(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isWesModeEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isWesModeEnabled(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isWiderBandwidthTdlsSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "]"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "]"

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "]"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 0

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const p1, 0x2406a

    .line 4
    .line 5
    .line 6
    if-eq p0, p1, :cond_0

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

.method public sendReassociationFrequencyRequestFrame(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->sendReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public setDtimInSuspendMode(I)V
    .locals 2

    .line 1
    const v0, 0x201f5

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setImsCallEstablished(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x200f3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setListener(Lcom/samsung/android/server/wifi/ClientModeImplStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mListener:Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxDtimInSuspendMode(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x201f4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setNCHOModeEnabled(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->resetNCHOMode()V

    .line 21
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

.method public setPrimary(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsPrimary:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    const v0, 0x2008d

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setRoamBand(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamBand(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public setRoamDelta(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamDelta(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public setRoamScanChannels([Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamScanChannels(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public setRoamScanEnabled(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamScanEnabled(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamScanPeriod(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public setRoamTrigger(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamTrigger(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public setTdlsEnabled(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setTdlsEnabled(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public setWesModeEnabled(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiB2BPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setWesModeEnabled(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public setupClientMode()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setupClientMode() iface = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SemClientModeImpl"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->registerForWifiMonitorEvents()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const v0, 0x20088

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public stopClientMode()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "stopClientMode() iface = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mInterfaceName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SemClientModeImpl"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->deregisterForWifiMonitorEvents()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const v0, 0x20089

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public syncGetRssi()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mWifiNl80211Util:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda6;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/util/WifiNl80211Util;)V

    .line 11
    .line 12
    .line 13
    const/16 p0, -0xc8

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method
