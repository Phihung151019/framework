.class public Lcom/samsung/android/server/wifi/share/WifiContinuityService;
.super Lcom/android/internal/util/StateMachine;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;,
        Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;
    }
.end annotation


# static fields
.field static final BIND_TIMEOUT_MS:J = 0x1388L

.field private static final CMD_BIND_SERVICE:I = 0x3

.field private static final CMD_BIND_TIMEOUT:I = 0x2

.field private static final CMD_CHECK_AND_START:I = 0x1

.field private static final CMD_CHECK_AND_START_CONNECTION:I = 0xc

.field private static final CMD_NETWORK_CAP_CHANGED:I = 0x8

.field private static final CMD_RUN_FOR_CURRENT:I = 0x9

.field private static final CMD_SHARING_EXPIRED:I = 0x5

.field private static final CMD_START_DISCOVERY:I = 0x7

.field private static final CMD_START_TO_SHARE:I = 0x6

.field private static final CMD_UNBIND_SERVICE:I = 0x4

.field private static final DBG:Z

.field static final DEFAULT_DISCOVERY_TIME_MS:J = 0x7530L

.field static final DEFAULT_START_DELAY_MS:J = 0x1388L

.field private static final EVENT_CONTINUITY_SETTINGS_CHANGED:I = 0x23

.field private static final EVENT_SA_STATE_CHANGED:I = 0x24

.field private static final EVENT_SERVICE_BOUND:I = 0x1e

.field private static final EVENT_SERVICE_UNBOUND:I = 0x1f

.field private static final EVENT_WIFI_CONFIG_DELIVERED:I = 0x22

.field static final MCF_DS_PERMISSION:Ljava/lang/String; = "com.samsung.android.mcfds.permission.START_SERVICE"

.field static final SA_PACKAGE_NAME:Ljava/lang/String; = "com.osp.app.signin"

.field static final SA_SIGN_IN_ACTION:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field static final SA_SIGN_OUT_ACTION:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field static final SETTINGS_ID_MULTI_CONTROL:Ljava/lang/String; = "multi_control_enabled"

.field static final SETTING_ID_CONTINUITY:Ljava/lang/String; = "mcf_continuity"

.field private static final TAG:Ljava/lang/String; = "SemWifi.Continuity"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

.field private final clock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final configLock:Ljava/lang/Object;

.field private final configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final context:Landroid/content/Context;

.field private final defaultState:Lcom/android/internal/util/State;

.field private final facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final featureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private isConnected:Z

.field private lastReceivedDataTimeMs:J

.field private lastSharedConfigInfo:Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

.field private lastSharedDataTimeMs:J

.field final mGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final scanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final shareableNetworkIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedNetworkIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sharingState:Lcom/android/internal/util/State;

.field private final wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$I8HbQdXMbRBw0qZugSjQqcUtPuA(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lambda$registerWifiConfigListener$0(Landroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$oIwZjwqizOwQ17Zbf7X6DkV0PFE(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lambda$getSharedReport$1(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaccountManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/accounts/AccountManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->accountManager:Landroid/accounts/AccountManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/util/SemClock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconfigLock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconfigManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdefaultState(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->defaultState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfeatureController(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->featureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisConnected(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastSharedConfigInfo(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastSharedConfigInfo:Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshareableNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->shareableNetworkIds:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharedNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharedNetworkIds:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharingState(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharingState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisConnected(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastReceivedDataTimeMs(Lcom/samsung/android/server/wifi/share/WifiContinuityService;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastReceivedDataTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastSharedConfigInfo(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastSharedConfigInfo:Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastSharedDataTimeMs(Lcom/samsung/android/server/wifi/share/WifiContinuityService;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastSharedDataTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$maddNetwork(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->addNetwork(Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mbindToContinuityService(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->bindToContinuityService()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misEnabledContinuitySettings(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isEnabledContinuitySettings()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misFirstConnection(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isFirstConnection(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misSharingRestricted(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isSharingRestricted()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misSupportedNetwork(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isSupportedNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mrequiresScan(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->requiresScan(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$munbind(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->unbind()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->DBG:Z

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
    sput-boolean v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 9

    .line 1
    new-instance v7, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    invoke-direct {v7, p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 3

    .line 2
    const-string v0, "SemWifi.Continuity"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 3
    new-instance p2, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 p2, 0x1

    .line 4
    new-array v0, p2, [Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->mGetWhatToString:Landroid/util/SparseArray;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 8
    iput-object p4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 9
    iput-object p5, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 10
    iput-object p6, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->featureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 11
    iput-object p7, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 12
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->accountManager:Landroid/accounts/AccountManager;

    .line 13
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    .line 14
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->shareableNetworkIds:Ljava/util/Set;

    .line 15
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharedNetworkIds:Ljava/util/Set;

    .line 16
    new-instance p3, Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 17
    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->mUserManager:Landroid/os/UserManager;

    .line 18
    invoke-virtual {p8}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 19
    invoke-virtual {p8}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->scanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 20
    new-instance p1, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;

    invoke-direct {p1, p0, v2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->defaultState:Lcom/android/internal/util/State;

    .line 21
    new-instance p3, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;

    invoke-direct {p3, p0, v2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharingState:Lcom/android/internal/util/State;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 23
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    const/16 p1, 0x32

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setLogRecSize(I)V

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 28
    invoke-virtual {p0, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerNetworkCallback()V

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerWifiConfigListener()V

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerContentObserver()V

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerBroadcast()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)Z
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

.method static synthetic access$700(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addNetwork(Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->hasConfig()Z

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getKey()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, -0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getConfig()Landroid/net/wifi/WifiConfiguration;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->addNetworkPrivileged(Landroid/net/wifi/WifiConfiguration;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eq v3, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->markSharedNetworkId(I)V

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 38
    .line 39
    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 44
    .line 45
    sget-boolean v4, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->DBG:Z

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v5, "already has a network "

    .line 52
    .line 53
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v5, "SemWifi.Continuity"

    .line 64
    .line 65
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->isRequiredForcedConnection()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    if-eq v3, v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->hasTargetDevice()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getTargetDevices()Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->isOwnDevice(Ljava/util/Set;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    :cond_3
    const/16 v1, 0xc

    .line 95
    .line 96
    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    if-nez v0, :cond_5

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->isRequiredForcedConnection()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getConfig()Landroid/net/wifi/WifiConfiguration;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendSaLogging(ZZLandroid/net/wifi/WifiConfiguration;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private bindToContinuityService()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiContinuityService$7;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$7;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->bind(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private getDiffString(J)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sub-long/2addr v0, p1

    .line 8
    const-wide/32 v2, 0x927c0

    .line 9
    .line 10
    .line 11
    cmp-long p0, v0, v2

    .line 12
    .line 13
    if-lez p0, :cond_0

    .line 14
    .line 15
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-wide/16 p1, 0x3e8

    .line 26
    .line 27
    div-long v2, v0, p1

    .line 28
    .line 29
    const-wide/16 v4, 0x3c

    .line 30
    .line 31
    cmp-long v6, v2, v4

    .line 32
    .line 33
    if-lez v6, :cond_1

    .line 34
    .line 35
    div-long v6, v2, v4

    .line 36
    .line 37
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v6, " min "

    .line 41
    .line 42
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    rem-long/2addr v2, v4

    .line 46
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, "."

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    rem-long/2addr v0, p1

    .line 55
    const-string p1, " seconds ago"

    .line 56
    .line 57
    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method private isCaptivePortalOrLockDownNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 p1, 0x1

    .line 12
    const-string v0, "SemWifi.Continuity"

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-boolean p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->DBG:Z

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const-string p0, "do not add captive portal network"

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    return p1

    .line 32
    :cond_1
    if-eqz p0, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    sget-boolean p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->DBG:Z

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    const-string p0, "do not add mdm network"

    .line 45
    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_2
    return p1

    .line 50
    :cond_3
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method private isEnabledContinuitySettings()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "mcf_continuity"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    .line 18
    .line 19
    const-string v2, "multi_control_enabled"

    .line 20
    .line 21
    invoke-virtual {v0, p0, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-ne p0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v3

    .line 29
    :cond_1
    :goto_0
    return v1
.end method

.method private isFirstConnection(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->shareableNetworkIds:Ljava/util/Set;

    .line 9
    .line 10
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    monitor-exit v0

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method private isSharingRestricted()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    const-string v0, "no_sharing_admin_configured_wifi"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method private isSupportedNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isSupported(Landroid/net/wifi/WifiConfiguration;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isCaptivePortalOrLockDownNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method private static synthetic lambda$getSharedReport$1(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$registerWifiConfigListener$0(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    .line 1
    const-string v0, "add a new network "

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isSupportedNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharedNetworkIds:Ljava/util/Set;

    .line 14
    .line 15
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    monitor-exit v1

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v2, "SemWifi.Continuity"

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ":"

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->shareableNetworkIds:Ljava/util/Set;

    .line 63
    .line 64
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 75
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method private registerBroadcast()V
    .locals 10

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v2, Lcom/samsung/android/server/wifi/share/WifiContinuityService$1;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$1;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    .line 28
    .line 29
    new-instance v5, Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;

    .line 30
    .line 31
    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Landroid/content/IntentFilter;

    .line 35
    .line 36
    const-string v0, "com.samsung.android.server.wifi.share.WIFI_PROFILE"

    .line 37
    .line 38
    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const/4 v9, 0x2

    .line 46
    const-string v7, "com.samsung.android.mcfds.permission.START_SERVICE"

    .line 47
    .line 48
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private registerContentObserver()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "mcf_continuity"

    .line 6
    .line 7
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lcom/samsung/android/server/wifi/share/WifiContinuityService$3;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$3;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    .line 27
    .line 28
    const-string v2, "multi_control_enabled"

    .line 29
    .line 30
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private registerNetworkCallback()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "connectivity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 26
    .line 27
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private registerWifiConfigListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkAddedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private requiresScan(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->scanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScannedConfigKeys()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0
.end method

.method private sendSaLogging(ZZLandroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isConnected:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "save but has connection with other"

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p3, "save on wi-fi "

    .line 13
    .line 14
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    const-string p3, "enabled"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p3, "disabled"

    .line 29
    .line 30
    :goto_0
    const-string v0, " status"

    .line 31
    .line 32
    invoke-static {p1, p3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isConnected:Z

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkKey()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    const-string p1, "already saved and has connection with this"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const-string p1, "already saved and has connection with other"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const-string p1, "already saved but no connection"

    .line 70
    .line 71
    :goto_1
    new-instance p3, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v0, "case"

    .line 77
    .line 78
    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string p1, "force"

    .line 82
    .line 83
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 91
    .line 92
    new-instance p1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 93
    .line 94
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p3}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string p2, "autoshare_receive"

    .line 106
    .line 107
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private unbind()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->unbind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    const/16 v0, 0x1f

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "WifiAutoShare:"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getSharedReport()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    const-string v1, " "

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->hasConfig()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getKey()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public getSharedReport()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastSharedConfigInfo:Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const-string v1, "Last shared config: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastSharedConfigInfo:Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastSharedDataTimeMs:J

    .line 23
    .line 24
    cmp-long v1, v4, v2

    .line 25
    .line 26
    if-lez v1, :cond_0

    .line 27
    .line 28
    const-string v1, " at "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastSharedDataTimeMs:J

    .line 34
    .line 35
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getDiffString(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_0
    const-string v1, "\n"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v1

    .line 50
    :try_start_0
    const-string v4, "Received network list:"

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharedNetworkIds:Ljava/util/Set;

    .line 56
    .line 57
    new-instance v5, Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    invoke-direct {v5, v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v4, v5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 63
    .line 64
    .line 65
    const-string v4, "\n"

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastReceivedDataTimeMs:J

    .line 71
    .line 72
    cmp-long v2, v4, v2

    .line 73
    .line 74
    if-lez v2, :cond_2

    .line 75
    .line 76
    const-string v2, "Last received data at "

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastReceivedDataTimeMs:J

    .line 82
    .line 83
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getDiffString(J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p0, "\n"

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->mGetWhatToString:Landroid/util/SparseArray;

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

.method markSharedNetworkId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharedNetworkIds:Ljava/util/Set;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public runForCurrent(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v3, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 19
    .line 20
    invoke-direct {v3, v2, v1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v3, v0}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->setBssid(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->addAllTargets(Ljava/util/Set;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v1, p1

    .line 46
    :goto_1
    const/16 v0, 0x9

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
