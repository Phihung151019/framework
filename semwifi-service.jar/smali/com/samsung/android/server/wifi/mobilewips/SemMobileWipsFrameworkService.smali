.class public Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;,
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;,
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;
    }
.end annotation


# static fields
.field private static final EMERGENCY_STATE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

.field public static final ENABLE_UNIFIED_HQM_SERVER:Z = true

.field private static final EVENT_BCN_ABORT:I = 0x3ec

.field private static final EVENT_BCN_INTERVAL:I = 0x3eb

.field private static final EVENT_SEND_SAVED_DATA:I = 0x3ee

.field private static final EVENT_START_SERVICE:I = 0x3e9

.field private static final EVENT_STOP_SERVICE:I = 0x3ea

.field private static final EVENT_WIPS_MONITOR:I = 0x3ed

.field private static final HOTSPOT_NETWORK_MASK:[I

.field private static final MAX_RETRY_COUNT:I = 0x2

.field private static final MOBILEWIPS_DEFAULT_MIN_RAMSIZE:I = 0x349238

.field private static final MOBILEWIPS_DEFAULT_MIN_RAMSIZE_GUARD:I = 0xf4240

.field private static final MWIPS_FRAMEWORK_VERSION:I = 0x1

.field private static final MWIPS_PACKAGE:Ljava/lang/String; = "com.samsung.android.server.wifi.mobilewips"

.field private static final MWIPS_SERVICE:Ljava/lang/String; = "com.samsung.android.server.wifi.mobilewips.SemMobileWipsService"

.field private static final SEEN_TIME:Ljava/lang/String; = "seen_time"

.field private static final SERVICE_START_DELAY:I = 0xbb8

.field private static final SERVICE_START_DELAY_BOOT_COMPLTED:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SemMobileWipsFrameworkService"

.field private static final URI_CONTENT_MOBILE_WIPS_DETECTION_LIST:Ljava/lang/String; = "content://com.samsung.android.server.wifi.mobilewips/detection"

.field private static final WIPS_GOING_OFF:I = 0x2

.field private static final WIPS_GOING_ON:I = 0x3

.field private static final WIPS_MONITOR_INTERVAL:I = 0xbb8

.field private static final WIPS_OFF:I = 0x0

.field private static final WIPS_ON:I = 0x1


# instance fields
.field private final ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

.field private final defaultMobileWips:I

.field private isJDMDevice:Z

.field private mBootCompleted:Z

.field private final mBroadcastReceiverPackage:Landroid/content/BroadcastReceiver;

.field private mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDnsRequester:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHandler:Landroid/os/Handler;

.field private final mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

.field private mIsConnected:Z

.field private final mMobileWipsDetectionBssidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

.field mPacketSenderFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;

.field private mRetrycount:I

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mSemHqmManager:Landroid/os/SemHqmManager;

.field private final mSemMobileWipsNetdEvent:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

.field private mSemMobileWipsWifiScanner:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

.field private mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private mWifiStateListeners:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private mWipsDetectionsChangedCallback:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;

.field mWipsFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsFramework;

.field private final mWipsObserver:Landroid/database/ContentObserver;

.field private mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

.field private final mWipsThread:Landroid/os/HandlerThread;

.field private mWipsValue:I


# direct methods
.method public static synthetic $r8$lambda$C9YmOvcnZT17etdzus9XFFnjNn4(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->lambda$setWipsValue$1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$qJ8SX198k15FfxN82YuNoPcfKn4(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->lambda$registerReceiver$0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBootCompleted:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mConnection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDnsRequester(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mDnsRequester:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsConnected(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mIsConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetrycount(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mRetrycount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemHqmManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/os/SemHqmManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemMobileWipsNetdEvent(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemMobileWipsNetdEvent:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemMobileWipsWifiScanner:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/wifi/WifiScanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWipsServiceHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWipsValue(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsConnected(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mIsConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetrycount(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mRetrycount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Lcom/samsung/android/wifi/ISemMobileWipsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWipsValue(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWipsPid(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getWipsPid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misWipsOn(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isWipsOn()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$msendEmptyMessage(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .locals 1

    .line 1
    const/16 v0, 0x3ee

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessage(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic -$$Nest$msendEmptyMessageDelayed(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .locals 2

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessageDelayed(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessage(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentBss(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Lcom/samsung/android/server/wifi/halclient/BssInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setCurrentBss(Lcom/samsung/android/server/wifi/halclient/BssInfo;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mturnOffWips(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOffWips()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mturnOnWips(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOnWips()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mturnOnWips$1(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .locals 1

    .line 1
    const/16 v0, 0xbb8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOnWips(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMobileWipsDetectionList(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->updateMobileWipsDetectionList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetHOTSPOT_NETWORK_MASK()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->HOTSPOT_NETWORK_MASK:[I

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x2ba8c0

    .line 2
    .line 3
    .line 4
    const v1, 0xa14ac

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->HOTSPOT_NETWORK_MASK:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isJDMDevice:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mMobileWipsDetectionBssidList:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$1;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$1;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsObserver:Landroid/database/ContentObserver;

    .line 26
    .line 27
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$2;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$2;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBroadcastReceiverPackage:Landroid/content/BroadcastReceiver;

    .line 33
    .line 34
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mPacketSenderFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    .line 45
    .line 46
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsFramework;

    .line 52
    .line 53
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mConnection:Landroid/content/ServiceConnection;

    .line 59
    .line 60
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 66
    .line 67
    const-string v2, "SemMobileWipsFrameworkService"

    .line 68
    .line 69
    const-string v3, "SemMobileWipsFrameworkService::Start"

    .line 70
    .line 71
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mHandler:Landroid/os/Handler;

    .line 77
    .line 78
    iput-object p3, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 79
    .line 80
    iput-object p4, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 81
    .line 82
    iput-object p9, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 83
    .line 84
    iput-object p5, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 85
    .line 86
    iput-object p6, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 87
    .line 88
    iput-object p7, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 89
    .line 90
    iput-object p8, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->checkDefaultMobileWips()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    iput p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->defaultMobileWips:I

    .line 97
    .line 98
    const-string p2, "HqmManagerService"

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Landroid/os/SemHqmManager;

    .line 105
    .line 106
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 107
    .line 108
    new-instance p2, Landroid/os/HandlerThread;

    .line 109
    .line 110
    invoke-direct {p2, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsThread:Landroid/os/HandlerThread;

    .line 114
    .line 115
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 116
    .line 117
    .line 118
    new-instance p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p3, p0, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/os/Looper;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setSemMobileWipsServiceHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;)V

    .line 128
    .line 129
    .line 130
    new-instance p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 131
    .line 132
    invoke-direct {p2, v1, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;-><init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemMobileWipsNetdEvent:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 136
    .line 137
    new-instance p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    .line 138
    .line 139
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    .line 143
    .line 144
    new-instance p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    .line 145
    .line 146
    invoke-direct {p3, v1, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;-><init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;)V

    .line 147
    .line 148
    .line 149
    iput-object p3, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mDnsRequester:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    .line 150
    .line 151
    new-instance p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    .line 152
    .line 153
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V

    .line 154
    .line 155
    .line 156
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getWipsValue()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    iput p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    .line 163
    .line 164
    iput v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mRetrycount:I

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string p2, "content://com.samsung.android.server.wifi.mobilewips/detection"

    .line 171
    .line 172
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    new-instance p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$7;

    .line 177
    .line 178
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 179
    .line 180
    .line 181
    move-result-object p4

    .line 182
    invoke-direct {p3, p0, p4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$7;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/os/Handler;)V

    .line 183
    .line 184
    .line 185
    const/4 p4, 0x1

    .line 186
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->registerForBroadcastsForWifiWIPS()V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method private checkDefaultMobileWips()I
    .locals 4

    .line 1
    const-string v0, "wifi_mwips"

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getDefaultWips()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :catch_0
    const-string v2, "SemMobileWipsFrameworkService"

    .line 18
    .line 19
    const-string v3, "SettingNotFoundException, Set default Setting"

    .line 20
    .line 21
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v2, p0, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 29
    .line 30
    .line 31
    return v1
.end method

.method private checkMwipsPackageVersion()Z
    .locals 4

    .line 1
    const-string v0, "SemMobileWipsFrameworkService"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/4 v2, -0x1

    .line 14
    :try_start_0
    const-string v3, "com.samsung.android.server.wifi.mobilewips"

    .line 15
    .line 16
    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    const p0, 0x5f5e100

    .line 25
    .line 26
    .line 27
    if-lt v2, p0, :cond_1

    .line 28
    .line 29
    const p0, 0xbebc200

    .line 30
    .line 31
    .line 32
    if-ge v2, p0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "MobileWips package version missmatch, mwips "

    .line 43
    .line 44
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " framework 1"

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :catch_1
    const-string p0, "MobileWips package not installed"

    .line 64
    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v1
.end method

.method private clearWipsServiceStatusEvent()V
    .locals 2

    .line 1
    const-string v0, "SemMobileWipsFrameworkService"

    .line 2
    .line 3
    const-string v1, "clearWipsServiceStatusEvent2"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private getDefaultWips()I
    .locals 4

    .line 1
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/32 v2, 0x43d478

    .line 14
    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-ltz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isDefaultWipsSettingEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    const-string v0, "MobileWips default feature value : "

    .line 30
    .line 31
    const-string v1, "SemMobileWipsFrameworkService"

    .line 32
    .line 33
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return p0
.end method

.method private getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method private getWipsPid()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "activity"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 36
    .line 37
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "com.samsung.android.server.wifi.mobilewips"

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 48
    .line 49
    return p0

    .line 50
    :cond_1
    const/4 p0, -0x1

    .line 51
    return p0
.end method

.method private hasWifiWIPSPermission(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "com.samsung.permission.WIFI_WIPS"

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static isMaintenanceMode()Z
    .locals 2

    .line 1
    const-string v0, "persist.sys.is_in_maintenance_mode"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method private isWipsOn()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getWipsPid()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, -0x1

    .line 15
    if-le p0, v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method private synthetic lambda$registerReceiver$0(II)V
    .locals 1

    .line 1
    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mIsConnected:Z

    .line 3
    .line 4
    const/4 p2, 0x3

    .line 5
    const-string v0, "SemMobileWipsFrameworkService"

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    const-string p1, "Wifi enabled, try to start wips service"

    .line 10
    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOnWips()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 p2, 0x1

    .line 19
    if-ne p1, p2, :cond_1

    .line 20
    .line 21
    const-string p1, "Wifi disabled"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOffWips()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private synthetic lambda$setWipsValue$1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "wifi_mwips"

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private removeMessages(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private sendEmptyMessage(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private sendEmptyMessageDelayed(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 2
    .line 3
    int-to-long v0, p2

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setCurrentBss(Lcom/samsung/android/server/wifi/halclient/BssInfo;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v6

    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    :try_start_0
    const-string v1, ""

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    new-array v5, p0, [B

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/wifi/ISemMobileWipsService;->setCurrentBss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    move-object p0, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    new-array v12, v0, [B

    .line 34
    .line 35
    move v0, v6

    .line 36
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ge v0, v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p1, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/Byte;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    aput-byte v1, v12, v0

    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    return v6

    .line 70
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    .line 71
    .line 72
    iget-object v8, p1, Lcom/samsung/android/server/wifi/halclient/BssInfo;->bssid:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    iget v11, p1, Lcom/samsung/android/server/wifi/halclient/BssInfo;->frequency:I

    .line 83
    .line 84
    invoke-interface/range {v7 .. v12}, Lcom/samsung/android/wifi/ISemMobileWipsService;->setCurrentBss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Z

    .line 85
    .line 86
    .line 87
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return p0

    .line 89
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    return v6
.end method

.method private turnOffWips()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBootCompleted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "SemMobileWipsFrameworkService"

    .line 6
    .line 7
    const-string v0, "booting not completed"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->clearWipsServiceStatusEvent()V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessage(I)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x3ed

    .line 22
    .line 23
    const/16 v1, 0xbb8

    .line 24
    .line 25
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessageDelayed(II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private turnOnWips()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOnWips(I)V

    return-void
.end method

.method private turnOnWips(I)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    const-string v1, "SemMobileWipsFrameworkService"

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBootCompleted:Z

    if-nez v0, :cond_1

    .line 4
    const-string p0, "booting not completed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->checkMwipsPackageVersion()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    const-string v0, "com.samsung.android.server.wifi.mobilewips"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->hasWifiWIPSPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    const-string p0, "com.samsung.android.server.wifi.mobilewips does not have valid permission"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 9
    const-string p0, "wifi is turned off, do not turn on wips"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->clearWipsServiceStatusEvent()V

    const/16 v0, 0x3e9

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessageDelayed(II)V

    add-int/lit16 p1, p1, 0xbb8

    const/16 v0, 0x3ed

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessageDelayed(II)V

    return-void

    .line 13
    :cond_5
    :goto_0
    const-string p0, "wips disabled, do not start service"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateMobileWipsDetectionList()V
    .locals 10

    .line 1
    const-string v1, "Error to close cursor"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mMobileWipsDetectionBssidList:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isSupportMobileWips()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "SemMobileWipsFrameworkService"

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v0, "content://com.samsung.android.server.wifi.mobilewips/detection"

    .line 24
    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v0, "mac_addr"

    .line 30
    .line 31
    const-string v6, "ssid_name"

    .line 32
    .line 33
    const-string v7, "time_stamp"

    .line 34
    .line 35
    const-string v8, "seen_time"

    .line 36
    .line 37
    const-string v9, "attack_type"

    .line 38
    .line 39
    filled-new-array {v0, v6, v7, v8, v9}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v4, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mMobileWipsDetectionBssidList:Ljava/util/Set;

    .line 67
    .line 68
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object p0, v0

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    const-string v0, "MobileWipsDetection List is empty"

    .line 79
    .line 80
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    :cond_1
    if-eqz v3, :cond_3

    .line 84
    .line 85
    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :catch_0
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :catch_1
    :try_start_2
    const-string v0, "Error to get MobileWips detection list"

    .line 94
    .line 95
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :goto_2
    if-eqz v3, :cond_2

    .line 102
    .line 103
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :catch_2
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_3
    throw p0

    .line 111
    :cond_3
    :goto_4
    const-string v0, "Notify MobileWips DetectionList"

    .line 112
    .line 113
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsDetectionsChangedCallback:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;

    .line 117
    .line 118
    if-eqz p0, :cond_4

    .line 119
    .line 120
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;->onWipsDetectionsListChanged()V

    .line 121
    .line 122
    .line 123
    :cond_4
    return-void
.end method


# virtual methods
.method public beaconAbort(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x3ec

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "iface"

    .line 15
    .line 16
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "abortReason"

    .line 20
    .line 21
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public beaconInterval(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x3eb

    .line 6
    .line 7
    iput v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getWipsNetworks()Ljava/util/Set;
    .locals 1
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mMobileWipsDetectionBssidList:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected getWipsValue()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isSupportMobileWips()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v2, "wifi_mwips"

    .line 12
    .line 13
    iget p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->defaultMobileWips:I

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

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

.method public isDefaultWipsSettingEnabled()Z
    .locals 3

    .line 1
    const-string p0, "ro.carrier"

    .line 2
    .line 3
    const-string v0, "Unknown"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "wifi-only"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x1

    .line 20
    const-string v1, "SemMobileWipsFrameworkService"

    .line 21
    .line 22
    if-nez p0, :cond_3

    .line 23
    .line 24
    const-string p0, "ro.radio.noril"

    .line 25
    .line 26
    const-string v2, "no"

    .line 27
    .line 28
    invoke-static {p0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v2, "yes"

    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Carrier Model Operator Name = "

    .line 48
    .line 49
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const-string p0, "VZW"

    .line 67
    .line 68
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_2

    .line 77
    .line 78
    const-string p0, "VPP"

    .line 79
    .line 80
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_2

    .line 89
    .line 90
    const-string p0, "CCT"

    .line 91
    .line 92
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    return v0

    .line 104
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 105
    return p0

    .line 106
    :cond_3
    :goto_1
    const-string p0, "WI-Fi only model"

    .line 107
    .line 108
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return v0
.end method

.method public isSupportMobileWips()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isWipsEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isJDMDevice:Z

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isMaintenanceMode()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

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

.method public isWipsEnable()Z
    .locals 3

    .line 1
    const-string p0, "ro.carrier"

    .line 2
    .line 3
    const-string v0, "Unknown"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "wifi-only"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x1

    .line 20
    const-string v1, "SemMobileWipsFrameworkService"

    .line 21
    .line 22
    if-nez p0, :cond_3

    .line 23
    .line 24
    const-string p0, "ro.radio.noril"

    .line 25
    .line 26
    const-string v2, "no"

    .line 27
    .line 28
    invoke-static {p0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v2, "yes"

    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Carrier Model Operator Name = "

    .line 48
    .line 49
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const-string p0, "ATT"

    .line 67
    .line 68
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_2

    .line 77
    .line 78
    const-string p0, "AIO"

    .line 79
    .line 80
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_2

    .line 89
    .line 90
    const-string p0, "APP"

    .line 91
    .line 92
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    return v0

    .line 104
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 105
    return p0

    .line 106
    :cond_3
    :goto_1
    const-string p0, "WI-Fi only model"

    .line 107
    .line 108
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return v0
.end method

.method public notifyAssociated(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "wlan0"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public notifyCaptivePortalNetwork()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xe

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public notifyDisconnect(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "wlan0"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public notifyL2Connected(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "wlan0"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    .line 10
    .line 11
    const/16 v0, 0x11

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public notifyL3Connected(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "wlan0"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public notifyRoaming(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "wlan0"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    .line 10
    .line 11
    const/16 v0, 0x9

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public notifyRoamingStart(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "wlan0"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    .line 10
    .line 11
    const/16 v0, 0x18

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public notifyValidateState(Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xe

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public declared-synchronized onBootPhase()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemMobileWipsWifiScanner:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;-><init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Landroid/net/wifi/WifiScanner;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->setInterfaceName(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    .line 57
    .line 58
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBootCompleted:Z

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->updateMobileWipsDetectionList()V

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x1388

    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOnWips(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw v0
.end method

.method public onDnsResponses(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/wifi/ISemMobileWipsService;->onDnsResponses(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onScanResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/wifi/ISemMobileWipsService;->onScanResults(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public registerForBroadcastsForWifiWIPS()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->registerReceiver()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->registerPackageReceiver()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public registerPackageReceiver()V
    .locals 7

    .line 1
    new-instance v2, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "package"

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "com.samsung.android.server.wifi.mobilewips"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual {v2, v0, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBroadcastReceiverPackage:Landroid/content/BroadcastReceiver;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "wifi_mwips"

    .line 44
    .line 45
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsObserver:Landroid/database/ContentObserver;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public registerReceiver()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiStateListeners:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public registerWipsDetectionsChangedCallback(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsDetectionsChangedCallback:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;

    .line 2
    .line 3
    return-void
.end method

.method setSemMobileWipsServiceHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 2
    .line 3
    return-void
.end method

.method declared-synchronized setSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemMobileWipsWifiScanner:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method protected setWipsValue(I)I
    .locals 2

    .line 1
    const-string v0, "setWipsValue = "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemMobileWipsFrameworkService"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    iput p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    .line 25
    .line 26
    return p1
.end method

.method public unregisterForBroadcastsForWifiWIPS()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->unregisterReceiver()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->unregisterPackageReceiver()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public unregisterPackageReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBroadcastReceiverPackage:Landroid/content/BroadcastReceiver;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsObserver:Landroid/database/ContentObserver;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiStateListeners:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
