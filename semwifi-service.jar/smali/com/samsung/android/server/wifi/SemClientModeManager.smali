.class public Lcom/samsung/android/server/wifi/SemClientModeManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;
.implements Lcom/samsung/android/server/wifi/ClientModeStateProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;,
        Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;,
        Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG_PRODUCT_DEV:Z

.field static final DEFAULT_LAZY_BOOT_COMPLETED_DELAY_MS:J = 0x4e20L

.field private static final MAX_INTERFACE_COUNT:I = 0x2

.field static final NETWORK_STATE_CHANGE_DELAY_MILLIS:J = 0xfaL

.field static final RECOVERY_INTERFACE_DELAY_MILLIS:J = 0x12cL

.field static final SCAN_SERVICE_INIT_DELAY_MS:J = 0x1f4L

.field static final STA_INTERFACE_NAME_PREFIX:Ljava/lang/String; = "wlan"

.field private static final TAG:Ljava/lang/String; = "SemClientModeManager"


# instance fields
.field private final mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

.field private final mClientModeStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ClientModeStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientModes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ISemClientModeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mDefaultNetworkListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableRandomMacForTest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mIsSimPresent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLazyBootCompleteListener:Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mOpenRoamingLogger:Lcom/samsung/android/server/wifi/OpenRoamingLogger;

.field private mPasspointLogger:Lcom/samsung/android/server/wifi/PasspointLogger;

.field private mPrimaryInterface:Ljava/lang/String;

.field private final mPrimaryInterfaceListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScanningEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mScreenState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSettingsStatusProvider:Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;

.field private final mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

.field final mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

.field private final mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiDriverInfo:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

.field private final mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

.field private final mWifiGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

.field private final mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;


# direct methods
.method public static synthetic $r8$lambda$3JumIV03JX_s0tn19k0-D8QwhyU(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$changePrimaryInterface$3(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$5DbHnlHQFIVC_2sEAoZEobzgKUE(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$unregisterPrimaryInterfaceListener$5(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$7hIMkUw5Q3HKeFMsAFS2e9nqfz4(Ljava/lang/String;Lcom/samsung/android/server/wifi/ISemClientModeImpl;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$setNCHOModeEnabled$10(Ljava/lang/String;Lcom/samsung/android/server/wifi/ISemClientModeImpl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ENUQWWmjNNKzku3M1V_n9-mjjeA(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$registerPrimaryInterfaceListener$4(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$FdXilHuVihpFd8Krft1yhX5VWCM(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$getNumFavoriteNetworks$11(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$GjHKt4tGNNYiXQeYtAOpCQ3gXSY(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$addClientModeImpl$2(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$IVzyI37wvVyVRzawPqd1wcS6Hms(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$registerDefaultNetworkListener$8(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$M3QM_6XRbWQhmcE-HN-PiqZPsrw(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$unregisterDefaultNetworkListener$9(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$O1ViY4KS-qHgCVsMJPn1kVqhfrU(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$addClientModeImpl$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$RVBRl9X6vLCXCkoQ7J4PPSh0A7Y(Lcom/samsung/android/server/wifi/SemClientModeManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$VM7icKZ13qLNxR2RUMQvUA76Tyw(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$unregisterClientModeStateListener$7(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$mrlVCTfgvIbVgar1H_orpm5qws8(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->lambda$registerClientModeStateListener$6(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientModes(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultNetworkListeners(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDefaultNetworkListeners:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLazyBootCompleteListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mLazyBootCompleteListener:Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenRoamingLogger(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/OpenRoamingLogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mOpenRoamingLogger:Lcom/samsung/android/server/wifi/OpenRoamingLogger;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasspointLogger(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/PasspointLogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPasspointLogger:Lcom/samsung/android/server/wifi/PasspointLogger;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSaLoggingManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/util/ScanPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanningEnable(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScanningEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsStatusProvider(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mSettingsStatusProvider:Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiDriverInfo(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiDriverInfo:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEasySetupManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$maddClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->addClientModeImpl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndGetConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndGetConnectivityManager()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndUpdatePrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndUpdatePrimaryInterface(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getInterfaceName(Landroid/net/Network;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPrimaryClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/ISemClientModeImpl;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSilentRoamingW24hStats(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getSilentRoamingW24hStats()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetW24HBigDataParameters(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getW24HBigDataParameters(ZZ)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiStatus(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getWifiStatus(Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyAirplaneModeChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyAirplaneModeChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCapabilitiesChangedEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyCapabilitiesChangedEvent(Landroid/net/Network;Landroid/net/wifi/WifiInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDisableRandomMacForTest(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyDisableRandomMacForTest()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyLinkConfiguredChangedEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyLinkConfiguredChangedEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyNetworkConnectionEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyNetworkConnectionEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySimStateChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifySimStateChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyTelephonyCountryCodeChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyTelephonyCountryCodeChanged(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyTelephonyServiceStateChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->notifyTelephonyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->removeClientModeImpl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG_PRODUCT_DEV()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeManager;->DBG_PRODUCT_DEV:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

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
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemClientModeManager;->DBG_PRODUCT_DEV:Z

    .line 10
    .line 11
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScreenState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mIsSimPresent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDisableRandomMacForTest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScanningEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    new-instance v3, Lcom/samsung/android/server/wifi/SemClientModeManager$2;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 47
    .line 48
    new-instance v3, Lcom/samsung/android/server/wifi/SemClientModeManager$3;

    .line 49
    .line 50
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$3;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 51
    .line 52
    .line 53
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 58
    .line 59
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 60
    .line 61
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 66
    .line 67
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 72
    .line 73
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 78
    .line 79
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 84
    .line 85
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 90
    .line 91
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 96
    .line 97
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiDriverInfo:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 102
    .line 103
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 108
    .line 109
    new-instance v5, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 115
    .line 116
    new-instance v5, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 117
    .line 118
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-direct {v5, p0, p2, v6}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    .line 123
    .line 124
    .line 125
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 126
    .line 127
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    .line 133
    .line 134
    new-instance p2, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 135
    .line 136
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 140
    .line 141
    const-string p2, "power"

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    check-cast p2, Landroid/os/PowerManager;

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    .line 155
    .line 156
    new-instance p2, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda13;

    .line 157
    .line 158
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 162
    .line 163
    .line 164
    new-instance p2, Lcom/samsung/android/server/wifi/SemClientModeManager$1;

    .line 165
    .line 166
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 170
    .line 171
    .line 172
    new-instance p2, Ljava/util/HashSet;

    .line 173
    .line 174
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 175
    .line 176
    .line 177
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterfaceListeners:Ljava/util/Set;

    .line 178
    .line 179
    new-instance p2, Ljava/util/HashSet;

    .line 180
    .line 181
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 182
    .line 183
    .line 184
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModeStateListeners:Ljava/util/Set;

    .line 185
    .line 186
    new-instance p2, Ljava/util/HashSet;

    .line 187
    .line 188
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDefaultNetworkListeners:Ljava/util/Set;

    .line 192
    .line 193
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 198
    .line 199
    new-instance v0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;

    .line 200
    .line 201
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 202
    .line 203
    .line 204
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mSettingsStatusProvider:Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;

    .line 205
    .line 206
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->setSettingsStatusProvider(Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiEasySetupManager()Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 214
    .line 215
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiGeofenceManager()Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 220
    .line 221
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSilentRoamingManager()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 226
    .line 227
    new-instance p2, Lcom/samsung/android/server/wifi/OpenRoamingLogger;

    .line 228
    .line 229
    invoke-direct {p2, p1, p3, v3}, Lcom/samsung/android/server/wifi/OpenRoamingLogger;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 230
    .line 231
    .line 232
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mOpenRoamingLogger:Lcom/samsung/android/server/wifi/OpenRoamingLogger;

    .line 233
    .line 234
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 235
    .line 236
    .line 237
    new-instance p1, Lcom/samsung/android/server/wifi/PasspointLogger;

    .line 238
    .line 239
    invoke-direct {p1, v4}, Lcom/samsung/android/server/wifi/PasspointLogger;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    .line 240
    .line 241
    .line 242
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPasspointLogger:Lcom/samsung/android/server/wifi/PasspointLogger;

    .line 243
    .line 244
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method private addClientModeImpl(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 8
    .line 9
    const-string v1, "SemClientModeManager"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeClientModeImpl(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->initialize()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScreenState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-interface {v0, v2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleScreenStateChanged(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mIsSimPresent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {v0, v2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleSimStateChanged(Z)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setListener(Lcom/samsung/android/server/wifi/ClientModeImplStateListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x2

    .line 60
    if-le v2, v3, :cond_0

    .line 61
    .line 62
    const-string v2, "there are 3 or more STA interfaces"

    .line 63
    .line 64
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 v3, 0x1

    .line 78
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 89
    .line 90
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    invoke-interface {v4}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    if-eqz v3, :cond_4

    .line 106
    .line 107
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getInterfaceName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->changePrimaryInterface(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    const-string v2, "start client mode: "

    .line 121
    .line 122
    invoke-static {v2, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setupClientMode()V

    .line 126
    .line 127
    .line 128
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDisableRandomMacForTest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_5

    .line 135
    .line 136
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->disableRandomMac()V

    .line 137
    .line 138
    .line 139
    :cond_5
    return-void
.end method

.method private changePrimaryInterface(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "SemClientModeManager"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "primary interface was changed to "

    .line 12
    .line 13
    const-string v2, " from "

    .line 14
    .line 15
    invoke-static {v0, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 27
    .line 28
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "primary interface is not changed "

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getInterfaceName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setPrimary(Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    return-void
.end method

.method private checkAndGetConnectivityManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private checkAndUpdatePrimaryInterface(Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->isPrimaryWifiNetwork(Landroid/net/Network;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getInterfaceName(Landroid/net/Network;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->changePrimaryInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private getAdpsState()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedAdps()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v1, "wifi_adps_enable"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, -0x1

    .line 22
    return p0
.end method

.method private getAggressiveSnsState()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private getApeStats()Lcom/samsung/android/server/wifi/SemApeService$Stats;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeService()Lcom/samsung/android/server/wifi/SemApeService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeService;->getStats()Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$Stats;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    .line 21
    .line 22
    const-wide/16 v1, -0x1

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    .line 29
    .line 30
    return-object p0
.end method

.method private getApeStatsPackages()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeService()Lcom/samsung/android/server/wifi/SemApeService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "0"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeService;->appUsageToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private getApeStatsSessions()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeService()Lcom/samsung/android/server/wifi/SemApeService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "0"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeService;->sessionsToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private getAutoWifiState()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getAutoWifiDefaultValue()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "sem_auto_wifi_control_enabled"

    .line 10
    .line 11
    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private getBecomeFavoriteAPTime()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "sem_auto_wifi_time_become_favorite_ap"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    int-to-long v0, p0

    .line 13
    return-wide v0
.end method

.method private getInterfaceName(Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndGetConnectivityManager()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "SemClientModeManager"

    .line 13
    .line 14
    const-string p1, "could not get interface name, linkProperties is null"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const-string p0, ""

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private getNumFavoriteNetworks()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda11;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    long-to-int p0, v0

    .line 25
    return p0
.end method

.method private getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 20
    .line 21
    return-object p0
.end method

.method private getSilentRoamingState()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "sem_wifi_switch_to_better_wifi_supported"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 p0, -0x1

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v1, "sem_wifi_switch_to_better_wifi_enabled"

    .line 21
    .line 22
    invoke-virtual {v0, p0, v1, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method private getSilentRoamingW24hStats()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getSilentRoamingW24hStats()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private getSnsState()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private getW24HBigDataParameters(ZZ)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getApeStats()Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getSilentRoamingW24hStats()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v3, "\n - laaEnterState:"

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :cond_0
    const-string v3, "0 "

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const-string v4, "\n - laaActiveState:"

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const-string v3, "\n - totalSecondsOfApeEnabledForVoipApp:"

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    .line 44
    .line 45
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, " "

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    const-string v4, "\n - totalSecondsOfBackgroundLimitedForVoipApp:"

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 61
    .line 62
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    const-string v4, "\n - totalSecondsOfApeEnabledForNonVoipApp:"

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    .line 76
    .line 77
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    const-string v4, "\n - totalSecondsOfBackgroundLimitedForNonVoipApp:"

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    .line 91
    .line 92
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    const-string v1, "\n - totalSecondsOfBecomeFavoriteAP:"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getBecomeFavoriteAPTime()J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    const-string v1, "\n - totalSilentRoamingToggleCount:"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_7
    iget v1, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    const-string v1, "\n - totalSilentRoamingSwitchCount:"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_8
    iget v1, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    if-eqz p1, :cond_9

    .line 146
    .line 147
    const-string v1, "\n - totalSilentRoamingSwitchFailureCount:"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    :cond_9
    iget v1, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    if-eqz p1, :cond_a

    .line 161
    .line 162
    const-string v1, "\n - totalSilentRoamingSwitchNoInternetCount:"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    :cond_a
    iget v1, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    if-eqz p1, :cond_b

    .line 176
    .line 177
    const-string v1, "\n - elapsedRealtimeSeconds:"

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 183
    .line 184
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getW24HLoggingElapsedRealtimeSecs(Z)J

    .line 185
    .line 186
    .line 187
    move-result-wide v1

    .line 188
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    if-eqz p1, :cond_c

    .line 195
    .line 196
    const-string v1, "\n - apeStatsPackages:"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getApeStatsPackages()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    if-eqz p1, :cond_d

    .line 212
    .line 213
    const-string p1, "\n - apeStatsSessions:"

    .line 214
    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getApeStatsSessions()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    if-eqz p2, :cond_e

    .line 229
    .line 230
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->resetApeStats()V

    .line 231
    .line 232
    .line 233
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->resetSilentRoamingW24hStats()V

    .line 234
    .line 235
    .line 236
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->resetWifiConnectionW24hStats()V

    .line 237
    .line 238
    .line 239
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->resetSrrW24hStats()V

    .line 240
    .line 241
    .line 242
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    return-object p0
.end method

.method private getWifiStatus(Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "\n - Wi-Fi Enabled:"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "0"

    .line 20
    .line 21
    const-string v3, "1"

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    move-object v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v1, v2

    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const-string v4, "\n - Wi-Fi Scan Always Mode Enabled:"

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    move-object v2, v3

    .line 52
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    const-string v2, "\n - Auto Wi-Fi Enabled:"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getAutoWifiState()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    const-string v2, "\n - Favorite Network Count:"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getNumFavoriteNetworks()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    const-string v2, "\n - SNS Enabled:"

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getSnsState()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    const-string v2, "\n - Aggressive Mode Enabled:"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getAggressiveSnsState()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    if-eqz p1, :cond_8

    .line 127
    .line 128
    const-string v2, "\n - ADPS Enabled:"

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getAdpsState()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    if-eqz p1, :cond_9

    .line 144
    .line 145
    const-string v2, "\n - Wi-Fi Network Count:"

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    if-eqz p1, :cond_a

    .line 167
    .line 168
    const-string v2, "\n - SilentRoamingState:"

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getSilentRoamingState()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    if-eqz p1, :cond_b

    .line 184
    .line 185
    const-string p1, "\n - Total Driver HANG or HIDL problem Count:"

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 191
    .line 192
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getEventCount(I)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 198
    .line 199
    const/4 v2, 0x1

    .line 200
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getEventCount(I)I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    add-int/2addr p0, p1

    .line 205
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    return-object p0
.end method

.method private handleScreenStateChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScreenState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleScreenStateChanged(Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private isPrimaryWifiNetwork(Landroid/net/Network;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "SemClientModeManager"

    .line 11
    .line 12
    const-string p1, "WifiManagerProxy.getCurrentNetwork returns null"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/net/Network;->getNetId()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ne p0, p1, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1
    return v0
.end method

.method private synthetic lambda$addClientModeImpl$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModeStateListeners:Ljava/util/Set;

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
    check-cast v0, Lcom/samsung/android/server/wifi/ClientModeStateListener;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/server/wifi/ClientModeStateListener;->onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$addClientModeImpl$2(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda10;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$changePrimaryInterface$3(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterfaceListeners:Ljava/util/Set;

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
    check-cast v0, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;->onPrimaryInterfaceChanged(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private static synthetic lambda$getNumFavoriteNetworks$11(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->getNetworkScore()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScreenState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->handleScreenStateChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$registerClientModeStateListener$6(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModeStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerDefaultNetworkListener$8(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDefaultNetworkListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerPrimaryInterfaceListener$4(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterfaceListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$setNCHOModeEnabled$10(Ljava/lang/String;Lcom/samsung/android/server/wifi/ISemClientModeImpl;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setNCHOModeEnabled(Z)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private synthetic lambda$unregisterClientModeStateListener$7(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModeStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterDefaultNetworkListener$9(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDefaultNetworkListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterPrimaryInterfaceListener$5(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterfaceListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private notifyAirplaneModeChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleAirplaneModeChanged(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private notifyCapabilitiesChangedEvent(Landroid/net/Network;Landroid/net/wifi/WifiInfo;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-interface {p0, p2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleCapabilitiesChanged(Landroid/net/wifi/WifiInfo;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method private notifyDisableRandomMacForTest()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->disableRandomMac()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private notifyLinkConfiguredChangedEvent()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndGetConnectivityManager()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    invoke-interface {v6}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    const-string v7, "notifyLinkConfiguredChangedEvent "

    .line 45
    .line 46
    invoke-static {v7, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v7, "SemClientModeManager"

    .line 51
    .line 52
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 56
    .line 57
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-interface {v6, v3, v5, v4}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleLinkConfiguredChanged(Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method private notifyNetworkConnectionEvent()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndGetConnectivityManager()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    invoke-interface {v6}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 45
    .line 46
    invoke-virtual {v7, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v9, "notifyNetworkConnectionEvent "

    .line 53
    .line 54
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v5, " networkInfoFromCm:"

    .line 61
    .line 62
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const-string v8, "SemClientModeManager"

    .line 73
    .line 74
    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-interface {v6, v3, v7, v4}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleNetworkStateChanged(Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->checkAndUpdatePrimaryInterface(Landroid/net/Network;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method private notifySimStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mIsSimPresent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mIsSimPresent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleSimStateChanged(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method private notifyTelephonyCountryCodeChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleTelephonyCountryCodeChanged(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private notifyTelephonyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->handleTelephonyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private removeClientModeImpl(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 8
    .line 9
    const-string v1, "SemClientModeManager"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p0, "not exists instant of SemClientModeImpl for "

    .line 14
    .line 15
    invoke-static {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-string v2, "stop client mode: "

    .line 26
    .line 27
    invoke-static {v2, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->stopClientMode()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mPrimaryInterface:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getInterfaceName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->changePrimaryInterface(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void
.end method

.method private resetApeStats()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeService()Lcom/samsung/android/server/wifi/SemApeService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeService;->resetStats()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeService;->resetSessionStats()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private resetSilentRoamingW24hStats()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->resetSilentRoamingW24hStats()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private resetSrrW24hStats()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSrrSaLoggingHandler()Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->resetSrrW24hStats()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private resetWifiConnectionW24hStats()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->resetWifiConnectionW24hStats()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method disableRandomMac()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mDisableRandomMacForTest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p3, "Status:"

    .line 9
    .line 10
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p3, 0x1

    .line 14
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getWifiStatus(Z)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "W24H Params:"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p3, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getW24HBigDataParameters(ZZ)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p3, "STA Chip Information: "

    .line 53
    .line 54
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiDriverInfo:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->enableVerboseLogging(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mVerboseLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->setLogVisible(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 48
    .line 49
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->enableVerboseLogging(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method

.method public getChannelUtilization()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getChannelUtilization()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, -0x1

    .line 19
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
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getChannelUtilizationExtended()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method getConnectionSpeed()[J
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getConnectionSpeed()[J

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    new-array p0, p0, [J

    .line 14
    .line 15
    return-object p0
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getCountryRev()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public getInterfaces()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object v0
.end method

.method public getMaxTdlsSession()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getMaxTdlsSession()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, -0x1

    .line 19
    return p0
.end method

.method public getNumOfTdlsSession()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getNumOfTdlsSession()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, -0x1

    .line 19
    return p0
.end method

.method public getPrimaryInterfaceName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getInterfaceName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public getRoamBand()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getRoamBand()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, -0x1

    .line 19
    return p0
.end method

.method public getRoamDelta()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getRoamDelta()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, -0x1

    .line 19
    return p0
.end method

.method public getRoamScanPeriod()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getRoamScanPeriod()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, -0x1

    .line 19
    return p0
.end method

.method public getRoamTrigger()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getRoamTrigger()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, -0x1

    .line 19
    return p0
.end method

.method getRssi(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->syncGetRssi()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    const/16 p0, -0xc8

    .line 23
    .line 24
    return p0
.end method

.method public getWifi7DisabledCountry()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->getWifi7DisabledCountry()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method handleBootCompleted(Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mLazyBootCompleteListener:Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 10
    .line 11
    const/16 p1, 0xf

    .line 12
    .line 13
    const-wide/16 v0, 0x4e20

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method initialize()V
    .locals 2

    .line 1
    const-string v0, "SemClientModeManager"

    .line 2
    .line 3
    const-string v1, "initialize"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public isAvailableTdls()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isAvailableTdls()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public isNCHOModeEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isNCHOModeEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method isScanningEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mScanningEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public isWesModeEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isWesModeEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public isWiderBandwidthTdlsSupported()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isWiderBandwidthTdlsSupported()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ClientModeStateListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public registerDefaultNetworkListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda5;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method report(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sendReassociationFrequencyRequestFrame(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->sendReassociationFrequencyRequestFrame(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->sendReassociationRequestFrame(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method setAirplaneMode(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setCountryRev(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method setDtimInSuspendMode(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setDtimInSuspendMode(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method setImsCallEstablished(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setImsCallEstablished(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method setMaxDtimInSuspendMode(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setMaxDtimInSuspendMode(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setNCHOModeEnabled(Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setNCHOModeEnabled(Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mClientModes:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance p1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda12;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 25
    .line 26
    .line 27
    return v0
.end method

.method setNetworkCountryCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setRoamBand(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamBand(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public setRoamDelta(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamDelta(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public setRoamScanChannels([Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamScanChannels([Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public setRoamScanEnabled(Z)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamScanEnabled(Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamScanPeriod(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public setRoamTrigger(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setRoamTrigger(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method setScanningEnable(ZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->setScanningEnable(ZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setSimState(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setTdlsEnabled(Z)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setTdlsEnabled(Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method setTelephonyServiceState(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    const/16 v0, 0xd

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setWesModeEnabled(Z)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryClientModeImpl()Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->setWesModeEnabled(Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method startScan()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->startScan()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public unregisterClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ClientModeStateListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public unregisterDefaultNetworkListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public unregisterPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda5;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
