.class public Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;,
        Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemWifiApGuestClient;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field public static final ENTITLEMENT_RESULT:Ljava/lang/String; = "EntitlementResult"

.field private static final EXTRA_TETHER_PROVISIONING_RESPONSE:Ljava/lang/String; = "jp.softbank.tether.entitlement.SILENT_ENTITLEMENT_CHECK_RESULT"

.field private static final EXTRA_TETHER_PROVISIONING_RESPONSE_UTP:Ljava/lang/String; = "com.samsung.unifiedtp.softbank.entitlement.SILENT_ENTITLEMENT_CHECK_RESULT"

.field private static final MHSDBG:Z

.field public static final MHS_NR_MMWAVE_SAR_BACKOFF_DISABLED:I = 0x3

.field public static final MHS_NR_MMWAVE_SAR_BACKOFF_ENABLED:I = 0x4

.field public static final MHS_NR_SUB6_SAR_BACKOFF_DISABLED:I = 0x5

.field public static final MHS_NR_SUB6_SAR_BACKOFF_ENABLED:I = 0x6

.field public static final MHS_SAR_BACKOFF_DISABLED:I = 0x8

.field public static final MHS_SAR_BACKOFF_ENABLED:I = 0x9

.field private static final SOFT_AP_POWER_SAVE:I = 0x3

.field private static final SUPPORTMHSSARBACKOFF:Z = false

.field public static final SUPPORTMOBILEAPONTRIGGER_SPF:Z = true

.field private static final TAG:Ljava/lang/String; = "SemSoftApManager"

.field private static final WIFIAP_WARNING_CLASS:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

.field private static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field private static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFIAP_WARNING_STOP_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

.field static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2

.field private static isRegistered:Z = false

.field private static mIsTurnOffScanMode:Z = false

.field private static mIsTurnOnScanMode:Z = false

.field private static mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager; = null

.field private static mWifiAp5GhzBackOffState:Z = false


# instance fields
.field private final RESET_SOFTAP_TIME_OUT:I

.field private final SOFTAP_CELLULAR_DUN_TIME_OUT:I

.field private final TURN_OFF_SCAN_TIME_OUT:I

.field private dual_softap_interface:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isDunCheckRequired:Z

.field private isJDMDevice:Z

.field private isUpstreamCellular:Z

.field private mAirplaneModeOn:Z

.field private mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mApInterfaceName:Ljava/lang/String;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCallbackSoftApState:I

.field private mCellularDUNCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mChannelHistoryDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mFilter:Landroid/content/IntentFilter;

.field private mGuestClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mGuestLock:Ljava/lang/Object;

.field private mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

.field private mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

.field private mHostapdWorkThread:Landroid/os/HandlerThread;

.field private mIsGuestClientConnected:Z

.field private mIsWifiConnected:Z

.field private mIsWifiSharingModeEnabled:Z

.field private mLOHSFreqInfo:Ljava/lang/String;

.field private mLOHSSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mLOHSState:I

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCountryCode:Ljava/lang/String;

.field private mNsdClient:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

.field private mNsdHotspot:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

.field private mP2pConnected:Z

.field private mPreviousWifiNetworkIsConnectedValue:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetSoftAp:Z

.field private mSemSoftApDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipWifiSharingWhenNetworkCountryChange:Z

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mSoftApCapability:Landroid/net/wifi/SoftApCapability;

.field private mSoftApInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftApState:I

.field private mTetheringManager:Landroid/net/TetheringManager;

.field private mUpStreamForBigData:I

.field private mWifiApFirstFreq:I

.field private mWifiApFreqInfo:Ljava/lang/String;

.field private mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

.field private mWifiApSecondFreq:I

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private mWifiApStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;

.field private mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

.field private mWifiApWarningActivityState:I

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiState:I

.field private old2GhzChannel:I

.field private old5GhzChannel:I

.field private old6GhzChannel:I

.field private oldCountryCode:Ljava/lang/String;

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$DvF1Dpa07LF-6tVcBhyzCzrTNoc(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->lambda$updateGuestClientInfo$3([Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$H9i4DMXSbnXf6OW_kvnnac6iYik(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->lambda$registerCallback$1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$HPbUJgM6R8W-d5WZhGdXXQMzVC8(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->lambda$registerCallback$2(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Ug3DafTO4drHeX6_yVrb-o1igW8(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->lambda$init$5()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ePD8HhRPn4IRkbP-fiiWE6VqKWE(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->lambda$updateGuestClientInfo$4([Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$uMbbWxJXXSeZIeWAC6U0y0BsbGg(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->lambda$new$0(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdual_softap_interface(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->dual_softap_interface:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isDunCheckRequired:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisUpstreamCellular(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUpstreamCellular:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAospClientsHashMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiSharingModeEnabled(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetwork:Landroid/net/Network;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pConnected(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mP2pConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResetSoftAp(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/SoftApCapability;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApInfoMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApFirstFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApFirstFreq:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSecondFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApSecondFreq:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old2GhzChannel:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old5GhzChannel:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old6GhzChannel:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->oldCountryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isDunCheckRequired:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisUpstreamCellular(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUpstreamCellular:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLOHSFreqInfo(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mLOHSFreqInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLOHSState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mLOHSState:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetwork:Landroid/net/Network;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmP2pConnected(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mP2pConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResetSoftAp(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApFirstFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApFirstFreq:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApFreqInfo(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApFreqInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApSecondFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApSecondFreq:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old2GhzChannel:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old5GhzChannel:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old6GhzChannel:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->oldCountryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mclearGuestClientDB(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->clearGuestClientDB()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAOSPWifiManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleModemPowerBackoff5G(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleModemPowerBackoff5G(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSoftapEnable(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleSoftapEnable()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeChannelHistoryState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->makeChannelHistoryState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mpersistWifiApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->persistWifiApState(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->MHSDBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsTurnOnScanMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOnScanMode:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmWifiAp5GhzBackOffState()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiAp5GhzBackOffState:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsTurnOnScanMode()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOnScanMode:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmWifiAp5GhzBackOffState(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiAp5GhzBackOffState:Z

    .line 2
    .line 3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->MHSDBG:Z

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOnScanMode:Z

    .line 17
    .line 18
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOffScanMode:Z

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiConnected:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiState:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mLOHSState:I

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApFreqInfo:Ljava/lang/String;

    .line 21
    .line 22
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApFirstFreq:I

    .line 23
    .line 24
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApSecondFreq:I

    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mLOHSFreqInfo:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 36
    .line 37
    const/16 v3, 0x64

    .line 38
    .line 39
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->RESET_SOFTAP_TIME_OUT:I

    .line 40
    .line 41
    const/16 v3, 0x65

    .line 42
    .line 43
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->TURN_OFF_SCAN_TIME_OUT:I

    .line 44
    .line 45
    const/16 v3, 0x66

    .line 46
    .line 47
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->SOFTAP_CELLULAR_DUN_TIME_OUT:I

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsGuestClientConnected:Z

    .line 50
    .line 51
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApWarningActivityState:I

    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mP2pConnected:Z

    .line 61
    .line 62
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetworkCountryCode:Ljava/lang/String;

    .line 63
    .line 64
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    .line 65
    .line 66
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->oldCountryCode:Ljava/lang/String;

    .line 67
    .line 68
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old6GhzChannel:I

    .line 69
    .line 70
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old5GhzChannel:I

    .line 71
    .line 72
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->old2GhzChannel:I

    .line 73
    .line 74
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isJDMDevice:Z

    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isDunCheckRequired:Z

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUpstreamCellular:Z

    .line 79
    .line 80
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mUpStreamForBigData:I

    .line 81
    .line 82
    new-instance v0, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestClientMap:Ljava/util/HashMap;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/Object;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestLock:Ljava/lang/Object;

    .line 95
    .line 96
    new-instance v0, Ljava/util/HashSet;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->dual_softap_interface:Ljava/util/Set;

    .line 102
    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mPreviousWifiNetworkIsConnectedValue:Z

    .line 111
    .line 112
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 118
    .line 119
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$2;

    .line 120
    .line 121
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mLOHSSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 125
    .line 126
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$3;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$3;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCellularDUNCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 132
    .line 133
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$6;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$6;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemSoftApDumpLogs:Ljava/util/List;

    .line 146
    .line 147
    new-instance v0, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mChannelHistoryDumpLogs:Ljava/util/List;

    .line 153
    .line 154
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 157
    .line 158
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 165
    .line 166
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 175
    .line 176
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 185
    .line 186
    new-instance p3, Landroid/os/HandlerThread;

    .line 187
    .line 188
    const-string v0, "HostapdWorkThread"

    .line 189
    .line 190
    invoke-direct {p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkThread:Landroid/os/HandlerThread;

    .line 194
    .line 195
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 196
    .line 197
    .line 198
    new-instance p3, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkThread:Landroid/os/HandlerThread;

    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-direct {p3, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/os/Looper;)V

    .line 207
    .line 208
    .line 209
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 210
    .line 211
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->registerCallback()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApNsdSupported()Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-eqz p2, :cond_0

    .line 219
    .line 220
    new-instance p2, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 221
    .line 222
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkThread:Landroid/os/HandlerThread;

    .line 223
    .line 224
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    invoke-direct {p2, p1, p3}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 229
    .line 230
    .line 231
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNsdClient:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;

    .line 232
    .line 233
    new-instance p2, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 234
    .line 235
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkThread:Landroid/os/HandlerThread;

    .line 236
    .line 237
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 238
    .line 239
    .line 240
    move-result-object p3

    .line 241
    invoke-direct {p2, p1, p3}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 242
    .line 243
    .line 244
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNsdHotspot:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 245
    .line 246
    :cond_0
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda6;

    .line 247
    .line 248
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 249
    .line 250
    .line 251
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;

    .line 252
    .line 253
    return-void
.end method

.method private addGuestClientToDB(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsGuestClientConnected:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestClientMap:Ljava/util/HashMap;

    .line 8
    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->guestClientConnected(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const-string p0, "SemSoftApManager"

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "OTP client connected "

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0
.end method

.method private channelToFreq(II)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p2, p2, -0x1

    .line 6
    .line 7
    mul-int/lit8 p2, p2, 0x5

    .line 8
    .line 9
    add-int/lit16 p2, p2, 0x1743

    .line 10
    .line 11
    return p2

    .line 12
    :cond_0
    const/16 p0, 0xe

    .line 13
    .line 14
    if-gt p2, p0, :cond_1

    .line 15
    .line 16
    const/16 p0, 0x967

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 p0, 0x1388

    .line 20
    .line 21
    :goto_0
    mul-int/lit8 p2, p2, 0x5

    .line 22
    .line 23
    add-int/2addr p2, p0

    .line 24
    return p2
.end method

.method private clearGuestClientDB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestClientMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method private disableSoftap()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "disableSoftap : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "mResetSoftAp "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "mSkipWifiSharingWhenNetworkCountryChange"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "SemSoftApManager"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string v0, "ro.csc.country_code"

    .line 47
    .line 48
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "JP"

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/16 v1, 0x64

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 63
    .line 64
    const-wide/16 v2, 0xdac

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 71
    .line 72
    const-wide/16 v2, 0x1f4

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->unRegisterSoftApCallback()V

    .line 88
    .line 89
    .line 90
    :cond_2
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    .line 92
    .line 93
    return-void
.end method

.method private dualSoftApScanModeReset()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DualSoftApScanModeReset  isScanAlwaysAvailable :"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " mIsTurnOffScanMode "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOffScanMode:Z

    .line 23
    .line 24
    const-string v2, "SemSoftApManager"

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOffScanMode:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOffScanMode:Z

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private enableSoftap()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "enableSoftap : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "isRegisteredHostapdAidl "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->isRegisteredHostapdAidl()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "SemSoftApManager"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->registerSoftApCallback()V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method private getAOSPWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "SemSoftApManager"

    .line 22
    .line 23
    const-string v1, "mConnectivityManager is null"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 29
    .line 30
    return-object p0
.end method

.method private getWifiSavedState()I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "wifi_saved_state"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method private handleModemPowerBackoff(I)V
    .locals 7

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    const-string v2, "SemSoftApManager"

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 10
    .line 11
    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 18
    .line 19
    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string v3, "Failed to note battery stats in wifi"

    .line 24
    .line 25
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-string v4, "phone"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 41
    .line 42
    sput-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 43
    .line 44
    :cond_2
    const/4 v3, 0x1

    .line 45
    const/4 v4, 0x4

    .line 46
    if-ne p1, v1, :cond_5

    .line 47
    .line 48
    sget-object v5, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-eqz v5, :cond_5

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eq v5, v3, :cond_4

    .line 61
    .line 62
    const/4 v6, 0x2

    .line 63
    if-eq v5, v6, :cond_4

    .line 64
    .line 65
    const/4 v6, 0x3

    .line 66
    if-ne v5, v6, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    if-ne v5, v4, :cond_5

    .line 70
    .line 71
    const-string v5, "in 5G FREQUENCY_RANGE_MMWAVE mode"

    .line 72
    .line 73
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    :goto_1
    const-string v5, "in 5G NR_5G_BEARER_STATUS_ALLOCATED mode"

    .line 81
    .line 82
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x6

    .line 86
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_2
    const-string v5, "vold.encrypt_progress"

    .line 90
    .line 91
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const-string v6, ""

    .line 96
    .line 97
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_a

    .line 102
    .line 103
    const/16 v5, 0xe

    .line 104
    .line 105
    if-eq p1, v1, :cond_6

    .line 106
    .line 107
    if-eq p1, v0, :cond_6

    .line 108
    .line 109
    if-ne p1, v5, :cond_a

    .line 110
    .line 111
    :cond_6
    const-string v6, "isemtelephony"

    .line 112
    .line 113
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-static {v6}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    if-ne p1, v1, :cond_7

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_7
    const/4 v3, 0x0

    .line 125
    if-eq p1, v0, :cond_8

    .line 126
    .line 127
    if-ne p1, v5, :cond_9

    .line 128
    .line 129
    :cond_8
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApFirstFreq:I

    .line 130
    .line 131
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApSecondFreq:I

    .line 132
    .line 133
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiAp5GhzBackOffState:Z

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    sput-boolean v3, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiAp5GhzBackOffState:Z

    .line 138
    .line 139
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleModemPowerBackoff5G(Z)V

    .line 140
    .line 141
    .line 142
    :cond_9
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->syncGetWifiApStateByName(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p0, ", new api SAR backOffState = "

    .line 155
    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    if-eqz v6, :cond_a

    .line 170
    .line 171
    :try_start_1
    invoke-interface {v6, v4, v3}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerWithFlag(IZ)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :catch_1
    const-string p0, "RemoteException occurs in setTransmitPowerWithFlag"

    .line 176
    .line 177
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :catch_2
    const-string p0, "NullPointerException, as ITelephony object is null"

    .line 182
    .line 183
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :cond_a
    :goto_4
    return-void
.end method

.method private handleModemPowerBackoff5G(Z)V
    .locals 4

    .line 1
    const-string p0, "vold.encrypt_progress"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, ""

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string p0, "isemtelephony"

    .line 16
    .line 17
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, " 5G SAR backOffState = "

    .line 26
    .line 27
    const-string v1, "SemSoftApManager"

    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const-wide/high16 v2, 0x2000000000000L

    .line 35
    .line 36
    :try_start_0
    invoke-interface {p0, v2, v3, p1}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerExt(JZ)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    const-string p0, "RemoteException occurs in setTransmitPowerWithFlag"

    .line 41
    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    const-string p0, "NullPointerException, as ITelephony object is null"

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    return-void
.end method

.method private handleSoftApState(IILjava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "state "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->syncGetWifiApStateByName(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " mode "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " apiface "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p3, " reason "

    .line 32
    .line 33
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    const-string p4, "SemSoftApManager"

    .line 44
    .line 45
    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    const/4 p4, 0x2

    .line 65
    const/4 v0, 0x1

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->disableSoftap()V

    .line 71
    .line 72
    .line 73
    if-ne p2, p4, :cond_0

    .line 74
    .line 75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->isRegisteredHostapdAidl()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_0

    .line 82
    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->stopHostapdAidl()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    if-ne p2, v0, :cond_0

    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleWifiSharingSoftap(Z)V

    .line 95
    .line 96
    .line 97
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_2
    if-ne p2, p4, :cond_1

    .line 99
    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->isRegisteredHostapdAidl()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_1

    .line 107
    .line 108
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->setUpHostapdAidl()I

    .line 111
    .line 112
    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->enableSoftap()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_3
    if-ne p2, v0, :cond_2

    .line 118
    .line 119
    const/4 p1, 0x0

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleWifiSharingSoftap(Z)V

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->disableSoftap()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSoftapEnable()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUsbTethered()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "SemSoftApManager"

    .line 18
    .line 19
    const-string v0, "enabled startTetheredHotspot : failed"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private handleWifiApState(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleModemPowerBackoff(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleSoftApState(IILjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private handleWifiSharingSoftap(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleWifiSharingSoftap "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " mIsWifiSharingModeEnabled "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " mSkipWifiSharingWhenNetworkCountryChange "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " csc_op "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " getWifiSavedState() "

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiSavedState()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, " isWifiOn() "

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isWifiOn()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ",mResetSoftAp:"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 71
    .line 72
    const-string v3, "SemSoftApManager"

    .line 73
    .line 74
    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemRilUtil;->isWifiOnly(Landroid/content/Context;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    const-string p0, "wifionly do not handle the wifi state"

    .line 86
    .line 87
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_0
    const-string v0, "ap"

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    const/4 v4, 0x0

    .line 95
    if-eqz p1, :cond_1

    .line 96
    .line 97
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 98
    .line 99
    if-nez p1, :cond_4

    .line 100
    .line 101
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isWifiOn()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    const-string p1, " WiFi sharing is OFF, disabling wifi "

    .line 108
    .line 109
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 113
    .line 114
    invoke-virtual {p1, v4, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setWifiSavedState(I)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiSavedState()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-ne p1, v2, :cond_4

    .line 126
    .line 127
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 128
    .line 129
    if-nez p1, :cond_4

    .line 130
    .line 131
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    .line 132
    .line 133
    if-nez p1, :cond_4

    .line 134
    .line 135
    const-string p1, "VZW"

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_3

    .line 142
    .line 143
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUsbTethered()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_2

    .line 148
    .line 149
    const-string p1, " VZW restoring enabling wifi "

    .line 150
    .line 151
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 155
    .line 156
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setWifiSavedState(I)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_2
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setWifiSavedState(I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_3
    const-string p1, " restoring enabling wifi "

    .line 168
    .line 169
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 173
    .line 174
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setWifiSavedState(I)V

    .line 178
    .line 179
    .line 180
    :cond_4
    return-void
.end method

.method private init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTimeOutImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getHostapdHal()Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApPowerSaveImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 26
    .line 27
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda3;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFilter:Landroid/content/IntentFilter;

    .line 41
    .line 42
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFilter:Landroid/content/IntentFilter;

    .line 48
    .line 49
    const-string v1, "jp.softbank.tether.entitlement.SILENT_ENTITLEMENT_CHECK_RESULT"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0xb

    .line 55
    .line 56
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    .line 57
    .line 58
    const-string v0, "wlan0"

    .line 59
    .line 60
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "batterystats"

    .line 63
    .line 64
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    const-string v0, "swlan0"

    .line 87
    .line 88
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 89
    .line 90
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "wifi_ap_wifi_sharing"

    .line 97
    .line 98
    const/16 v2, 0xa

    .line 99
    .line 100
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v3, 0x1

    .line 105
    if-ne v0, v2, :cond_1

    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharingLite()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_1

    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    .line 139
    .line 140
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "wifi_ap_disable_random_mac"

    .line 155
    .line 156
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    .line 158
    .line 159
    :cond_2
    const-string v0, "SBM"

    .line 160
    .line 161
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_3

    .line 168
    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v1, "wifi_ap_11ax_mode_checked"

    .line 188
    .line 189
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-ne v0, v2, :cond_3

    .line 194
    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    .line 203
    .line 204
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const/4 v1, 0x3

    .line 211
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_4

    .line 216
    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v1, "wifi_ap_powersave_mode_checked"

    .line 224
    .line 225
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-ne v0, v2, :cond_4

    .line 230
    .line 231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    .line 239
    .line 240
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const/4 v1, 0x0

    .line 247
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const-string v1, "SemSoftApManager"

    .line 252
    .line 253
    if-eqz v0, :cond_5

    .line 254
    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-nez v2, :cond_5

    .line 260
    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v3, " semSetWifiFactoryMacAddress"

    .line 264
    .line 265
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const/16 v3, 0x9

    .line 269
    .line 270
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_5
    const-string v0, " semSetWifiFactoryMacAddress null"

    .line 286
    .line 287
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 295
    .line 296
    new-instance v2, Landroid/os/Handler;

    .line 297
    .line 298
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 302
    .line 303
    .line 304
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 305
    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 307
    .line 308
    .line 309
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 314
    .line 315
    new-instance v2, Landroid/os/Handler;

    .line 316
    .line 317
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 321
    .line 322
    .line 323
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mLOHSSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 324
    .line 325
    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerLocalOnlyHotspotSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 326
    .line 327
    .line 328
    return-void
.end method

.method private isLohsOn()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApLOHSState()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 v0, 0xc

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0xd

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method private isMobileApOn()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 v0, 0xd

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0xc

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method private isSoftApOn()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 v0, 0xc

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0xd

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method private isUsbTethered()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/net/TetheringManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/TetheringManager;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTetheringManager:Landroid/net/TetheringManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mTetheringManager:Landroid/net/TetheringManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    array-length v1, v0

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    if-ge v3, v1, :cond_3

    .line 27
    .line 28
    aget-object v4, v0, v3

    .line 29
    .line 30
    const-string v5, "ncm0"

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    const-string p0, "SemSoftApManager"

    .line 39
    .line 40
    const-string v0, "enabled tetheredIface : ncm0"

    .line 41
    .line 42
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_0
    array-length v5, p0

    .line 47
    move v6, v2

    .line 48
    :goto_1
    if-ge v6, v5, :cond_2

    .line 49
    .line 50
    aget-object v7, p0, v6

    .line 51
    .line 52
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    return p0

    .line 60
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    return v2
.end method

.method private isWifiOn()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private synthetic lambda$handleSoftApState$6()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$init$5()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "airplane_mode_on"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "isAirplaneMode:"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "SemSoftApManager"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleAirplaneMode(Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private synthetic lambda$new$0(IIILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "onreceive WIFI_AP_STATE_CHANGED_ACTION apState : "

    .line 2
    .line 3
    const-string v1, "SemSoftApManager"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleWifiApState(IIILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$registerCallback$1(Z)V
    .locals 6

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
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mPreviousWifiNetworkIsConnectedValue:Z

    .line 12
    .line 13
    if-eq v2, p1, :cond_5

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "Event ="

    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v4, "Wi-Fi network connected,, Ssid = "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, ",, Bssid ="

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, ",, Freq ="

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-lez v5, :cond_1

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/net/wifi/MloLink;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/net/wifi/MloLink;->getChannel()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v2}, Landroid/net/wifi/MloLink;->getBand()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {v5, v2}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, " "

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, "[MLO]"

    .line 124
    .line 125
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_1
    move-object v0, v3

    .line 140
    goto :goto_2

    .line 141
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v1, "Wi-Fi network disconnected"

    .line 144
    .line 145
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_2
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mPreviousWifiNetworkIsConnectedValue:Z

    .line 149
    .line 150
    const-string v1, "#tag_wifi_ap_lab_channel_switch_event#"

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiConnected:Z

    .line 160
    .line 161
    if-eq v0, p1, :cond_6

    .line 162
    .line 163
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiConnected:Z

    .line 164
    .line 165
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->makeChannelHistoryState()V

    .line 166
    .line 167
    .line 168
    :cond_6
    if-nez p1, :cond_7

    .line 169
    .line 170
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    .line 171
    .line 172
    const/16 v0, 0xd

    .line 173
    .line 174
    if-ne p1, v0, :cond_7

    .line 175
    .line 176
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 177
    .line 178
    const/16 v0, 0x66

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_7

    .line 185
    .line 186
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isDunCheckRequired:Z

    .line 187
    .line 188
    if-eqz p1, :cond_7

    .line 189
    .line 190
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 191
    .line 192
    const-wide/16 v1, 0x2710

    .line 193
    .line 194
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 195
    .line 196
    .line 197
    :cond_7
    return-void
.end method

.method private synthetic lambda$registerCallback$2(I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mSoftApState:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    .line 9
    .line 10
    const-string v2, " wifistate:"

    .line 11
    .line 12
    const-string v3, " mIsWifiSharingModeEnabled:"

    .line 13
    .line 14
    invoke-static {v0, v1, v2, p1, v3}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiState:I

    .line 27
    .line 28
    const-string v1, "SemSoftApManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "#tag_wifi_ap_lab_channel_switch_event#"

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eq p1, v1, :cond_1

    .line 41
    .line 42
    const/16 v3, 0xb

    .line 43
    .line 44
    if-eq p1, v3, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v3, "Wi-Fi off"

    .line 48
    .line 49
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "wifi_saved_state"

    .line 60
    .line 61
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    const-string v3, "Wi-Fi on"

    .line 65
    .line 66
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    :goto_0
    if-eq p1, v1, :cond_2

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    if-eq p1, v0, :cond_2

    .line 73
    .line 74
    const/4 v0, 0x4

    .line 75
    if-ne p1, v0, :cond_3

    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "wifiap_wifi_tile_clicked"

    .line 84
    .line 85
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 101
    .line 102
    if-nez v0, :cond_6

    .line 103
    .line 104
    :cond_4
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApState:I

    .line 105
    .line 106
    const/16 v1, 0xc

    .line 107
    .line 108
    if-eq v0, v1, :cond_5

    .line 109
    .line 110
    const/16 v1, 0xd

    .line 111
    .line 112
    if-ne v0, v1, :cond_6

    .line 113
    .line 114
    :cond_5
    const/4 v0, 0x2

    .line 115
    if-ne p1, v0, :cond_6

    .line 116
    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 118
    .line 119
    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 121
    .line 122
    .line 123
    :cond_6
    return-void
.end method

.method private synthetic lambda$updateGuestClientInfo$3([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "guest connected, with mac "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget-object p1, p1, v2

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private synthetic lambda$updateGuestClientInfo$4([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "normal user connected, with mac "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget-object p1, p1, v2

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private makeChannelHistoryState()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiConnected:Z

    .line 7
    .line 8
    const-string v2, " "

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x1

    .line 33
    if-lt v4, v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/net/wifi/MloLink;

    .line 57
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getBand()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getChannel()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->channelToFreq(II)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v3, "channel history [wifi:"

    .line 118
    .line 119
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiState:I

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, "]   [mhs:"

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApFreqInfo:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, "]   [lohs:"

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mLOHSState:I

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mLOHSFreqInfo:Ljava/lang/String;

    .line 163
    .line 164
    const-string v2, "]"

    .line 165
    .line 166
    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const-string v1, "SemSoftApManager"

    .line 171
    .line 172
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addChannelHistoryDumpLog(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method private declared-synchronized persistWifiApState(I)V
    .locals 3

    .line 1
    const-string v0, "persistWifiApState "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "SemSoftApManager"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "wifi_ap_saved_state"

    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1
.end method

.method private registerCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda5;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private registerCellularDUNCallback()V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 8
    .line 9
    .line 10
    const/16 v1, 0xd

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCellularDUNCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 30
    .line 31
    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private registerForWifiSharingModeChange()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "wifi_ap_wifi_sharing"

    .line 18
    .line 19
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private setWifiSavedState(I)V
    .locals 2

    .line 1
    const-string v0, "setWifiSavedState "

    .line 2
    .line 3
    const-string v1, "SemSoftApManager"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "wifi_saved_state"

    .line 15
    .line 16
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public addChannelHistoryDumpLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 14
    .line 15
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    .line 17
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "\n"

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mChannelHistoryDumpLogs:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/16 v1, 0x3e8

    .line 62
    .line 63
    if-le p1, v1, :cond_0

    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mChannelHistoryDumpLogs:Ljava/util/List;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mChannelHistoryDumpLogs:Ljava/util/List;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    :catch_0
    return-void
.end method

.method public addSemSoftApDumpLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 14
    .line 15
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    .line 17
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "\n"

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemSoftApDumpLogs:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/16 v1, 0x3e8

    .line 62
    .line 63
    if-le p1, v1, :cond_0

    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemSoftApDumpLogs:Ljava/util/List;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemSoftApDumpLogs:Ljava/util/List;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    :catch_0
    return-void
.end method

.method public checkDualBandHostapd()Z
    .locals 1

    .line 1
    const-string p0, "SemSoftApManager"

    .line 2
    .line 3
    const-string v0, "checkDualBandHostapd:false"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public disassociateSTA(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DISASSOCIATE "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public dualSoftApScanModeDisable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, " DualSoftApScanModeDisable isScanAlwaysAvailable :"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " wifiState "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "SemSoftApManager"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOffScanMode:Z

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public enableHotspotTsfInfo(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "start"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "stop"

    .line 7
    .line 8
    :goto_0
    const-string v0, "HAPD_GET_TSF_INFO "

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "enableHotspotTsfInfo "

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "SemSoftApManager"

    .line 21
    .line 22
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string p1, "General exception "

    .line 31
    .line 32
    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public getDumpLogs()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "--SemSoftApManager \n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSemSoftApDumpLogs:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v1, "\n\n--channel history \n"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mChannelHistoryDumpLogs:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public getIsGuestClientConnected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsGuestClientConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method public getMhsPsInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "GET_AP_RPS "

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method declared-synchronized getPersistedWifiApState()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    const-string v1, "wifi_ap_saved_state"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    monitor-exit p0

    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw v0
.end method

.method public getSoftApCapability()Landroid/net/wifi/SoftApCapability;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSoftApInterfaceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSoftApInterfaceNames()Ljava/util/List;
    .locals 1
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->dual_softap_interface:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getStaConnectedBand(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getStaConnectedFreq(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "Failed to get band for = "

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ", returning default band"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "SemSoftApManager"

    .line 29
    .line 30
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    const/16 p1, 0x961

    .line 35
    .line 36
    if-lt p0, p1, :cond_1

    .line 37
    .line 38
    const/16 p1, 0x9bf

    .line 39
    .line 40
    if-gt p0, p1, :cond_1

    .line 41
    .line 42
    return v1

    .line 43
    :cond_1
    const/16 p1, 0x141e

    .line 44
    .line 45
    if-lt p0, p1, :cond_2

    .line 46
    .line 47
    const/16 p1, 0x1707

    .line 48
    .line 49
    if-gt p0, p1, :cond_2

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_2
    const/16 p1, 0x1725

    .line 54
    .line 55
    if-lt p0, p1, :cond_3

    .line 56
    .line 57
    const/16 p1, 0x1bd5

    .line 58
    .line 59
    if-gt p0, p1, :cond_3

    .line 60
    .line 61
    const/4 p0, 0x2

    .line 62
    return p0

    .line 63
    :cond_3
    return v1
.end method

.method public getStaConnectedFreq(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p0, "SemSoftApManager"

    .line 9
    .line 10
    const-string p1, "empty mac"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->dual_softap_interface:Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/util/List;

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/net/wifi/SoftApInfo;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    monitor-exit v0

    .line 70
    return p0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    monitor-exit v0

    .line 74
    return v1

    .line 75
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public getStaConnectedFreqIface(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->dual_softap_interface:Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/util/List;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/net/wifi/SoftApInfo;

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string p1, "Freq= "

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", iface= "

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    monitor-exit v0

    .line 107
    return-object p0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const-string p0, ""

    .line 111
    .line 112
    monitor-exit v0

    .line 113
    return-object p0

    .line 114
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p0
.end method

.method public getStaConnectedIface(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->dual_softap_interface:Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/util/List;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/net/wifi/SoftApInfo;

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return-object v2

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string p0, ""

    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-object p0

    .line 69
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "GET_STA_INFO "

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public getWifiApWarningActivityRunningState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApWarningActivityState:I

    .line 2
    .line 3
    return p0
.end method

.method public getmUpStreamForBigData()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mUpStreamForBigData:I

    .line 2
    .line 3
    return p0
.end method

.method handleAirplaneMode(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isMobileApOn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "CMD_AIRPLANE_TOGGLED "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", isMobileApOn():"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", getWifiSavedState "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiSavedState()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const-string v3, "SemSoftApManager"

    .line 33
    .line 34
    invoke-static {v3, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/16 v3, 0xa

    .line 50
    .line 51
    if-ne v3, p1, :cond_1

    .line 52
    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiSavedState()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-ne p1, v1, :cond_1

    .line 58
    .line 59
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setWifiSavedState(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->persistWifiApState(I)V

    .line 73
    .line 74
    .line 75
    :cond_2
    if-eqz v0, :cond_7

    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getPersistedWifiApState()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-ne p1, v1, :cond_7

    .line 97
    .line 98
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->persistWifiApState(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->isSmartViewEnabled()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->isWirelessDexEnabled()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_5

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 132
    .line 133
    if-nez p1, :cond_6

    .line 134
    .line 135
    const-string p1, "Airplane mode, disabling wifi "

    .line 136
    .line 137
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 141
    .line 142
    const-string v0, "ap"

    .line 143
    .line 144
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    new-instance p1, Landroid/os/Handler;

    .line 148
    .line 149
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$4;

    .line 153
    .line 154
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$4;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 155
    .line 156
    .line 157
    const-wide/16 v1, 0x258

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleSoftapEnable()V

    .line 164
    .line 165
    .line 166
    :cond_7
    :goto_0
    return-void
.end method

.method public handleBootCompleted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "wifiap_wifi_tile_clicked"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v3, "airplane_mode_on"

    .line 26
    .line 27
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, " mSoftApCapability  :"

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, " mAirplaneModeOn:"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    .line 75
    .line 76
    const-string v4, "SemSoftApManager"

    .line 77
    .line 78
    invoke-static {v1, v2, v4}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAirplaneModeOn:Z

    .line 82
    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 86
    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_2

    .line 96
    .line 97
    if-eq v0, v3, :cond_1

    .line 98
    .line 99
    const/4 v1, 0x4

    .line 100
    if-ne v0, v1, :cond_2

    .line 101
    .line 102
    :cond_1
    sput-boolean v3, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsTurnOnScanMode:Z

    .line 103
    .line 104
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 112
    .line 113
    const/16 v0, 0x65

    .line 114
    .line 115
    const-wide/16 v1, 0x2710

    .line 116
    .line 117
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void
.end method

.method public isInterfaceUp(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, "network_management"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->isUp()Z

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public isLGT()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "phone"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string v0, "45006"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isP2pConnected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mP2pConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method public isSKT()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "phone"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string v0, "45005"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isStaConnected(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->dual_softap_interface:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mAospClientsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/util/List;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    monitor-exit v0

    .line 52
    return p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    monitor-exit v0

    .line 56
    return v1

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public isWifiApGuestClient(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "mGuestClientMap:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-boolean v2, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->MHSDBG:Z

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "SemSoftApManager"

    .line 12
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Ljava/util/HashMap;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestClientMap:Ljava/util/HashMap;

    .line 22
    .line 23
    aput-object v5, v0, v3

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestClientMap:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    monitor-exit v1

    .line 51
    return v3

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestClientMap:Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    monitor-exit v1

    .line 65
    return p0

    .line 66
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public onTetherError(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "onTetherError on:"

    .line 2
    .line 3
    const-string v1, ",mResetSoftAp:"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ",mCallbackSoftApState:"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "SemSoftApManager"

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 42
    .line 43
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    .line 44
    .line 45
    const/16 v1, 0xa

    .line 46
    .line 47
    if-eq p1, v1, :cond_0

    .line 48
    .line 49
    const/16 v1, 0xb

    .line 50
    .line 51
    if-eq p1, v1, :cond_0

    .line 52
    .line 53
    const/16 v1, 0xe

    .line 54
    .line 55
    if-ne p1, v1, :cond_1

    .line 56
    .line 57
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_1

    .line 66
    .line 67
    const-string p0, "enabled startTetheredHotspot : failed"

    .line 68
    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method readWifiSharingMode()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "wifi_ap_wifi_sharing"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    move v2, v1

    .line 18
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "readWifiSharingMode-> "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 28
    .line 29
    const-string v2, "SemSoftApManager"

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsWifiSharingModeEnabled:Z

    .line 35
    .line 36
    return p0
.end method

.method public removeGuestClientToDB(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestClientMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mGuestClientMap:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public resetSoftAp()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isMobileApOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->resetsoftap()V

    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 12
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->resetSoftAp()V

    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_1
    return-void
.end method

.method public resetSoftAp(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isMobileApOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 3
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->resetsoftap()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->resetSoftAp()V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_1
    return-void
.end method

.method public saveDebugDumpForHotspot()V
    .locals 2

    .line 1
    const-string v0, "saveDebugDumpForHotspot"

    .line 2
    .line 3
    const-string v1, "SemSoftApManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v0, "DEBUG_DUMP"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "General exception DEBUG_DUMP"

    .line 16
    .line 17
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isSoftApOn()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isLohsOn()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "sendHostapdCommand isSoftApOn "

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isSoftApOn()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "isLohsOn "

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isLohsOn()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "SemSoftApManager"

    .line 55
    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public sendHostapdCommandToHandler(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isSoftApOn()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isLohsOn()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$7;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$7;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "sendHostapdCommandToHandler isSoftApOn "

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isSoftApOn()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "isLohsOn "

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isLohsOn()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "SemSoftApManager"

    .line 63
    .line 64
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public setArdkPowerSaveMode(Z)I
    .locals 6

    .line 1
    const-string v0, "enable : "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemSoftApManager"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v2, "General exception "

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v5, 0x3

    .line 26
    invoke-virtual {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->stopAllStateMachine()V

    .line 35
    .line 36
    .line 37
    :cond_0
    :try_start_0
    const-string v4, "SET_AP_RPS_PARAMS 16 9 10 0 swlan0"

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v4, "SET_AP_RPS 1 swlan0"

    .line 43
    .line 44
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return v3

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-static {v2, v4, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :cond_1
    :try_start_1
    const-string v4, "SET_AP_RPS 0 swlan0"

    .line 54
    .line 55
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    return v3

    .line 59
    :catch_1
    move-exception p0

    .line 60
    invoke-static {v2, v4, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    return v0
.end method

.method public setHotspoPciePowerManage(Z)V
    .locals 4

    .line 1
    const-string v0, "setHotspoPciePowerManage enable : "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemSoftApManager"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const-string v0, "General exception "

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq p1, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    const-string v2, "PCIE_RPM_ENABLE"

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-static {v0, v2, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :try_start_1
    const-string v2, "PCIE_RPM_DISABLE"

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_1
    move-exception p0

    .line 39
    invoke-static {v0, v2, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public setHotspotBackOff(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SET_TX_POWER_CALLING "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "setHotspotBackOff Mode"

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    const-string v0, "General exception "

    .line 5
    invoke-static {v0, p1, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public setHotspotBackOff(Z)V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SET_TX_POWER_CALLING "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    const-string v0, "setHotspotBackOff Enable"

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 14
    const-string v0, "General exception "

    .line 15
    invoke-static {v0, p1, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public setHotspotCustomBackOff(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SET_CUSTOM_TX_POWER_CALLING "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "setHotspotCustomBackOff Mode"

    .line 16
    .line 17
    const-string v1, "SemSoftApManager"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string v0, "General exception "

    .line 29
    .line 30
    invoke-static {v0, p1, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public setHotspotPcieIrqAffinity(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PCIE_IRQ_CORE "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "setHotspotPcieIrqAffinity"

    .line 16
    .line 17
    const-string v1, "SemSoftApManager"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string v0, "General exception "

    .line 28
    .line 29
    invoke-static {v0, p1, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setIsGuestClientConnectedFalse()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mIsGuestClientConnected:Z

    .line 3
    .line 4
    return-void
.end method

.method public setNetworkCountryCode(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, " setNetworkCountryCode"

    .line 2
    .line 3
    const-string v1, " old : "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetworkCountryCode:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "SemSoftApManager"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetworkCountryCode:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetworkCountryCode:Ljava/lang/String;

    .line 29
    .line 30
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    .line 31
    .line 32
    const/16 v0, 0xd

    .line 33
    .line 34
    if-eq p1, v0, :cond_0

    .line 35
    .line 36
    const/16 v0, 0xc

    .line 37
    .line 38
    if-ne p1, v0, :cond_1

    .line 39
    .line 40
    :cond_0
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mSkipWifiSharingWhenNetworkCountryChange:Z

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public setSoftApAntMode(I)I
    .locals 7

    .line 1
    const-string v0, "setSoftApAntMode mode : "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemSoftApManager"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const-string v0, "General exception "

    .line 13
    .line 14
    const-string v2, "wifi_ap_kdi_selection_ant"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eq p1, v4, :cond_1

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    if-eq p1, v6, :cond_0

    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    :try_start_0
    const-string v5, "SET_BWNSS 0x22220002 0x222"

    .line 26
    .line 27
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return v4

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {v0, v5, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    return v3

    .line 45
    :cond_1
    :try_start_1
    const-string v5, "SET_BWNSS 0x22220002 0x211"

    .line 46
    .line 47
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .line 58
    .line 59
    return v4

    .line 60
    :catch_1
    move-exception p0

    .line 61
    invoke-static {v0, v5, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 62
    .line 63
    .line 64
    return v3
.end method

.method public setSoftApElnaEnable(Ljava/lang/String;Z)I
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "iface : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " enable : "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "SemSoftApManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string v0, "General exception "

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    const-string v4, "SET_SOFTAP_ELNA_BYPASS "

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    if-eq p2, v3, :cond_0

    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " 0"

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return v3

    .line 61
    :catch_0
    move-exception p0

    .line 62
    invoke-static {v0, v5, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    return v2

    .line 66
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, " -1"

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    return v3

    .line 87
    :catch_1
    move-exception p0

    .line 88
    invoke-static {v0, v5, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 89
    .line 90
    .line 91
    return v2
.end method

.method public setSoftApRadioPowerSave(Ljava/lang/String;Z)I
    .locals 8

    .line 1
    const-string v0, "SET_AP_RPS 0 "

    .line 2
    .line 3
    const-string v1, "SET_AP_RPS 1 "

    .line 4
    .line 5
    const-string v2, "SET_AP_RPS_PARAMS 16 5 10 0 "

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "iface : "

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v4, " enable : "

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "SemSoftApManager"

    .line 30
    .line 31
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string v3, "General exception "

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    if-eq p2, v6, :cond_0

    .line 42
    .line 43
    return v5

    .line 44
    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    move-result-object v7

    .line 71
    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return v6

    .line 75
    :catch_0
    move-exception p0

    .line 76
    invoke-static {v3, v7, v4, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 77
    .line 78
    .line 79
    return v5

    .line 80
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    .line 95
    return v6

    .line 96
    :catch_1
    move-exception p0

    .line 97
    invoke-static {v3, v7, v4, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 98
    .line 99
    .line 100
    return v5
.end method

.method public setSoftApRadioPowerSaveAggressive(Ljava/lang/String;Z)I
    .locals 8

    .line 1
    const-string v0, "SET_AP_RPS 0 "

    .line 2
    .line 3
    const-string v1, "SET_AP_RPS 1 "

    .line 4
    .line 5
    const-string v2, "SET_AP_RPS_PARAMS 16 7 10 0 "

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "iface : "

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v4, " enable : "

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "SemSoftApManager"

    .line 30
    .line 31
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string v3, "General exception "

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    if-eq p2, v6, :cond_0

    .line 42
    .line 43
    return v5

    .line 44
    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    move-result-object v7

    .line 71
    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return v6

    .line 75
    :catch_0
    move-exception p0

    .line 76
    invoke-static {v3, v7, v4, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 77
    .line 78
    .line 79
    return v5

    .line 80
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    .line 95
    return v6

    .line 96
    :catch_1
    move-exception p0

    .line 97
    invoke-static {v3, v7, v4, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 98
    .line 99
    .line 100
    return v5
.end method

.method public setSoftApRadioPowerSaveNoBeacon(Ljava/lang/String;Z)I
    .locals 7

    .line 1
    const-string v0, "SET_AP_SUSPEND 0 "

    .line 2
    .line 3
    const-string v1, "SET_AP_SUSPEND 1 "

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "iface : "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, " enable : "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "SemSoftApManager"

    .line 28
    .line 29
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const-string v2, "General exception "

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    if-eq p2, v5, :cond_0

    .line 40
    .line 41
    return v4

    .line 42
    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return v5

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-static {v2, v6, v3, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 60
    .line 61
    .line 62
    return v4

    .line 63
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    return v5

    .line 79
    :catch_1
    move-exception p0

    .line 80
    invoke-static {v2, v6, v3, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    .line 82
    .line 83
    return v4
.end method

.method public setWifiApWarningActivityRunning(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mWifiApWarningActivityState:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApWarningActivityState:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SemSoftApManager"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApWarningActivityState:I

    .line 23
    .line 24
    return-void
.end method

.method public setmUpStreamForBigData()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mUpStreamForBigData:I

    .line 3
    .line 4
    return-void
.end method

.method public startTracking()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "SemSoftApManager"

    .line 7
    .line 8
    const-string v1, " SemSoftApManager startTracking"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->init()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isRegistered:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mFilter:Landroid/content/IntentFilter;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->readWifiSharingMode()Z

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->registerForWifiSharingModeChange()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->registerCellularDUNCallback()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isRegistered:Z

    .line 3
    .line 4
    const-string v0, "SemSoftApManager"

    .line 5
    .line 6
    const-string v1, " SemSoftApManager stopTracking"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public syncGetWifiApStateByName(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "[invalid state]"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "failed"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "enabled"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "enabling"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "disabled"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "disabling"

    .line 20
    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tethered(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p0, "tethered on:"

    .line 2
    .line 3
    const-string v0, "SemSoftApManager"

    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public untethered(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "untethered on:"

    .line 2
    .line 3
    const-string v1, ",mResetSoftAp:"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ",mCallbackSoftApState:"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "SemSoftApManager"

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 37
    .line 38
    const/16 v1, 0x64

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mResetSoftAp:Z

    .line 49
    .line 50
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mCallbackSoftApState:I

    .line 51
    .line 52
    const/16 v1, 0xa

    .line 53
    .line 54
    if-eq p1, v1, :cond_0

    .line 55
    .line 56
    const/16 v1, 0xb

    .line 57
    .line 58
    if-eq p1, v1, :cond_0

    .line 59
    .line 60
    const/16 v1, 0xe

    .line 61
    .line 62
    if-ne p1, v1, :cond_1

    .line 63
    .line 64
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_1

    .line 73
    .line 74
    const-string p0, "enabled startTetheredHotspot : failed"

    .line 75
    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public updateGuestClientInfo(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->MHSDBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "updateGuestClientInfo:"

    .line 6
    .line 7
    const-string v2, "SemSoftApManager"

    .line 8
    .line 9
    invoke-static {v1, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v1, " "

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "sec_guest"

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "1"

    .line 32
    .line 33
    const-string v4, "0"

    .line 34
    .line 35
    const-string v5, "vendor.wifiap.guest.toast"

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    aget-object p1, v1, p1

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addGuestClientToDB(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 58
    .line 59
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;[Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    const-string v2, "normal"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 90
    .line 91
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;[Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_0
    return-void
.end method

.method public upstreamChangedToCellular(Landroid/net/Network;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mUpStreamForBigData:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    or-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mUpStreamForBigData:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetwork:Landroid/net/Network;

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUpstreamCellular:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 22
    .line 23
    const/16 v1, 0x66

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isDunCheckRequired:Z

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 43
    .line 44
    const-wide/16 v2, 0x2710

    .line 45
    .line 46
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public upstreamChangedToWifi(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mUpStreamForBigData:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mUpStreamForBigData:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isUpstreamCellular:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mNetwork:Landroid/net/Network;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->mHostapdWorkHandler:Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 13
    .line 14
    const/16 p1, 0x66

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
