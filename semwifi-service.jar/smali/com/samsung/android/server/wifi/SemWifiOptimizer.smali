.class public Lcom/samsung/android/server/wifi/SemWifiOptimizer;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;,
        Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xc8

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiOptimizer history:"

.field private static final DYNAMIC_SCAN_DWELL:I = 0x2

.field private static final ENHANCED_PASSIVE_SCAN:I = 0x4

.field private static final FEATURE_SUPPORT:I = 0x1

.field private static final LOW_LATENCY_LOCK_HELD:I = 0x20

.field private static final MAX_BLE_WINDOW:I = 0x1e

.field static final MSG_OPTIMIZER_ALLOWED_APP_RUNNING:I = 0x6

.field static final MSG_OPTIMIZER_FORCEMODE:I = 0x7

.field static final MSG_OPTIMIZER_GAME_RUNNING:I = 0x3

.field static final MSG_OPTIMIZER_IMS_CALLING:I = 0x8

.field static final MSG_OPTIMIZER_LOCK_STATE_CHANGED:I = 0xc

.field static final MSG_OPTIMIZER_SERVICE_DETECTED:I = 0x9

.field static final MSG_OPTIMIZER_TP_DETECTED:I = 0x5

.field static final MSG_OPTIMIZER_VOIP_CALLING:I = 0x4

.field static final MSG_STA_CONNECTION_CHANGED:I = 0xb

.field static final MSG_STA_INTERFACE_CHANGED:I = 0xa

.field static final MSG_TRAFFIC_POLL:I = 0x2

.field static final MSG_TRAFFIC_POLL_ENABLE:I = 0x1

.field private static final NOT_INITIALIZED:I = -0x1

.field private static final NO_RESTRICTION:I = 0x0

.field private static final OPTIMIZER_MODE_ENABLE:Ljava/lang/String; = "Enable"

.field private static final OPTIMIZER_MODE_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.LATENCYMODE"

.field private static final OPTIMIZER_MODE_MAX_WINDOW:Ljava/lang/String; = "MaxWindow"

.field private static final OPTIMIZE_BTC_AND_SPLIT_WIFI_SCAN:I = 0x3

.field private static final OPTIMIZE_BTC_AND_WIFI_ROAM_SCAN:I = 0x2

.field private static final OPTIMIZE_BT_COEX:I = 0x1

.field private static final RX_PKTS_CONT_MASK:I = 0x3f

.field private static final RX_PKTS_CONT_UNMASK:I = 0xf

.field private static final RX_PKTS_THRESHOLD:I = 0xf

.field private static final RX_PKTS_UP_THRESHOLD:I = 0x3e7

.field private static final SMARTTHINGS_APP:Ljava/lang/String; = "com.samsung.android.oneconnect"

.field private static final STATE_ALLOWED_APP_RUNNING:I = 0x4

.field private static final STATE_IMS_CALLING:I = 0x8

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_SERVICE_DETECTED:I = 0x10

.field private static final STATE_TRAFFIC_DETECTED:I = 0x2

.field private static final STATE_VOIP_CALLING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiOptimizer"

.field private static final TRAFFIC_POLL_INTERVAL:I = 0x3e8

.field private static final TX_PKTS_CONT_MASK:I = 0xf

.field private static final TX_PKTS_CONT_UNMASK:I = 0x3

.field private static final TX_PKTS_THRESHOLD:I = 0x32

.field private static final TX_PKTS_UP_THRESHOLD:I = 0x1f4

.field private static mOptimizerMode:I

.field private static mOptimizerState:I


# instance fields
.field private final mAllowedAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

.field private mApeController:Lcom/samsung/android/server/wifi/SemApeController;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field private mChipsetSolutionName:Ljava/lang/String;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private mConnected:Z

.field private final mConnectedStaIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mFirstApiLevel:I

.field private mForceMode:I

.field private mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

.field private mIsFeatureEnabled:Z

.field private mIsGamePkg:Z

.field private final mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

.field mLockModeListener:Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;

.field mLowLatencyLockActiveUserUid:Ljava/lang/String;

.field mLowLatencyLockOwnerUid:Ljava/lang/String;

.field private final mOptimizerHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mQosManipulatedUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReady:Z

.field private mRxPackets:J

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private mScreenOn:Z

.field private final mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

.field private mStaIfaceName:Ljava/lang/String;

.field private mSupportDynamicScanDwell:Z

.field private mSupportEnhancedPassiveScan:Z

.field private mSupportScanCore:Z

.field private mTrafficCondition:I

.field private mTrafficMode:Z

.field private mTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private mTxPackets:J

.field private mTxTrafficCondition:I

.field private mUdpRxCount:J

.field private mUidRxPackets:J

.field private final mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUsageStatsPackageName:Ljava/lang/String;

.field mUsageStatsUid:I

.field private mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiOptServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

.field private final mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private final mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;


# direct methods
.method public static synthetic $r8$lambda$jIhOM-49JXv808_Pm2BpXsqK3gU(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAllowedAppList:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApeController(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemApeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedStaIfaces(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnectedStaIfaces:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGamePkg(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mIsGamePkg:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeNetworkConnectionState(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->changeNetworkConnectionState(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckTraffic(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->checkTraffic()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mevaluateTrafficPolling(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->evaluateTrafficPolling()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetStateAllowedAppRunning(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateAllowedAppRunning()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetStateLowLatencyLockHeld(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateLowLatencyLockHeld()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetStateServiceDetected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateServiceDetected()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetStateVoipCalling(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateVoipCalling()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mlogOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->logOptimizerMode(IIILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiScanDwell(Lcom/samsung/android/server/wifi/SemWifiOptimizer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->setWifiScanDwell(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->updateOptimizerMode(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmOptimizerMode()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmOptimizerState()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 2
    .line 3
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mQosManipulatedUids:Ljava/util/HashSet;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    .line 26
    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTxTrafficCondition:I

    .line 28
    .line 29
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 35
    .line 36
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$2;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mIsGamePkg:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mReady:Z

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenOn:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 51
    .line 52
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mFirstApiLevel:I

    .line 53
    .line 54
    const-string v2, "Unknown"

    .line 55
    .line 56
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mChipsetSolutionName:Ljava/lang/String;

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mIsFeatureEnabled:Z

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mSupportDynamicScanDwell:Z

    .line 61
    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mSupportEnhancedPassiveScan:Z

    .line 63
    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mSupportScanCore:Z

    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockOwnerUid:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockActiveUserUid:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;

    .line 73
    .line 74
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLockModeListener:Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;

    .line 78
    .line 79
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 82
    .line 83
    .line 84
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    .line 85
    .line 86
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;

    .line 87
    .line 88
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 89
    .line 90
    .line 91
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiOptServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 96
    .line 97
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 98
    .line 99
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 100
    .line 101
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 106
    .line 107
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 108
    .line 109
    iput-object p6, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 110
    .line 111
    iput-object p8, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 112
    .line 113
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 118
    .line 119
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 120
    .line 121
    invoke-direct {p3, v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;-><init>(I)V

    .line 122
    .line 123
    .line 124
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 125
    .line 126
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->-$$Nest$mreset(Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;)V

    .line 127
    .line 128
    .line 129
    new-instance p5, Ljava/util/LinkedList;

    .line 130
    .line 131
    invoke-direct {p5}, Ljava/util/LinkedList;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object p5, p3, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    .line 135
    .line 136
    new-instance p3, Ljava/util/HashSet;

    .line 137
    .line 138
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnectedStaIfaces:Ljava/util/HashSet;

    .line 142
    .line 143
    const/4 p3, -0x1

    .line 144
    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 145
    .line 146
    const-string p3, "default"

    .line 147
    .line 148
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    .line 149
    .line 150
    const-string p3, "audio"

    .line 151
    .line 152
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    check-cast p3, Landroid/media/AudioManager;

    .line 157
    .line 158
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    .line 159
    .line 160
    const-string p3, "usagestats"

    .line 161
    .line 162
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-static {p3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 177
    .line 178
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 179
    .line 180
    invoke-virtual {p7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Landroid/os/Looper;)V

    .line 185
    .line 186
    .line 187
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 188
    .line 189
    new-instance p1, Ljava/util/HashMap;

    .line 190
    .line 191
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 192
    .line 193
    .line 194
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAllowedAppList:Ljava/util/HashMap;

    .line 195
    .line 196
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 197
    .line 198
    const-string p5, "com.microsoft.xcloud.cta"

    .line 199
    .line 200
    invoke-virtual {p1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    const-string p5, "com.microsoft.xcloud"

    .line 204
    .line 205
    invoke-virtual {p1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const-string p5, "com.gamepass"

    .line 209
    .line 210
    invoke-virtual {p1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 214
    .line 215
    invoke-interface {p2, p1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 223
    .line 224
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLockModeListener:Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;

    .line 229
    .line 230
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->addWifiLowLatencyLockListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;)V

    .line 231
    .line 232
    .line 233
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mReady:Z

    .line 234
    .line 235
    return-void
.end method

.method private changeNetworkConnectionState(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_4

    .line 11
    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v3, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->ssid:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemQboxController;->isMscsSupportedByAp(Landroid/net/wifi/WifiInfo;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 38
    .line 39
    iget-object v3, v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    new-instance v3, Ljava/util/LinkedList;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v3, v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    .line 49
    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->checkEnterpriseNetworkFromRcl()V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->checkEnterpriseNetworkFromScanResults()V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x3

    .line 65
    const/4 v4, 0x1

    .line 66
    if-ne v2, v3, :cond_2

    .line 67
    .line 68
    move v2, v4

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move v2, v1

    .line 71
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateVoipCalling()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateImsCalling()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 86
    .line 87
    const/4 v3, 0x4

    .line 88
    invoke-static {v2, v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->registerAudioAndUsageStatsWatcher()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->unregisterAudioAndUsageStatsWatcher()V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 103
    .line 104
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->-$$Nest$mreset(Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    if-eqz v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->getInterfaceVersion()V

    .line 110
    .line 111
    .line 112
    :cond_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 113
    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenOn:Z

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->evaluateTrafficPolling()V

    .line 123
    .line 124
    .line 125
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiOptServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 137
    .line 138
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    .line 139
    .line 140
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 145
    .line 146
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 152
    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiOptServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateServiceDetected()Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_7

    .line 163
    .line 164
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 165
    .line 166
    const/16 p1, 0x9

    .line 167
    .line 168
    invoke-static {p0, p1, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    .line 174
    .line 175
    :cond_7
    return-void
.end method

.method private changeTrafficPriority(II)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    if-lez p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemQboxController;->addUid(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mQosManipulatedUids:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    if-nez p1, :cond_2

    .line 27
    .line 28
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mQosManipulatedUids:Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mQosManipulatedUids:Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemQboxController;->removeUid(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mQosManipulatedUids:Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 70
    .line 71
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->configureMscs(ZI)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method private checkEnterpriseNetworkFromRcl()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getRoamingAssistant()Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl2G:I

    .line 38
    .line 39
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl5G:I

    .line 40
    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v3, 0x1

    .line 46
    if-ge v2, v1, :cond_3

    .line 47
    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/16 v4, 0x960

    .line 59
    .line 60
    if-le v1, v4, :cond_1

    .line 61
    .line 62
    const/16 v4, 0x9c4

    .line 63
    .line 64
    if-ge v1, v4, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 67
    .line 68
    iget v4, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl2G:I

    .line 69
    .line 70
    add-int/2addr v4, v3

    .line 71
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl2G:I

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/16 v4, 0x1324

    .line 75
    .line 76
    if-le v1, v4, :cond_2

    .line 77
    .line 78
    const/16 v4, 0x170c

    .line 79
    .line 80
    if-ge v1, v4, :cond_2

    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 83
    .line 84
    iget v4, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl5G:I

    .line 85
    .line 86
    add-int/2addr v4, v3

    .line 87
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl5G:I

    .line 88
    .line 89
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 93
    .line 94
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl2G:I

    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    if-gt v1, v2, :cond_4

    .line 98
    .line 99
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl5G:I

    .line 100
    .line 101
    if-le v1, v2, :cond_5

    .line 102
    .line 103
    :cond_4
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    .line 104
    .line 105
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    .line 106
    .line 107
    if-eqz p0, :cond_5

    .line 108
    .line 109
    const-string p0, "SemWifiOptimizer"

    .line 110
    .line 111
    const-string v0, "Determined as enterprise network by rcl"

    .line 112
    .line 113
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_2
    return-void
.end method

.method private checkEnterpriseNetworkFromScanResults()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_a

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "\""

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2, v4, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 45
    .line 46
    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->ssid:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 55
    .line 56
    const-string v3, "EAP"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const-string v3, "SemWifiOptimizer"

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    const-string v0, "Determined as enterprise network by security option"

    .line 72
    .line 73
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 77
    .line 78
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    const/4 v2, 0x0

    .line 82
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 83
    .line 84
    iget-object v5, v5, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-ge v2, v5, :cond_5

    .line 91
    .line 92
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 93
    .line 94
    iget-object v5, v5, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    .line 95
    .line 96
    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Ljava/lang/String;

    .line 101
    .line 102
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 115
    .line 116
    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    .line 117
    .line 118
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 130
    .line 131
    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid5G:I

    .line 132
    .line 133
    add-int/2addr v2, v4

    .line 134
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid5G:I

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 144
    .line 145
    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid2G:I

    .line 146
    .line 147
    add-int/2addr v2, v4

    .line 148
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid2G:I

    .line 149
    .line 150
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 151
    .line 152
    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid2G:I

    .line 153
    .line 154
    const/4 v5, 0x3

    .line 155
    if-gt v2, v5, :cond_8

    .line 156
    .line 157
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid5G:I

    .line 158
    .line 159
    if-le v1, v5, :cond_1

    .line 160
    .line 161
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    .line 162
    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    const-string v0, "Determined as enterprise network by scan results"

    .line 166
    .line 167
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 171
    .line 172
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    .line 173
    .line 174
    :cond_a
    :goto_2
    return-void
.end method

.method private checkTraffic()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->uidTopActivity:I

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->updateForegroundApp(I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 9
    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mRxPackets:J

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUidRxPackets:J

    .line 19
    .line 20
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUdpRxCount:J

    .line 21
    .line 22
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 23
    .line 24
    iget-wide v7, v6, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 25
    .line 26
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mRxPackets:J

    .line 27
    .line 28
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPacketsTopActivity:J

    .line 29
    .line 30
    iput-wide v9, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUidRxPackets:J

    .line 31
    .line 32
    cmp-long v0, v7, v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getUdpCount()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUdpRxCount:J

    .line 41
    .line 42
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUidRxPackets:J

    .line 43
    .line 44
    sub-long/2addr v0, v2

    .line 45
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUdpRxCount:J

    .line 46
    .line 47
    sub-long/2addr v2, v4

    .line 48
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    shl-int/2addr v4, v5

    .line 52
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    .line 53
    .line 54
    const-wide/16 v6, 0xf

    .line 55
    .line 56
    cmp-long v8, v0, v6

    .line 57
    .line 58
    if-lez v8, :cond_4

    .line 59
    .line 60
    const-wide/16 v8, 0x3e7

    .line 61
    .line 62
    cmp-long v0, v0, v8

    .line 63
    .line 64
    if-gez v0, :cond_4

    .line 65
    .line 66
    cmp-long v0, v2, v6

    .line 67
    .line 68
    if-lez v0, :cond_2

    .line 69
    .line 70
    cmp-long v0, v2, v8

    .line 71
    .line 72
    if-ltz v0, :cond_3

    .line 73
    .line 74
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mIsGamePkg:Z

    .line 75
    .line 76
    if-ne v0, v5, :cond_4

    .line 77
    .line 78
    :cond_3
    or-int/lit8 v0, v4, 0x1

    .line 79
    .line 80
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    .line 81
    .line 82
    :cond_4
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTxPackets:J

    .line 83
    .line 84
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 85
    .line 86
    iget-wide v2, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 87
    .line 88
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTxPackets:J

    .line 89
    .line 90
    sub-long/2addr v2, v0

    .line 91
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTxTrafficCondition:I

    .line 92
    .line 93
    shl-int/2addr v0, v5

    .line 94
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTxTrafficCondition:I

    .line 95
    .line 96
    const-string v0, "com.samsung.android.oneconnect"

    .line 97
    .line 98
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    const-wide/16 v0, 0x32

    .line 107
    .line 108
    cmp-long v0, v2, v0

    .line 109
    .line 110
    if-lez v0, :cond_5

    .line 111
    .line 112
    const-wide/16 v0, 0x1f4

    .line 113
    .line 114
    cmp-long v0, v2, v0

    .line 115
    .line 116
    if-gez v0, :cond_5

    .line 117
    .line 118
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTxTrafficCondition:I

    .line 119
    .line 120
    or-int/2addr v0, v5

    .line 121
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTxTrafficCondition:I

    .line 122
    .line 123
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    .line 124
    .line 125
    const/4 v1, 0x5

    .line 126
    const/16 v2, 0xf

    .line 127
    .line 128
    if-nez v0, :cond_7

    .line 129
    .line 130
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    .line 131
    .line 132
    const/16 v3, 0x3f

    .line 133
    .line 134
    and-int/2addr v0, v3

    .line 135
    if-eq v0, v3, :cond_6

    .line 136
    .line 137
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTxTrafficCondition:I

    .line 138
    .line 139
    and-int/2addr v0, v2

    .line 140
    if-ne v0, v2, :cond_8

    .line 141
    .line 142
    :cond_6
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    .line 143
    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 145
    .line 146
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 147
    .line 148
    invoke-static {v0, v1, v5, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_7
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficCondition:I

    .line 157
    .line 158
    and-int/2addr v0, v2

    .line 159
    if-nez v0, :cond_8

    .line 160
    .line 161
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTxTrafficCondition:I

    .line 162
    .line 163
    and-int/lit8 v0, v0, 0x3

    .line 164
    .line 165
    if-nez v0, :cond_8

    .line 166
    .line 167
    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mTrafficMode:Z

    .line 169
    .line 170
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 171
    .line 172
    invoke-static {p0, v1, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 177
    .line 178
    .line 179
    :cond_8
    :goto_0
    return-void
.end method

.method private evaluateTrafficPolling()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenOn:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 12
    .line 13
    const/16 v3, 0x3e8

    .line 14
    .line 15
    if-lt v0, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 18
    .line 19
    invoke-static {v0, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateVoipCalling()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    invoke-static {v0, v3, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateImsCalling()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 55
    .line 56
    const/16 v3, 0x8

    .line 57
    .line 58
    invoke-static {v0, v3, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateAllowedAppRunning()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 76
    .line 77
    const/4 v3, 0x6

    .line 78
    invoke-static {v0, v3, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 86
    .line 87
    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    .line 99
    .line 100
    if-ne v0, v1, :cond_4

    .line 101
    .line 102
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 103
    .line 104
    const/4 v0, 0x7

    .line 105
    invoke-static {p0, v0, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void
.end method

.method private getFirstApiLevel()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mFirstApiLevel:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    const-string v1, "ro.product.first_api_level"

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mFirstApiLevel:I

    .line 15
    .line 16
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mFirstApiLevel:I

    .line 17
    .line 18
    return p0
.end method

.method private getStateAllowedAppRunning()Z
    .locals 1

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private getStateLowLatencyLockHeld()Z
    .locals 1

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-ne p0, v0, :cond_0

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

.method private getStateServiceDetected()Z
    .locals 1

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-ne p0, v0, :cond_0

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

.method private getStateTrafficDetected()Z
    .locals 1

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private getStateVoipCalling()Z
    .locals 1

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method private getUdpCount()J
    .locals 11

    .line 1
    const-string p0, "Exception "

    .line 2
    .line 3
    const-string v0, "SemWifiOptimizer"

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v6, Ljava/io/FileReader;

    .line 12
    .line 13
    const-string v7, "/proc/net/snmp"

    .line 14
    .line 15
    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    const-string v6, "Udp:"

    .line 28
    .line 29
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    const-string v6, " "

    .line 36
    .line 37
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    array-length v6, v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-le v6, v1, :cond_0

    .line 43
    .line 44
    :try_start_2
    aget-object v4, v4, v1

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    move-object v4, v5

    .line 53
    goto/16 :goto_c

    .line 54
    .line 55
    :catch_1
    move-exception v4

    .line 56
    goto :goto_1

    .line 57
    :catch_2
    move-exception v4

    .line 58
    goto :goto_4

    .line 59
    :cond_1
    move-wide v6, v2

    .line 60
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 61
    .line 62
    .line 63
    goto :goto_5

    .line 64
    :catch_3
    move-exception v4

    .line 65
    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_5

    .line 73
    :catchall_1
    move-exception v1

    .line 74
    goto/16 :goto_c

    .line 75
    .line 76
    :catch_4
    move-exception v5

    .line 77
    move-object v10, v5

    .line 78
    move-object v5, v4

    .line 79
    move-object v4, v10

    .line 80
    goto :goto_1

    .line 81
    :catch_5
    move-exception v5

    .line 82
    move-object v10, v5

    .line 83
    move-object v5, v4

    .line 84
    move-object v4, v10

    .line 85
    goto :goto_4

    .line 86
    :goto_1
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v7, "Io Exception "

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    .line 105
    .line 106
    if-eqz v5, :cond_2

    .line 107
    .line 108
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :catch_6
    move-exception v4

    .line 113
    :goto_2
    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_3
    move-wide v6, v2

    .line 121
    goto :goto_5

    .line 122
    :goto_4
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v7, "SNMP Not Found "

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 140
    .line 141
    .line 142
    if-eqz v5, :cond_2

    .line 143
    .line 144
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catch_7
    move-exception v4

    .line 149
    goto :goto_2

    .line 150
    :goto_5
    :try_start_8
    new-instance v4, Ljava/io/BufferedReader;

    .line 151
    .line 152
    new-instance v8, Ljava/io/FileReader;

    .line 153
    .line 154
    const-string v9, "/proc/net/snmp6"

    .line 155
    .line 156
    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 160
    .line 161
    .line 162
    :catch_8
    :cond_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    if-eqz v5, :cond_4

    .line 167
    .line 168
    const-string v8, "Udp6InDatagrams"

    .line 169
    .line 170
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_3

    .line 175
    .line 176
    const-string v8, "\t"

    .line 177
    .line 178
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    array-length v8, v5
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 183
    if-le v8, v1, :cond_3

    .line 184
    .line 185
    :try_start_a
    aget-object v5, v5, v1

    .line 186
    .line 187
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v2
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 191
    goto :goto_6

    .line 192
    :catchall_2
    move-exception v1

    .line 193
    move-object v5, v4

    .line 194
    goto :goto_a

    .line 195
    :catch_9
    move-exception v1

    .line 196
    move-object v5, v4

    .line 197
    goto :goto_7

    .line 198
    :catch_a
    move-exception v1

    .line 199
    move-object v5, v4

    .line 200
    goto :goto_8

    .line 201
    :cond_4
    :goto_6
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 202
    .line 203
    .line 204
    goto :goto_9

    .line 205
    :catch_b
    move-exception v1

    .line 206
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    goto :goto_9

    .line 214
    :catchall_3
    move-exception v1

    .line 215
    goto :goto_a

    .line 216
    :catch_c
    move-exception v1

    .line 217
    goto :goto_7

    .line 218
    :catch_d
    move-exception v1

    .line 219
    goto :goto_8

    .line 220
    :goto_7
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v8, "Io Exception6 "

    .line 226
    .line 227
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 238
    .line 239
    .line 240
    if-eqz v5, :cond_5

    .line 241
    .line 242
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 243
    .line 244
    .line 245
    goto :goto_9

    .line 246
    :goto_8
    :try_start_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v8, "SNMP6 Not Found "

    .line 252
    .line 253
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 264
    .line 265
    .line 266
    if-eqz v5, :cond_5

    .line 267
    .line 268
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 269
    .line 270
    .line 271
    :cond_5
    :goto_9
    add-long/2addr v6, v2

    .line 272
    return-wide v6

    .line 273
    :goto_a
    if-eqz v5, :cond_6

    .line 274
    .line 275
    :try_start_10
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 276
    .line 277
    .line 278
    goto :goto_b

    .line 279
    :catch_e
    move-exception v2

    .line 280
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    :cond_6
    :goto_b
    throw v1

    .line 288
    :goto_c
    if-eqz v4, :cond_7

    .line 289
    .line 290
    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 291
    .line 292
    .line 293
    goto :goto_d

    .line 294
    :catch_f
    move-exception v2

    .line 295
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    :cond_7
    :goto_d
    throw v1
.end method

.method private getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mScreenOn:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->evaluateTrafficPolling()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private logOptimizerMode(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/util/Date;

    .line 13
    .line 14
    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    const-string v1, "%s, %d, 0x%02X, %d, %s, %s"

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    move-object v8, p4

    .line 38
    move-object v9, p5

    .line 39
    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    .line 48
    .line 49
    monitor-enter p2

    .line 50
    :try_start_1
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    .line 51
    .line 52
    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/16 p3, 0xc8

    .line 62
    .line 63
    if-le p1, p3, :cond_0

    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object p0, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    monitor-exit p2

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    move-object p0, v0

    .line 80
    const-string p1, "SemWifiOptimizer"

    .line 81
    .line 82
    const-string p2, "format problem"

    .line 83
    .line 84
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private provideOptimizerStateToApe()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateTrafficDetected()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateServiceDetected()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemApeController;->updateOptimizerState(ZZILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private registerAudioAndUsageStatsWatcher()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 36
    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 38
    .line 39
    invoke-interface {p0, v0}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p0

    .line 44
    const-string v0, "Exception occurred while register UsageStatWatcher "

    .line 45
    .line 46
    const-string v1, "SemWifiOptimizer"

    .line 47
    .line 48
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method private sendBroadcastOptimizerMode(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.wifi.LATENCYMODE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Enable"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/16 p1, 0x1e

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    const-string v1, "MaxWindow"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 27
    .line 28
    const-string v1, "com.samsung.android.permission.BLE_PRIVILEGED"

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private setWifiScanDwell(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mSupportScanCore:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mSupportEnhancedPassiveScan:Z

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mChipsetSolutionName:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "QCA"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "60 100 40 45"

    .line 28
    .line 29
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "110 100 40 45"

    .line 41
    .line 42
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "0 0 0 0"

    .line 51
    .line 52
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    return-void
.end method

.method private unregisterAudioAndUsageStatsWatcher()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    :try_start_0
    invoke-interface {v0, v2}, Landroid/app/usage/IUsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string v0, "Exception occurred while unregister UsageStatWatcher "

    .line 31
    .line 32
    const-string v1, "SemWifiOptimizer"

    .line 33
    .line 34
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private updateForegroundApp(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aget-object v1, v1, v2

    .line 23
    .line 24
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    .line 25
    .line 26
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 27
    .line 28
    :cond_1
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 29
    .line 30
    if-eq v0, p1, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsPackageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemApeController;->updateForegroundApp(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->provideOptimizerStateToApe()V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    return-void
.end method

.method private updateOptimizerMode(III)V
    .locals 12

    .line 1
    sget v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 2
    .line 3
    sget v1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->updateOptimizerState(II)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->provideOptimizerStateToApe()V

    .line 10
    .line 11
    .line 12
    sget v3, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-lez v3, :cond_0

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    sput v5, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-nez v3, :cond_3

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->checkEnterpriseNetworkFromRcl()V

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mSupportEnhancedPassiveScan:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    sput v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApInfo:Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;

    .line 39
    .line 40
    iget-boolean v2, v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    sput v4, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v2, 0x2

    .line 48
    sput v2, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 49
    .line 50
    :cond_3
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    sget p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    sget p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, "enable=%d state=0x%02X prev=0x%02X new=0x%02X force=%d mode=%d"

    .line 85
    .line 86
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string p2, "SemWifiOptimizer"

    .line 91
    .line 92
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    sget p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 96
    .line 97
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->changeTrafficPriority(II)V

    .line 98
    .line 99
    .line 100
    sget p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 101
    .line 102
    if-eq v1, p1, :cond_6

    .line 103
    .line 104
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mIsFeatureEnabled:Z

    .line 105
    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mStaIfaceName:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setLatencyCritical(Ljava/lang/String;I)Z

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateLowLatencyLockHeld()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    sget p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 122
    .line 123
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->setWifiScanDwell(I)V

    .line 124
    .line 125
    .line 126
    :cond_4
    sget p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 127
    .line 128
    if-lez p1, :cond_5

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    move v4, v5

    .line 132
    :goto_1
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->sendBroadcastOptimizerMode(Z)V

    .line 133
    .line 134
    .line 135
    sget v6, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 136
    .line 137
    sget v7, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 138
    .line 139
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockOwnerUid:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockActiveUserUid:Ljava/lang/String;

    .line 142
    .line 143
    move-object v5, p0

    .line 144
    move v8, p3

    .line 145
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->logOptimizerMode(IIILjava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    return-void
.end method

.method private updateOptimizerState(II)Z
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget p2, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 4
    .line 5
    not-int p1, p1

    .line 6
    and-int/2addr p1, p2

    .line 7
    sput p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget p2, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 11
    .line 12
    or-int/2addr p1, p2

    .line 13
    sput p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 14
    .line 15
    :goto_0
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    const/4 v0, 0x0

    .line 19
    if-ne p1, p2, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    const/4 p2, 0x1

    .line 23
    if-ne p1, p2, :cond_2

    .line 24
    .line 25
    return p2

    .line 26
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateAllowedAppRunning()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateVoipCalling()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateImsCalling()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateTrafficDetected()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateServiceDetected()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    :cond_3
    move v0, p2

    .line 57
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getStateLowLatencyLockHeld()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_7

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getFirstApiLevel()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mChipsetSolutionName:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, "QCA"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    const/16 v1, 0x21

    .line 78
    .line 79
    if-lt p1, v1, :cond_6

    .line 80
    .line 81
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mChipsetSolutionName:Ljava/lang/String;

    .line 82
    .line 83
    const-string p1, "Broadcom"

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_7

    .line 90
    .line 91
    :cond_6
    return p2

    .line 92
    :cond_7
    return v0
.end method


# virtual methods
.method public checkChipsetCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mChipsetSolutionName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getOptimizerFeature()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    and-int/lit8 v1, v0, 0x1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v1, v3, :cond_0

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v2

    .line 30
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mIsFeatureEnabled:Z

    .line 31
    .line 32
    and-int/lit8 v1, v0, 0x2

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    if-ne v1, v4, :cond_1

    .line 36
    .line 37
    move v1, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v1, v2

    .line 40
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mSupportDynamicScanDwell:Z

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    and-int/2addr v0, v1

    .line 44
    if-ne v0, v1, :cond_2

    .line 45
    .line 46
    move v2, v3

    .line 47
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mSupportEnhancedPassiveScan:Z

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->hasLowPowerRxCore()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mSupportScanCore:Z

    .line 54
    .line 55
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    new-instance p3, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {p3, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string p0, "SemWifiOptimizer history:"

    .line 13
    .line 14
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p3}, Ljava/util/LinkedList;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getOptimizerForceControlMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    .line 2
    .line 3
    return p0
.end method

.method public getOptimizerMode()I
    .locals 0

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 2
    .line 3
    return p0
.end method

.method public getOptimizerState()[I
    .locals 1

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 2
    .line 3
    sget v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerMode:I

    .line 4
    .line 5
    filled-new-array {p0, v0}, [I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method getStateImsCalling()Z
    .locals 1

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mOptimizerState:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-ne p0, v0, :cond_0

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

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 4
    .line 5
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0xb

    .line 9
    .line 10
    invoke-static {p0, v1, p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, "ifaceName is null, isConnected "

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean p1, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "SemWifiOptimizer"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method sendMessageForTest(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setApeController(Lcom/samsung/android/server/wifi/SemApeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    .line 2
    .line 3
    return-void
.end method

.method public setImsCallingState(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mReady:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne p1, v2, :cond_1

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-static {v0, v1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public setOptimizerForceControlMode(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    .line 13
    .line 14
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mConnected:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mForceMode:I

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLlHandler:Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 23
    .line 24
    const/4 p1, 0x7

    .line 25
    invoke-static {p0, p1, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return v0
.end method
