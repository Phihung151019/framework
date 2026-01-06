.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;
.super Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;
    }
.end annotation


# static fields
.field static final BASE:I = 0x23000

.field private static final BUNDLE_KEY_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final CMD_DISCOVER_PEERS:I = 0x2300e

.field private static final CMD_REMOVE_P2P_CLIENT:I = 0x2300d

.field private static final CMD_SET_LISTEN_OFFLOADING:I = 0x2300c

.field private static final CMD_SET_MICROSOFT_MICE:I = 0x2300a

.field private static final CMD_SET_SAMSUNG_ACCOUNT:I = 0x2300f

.field private static final CMD_SET_SCREEN_SHARING:I = 0x2300b

.field private static final EVENT_WIFI_P2P_DISABLED:I = 0x23002

.field private static final EVENT_WIFI_P2P_ENABLED:I = 0x23001

.field private static final GROUP_REMOVED_EVENT:I = 0x23004

.field private static final GROUP_STARTED_EVENT:I = 0x23003

.field private static final MAX_NETWORK_NAME_BYTES:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pService"


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mFromDisabled:Z

.field private mGroupConnectedCount:I

.field private mHandler:Landroid/os/Handler;

.field private final mHistoricalDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInUseAware:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInUseP2p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBootComplete:Z

.field private mIsGroupStarted:Z

.field private mIsP2pConnected:Z

.field private mIsP2pSoftApConcurrencySupported:Ljava/lang/Boolean;

.field private mLastGroupConnectionEventTime:J

.field private final mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private mOpenWifiScanTimer:Landroid/os/CountDownTimer;

.field private mP2pFactoryMac:Landroid/net/MacAddress;

.field private mP2pState:I

.field private mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

.field private final mP2pSupported:Z

.field private final mPeers:Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;

.field private mReqBlockWifiScan:Z

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSetWifiScanAutoBlock:Z

.field private mThisDeviceStatus:I

.field private mVerboseLoggingEnabled:Z

.field private mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private final mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiNetworkState:Landroid/net/NetworkInfo$State;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

.field private mWifiState:I


# direct methods
.method public static synthetic $r8$lambda$GHQqKn9MxaFsRdjxb-LR86Q3MK0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->lambda$isAllowedPackageForNextAction$3(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$RoRaxUPW2pE1m2t3qvpZKc_7SOI(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->lambda$registerReceiver$2(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$dNKDBXtAfk-yzHAPwDSQZFKMEkY(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->lambda$handleP2pServiceReady$0(Landroid/os/HandlerThread;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$qIEFdCBRjP1XI1_gEWJX0XmofTc(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->lambda$handleBootCompleted$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmChannel(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFromDisabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFromDisabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupConnectedCount(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mGroupConnectedCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGroupStarted(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsGroupStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsP2pConnected(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsP2pConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastGroupConnectionEventTime(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mLastGroupConnectionEventTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenWifiScanTimer(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/os/CountDownTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mOpenWifiScanTimer:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pStateMachine(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPeers(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mPeers:Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetWifiScanAutoBlock(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSetWifiScanAutoBlock:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiD2dSaLoggingHandler(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNetworkState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/net/NetworkInfo$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiP2pManager(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiP2pPowerSave(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFromDisabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFromDisabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGroupConnectedCount(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mGroupConnectedCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGroupStarted(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsGroupStarted:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsP2pConnected(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsP2pConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastGroupConnectionEventTime(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mLastGroupConnectionEventTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmP2pState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pState:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetWifiScanAutoBlock(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSetWifiScanAutoBlock:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiNetworkState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Landroid/net/NetworkInfo$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleThisDeviceStatus(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->handleThisDeviceStatus(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misAwareOnOrP2pOn(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->isAwareOnOrP2pOn()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misMacAddress(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->isMacAddress(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$msetDeviceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setDeviceName()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetLegacyScanningEnable(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setLegacyScanningEnable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetLegacyScanningEnableForced(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setLegacyScanningEnableForced(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$msetP2pEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setP2pEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pState:I

    .line 9
    .line 10
    iput v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiState:I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 14
    .line 15
    new-instance v3, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;

    .line 16
    .line 17
    invoke-direct {v3}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mPeers:Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mReqBlockWifiScan:Z

    .line 23
    .line 24
    iput-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mOpenWifiScanTimer:Landroid/os/CountDownTimer;

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSetWifiScanAutoBlock:Z

    .line 27
    .line 28
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 34
    .line 35
    new-instance v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 41
    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    iput v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mThisDeviceStatus:I

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFromDisabled:Z

    .line 53
    .line 54
    iput-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsP2pSoftApConcurrencySupported:Ljava/lang/Boolean;

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsP2pConnected:Z

    .line 57
    .line 58
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiNetworkState:Landroid/net/NetworkInfo$State;

    .line 61
    .line 62
    const-wide/16 v1, -0x1

    .line 63
    .line 64
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mLastGroupConnectionEventTime:J

    .line 65
    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mGroupConnectedCount:I

    .line 67
    .line 68
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiD2dSaLoggingHandler()Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "android.hardware.wifi.direct"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pSupported:Z

    .line 101
    .line 102
    const-string v0, "wifi"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 111
    .line 112
    const-string v0, "sem_wifi"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 121
    .line 122
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 123
    .line 124
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    const-string v0, "android.hardware.wifi.aware"

    .line 134
    .line 135
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_0

    .line 140
    .line 141
    const-string p2, "wifiaware"

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    check-cast p2, Landroid/net/wifi/aware/WifiAwareManager;

    .line 148
    .line 149
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 150
    .line 151
    :cond_0
    const-string p2, "wifinl80211"

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 158
    .line 159
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 160
    .line 161
    return-void
.end method

.method private addHistoricalDumpLog(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x64

    .line 24
    .line 25
    if-le v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Time: "

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " "

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, "\n"

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private cutStringByByte(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    array-length v0, p1

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-char v3, p1, v1

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    array-length v4, v4

    .line 28
    add-int/2addr v2, v4

    .line 29
    if-le v2, p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private enforceAccessPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 4
    .line 5
    const-string v1, "SemWifiP2pService"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private enforceChangePermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    .line 4
    .line 5
    const-string v1, "SemWifiP2pService"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private enforceLocalMacAddressPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.LOCAL_MAC_ADDRESS"

    .line 4
    .line 5
    const-string v1, "SemWifiP2pService"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private enforceNetworkSettingsPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.NETWORK_SETTINGS"

    .line 4
    .line 5
    const-string v1, "SemWifiP2pService"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private getDeviceNameForNetwork(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->cutStringByByte(Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private handleThisDeviceStatus(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mThisDeviceStatus:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "handleThisDeviceStatus: "

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SemWifiP2pService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_1
    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mThisDeviceStatus:I

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 27
    .line 28
    const p1, 0x23001

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const/4 v0, 0x4

    .line 36
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 39
    .line 40
    const p1, 0x23002

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    return-void
.end method

.method private handleWifiState(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "handleWifiState: "

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SemWifiP2pService"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiState:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    const-string p1, "all"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->unsetAllInUsePackage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setLegacyScanningEnableForced(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private insertColonsForMacFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x3a

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x3

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private isAllowedPackageForNextAction(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v3, "com.android.bluetooth"

    .line 2
    .line 3
    const-string v4, "com.samsung.android.mcfserver"

    .line 4
    .line 5
    const-string v0, "smartView"

    .line 6
    .line 7
    const-string v1, "com.samsung.android.smartmirroring"

    .line 8
    .line 9
    const-string v2, "com.samsung.android.mdx.kit"

    .line 10
    .line 11
    const-string v5, "com.samsung.sept.WIFI"

    .line 12
    .line 13
    const-string v6, "com.samsung.android.secondscreen"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method private isAwareOnOrP2pOn()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareManager;->isDeviceAttached()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pState:I

    .line 14
    .line 15
    if-eq p0, v1, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method private isMacAddress(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, "([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}"

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
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private synthetic lambda$handleBootCompleted$1()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->registerReceiver()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setP2pFactoryMacAddress()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->registerContentObserver()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$handleP2pServiceReady$0(Landroid/os/HandlerThread;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pSupported:Z

    .line 8
    .line 9
    const-string v2, "SemWifiP2pService"

    .line 10
    .line 11
    invoke-direct {v0, p0, v2, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static synthetic lambda$isAllowedPackageForNextAction$3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private synthetic lambda$registerReceiver$2(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->handleWifiState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private registerContentObserver()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "sem_wifi_disable_scan_for_d2d"

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "SemWifiP2pService"

    .line 13
    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->getDefaultScanAutoBlockValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSetWifiScanAutoBlock:Z

    .line 21
    .line 22
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v3, v4, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "set default value - mSetWifiScanAutoBlock: "

    .line 32
    .line 33
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSetWifiScanAutoBlock:Z

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-virtual {v0, v3, v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v3, 0x0

    .line 58
    if-ne v0, v4, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v4, v3

    .line 62
    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSetWifiScanAutoBlock:Z

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v4, "registerContentObserver - mSetWifiScanAutoBlock: "

    .line 67
    .line 68
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSetWifiScanAutoBlock:Z

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v4, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$2;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-direct {v4, p0, v5}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$2;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Landroid/os/Handler;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$3;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$3;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->registerListener()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroid/content/IntentFilter;

    .line 34
    .line 35
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 36
    .line 37
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$5;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$5;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/content/IntentFilter;

    .line 51
    .line 52
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 53
    .line 54
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$6;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$6;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    .line 65
    .line 66
    .line 67
    new-instance p0, Landroid/content/IntentFilter;

    .line 68
    .line 69
    const-string v2, "com.android.settings.DEVICE_NAME_CHANGED"

    .line 70
    .line 71
    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private setDeviceName()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v2, "device_name"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->getDeviceNameForNetwork(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$7;

    .line 36
    .line 37
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$7;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method private setLegacyScanningEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isScanningEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "SemWifiP2pService"

    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "setLegacyScanningEnable: false"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mReqBlockWifiScan:Z

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    if-eqz p1, :cond_4

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mReqBlockWifiScan:Z

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const-string v0, "setLegacyScanningEnable: true"

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_3
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mReqBlockWifiScan:Z

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    return-void
.end method

.method private setLegacyScanningEnableForced(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "setLegacyScanningEnableForced: "

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SemWifiP2pService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private setP2pEnabled(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setP2pEnabled()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setP2pDisabled()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private setP2pFactoryMacAddress()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    const-string v1, "SemWifiP2pService"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "mSemWifiManager is null"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string p0, "macAddress is null!"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const-string v2, ":|-|\\.|\\s"

    .line 26
    .line 27
    const-string v3, ""

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/16 v4, 0xc

    .line 38
    .line 39
    if-ne v3, v4, :cond_2

    .line 40
    .line 41
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->insertColonsForMacFormat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->isMacAddress(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    const-string p0, "wrong address : "

    .line 52
    .line 53
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v2, 0x0

    .line 66
    aget-byte v3, v0, v2

    .line 67
    .line 68
    or-int/lit8 v3, v3, 0x2

    .line 69
    .line 70
    int-to-byte v3, v3

    .line 71
    aput-byte v3, v0, v2

    .line 72
    .line 73
    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pFactoryMac:Landroid/net/MacAddress;

    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "mP2pFactoryMac: "

    .line 86
    .line 87
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pFactoryMac:Landroid/net/MacAddress;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method

.method private setPropForP2pInuse(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "com.sec.android.easyMover"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setSmartSwitchOn()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private unsetPropForP2pInuse(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "all"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "com.sec.android.easyMover"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setSmartSwitchOff()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public controlOpenWifiScanTimer(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mOpenWifiScanTimer:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string p0, "SemWifiP2pService"

    .line 21
    .line 22
    const-string p1, "mOpenWifiScanTimer is null or control value is wrong"

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public disconnectApBlockAutojoin(Z)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 20
    .line 21
    xor-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->allowAutojoinGlobal(Z)V

    .line 24
    .line 25
    .line 26
    return v0
.end method

.method public discoverPeers(ILcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 8
    .line 9
    const v0, 0x2300e

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "Internal API call history"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p3, "mInUseP2p :"

    .line 23
    .line 24
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p3}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p3, "mInUseAware :"

    .line 46
    .line 47
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {p3}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p3, "mLastGroupConnectionEventTime : "

    .line 69
    .line 70
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance p3, Ljava/text/SimpleDateFormat;

    .line 74
    .line 75
    const-string v0, "MM-dd HH:mm:ss.SSS "

    .line 76
    .line 77
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 78
    .line 79
    invoke-direct {p3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/util/Date;

    .line 83
    .line 84
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mLastGroupConnectionEventTime:J

    .line 85
    .line 86
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string p1, "GOPS history"

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->getDumpGoPowerSave()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p3, "isP2pSoftApConcurrencySupported: "

    .line 124
    .line 125
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->isP2pSoftApConcurrencySupported()Z

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string p3, "mSetWifiScanAutoBlock: "

    .line 145
    .line 146
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mSetWifiScanAutoBlock:Z

    .line 150
    .line 151
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public factoryReset()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "factoryReset called from "

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "SemWifiP2pService"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isPlatformSigned(Landroid/content/Context;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceNetworkSettingsPermission()V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 47
    .line 48
    new-instance v4, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$8;

    .line 49
    .line 50
    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$8;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->factoryReset(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public getChannelsMhzForBand(I)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getInUsePackageList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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
    return-object v1

    .line 9
    :cond_0
    const-string v0, "p2p"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    const-string v0, "aware"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    return-object v1
.end method

.method public getP2pFactoryMacAddress()Landroid/net/MacAddress;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceLocalMacAddressPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pFactoryMac:Landroid/net/MacAddress;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setP2pFactoryMacAddress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pFactoryMac:Landroid/net/MacAddress;

    .line 25
    .line 26
    return-object p0
.end method

.method public getP2pFeature()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "SemWifiP2pService"

    .line 14
    .line 15
    const-string v2, "versionProvider is not ready, awake"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getDriverFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isP2pSupported()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getP2pFeature()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    return-wide v0

    .line 40
    :cond_1
    const-wide/16 v0, 0x0

    .line 41
    .line 42
    return-wide v0
.end method

.method public getSemWifiP2pDevice(Ljava/lang/String;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mPeers:Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->get(Ljava/lang/String;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public handleBootCompleted()V
    .locals 8

    .line 1
    const-string v0, "SemWifiP2pService"

    .line 2
    .line 3
    const-string v1, "handleBootCompleted"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mVerboseLoggingEnabled:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiState:I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsBootComplete:Z

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mLastGroupConnectionEventTime:J

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda1;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mOpenWifiScanTimer:Landroid/os/CountDownTimer;

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    new-instance v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$1;

    .line 48
    .line 49
    const-wide/16 v4, 0x7530

    .line 50
    .line 51
    const-wide/16 v6, 0x1388

    .line 52
    .line 53
    move-object v3, p0

    .line 54
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$1;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;JJ)V

    .line 55
    .line 56
    .line 57
    iput-object v2, v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mOpenWifiScanTimer:Landroid/os/CountDownTimer;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v3, p0

    .line 61
    :goto_0
    iget-object p0, v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    const-string v1, "wifip2p"

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 70
    .line 71
    iput-object p0, v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 72
    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    iget-object v1, v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0, v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    iput-object p0, v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 87
    .line 88
    if-nez p0, :cond_1

    .line 89
    .line 90
    const-string p0, "Failed to set up connection with wifi p2p service"

    .line 91
    .line 92
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    iput-object v4, v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 96
    .line 97
    :cond_1
    return-void

    .line 98
    :cond_2
    const-string p0, "mWifiP2pManager is null"

    .line 99
    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public handleP2pServiceReady(Landroid/os/HandlerThread;)V
    .locals 2

    .line 1
    const-string v0, "SemWifiP2pService"

    .line 2
    .line 3
    const-string v1, "handleP2pServiceReady"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pSupported:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Landroid/os/HandlerThread;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsBootComplete:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "SemWifiP2pService"

    .line 6
    .line 7
    const-string p1, "Received shell command when boot is not complete!"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    move-object v1, p0

    .line 34
    move-object v5, p4

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public isP2pConnected()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsP2pConnected:Z

    .line 5
    .line 6
    return p0
.end method

.method public isP2pSoftApConcurrencySupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsP2pSoftApConcurrencySupported:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiP2pNative()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->isP2pSoftApConcurrencySupported()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsP2pSoftApConcurrencySupported:Ljava/lang/Boolean;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mIsP2pSoftApConcurrencySupported:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x2300d

    .line 12
    .line 13
    .line 14
    iput v1, v0, Landroid/os/Message;->what:I

    .line 15
    .line 16
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v1, "device_address"

    .line 23
    .line 24
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setAwareEnabled(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setAwareEnabled()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mWifiP2pPowerSave:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setAwareDisabled()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const-string v0, "android"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v1, "empty"

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    move-object p2, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object p2, p3

    .line 34
    :cond_2
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const-string v0, "SemWifiP2pService"

    .line 39
    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    const-string p0, "setInUsePackage error, package is wrong"

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    const-string p3, "p2p"

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_4

    .line 55
    .line 56
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p3, :cond_4

    .line 59
    .line 60
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-nez p3, :cond_4

    .line 65
    .line 66
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setPropForP2pInuse(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    const-string p3, "aware"

    .line 76
    .line 77
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_5

    .line 82
    .line 83
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 84
    .line 85
    if-eqz p3, :cond_5

    .line 86
    .line 87
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-nez p3, :cond_5

    .line 92
    .line 93
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    .line 99
    .line 100
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->isAllowedPackageForNextAction(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-eqz p3, :cond_6

    .line 105
    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v1, "setInUsePackage executes nextAction, reqNextAction: "

    .line 109
    .line 110
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, " packageName: "

    .line 117
    .line 118
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    const/4 p3, 0x0

    .line 132
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setLegacyScanningEnableForced(Z)V

    .line 133
    .line 134
    .line 135
    :cond_6
    const-string p3, "setInUsePackage: type="

    .line 136
    .line 137
    const-string v0, " packageName="

    .line 138
    .line 139
    const-string v1, " reqNextAction="

    .line 140
    .line 141
    invoke-static {p3, p1, v0, p2, v1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->addHistoricalDumpLog(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_7
    :goto_2
    return-void
.end method

.method public setListenOffloading(IIII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "channel"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const-string p1, "period"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "interval"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string p1, "count"

    .line 28
    .line 29
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 33
    .line 34
    const p1, 0x2300c

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x2300a

    .line 12
    .line 13
    .line 14
    iput v1, v0, Landroid/os/Message;->what:I

    .line 15
    .line 16
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 17
    .line 18
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    new-instance p1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p2, "MICE_IP"

    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setPreparedAccountPin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x2300f

    .line 12
    .line 13
    .line 14
    iput v1, v0, Landroid/os/Message;->what:I

    .line 15
    .line 16
    iput-object p6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    new-instance p6, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 27
    .line 28
    const-string v1, "TYPE"

    .line 29
    .line 30
    invoke-virtual {p6, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string p1, "PIN"

    .line 34
    .line 35
    invoke-virtual {p6, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "DATA"

    .line 39
    .line 40
    invoke-virtual {p6, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "IV"

    .line 44
    .line 45
    invoke-virtual {p6, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "ACCOUNT"

    .line 49
    .line 50
    invoke-virtual {p6, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public setScreenSharing(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->enforceChangePermission()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mP2pStateMachine:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 8
    .line 9
    const v0, 0x2300b

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public unsetAllInUsePackage(Ljava/lang/String;)V
    .locals 2

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
    return-void

    .line 8
    :cond_0
    const-string v0, "all"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const-string v1, "p2p"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->unsetPropForP2pInuse(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    const-string v0, "aware"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-lez v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    .line 70
    .line 71
    :cond_4
    const-string v0, "unsetAllInUsePackage: type="

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->addHistoricalDumpLog(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public unsetInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const-string v0, "android"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v1, "empty"

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    move-object p2, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object p2, p3

    .line 34
    :cond_2
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const-string v0, "SemWifiP2pService"

    .line 39
    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    const-string p0, "unsetInUsePackage error, package is wrong"

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    const-string p3, "p2p"

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_4

    .line 55
    .line 56
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p3, :cond_4

    .line 59
    .line 60
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-lez p3, :cond_4

    .line 65
    .line 66
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_4

    .line 73
    .line 74
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseP2p:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->unsetPropForP2pInuse(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const-string p3, "aware"

    .line 84
    .line 85
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-eqz p3, :cond_5

    .line 90
    .line 91
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 92
    .line 93
    if-eqz p3, :cond_5

    .line 94
    .line 95
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    if-lez p3, :cond_5

    .line 100
    .line 101
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_5

    .line 108
    .line 109
    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->mInUseAware:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    .line 115
    .line 116
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->isAllowedPackageForNextAction(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_6

    .line 121
    .line 122
    new-instance p3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "unsetInUsePackage executes nextAction, reqNextAction: "

    .line 125
    .line 126
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, " packageName: "

    .line 133
    .line 134
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const/4 p3, 0x1

    .line 148
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->setLegacyScanningEnableForced(Z)V

    .line 149
    .line 150
    .line 151
    :cond_6
    const-string p3, "unsetInUsePackage: type="

    .line 152
    .line 153
    const-string v0, " packageName="

    .line 154
    .line 155
    const-string v1, " reqNextAction="

    .line 156
    .line 157
    invoke-static {p3, p1, v0, p2, v1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->addHistoricalDumpLog(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_7
    :goto_2
    return-void
.end method
