.class public Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;,
        Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;,
        Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;
    }
.end annotation


# static fields
.field private static final ADD_FOREGROUND_APPLIST:I = 0x4

.field private static final AFFINITY_AUTO:I = 0x0

.field private static final AFFINITY_PRIMARY:I = 0x1

.field private static final AFFINITY_SECONDARY:I = 0x2

.field private static final AWARE_CONNECTED:I = 0x4

.field private static final AWARE_INTERFACE_NAME:Ljava/lang/String; = "aware_data0"

.field private static final CPU_BOOSTER_TIMEOUT:I = 0x7d0

.field private static final CPU_CORE_BOOSTER_HINT:I = 0xfac

.field private static final CSTATE_ACQUIRED:I = 0x1

.field private static final CSTATE_HINT:I = 0xfaa

.field private static final CSTATE_RELEASED:I = 0x0

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xc8

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiTrafficPoller history:"

.field private static final L1SS_ACQUIRED:I = 0x1

.field private static final L1SS_HINT:I = 0xfab

.field private static final L1SS_RELEASED:I = 0x0

.field private static final MHS_ENABLED:I = 0x8

.field private static final P2P_CONNECTED:I = 0x2

.field private static final POLLING_INTERVAL_1000MS:I = 0x3e8

.field private static final POLLING_INTERVAL_3000MS:I = 0xbb8

.field private static final POLLING_INTERVAL_500MS:I = 0x1f4

.field private static final POLLING_INTERVAL_6000MS:I = 0x1770

.field private static final REMOVE_FOREGROUND_APPLIST:I = 0x5

.field private static final STA_CONNECTED:I = 0x1

.field private static final STA_INTERFACE_NAME:Ljava/lang/String; = "wlan0"

.field private static final TAG:Ljava/lang/String; = "SemWifiTrafficPoller"

.field static final TAG_CPU_CORE:Ljava/lang/String; = "WIFI_CPU_CORE_BOOSTER"

.field static final TAG_CSTATE:Ljava/lang/String; = "WIFI_CSTATE"

.field static final TAG_L1SS:Ljava/lang/String; = "WIFI_L1SS"

.field private static final TRAFFIC_STATS_POLL:I = 0x1

.field private static final TRAFFIC_STATS_REGISTER_CALLBACK:I = 0x2

.field private static final TRAFFIC_STATS_REGISTER_CALLBACK_FOR_ALL_IFACES:I = 0x6

.field private static final TRAFFIC_STATS_UNREGISTER_CALLBACK:I = 0x3

.field private static final TRAFFIC_STATS_UNREGISTER_CALLBACK_FOR_ALL_IFACES:I = 0x7


# instance fields
.field private MHS_INTERFACE_NAME:Ljava/lang/String;

.field private isEbpfSupported:I

.field private final isFeatureEnabled:Z

.field private final isSupportAffinityBooster:Z

.field private final isSupportCpuCoreBooster:Z

.field private final isSupportCpuCstateControl:Z

.field private final isSupportL1ssControl:Z

.field final m1000msAllIfacesCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;",
            ">;"
        }
    .end annotation
.end field

.field final m1000msCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;",
            ">;"
        }
    .end annotation
.end field

.field final m3000msAllIfacesCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;",
            ">;"
        }
    .end annotation
.end field

.field final m3000msCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;",
            ">;"
        }
    .end annotation
.end field

.field final m500msCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;",
            ">;"
        }
    .end annotation
.end field

.field final m6000msCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mAffinityBoosterThreshold:I

.field private final mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

.field private mConnected:I

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

.field private mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mCpuBoosterThreshold:I

.field private mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

.field private final mCstateDisableThreshold:I

.field private mCurrentAffinityMode:I

.field private mCurrentCpuBooster:Z

.field private mCurrentCstateModeValue:I

.field private mCurrentL1ssModeValue:I

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mForegroundPkgList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

.field private final mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private final mL1ssDisableThreshold:I

.field private mLpm:Lcom/samsung/android/os/SemDvfsManager;

.field private mMaxSupportedTxLinkSpeed:I

.field private mMhsRxBytes:J

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private final mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPollingInterval:I

.field private mPollingIntervalForAllIfaces:I

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mRxBytes:J

.field private mStaPrimaryIfaceName:Ljava/lang/String;

.field private final mStaTrafficStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficPollTime:I

.field private final mTrafficStatsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTxBytes:J

.field private mVerboseLoggingEnabled:Z

.field private final mWifiAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiP2pIfaceName:Ljava/lang/String;

.field private final mWifiP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private final mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;


# direct methods
.method public static synthetic $r8$lambda$5NFhsWD2Ox6uHFgg9Xm4vdOB3Fg(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->lambda$new$1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$pzhkFYwF1oy3j89A_21qklOHRoY(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;ZZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->lambda$new$0(ZZILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetMHS_INTERFACE_NAME(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->MHS_INTERFACE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isFeatureEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBoostHandler(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmForegroundPkgList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mForegroundPkgList:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolled(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPollingInterval(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPollingIntervalForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingIntervalForAllIfaces:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficPollTime(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficStatsList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputMHS_INTERFACE_NAME(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->MHS_INTERFACE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisEbpfSupported(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isEbpfSupported:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnected(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPollingIntervalForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingIntervalForAllIfaces:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStaPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyTrafficStatsChanged(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->notifyTrafficStatsChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetBoostMode(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->setBoostMode()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetPollingInterval(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->setPollingInterval()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTrafficPoll(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->startTrafficPoll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->updateStaTrafficStats()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiTrafficStatsList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->updateWifiTrafficStatsList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 8

    .line 1
    const-string v0, "SemWifiTrafficPoller"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuBoosterThreshold:I

    .line 8
    .line 9
    const-string v2, "swlan0"

    .line 10
    .line 11
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->MHS_INTERFACE_NAME:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v2, 0x3e8

    .line 14
    .line 15
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingIntervalForAllIfaces:I

    .line 16
    .line 17
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCstateModeValue:I

    .line 18
    .line 19
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    .line 20
    .line 21
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 22
    .line 23
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    .line 31
    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mMhsRxBytes:J

    .line 35
    .line 36
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isEbpfSupported:I

    .line 37
    .line 38
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mMaxSupportedTxLinkSpeed:I

    .line 39
    .line 40
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$1;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 46
    .line 47
    new-instance v2, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mForegroundPkgList:Ljava/util/HashMap;

    .line 53
    .line 54
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;

    .line 55
    .line 56
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 60
    .line 61
    new-instance v3, Ljava/util/HashSet;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m500msCallbacks:Ljava/util/Set;

    .line 67
    .line 68
    new-instance v3, Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msCallbacks:Ljava/util/Set;

    .line 74
    .line 75
    new-instance v3, Ljava/util/HashSet;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msCallbacks:Ljava/util/Set;

    .line 81
    .line 82
    new-instance v3, Ljava/util/HashSet;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m6000msCallbacks:Ljava/util/Set;

    .line 88
    .line 89
    new-instance v3, Ljava/util/HashSet;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msAllIfacesCallbacks:Ljava/util/Set;

    .line 95
    .line 96
    new-instance v3, Ljava/util/HashSet;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msAllIfacesCallbacks:Ljava/util/Set;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 106
    .line 107
    invoke-direct {v3, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/Looper;)V

    .line 108
    .line 109
    .line 110
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 111
    .line 112
    new-instance p2, Ljava/util/LinkedList;

    .line 113
    .line 114
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    .line 118
    .line 119
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 120
    .line 121
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 126
    .line 127
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 132
    .line 133
    new-instance p2, Ljava/util/HashSet;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    .line 139
    .line 140
    new-instance p2, Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaTrafficStats:Ljava/util/HashMap;

    .line 146
    .line 147
    new-instance p2, Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 153
    .line 154
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 155
    .line 156
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 160
    .line 161
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 162
    .line 163
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 167
    .line 168
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 169
    .line 170
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 174
    .line 175
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getBoosterThresholds()[I

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    aget p4, p2, v1

    .line 180
    .line 181
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mAffinityBoosterThreshold:I

    .line 182
    .line 183
    const/4 v3, 0x1

    .line 184
    aget v4, p2, v3

    .line 185
    .line 186
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCstateDisableThreshold:I

    .line 187
    .line 188
    const/4 v5, 0x2

    .line 189
    aget p2, p2, v5

    .line 190
    .line 191
    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mL1ssDisableThreshold:I

    .line 192
    .line 193
    if-lez p4, :cond_0

    .line 194
    .line 195
    move p4, v3

    .line 196
    goto :goto_0

    .line 197
    :cond_0
    move p4, v1

    .line 198
    :goto_0
    iput-boolean p4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportAffinityBooster:Z

    .line 199
    .line 200
    if-lez v4, :cond_1

    .line 201
    .line 202
    move v4, v3

    .line 203
    goto :goto_1

    .line 204
    :cond_1
    move v4, v1

    .line 205
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportCpuCstateControl:Z

    .line 206
    .line 207
    if-lez p2, :cond_2

    .line 208
    .line 209
    move p2, v3

    .line 210
    goto :goto_2

    .line 211
    :cond_2
    move p2, v1

    .line 212
    :goto_2
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportL1ssControl:Z

    .line 213
    .line 214
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 215
    .line 216
    const-string v7, "G766"

    .line 217
    .line 218
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-nez v6, :cond_4

    .line 223
    .line 224
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 225
    .line 226
    const-string v7, "X356"

    .line 227
    .line 228
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-nez v6, :cond_4

    .line 233
    .line 234
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 235
    .line 236
    const-string v7, "X358"

    .line 237
    .line 238
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-nez v6, :cond_4

    .line 243
    .line 244
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 245
    .line 246
    const-string v7, "X350"

    .line 247
    .line 248
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-eqz v6, :cond_3

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_3
    move v6, v1

    .line 256
    goto :goto_4

    .line 257
    :cond_4
    :goto_3
    move v6, v3

    .line 258
    :goto_4
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportCpuCoreBooster:Z

    .line 259
    .line 260
    if-nez p4, :cond_5

    .line 261
    .line 262
    if-nez p2, :cond_5

    .line 263
    .line 264
    if-nez v4, :cond_5

    .line 265
    .line 266
    if-eqz v6, :cond_6

    .line 267
    .line 268
    :cond_5
    move v1, v3

    .line 269
    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isFeatureEnabled:Z

    .line 270
    .line 271
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-interface {p2, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .line 277
    .line 278
    goto :goto_7

    .line 279
    :catch_0
    move-exception p2

    .line 280
    goto :goto_5

    .line 281
    :catch_1
    move-exception p2

    .line 282
    goto :goto_6

    .line 283
    :goto_5
    const-string p4, "SecurityException - registerProcessObserver"

    .line 284
    .line 285
    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :goto_6
    const-string p4, "RemoteException - registerProcessObserver"

    .line 293
    .line 294
    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 298
    .line 299
    .line 300
    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string p4, "getPackageName : "

    .line 303
    .line 304
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p4

    .line 311
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string p4, " android.os.Build.MODEL : "

    .line 315
    .line 316
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    sget-object p4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 320
    .line 321
    invoke-static {p2, p4, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportCpuCstateControl:Z

    .line 325
    .line 326
    if-eqz p2, :cond_8

    .line 327
    .line 328
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 329
    .line 330
    const-string p4, "WIFI_CSTATE"

    .line 331
    .line 332
    invoke-virtual {p2, p1, p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getDvfsManager(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    .line 337
    .line 338
    if-eqz p2, :cond_7

    .line 339
    .line 340
    const/16 p4, 0xfaa

    .line 341
    .line 342
    invoke-virtual {p2, p4}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    if-eqz p2, :cond_7

    .line 347
    .line 348
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    .line 349
    .line 350
    invoke-virtual {p2, p4}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 351
    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_7
    const-string p2, "Not permitted to control cstate"

    .line 355
    .line 356
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    :cond_8
    :goto_8
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportL1ssControl:Z

    .line 360
    .line 361
    if-eqz p2, :cond_a

    .line 362
    .line 363
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 364
    .line 365
    const-string p4, "WIFI_L1SS"

    .line 366
    .line 367
    invoke-virtual {p2, p1, p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getDvfsManager(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    .line 372
    .line 373
    if-eqz p2, :cond_9

    .line 374
    .line 375
    const/16 p4, 0xfab

    .line 376
    .line 377
    invoke-virtual {p2, p4}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    .line 378
    .line 379
    .line 380
    move-result p2

    .line 381
    if-eqz p2, :cond_9

    .line 382
    .line 383
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    .line 384
    .line 385
    invoke-virtual {p2, p4}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 386
    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_9
    const-string p2, "Not permitted to control l1ss"

    .line 390
    .line 391
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    :cond_a
    :goto_9
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportCpuCoreBooster:Z

    .line 395
    .line 396
    if-eqz p2, :cond_b

    .line 397
    .line 398
    const/high16 p2, 0x640000

    .line 399
    .line 400
    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuBoosterThreshold:I

    .line 401
    .line 402
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 403
    .line 404
    const-string p4, "WIFI_CPU_CORE_BOOSTER"

    .line 405
    .line 406
    invoke-virtual {p2, p1, p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getDvfsManager(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 411
    .line 412
    if-eqz p1, :cond_b

    .line 413
    .line 414
    const/16 p2, 0xfac

    .line 415
    .line 416
    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    if-eqz p1, :cond_b

    .line 421
    .line 422
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 423
    .line 424
    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 425
    .line 426
    .line 427
    const-string p1, "Not permitted to control CPU Core"

    .line 428
    .line 429
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 433
    .line 434
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mInterfaceChangeListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 435
    .line 436
    invoke-interface {p1, p2}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 444
    .line 445
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$$ExternalSyntheticLambda0;

    .line 446
    .line 447
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    .line 451
    .line 452
    .line 453
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$$ExternalSyntheticLambda1;

    .line 454
    .line 455
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    .line 459
    .line 460
    .line 461
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mContext:Landroid/content/Context;

    .line 462
    .line 463
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;

    .line 464
    .line 465
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 466
    .line 467
    .line 468
    new-instance p0, Landroid/content/IntentFilter;

    .line 469
    .line 470
    const-string p3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 471
    .line 472
    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1, p2, p0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 476
    .line 477
    .line 478
    return-void
.end method

.method private getOemNetd()Lcom/android/internal/net/IOemNetd;
    .locals 4

    .line 1
    const-string v0, "SemWifiTrafficPoller"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    :try_start_0
    const-string v1, "netd"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mNetdService:Landroid/net/INetd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "Failed to bind service netd, error="

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mNetdService:Landroid/net/INetd;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    const-string v1, "Can\'t bind service netd"

    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_1
    move-exception v1

    .line 65
    const-string v2, "Failed to get OemNetd listener "

    .line 66
    .line 67
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 71
    .line 72
    return-object p0
.end method

.method private getSoftApTotalTrafficInBytes()J
    .locals 4

    .line 1
    const-string v0, "getSoftApTotalTrafficInBytes:"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->MHS_INTERFACE_NAME:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v3, p0}, Lcom/android/internal/net/IOemNetd;->getTotalDataUsage(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-string p0, "SemWifiTrafficPoller"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-wide v1

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    return-wide v1
.end method

.method private isMHSEbpfSupported()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isEbpfSupported:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isEbpfSupported:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isEbpfSupported:I

    .line 25
    .line 26
    :cond_1
    :goto_0
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isEbpfSupported:I

    .line 27
    .line 28
    if-ne p0, v1, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method private synthetic lambda$new$0(ZZILjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {p2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pIfaceName:Ljava/lang/String;

    .line 34
    .line 35
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 36
    .line 37
    and-int/lit8 p1, p1, -0x3

    .line 38
    .line 39
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 42
    .line 43
    if-lez p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->startTrafficPoll()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 10
    .line 11
    const-string v0, "aware_data0"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 33
    .line 34
    and-int/lit8 p1, p1, -0x5

    .line 35
    .line 36
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 39
    .line 40
    if-lez p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->startTrafficPoll()V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method private logBoostMode(JIII)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, ", "

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, ", "

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ", "

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 56
    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    const-string p2, "SemWifiTrafficPoller"

    .line 60
    .line 61
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    .line 65
    .line 66
    monitor-enter p2

    .line 67
    :try_start_1
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    .line 68
    .line 69
    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    const/16 p3, 0xc8

    .line 79
    .line 80
    if-le p1, p3, :cond_1

    .line 81
    .line 82
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    monitor-exit p2

    .line 91
    return-void

    .line 92
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p0

    .line 94
    :catch_0
    move-exception p0

    .line 95
    const-string p1, "SemWifiTrafficPoller"

    .line 96
    .line 97
    const-string p2, "format problem"

    .line 98
    .line 99
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private notifyTrafficStatsChanged()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 2
    .line 3
    rem-int/lit16 v0, v0, 0x1f4

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m500msCallbacks:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 26
    .line 27
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;->updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 32
    .line 33
    rem-int/lit16 v0, v0, 0x3e8

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msCallbacks:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 56
    .line 57
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;->updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msAllIfacesCallbacks:Ljava/util/Set;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;->updatedTrafficStatsForAllIfaces(Ljava/util/HashMap;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 86
    .line 87
    rem-int/lit16 v0, v0, 0xbb8

    .line 88
    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msCallbacks:Ljava/util/Set;

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 110
    .line 111
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;->updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msAllIfacesCallbacks:Ljava/util/Set;

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;->updatedTrafficStatsForAllIfaces(Ljava/util/HashMap;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_4
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 140
    .line 141
    rem-int/lit16 v0, v0, 0x1770

    .line 142
    .line 143
    if-nez v0, :cond_5

    .line 144
    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m6000msCallbacks:Ljava/util/Set;

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 162
    .line 163
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 164
    .line 165
    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;->updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_5
    return-void
.end method

.method private renewTrafficBytes(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getTxBytes(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getRxBytes(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string p1, "SemWifiTrafficPoller"

    .line 20
    .line 21
    const-string p2, "renewTrafficBytes - NullPointerException occurred"

    .line 22
    .line 23
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private sendCallbackRegistrationMessage(ILandroid/os/Message;)V
    .locals 0

    .line 1
    const/16 p0, 0x1f4

    .line 2
    .line 3
    if-eq p1, p0, :cond_1

    .line 4
    .line 5
    const/16 p0, 0x3e8

    .line 6
    .line 7
    if-eq p1, p0, :cond_1

    .line 8
    .line 9
    const/16 p0, 0xbb8

    .line 10
    .line 11
    if-eq p1, p0, :cond_1

    .line 12
    .line 13
    const/16 p0, 0x1770

    .line 14
    .line 15
    if-ne p1, p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p2, "Invalid interval ="

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private setBoostMode()V
    .locals 14

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTxBytes:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mRxBytes:J

    .line 4
    .line 5
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaTrafficStats:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    move-wide v7, v5

    .line 18
    move-wide v9, v7

    .line 19
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v11

    .line 23
    if-eqz v11, :cond_0

    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v11

    .line 29
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 30
    .line 31
    iget-wide v12, v11, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 32
    .line 33
    add-long/2addr v7, v12

    .line 34
    iget-wide v11, v11, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 35
    .line 36
    add-long/2addr v9, v11

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 47
    .line 48
    iget-wide v11, v4, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 49
    .line 50
    add-long/2addr v7, v11

    .line 51
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 52
    .line 53
    iget-wide v12, v11, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 54
    .line 55
    add-long/2addr v7, v12

    .line 56
    iget-wide v12, v4, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 57
    .line 58
    add-long/2addr v9, v12

    .line 59
    iget-wide v11, v11, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 60
    .line 61
    add-long/2addr v9, v11

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTxBytes:J

    .line 64
    .line 65
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mRxBytes:J

    .line 66
    .line 67
    :goto_1
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTxBytes:J

    .line 68
    .line 69
    iput-wide v9, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mRxBytes:J

    .line 70
    .line 71
    cmp-long v4, v0, v5

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    if-gtz v4, :cond_2

    .line 75
    .line 76
    cmp-long v4, v2, v5

    .line 77
    .line 78
    if-lez v4, :cond_14

    .line 79
    .line 80
    :cond_2
    sub-long/2addr v7, v0

    .line 81
    sub-long/2addr v9, v2

    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportCpuCstateControl:Z

    .line 83
    .line 84
    const/16 v1, 0x7d0

    .line 85
    .line 86
    const-string v2, "SemWifiTrafficPoller"

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    add-long v4, v7, v9

    .line 92
    .line 93
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCstateDisableThreshold:I

    .line 94
    .line 95
    int-to-long v12, v0

    .line 96
    cmp-long v0, v4, v12

    .line 97
    .line 98
    if-lez v0, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    const-string v0, "mCpuCstate acquire"

    .line 109
    .line 110
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 116
    .line 117
    .line 118
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCstateModeValue:I

    .line 119
    .line 120
    :goto_2
    move v0, v3

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCstateModeValue:I

    .line 123
    .line 124
    if-ne v0, v3, :cond_6

    .line 125
    .line 126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 131
    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    const-string v0, "mCpuCstate release."

    .line 135
    .line 136
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 142
    .line 143
    .line 144
    iput v11, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCstateModeValue:I

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    move v0, v11

    .line 148
    :goto_3
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportCpuCoreBooster:Z

    .line 149
    .line 150
    if-eqz v4, :cond_a

    .line 151
    .line 152
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 153
    .line 154
    if-eqz v4, :cond_a

    .line 155
    .line 156
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuBoosterThreshold:I

    .line 157
    .line 158
    int-to-long v5, v4

    .line 159
    cmp-long v5, v7, v5

    .line 160
    .line 161
    const-string v6, "sent byte : "

    .line 162
    .line 163
    if-lez v5, :cond_8

    .line 164
    .line 165
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 166
    .line 167
    if-eqz v4, :cond_7

    .line 168
    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v5, " mCpuBooster.acquire "

    .line 178
    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :cond_7
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 190
    .line 191
    invoke-virtual {v4, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 192
    .line 193
    .line 194
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCpuBooster:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :catch_0
    const-string v1, "cpu core booster acquire failed"

    .line 198
    .line 199
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_8
    int-to-long v4, v4

    .line 204
    cmp-long v1, v7, v4

    .line 205
    .line 206
    if-gez v1, :cond_a

    .line 207
    .line 208
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCpuBooster:Z

    .line 209
    .line 210
    if-eqz v1, :cond_a

    .line 211
    .line 212
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 213
    .line 214
    if-eqz v1, :cond_9

    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v4, " mCpuBooster.release "

    .line 225
    .line 226
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 239
    .line 240
    .line 241
    iput-boolean v11, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCpuBooster:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :catch_1
    const-string v1, "cpu core booster release failed"

    .line 245
    .line 246
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    :cond_a
    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportL1ssControl:Z

    .line 250
    .line 251
    if-eqz v1, :cond_f

    .line 252
    .line 253
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mL1ssDisableThreshold:I

    .line 254
    .line 255
    int-to-long v4, v1

    .line 256
    cmp-long v4, v7, v4

    .line 257
    .line 258
    if-gtz v4, :cond_d

    .line 259
    .line 260
    int-to-long v4, v1

    .line 261
    cmp-long v1, v9, v4

    .line 262
    .line 263
    if-lez v1, :cond_b

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_b
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    .line 267
    .line 268
    if-ne v1, v3, :cond_f

    .line 269
    .line 270
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    .line 271
    .line 272
    if-eqz v1, :cond_f

    .line 273
    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 275
    .line 276
    if-eqz v0, :cond_c

    .line 277
    .line 278
    const-string v0, "mL1ss release"

    .line 279
    .line 280
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 286
    .line 287
    .line 288
    iput v11, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    .line 289
    .line 290
    :goto_5
    move v0, v3

    .line 291
    goto :goto_7

    .line 292
    :cond_d
    :goto_6
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    .line 293
    .line 294
    if-nez v1, :cond_f

    .line 295
    .line 296
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    .line 297
    .line 298
    if-eqz v1, :cond_f

    .line 299
    .line 300
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 301
    .line 302
    if-eqz v0, :cond_e

    .line 303
    .line 304
    const-string v0, "mL1ss acquire"

    .line 305
    .line 306
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 312
    .line 313
    .line 314
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_f
    :goto_7
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isSupportAffinityBooster:Z

    .line 318
    .line 319
    if-eqz v1, :cond_13

    .line 320
    .line 321
    add-long/2addr v7, v9

    .line 322
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mAffinityBoosterThreshold:I

    .line 323
    .line 324
    int-to-long v4, v1

    .line 325
    const-wide/16 v9, 0x2

    .line 326
    .line 327
    mul-long/2addr v4, v9

    .line 328
    cmp-long v4, v7, v4

    .line 329
    .line 330
    const-string v5, "Affinity "

    .line 331
    .line 332
    if-lez v4, :cond_11

    .line 333
    .line 334
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 335
    .line 336
    const/4 v4, 0x2

    .line 337
    if-eq v1, v4, :cond_13

    .line 338
    .line 339
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 340
    .line 341
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 342
    .line 343
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setAffinityBooster(Ljava/lang/String;I)Z

    .line 346
    .line 347
    .line 348
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 349
    .line 350
    if-eqz v0, :cond_10

    .line 351
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    :cond_10
    :goto_8
    move v11, v3

    .line 370
    goto :goto_9

    .line 371
    :cond_11
    int-to-long v9, v1

    .line 372
    cmp-long v1, v7, v9

    .line 373
    .line 374
    if-lez v1, :cond_12

    .line 375
    .line 376
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 377
    .line 378
    if-eq v1, v3, :cond_13

    .line 379
    .line 380
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 381
    .line 382
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 383
    .line 384
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setAffinityBooster(Ljava/lang/String;I)Z

    .line 387
    .line 388
    .line 389
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 390
    .line 391
    if-eqz v0, :cond_10

    .line 392
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    goto :goto_8

    .line 411
    :cond_12
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 412
    .line 413
    if-eqz v1, :cond_13

    .line 414
    .line 415
    iput v11, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 416
    .line 417
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 418
    .line 419
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setAffinityBooster(Ljava/lang/String;I)Z

    .line 422
    .line 423
    .line 424
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 425
    .line 426
    if-eqz v0, :cond_10

    .line 427
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 434
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_13
    move v11, v0

    .line 447
    :cond_14
    :goto_9
    if-eqz v11, :cond_15

    .line 448
    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 450
    .line 451
    .line 452
    move-result-wide v1

    .line 453
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentCstateModeValue:I

    .line 454
    .line 455
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentL1ssModeValue:I

    .line 456
    .line 457
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mCurrentAffinityMode:I

    .line 458
    .line 459
    move-object v0, p0

    .line 460
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->logBoostMode(JIII)V

    .line 461
    .line 462
    .line 463
    :cond_15
    return-void
.end method

.method private setPollingInterval()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m500msCallbacks:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x1f4

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/16 v0, 0x3e8

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    .line 17
    .line 18
    return-void
.end method

.method private startTrafficPoll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private updateStaTrafficStats()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 10
    .line 11
    const/16 v1, 0x1770

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 19
    .line 20
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficPollTime:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaTrafficStats:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getTxPackets(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    iput-wide v3, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 68
    .line 69
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 70
    .line 71
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getRxPackets(Ljava/lang/String;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    iput-wide v3, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 76
    .line 77
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->renewTrafficBytes(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 89
    .line 90
    iget-wide v3, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 91
    .line 92
    iput-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 93
    .line 94
    iget-wide v3, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 95
    .line 96
    iput-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 97
    .line 98
    iget-wide v3, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 99
    .line 100
    iput-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 101
    .line 102
    iget-wide v2, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 103
    .line 104
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mForegroundPkgList:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_4

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_3

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Ljava/lang/Integer;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    goto :goto_1

    .line 160
    :cond_4
    const/16 v0, 0x3e8

    .line 161
    .line 162
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 163
    .line 164
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 165
    .line 166
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUidTxPackets(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPacketsTopActivity:J

    .line 171
    .line 172
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 173
    .line 174
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 175
    .line 176
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUidRxPackets(I)J

    .line 177
    .line 178
    .line 179
    move-result-wide v2

    .line 180
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPacketsTopActivity:J

    .line 181
    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 183
    .line 184
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 185
    .line 186
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUidTxBytes(I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 191
    .line 192
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 193
    .line 194
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 195
    .line 196
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUidRxBytes(I)J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    .line 201
    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 203
    .line 204
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->uidTopActivity:I

    .line 205
    .line 206
    :cond_5
    return-void
.end method

.method private updateWifiTrafficStatsList()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 8
    .line 9
    const-string v1, "wlan0"

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 17
    .line 18
    and-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pIfaceName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pIfaceName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->renewTrafficBytes(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 48
    .line 49
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 50
    .line 51
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 52
    .line 53
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 54
    .line 55
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 56
    .line 57
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 58
    .line 59
    and-int/lit8 v0, v0, 0x4

    .line 60
    .line 61
    if-lez v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 64
    .line 65
    const-string v1, "aware_data0"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->renewTrafficBytes(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mWifiAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 87
    .line 88
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 89
    .line 90
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 91
    .line 92
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 93
    .line 94
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 95
    .line 96
    :cond_2
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 97
    .line 98
    and-int/lit8 v0, v0, 0x8

    .line 99
    .line 100
    if-lez v0, :cond_5

    .line 101
    .line 102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->MHS_INTERFACE_NAME:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    const-wide/16 v1, 0x0

    .line 115
    .line 116
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mMhsRxBytes:J

    .line 117
    .line 118
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->isMHSEbpfSupported()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_3

    .line 123
    .line 124
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->getSoftApTotalTrafficInBytes()J

    .line 125
    .line 126
    .line 127
    move-result-wide v3

    .line 128
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mMhsRxBytes:J

    .line 129
    .line 130
    :cond_3
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mMhsRxBytes:J

    .line 131
    .line 132
    cmp-long v5, v3, v1

    .line 133
    .line 134
    if-lez v5, :cond_4

    .line 135
    .line 136
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 137
    .line 138
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 139
    .line 140
    return-void

    .line 141
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->MHS_INTERFACE_NAME:Ljava/lang/String;

    .line 142
    .line 143
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->renewTrafficBytes(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    new-instance p3, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mHistory:Ljava/util/LinkedList;

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
    const-string p0, "SemWifiTrafficPoller history:"

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
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getPollingInterval()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPollingInterval:I

    .line 2
    .line 3
    return p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    iget-boolean v0, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getMaxSupportedTxLinkSpeedMbps()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mMaxSupportedTxLinkSpeed:I

    .line 15
    .line 16
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaTrafficStats:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 27
    .line 28
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaTrafficStats:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 43
    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 47
    .line 48
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mTrafficStatsList:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mMaxSupportedTxLinkSpeed:I

    .line 64
    .line 65
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnectedStaIfaces:Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-lez p1, :cond_5

    .line 77
    .line 78
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mInterfaceNameProvider:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 79
    .line 80
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mStaPrimaryIfaceName:Ljava/lang/String;

    .line 87
    .line 88
    :cond_4
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 89
    .line 90
    or-int/lit8 p1, p1, 0x1

    .line 91
    .line 92
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 96
    .line 97
    and-int/lit8 p1, p1, -0x2

    .line 98
    .line 99
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 100
    .line 101
    :goto_1
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mConnected:I

    .line 102
    .line 103
    if-lez p1, :cond_6

    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mPolled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_6

    .line 112
    .line 113
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->startTrafficPoll()V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_2
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->sendCallbackRegistrationMessage(ILandroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p1, "callback must not be null"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public registerCallbackForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->sendCallbackRegistrationMessage(ILandroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p1, "callback must not be null"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->sendCallbackRegistrationMessage(ILandroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p1, "callback must not be null"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public unregisterCallbackForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->mBoostHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->sendCallbackRegistrationMessage(ILandroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p1, "callback must not be null"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
