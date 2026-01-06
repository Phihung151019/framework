.class public final Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;,
        Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$SemWifiApServiceDetectionCallback;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x7d0

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiApServiceDetector history:"

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field private static final NSDP_USE_UDP_MODEL:Ljava/lang/String; = "enable"

.field private static final NSD_HS_ACCESS:Ljava/lang/String; = "enable"

.field private static final NSD_HS_PRIO:Ljava/lang/String; = "com.samsung.android.wifi.NSD_HS_PRIO"

.field public static final NUM_NSDP_INPUT_FEATURES:I = 0x3c

.field private static final SERVICE_DETECTION_ACTIVATION:I = 0x3

.field private static final SERVICE_DETECTION_AI_SERVICE_BOUND:I = 0x6

.field private static final SERVICE_DETECTION_CALLBACK_REGISTRATION:I = 0x7

.field private static final SERVICE_DETECTION_CALLBACK_UNREGISTRATION:I = 0x8

.field static final SERVICE_DETECTION_DEACTIVATION:I = 0x4

.field private static final SERVICE_DETECTION_DISABLE_PRIORITY:I = 0xb

.field private static final SERVICE_DETECTION_ENABLE_PRIORITY:I = 0xa

.field private static final SERVICE_DETECTION_FEEDBACK:I = 0x9

.field private static final SERVICE_UPDATE_INTERVAL_MS:I = 0x1f4

.field static final SERVICE_UPDATE_POLL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiApServiceDetector"

.field public static final WIN_SIZE_4_MAIN_SER_CAT:I = 0xc


# instance fields
.field private final Callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$SemWifiApServiceDetectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final IP_DELETE_THRESHOLD:I

.field private final IP_MAX_THRESHOLD:I

.field private final LRU_CACHE_CAPACITY:I

.field public NUM_NSDP_FEATURES_PER_TS:I

.field iMhsAiService:Lcom/samsung/android/mhs/ai/ISemMhsAiService;

.field private isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isMhsAiServiceBinded:Z

.field private isMlLibraryReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mConManager:Landroid/net/ConnectivityManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrConvoPredMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDetectRT:Z

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsPriorityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTimeStep:I

.field private mNumClass:[I

.field private mNumTimeStep:[I

.field private mPriorityTimeCounter:I

.field private mRtV4IpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRtV6IpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSemApTrafficStatsMonitor:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

.field private final mSemServiceInfo:Lcom/samsung/android/server/wifi/ap/smartprio/SemApServiceInfo;

.field private final mServiceDetectionHandler:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

.field private final mServiceUpdateActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSoftApEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTrafficStatsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;",
            ">;"
        }
    .end annotation
.end field

.field private mUseUdpMlModel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerboseLoggingEnabled:Z

.field private nrtBytes:F

.field private rtBytes:F

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

.field private final toastEngOrDebug:Z


# direct methods
.method public static synthetic $r8$lambda$FHa7y3s2UR3wtd5G4L42t4cVY-w(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->lambda$handleBootCompleted$0(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetCallbacks(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->Callbacks:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisDataColModeEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisMhsAiServiceBinded(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isMhsAiServiceBinded:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisMlLibraryReady(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isMlLibraryReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConnection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPriorityEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mIsPriorityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemApTrafficStatsMonitor(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSemApTrafficStatsMonitor:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceUpdateActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSoftApEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseUdpMlModel(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mUseUdpMlModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettoastEngOrDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->toastEngOrDebug:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputisMhsAiServiceBinded(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isMhsAiServiceBinded:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mdecidePriority(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->decidePriority()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$moperateNsd(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->operateNsd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mresetPriorityVariables(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->resetPriorityVariables()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mresetVariables(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->resetVariables()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartServiceDetectionPoll(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->startServiceDetectionPoll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->NUM_NSDP_FEATURES_PER_TS:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->LRU_CACHE_CAPACITY:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mMinTimeStep:I

    .line 12
    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSoftApEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mVerboseLoggingEnabled:Z

    .line 21
    .line 22
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceUpdateActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mIsPriorityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const/4 v2, 0x7

    .line 37
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->IP_MAX_THRESHOLD:I

    .line 38
    .line 39
    const/16 v2, -0xb

    .line 40
    .line 41
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->IP_DELETE_THRESHOLD:I

    .line 42
    .line 43
    new-instance v2, Ljava/util/LinkedList;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isMhsAiServiceBinded:Z

    .line 51
    .line 52
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isMlLibraryReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->rtBytes:F

    .line 61
    .line 62
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->nrtBytes:F

    .line 63
    .line 64
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDetectRT:Z

    .line 80
    .line 81
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mUseUdpMlModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    const-string v2, "eng"

    .line 89
    .line 90
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_0

    .line 97
    .line 98
    const-string v2, "userdebug"

    .line 99
    .line 100
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    :cond_0
    move v1, v3

    .line 109
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->toastEngOrDebug:Z

    .line 110
    .line 111
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$1;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$1;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V

    .line 114
    .line 115
    .line 116
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConnection:Landroid/content/ServiceConnection;

    .line 117
    .line 118
    new-instance v1, Ljava/util/HashSet;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->Callbacks:Ljava/util/Set;

    .line 124
    .line 125
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 128
    .line 129
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-direct {v1, p0, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;Landroid/os/Looper;)V

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 137
    .line 138
    const-string p2, "connectivity"

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 145
    .line 146
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConManager:Landroid/net/ConnectivityManager;

    .line 147
    .line 148
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemApServiceInfo;

    .line 149
    .line 150
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApServiceInfo;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/ap/smartprio/SemApServiceInfo;

    .line 154
    .line 155
    new-instance p1, Landroid/util/LruCache;

    .line 156
    .line 157
    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 158
    .line 159
    .line 160
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 161
    .line 162
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 163
    .line 164
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 168
    .line 169
    new-instance p1, Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 175
    .line 176
    new-instance p1, Ljava/util/HashMap;

    .line 177
    .line 178
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 182
    .line 183
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

    .line 184
    .line 185
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSemApTrafficStatsMonitor:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

    .line 189
    .line 190
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->setDebugMode(Z)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mUseUdpMlModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_2

    .line 206
    .line 207
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->NUM_NSDP_FEATURES_PER_TS:I

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_2
    const/16 p1, 0xa

    .line 211
    .line 212
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->NUM_NSDP_FEATURES_PER_TS:I

    .line 213
    .line 214
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->registerBR()V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method private decidePriority()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->prepNsdOutput()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "SemWifiApServiceDetector"

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq v2, v4, :cond_0

    .line 15
    .line 16
    const-string v0, "Error curIpSetList.size() has to be 2"

    .line 17
    .line 18
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Ljava/util/Set;

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Set;

    .line 35
    .line 36
    new-instance v7, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v8, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v9, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v10, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    const/4 v13, 0x7

    .line 65
    const-string v14, "_"

    .line 66
    .line 67
    if-eqz v12, :cond_6

    .line 68
    .line 69
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    check-cast v12, Ljava/lang/String;

    .line 74
    .line 75
    iget-object v15, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {v15, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    if-eqz v15, :cond_2

    .line 82
    .line 83
    iget-object v14, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 84
    .line 85
    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    check-cast v14, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    if-ge v14, v13, :cond_1

    .line 96
    .line 97
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 98
    .line 99
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    check-cast v14, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    add-int/2addr v14, v6

    .line 110
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v14

    .line 114
    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSemApTrafficStatsMonitor:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

    .line 119
    .line 120
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->getDebugStatus()Z

    .line 121
    .line 122
    .line 123
    move-result v13

    .line 124
    if-eqz v13, :cond_4

    .line 125
    .line 126
    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    array-length v14, v13

    .line 131
    if-eq v14, v4, :cond_3

    .line 132
    .line 133
    const-string v13, "IPv4 add conversation splitting error: "

    .line 134
    .line 135
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    const/4 v15, 0x0

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    aget-object v15, v13, v6

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    move-object v15, v12

    .line 148
    :goto_1
    if-eqz v15, :cond_5

    .line 149
    .line 150
    invoke-direct {v0, v15}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isValidIPAddress(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    if-eqz v13, :cond_5

    .line 155
    .line 156
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 157
    .line 158
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_5
    if-eqz v15, :cond_1

    .line 170
    .line 171
    const-string v12, "IPv4 add address for prio is not valid: "

    .line 172
    .line 173
    invoke-virtual {v12, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_6
    new-instance v11, Ljava/util/HashSet;

    .line 182
    .line 183
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 184
    .line 185
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v11, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 193
    .line 194
    .line 195
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    const/16 v12, -0xb

    .line 204
    .line 205
    if-eqz v11, :cond_b

    .line 206
    .line 207
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    check-cast v11, Ljava/lang/String;

    .line 212
    .line 213
    iget-object v15, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 214
    .line 215
    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v16

    .line 219
    check-cast v16, Ljava/lang/Integer;

    .line 220
    .line 221
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    .line 222
    .line 223
    .line 224
    move-result v16

    .line 225
    add-int/lit8 v16, v16, -0x1

    .line 226
    .line 227
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-interface {v15, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 235
    .line 236
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    check-cast v2, Ljava/lang/Integer;

    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-gt v2, v12, :cond_a

    .line 247
    .line 248
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSemApTrafficStatsMonitor:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->getDebugStatus()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_8

    .line 255
    .line 256
    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    array-length v12, v2

    .line 261
    if-eq v12, v4, :cond_7

    .line 262
    .line 263
    const-string v2, "IPv4 del conversation splitting error: "

    .line 264
    .line 265
    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    const/4 v2, 0x0

    .line 273
    goto :goto_3

    .line 274
    :cond_7
    aget-object v2, v2, v6

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_8
    move-object v2, v11

    .line 278
    :goto_3
    if-eqz v2, :cond_9

    .line 279
    .line 280
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    :cond_9
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 284
    .line 285
    invoke-interface {v2, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    :cond_a
    const/4 v2, 0x0

    .line 289
    goto :goto_2

    .line 290
    :cond_b
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-eqz v5, :cond_11

    .line 299
    .line 300
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    check-cast v5, Ljava/lang/String;

    .line 305
    .line 306
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 307
    .line 308
    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    if-eqz v11, :cond_c

    .line 313
    .line 314
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 315
    .line 316
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    check-cast v11, Ljava/lang/Integer;

    .line 321
    .line 322
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    if-ge v11, v13, :cond_10

    .line 327
    .line 328
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 329
    .line 330
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v15

    .line 334
    check-cast v15, Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v15

    .line 340
    add-int/2addr v15, v6

    .line 341
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v15

    .line 345
    invoke-interface {v11, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_c
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSemApTrafficStatsMonitor:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

    .line 350
    .line 351
    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->getDebugStatus()Z

    .line 352
    .line 353
    .line 354
    move-result v11

    .line 355
    if-eqz v11, :cond_e

    .line 356
    .line 357
    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    array-length v15, v11

    .line 362
    if-eq v15, v4, :cond_d

    .line 363
    .line 364
    const-string v11, "IPv6 add conversation splitting error: "

    .line 365
    .line 366
    invoke-virtual {v11, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    const/4 v11, 0x0

    .line 374
    goto :goto_5

    .line 375
    :cond_d
    aget-object v11, v11, v6

    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_e
    move-object v11, v5

    .line 379
    :goto_5
    if-eqz v11, :cond_f

    .line 380
    .line 381
    invoke-direct {v0, v11}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isValidIPAddress(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v15

    .line 385
    if-eqz v15, :cond_f

    .line 386
    .line 387
    iget-object v15, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 388
    .line 389
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v13

    .line 393
    invoke-interface {v15, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_f
    if-eqz v11, :cond_10

    .line 401
    .line 402
    const-string v5, "IPv6 add address for prio is not valid: "

    .line 403
    .line 404
    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    :cond_10
    :goto_6
    const/4 v13, 0x7

    .line 412
    goto :goto_4

    .line 413
    :cond_11
    new-instance v2, Ljava/util/HashSet;

    .line 414
    .line 415
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 416
    .line 417
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 422
    .line 423
    .line 424
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    :cond_12
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-eqz v2, :cond_16

    .line 436
    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    check-cast v2, Ljava/lang/String;

    .line 442
    .line 443
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 444
    .line 445
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v11

    .line 449
    check-cast v11, Ljava/lang/Integer;

    .line 450
    .line 451
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result v11

    .line 455
    sub-int/2addr v11, v6

    .line 456
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v11

    .line 460
    invoke-interface {v5, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 464
    .line 465
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    check-cast v5, Ljava/lang/Integer;

    .line 470
    .line 471
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 472
    .line 473
    .line 474
    move-result v5

    .line 475
    if-gt v5, v12, :cond_12

    .line 476
    .line 477
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSemApTrafficStatsMonitor:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

    .line 478
    .line 479
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->getDebugStatus()Z

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    if-eqz v5, :cond_14

    .line 484
    .line 485
    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    array-length v11, v5

    .line 490
    if-eq v11, v4, :cond_13

    .line 491
    .line 492
    const-string v5, "IPv6 del conversation splitting error: "

    .line 493
    .line 494
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    const/4 v5, 0x0

    .line 502
    goto :goto_8

    .line 503
    :cond_13
    aget-object v5, v5, v6

    .line 504
    .line 505
    goto :goto_8

    .line 506
    :cond_14
    move-object v5, v2

    .line 507
    :goto_8
    if-eqz v5, :cond_15

    .line 508
    .line 509
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    :cond_15
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 513
    .line 514
    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    goto :goto_7

    .line 518
    :cond_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    const-string v2, "; v6: "

    .line 523
    .line 524
    if-eqz v1, :cond_17

    .line 525
    .line 526
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-nez v1, :cond_18

    .line 531
    .line 532
    :cond_17
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->updateIpPrioList(ZLjava/util/List;Ljava/util/List;)I

    .line 541
    .line 542
    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    const-string v5, "Update priority - Add v4: "

    .line 546
    .line 547
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    :cond_18
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    if-eqz v1, :cond_19

    .line 571
    .line 572
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    if-nez v1, :cond_1a

    .line 577
    .line 578
    :cond_19
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    const/4 v5, 0x0

    .line 587
    invoke-virtual {v1, v5, v9, v10}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->updateIpPrioList(ZLjava/util/List;Ljava/util/List;)I

    .line 588
    .line 589
    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    const-string v5, "Update priority - Del v4: "

    .line 593
    .line 594
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .line 612
    .line 613
    :cond_1a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mIsPriorityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 614
    .line 615
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-nez v1, :cond_1b

    .line 620
    .line 621
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 622
    .line 623
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 628
    .line 629
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 630
    .line 631
    .line 632
    move-result v2

    .line 633
    add-int/2addr v2, v1

    .line 634
    if-lez v2, :cond_1b

    .line 635
    .line 636
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 637
    .line 638
    const/16 v2, 0xa

    .line 639
    .line 640
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 645
    .line 646
    .line 647
    :cond_1b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 648
    .line 649
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 650
    .line 651
    .line 652
    move-result v1

    .line 653
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 654
    .line 655
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    add-int/2addr v2, v1

    .line 660
    if-gtz v2, :cond_1c

    .line 661
    .line 662
    iget v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mPriorityTimeCounter:I

    .line 663
    .line 664
    add-int/2addr v1, v6

    .line 665
    iput v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mPriorityTimeCounter:I

    .line 666
    .line 667
    goto :goto_9

    .line 668
    :cond_1c
    const/4 v5, 0x0

    .line 669
    iput v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mPriorityTimeCounter:I

    .line 670
    .line 671
    :goto_9
    iget v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mPriorityTimeCounter:I

    .line 672
    .line 673
    const/16 v2, 0x1e

    .line 674
    .line 675
    if-lt v1, v2, :cond_1d

    .line 676
    .line 677
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mIsPriorityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 678
    .line 679
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    if-eqz v1, :cond_1d

    .line 684
    .line 685
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 686
    .line 687
    const/16 v2, 0xb

    .line 688
    .line 689
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 694
    .line 695
    .line 696
    :cond_1d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 697
    .line 698
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 699
    .line 700
    .line 701
    move-result v1

    .line 702
    if-eqz v1, :cond_2a

    .line 703
    .line 704
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 705
    .line 706
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 711
    .line 712
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    add-int/2addr v2, v1

    .line 717
    const-string v1, "=null"

    .line 718
    .line 719
    if-lt v2, v6, :cond_24

    .line 720
    .line 721
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 722
    .line 723
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 724
    .line 725
    .line 726
    move-result v2

    .line 727
    const-string v5, " --- v6: "

    .line 728
    .line 729
    const-string v7, "Real-time --- v4: "

    .line 730
    .line 731
    if-eqz v2, :cond_22

    .line 732
    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    const-string v8, "{"

    .line 736
    .line 737
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    new-instance v9, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 746
    .line 747
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 748
    .line 749
    .line 750
    move-result-object v8

    .line 751
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 752
    .line 753
    .line 754
    move-result-object v8

    .line 755
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 756
    .line 757
    .line 758
    move-result v10

    .line 759
    const-string v11, "; "

    .line 760
    .line 761
    const-string v12, "="

    .line 762
    .line 763
    if-eqz v10, :cond_1f

    .line 764
    .line 765
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v10

    .line 769
    check-cast v10, Ljava/lang/String;

    .line 770
    .line 771
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getStrIpConvo(Ljava/lang/String;)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v13

    .line 775
    if-nez v13, :cond_1e

    .line 776
    .line 777
    invoke-static {v10, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v13

    .line 781
    :cond_1e
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 788
    .line 789
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v10

    .line 793
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    goto :goto_a

    .line 800
    :cond_1f
    const-string v8, "}"

    .line 801
    .line 802
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 806
    .line 807
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 808
    .line 809
    .line 810
    move-result-object v10

    .line 811
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 812
    .line 813
    .line 814
    move-result-object v10

    .line 815
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 816
    .line 817
    .line 818
    move-result v13

    .line 819
    if-eqz v13, :cond_21

    .line 820
    .line 821
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v13

    .line 825
    check-cast v13, Ljava/lang/String;

    .line 826
    .line 827
    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getStrIpConvo(Ljava/lang/String;)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v14

    .line 831
    if-nez v14, :cond_20

    .line 832
    .line 833
    invoke-static {v13, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v14

    .line 837
    :cond_20
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    iget-object v14, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 844
    .line 845
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v13

    .line 849
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    goto :goto_b

    .line 856
    :cond_21
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    new-instance v8, Ljava/lang/StringBuilder;

    .line 860
    .line 861
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 878
    .line 879
    .line 880
    goto :goto_c

    .line 881
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 887
    .line 888
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 895
    .line 896
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 904
    .line 905
    .line 906
    :goto_c
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDetectRT:Z

    .line 907
    .line 908
    if-nez v2, :cond_26

    .line 909
    .line 910
    iput-boolean v6, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDetectRT:Z

    .line 911
    .line 912
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->toastEngOrDebug:Z

    .line 913
    .line 914
    const-string v5, "Detect RT service(s)."

    .line 915
    .line 916
    if-eqz v2, :cond_23

    .line 917
    .line 918
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mContext:Landroid/content/Context;

    .line 919
    .line 920
    invoke-static {v2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 925
    .line 926
    .line 927
    :cond_23
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    goto :goto_d

    .line 931
    :cond_24
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDetectRT:Z

    .line 932
    .line 933
    if-eqz v2, :cond_26

    .line 934
    .line 935
    const/4 v5, 0x0

    .line 936
    iput-boolean v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDetectRT:Z

    .line 937
    .line 938
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->toastEngOrDebug:Z

    .line 939
    .line 940
    const-string v5, "No more RT service(s) detected."

    .line 941
    .line 942
    if-eqz v2, :cond_25

    .line 943
    .line 944
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mContext:Landroid/content/Context;

    .line 945
    .line 946
    invoke-static {v2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 947
    .line 948
    .line 949
    move-result-object v2

    .line 950
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 951
    .line 952
    .line 953
    :cond_25
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    .line 955
    .line 956
    :cond_26
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 957
    .line 958
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    .line 960
    .line 961
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 962
    .line 963
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 964
    .line 965
    .line 966
    move-result v3

    .line 967
    if-eqz v3, :cond_2a

    .line 968
    .line 969
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 970
    .line 971
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 972
    .line 973
    .line 974
    move-result v3

    .line 975
    const-string v5, "}; "

    .line 976
    .line 977
    const-string v6, ": {"

    .line 978
    .line 979
    const-string v7, "Convo key "

    .line 980
    .line 981
    if-eqz v3, :cond_28

    .line 982
    .line 983
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 984
    .line 985
    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 990
    .line 991
    .line 992
    move-result-object v3

    .line 993
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 994
    .line 995
    .line 996
    move-result v8

    .line 997
    if-eqz v8, :cond_29

    .line 998
    .line 999
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v8

    .line 1003
    check-cast v8, Ljava/lang/String;

    .line 1004
    .line 1005
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getStrIpConvo(Ljava/lang/String;)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v9

    .line 1009
    if-nez v9, :cond_27

    .line 1010
    .line 1011
    invoke-static {v8, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v9

    .line 1015
    :cond_27
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 1025
    .line 1026
    invoke-interface {v9, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v8

    .line 1030
    check-cast v8, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;

    .line 1031
    .line 1032
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->toString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v8

    .line 1036
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    goto :goto_e

    .line 1043
    :cond_28
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 1044
    .line 1045
    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v1

    .line 1053
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1054
    .line 1055
    .line 1056
    move-result v3

    .line 1057
    if-eqz v3, :cond_29

    .line 1058
    .line 1059
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v3

    .line 1063
    check-cast v3, Ljava/lang/String;

    .line 1064
    .line 1065
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 1075
    .line 1076
    invoke-interface {v8, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v3

    .line 1080
    check-cast v3, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;

    .line 1081
    .line 1082
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->toString()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v3

    .line 1086
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    goto :goto_f

    .line 1093
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    const-string v3, "Convo-ser map: "

    .line 1096
    .line 1097
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v1

    .line 1107
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 1108
    .line 1109
    .line 1110
    :cond_2a
    return-void
.end method

.method private formCurrConvoPredMap([I[Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mCurrConvoPredMap:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    array-length v1, p2

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mCurrConvoPredMap:Ljava/util/concurrent/ConcurrentMap;

    .line 13
    .line 14
    aget-object v2, p2, v0

    .line 15
    .line 16
    aget v3, p1, v0

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x2

    .line 43
    const-string v0, "Current convo-service pred: "

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "{"

    .line 50
    .line 51
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getStrIpConvo(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    const-string v3, "=null"

    .line 83
    .line 84
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, "="

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 97
    .line 98
    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, ";"

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const-string v1, "}"

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mCurrConvoPredMap:Ljava/util/concurrent/ConcurrentMap;

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    :cond_4
    return-void
.end method

.method private isValidIPAddress(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getStrIpAddrFromDecimal(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "SemWifiApServiceDetector"

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "IP Address validation failed. Cannot convert IP Decimal: "

    .line 11
    .line 12
    invoke-static {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    instance-of p1, p0, Ljava/net/Inet4Address;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    instance-of p0, p0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    return v2

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "Unknown IP addresses. Error message: "

    .line 35
    .line 36
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_2
    return v0
.end method

.method private synthetic lambda$handleBootCompleted$0(IIILjava/lang/String;)V
    .locals 0

    .line 1
    const/16 p2, 0xd

    .line 2
    .line 3
    const-string p3, "SemWifiApServiceDetector"

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    const-string p1, "SoftAp state is enabled"

    .line 8
    .line 9
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSoftApEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/16 p2, 0xb

    .line 20
    .line 21
    if-eq p1, p2, :cond_2

    .line 22
    .line 23
    const/16 p2, 0xe

    .line 24
    .line 25
    if-ne p1, p2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void

    .line 29
    :cond_2
    :goto_0
    const-string p1, "SoftAp state is disabled"

    .line 30
    .line 31
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSoftApEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private operateNsd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSemApTrafficStatsMonitor:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->getApTrafficStatsMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mTrafficStatsMap:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "TrafficMap: "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mTrafficStatsMap:Ljava/util/Map;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "SemWifiApServiceDetector"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mTrafficStatsMap:Ljava/util/Map;

    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->updateLruCache(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->queryNsdOnLruCache()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private prepNsdOutput()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->updateConvoBufferMap()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->rtBytes:F

    .line 21
    .line 22
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mTrafficStatsMap:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const-string v6, "SemWifiApServiceDetector"

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/lang/String;

    .line 45
    .line 46
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mTrafficStatsMap:Ljava/util/Map;

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    if-eqz v7, :cond_0

    .line 55
    .line 56
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mTrafficStatsMap:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getTotalBytes()F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    add-float/2addr v5, v3

    .line 69
    move v3, v5

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const-string v7, "mTrafficStatsMap.get key: is null"

    .line 72
    .line 73
    invoke-static {v7, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Ljava/lang/String;

    .line 102
    .line 103
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 104
    .line 105
    invoke-interface {v7, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;

    .line 110
    .line 111
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->getSerPred()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    const/4 v8, 0x1

    .line 116
    if-ge v7, v8, :cond_2

    .line 117
    .line 118
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 119
    .line 120
    invoke-interface {v7, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    check-cast v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;

    .line 125
    .line 126
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->getVersion()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    const/4 v8, 0x4

    .line 131
    if-ne v7, v8, :cond_3

    .line 132
    .line 133
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mTrafficStatsMap:Ljava/util/Map;

    .line 141
    .line 142
    if-eqz v7, :cond_4

    .line 143
    .line 144
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    if-eqz v7, :cond_4

    .line 149
    .line 150
    iget v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->rtBytes:F

    .line 151
    .line 152
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mTrafficStatsMap:Ljava/util/Map;

    .line 153
    .line 154
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 159
    .line 160
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getTotalBytes()F

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    add-float/2addr v5, v7

    .line 165
    iput v5, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->rtBytes:F

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    const-string v7, "mTrafficStatsMap.get key : is null"

    .line 169
    .line 170
    invoke-static {v7, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_5
    iget v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->rtBytes:F

    .line 179
    .line 180
    sub-float v4, v3, v4

    .line 181
    .line 182
    iput v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->nrtBytes:F

    .line 183
    .line 184
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    float-to-int v3, v3

    .line 193
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->rtBytes:F

    .line 194
    .line 195
    float-to-int p0, p0

    .line 196
    invoke-virtual {v4, v3, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->updateRtStats(II)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    return-object v0
.end method

.method private queryNsdOnLruCache()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/16 v3, 0x3c

    .line 12
    .line 13
    aput v3, v1, v2

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0xc

    .line 17
    .line 18
    aput v4, v1, v3

    .line 19
    .line 20
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, [[F

    .line 27
    .line 28
    new-array v5, v4, [Ljava/lang/String;

    .line 29
    .line 30
    new-array v4, v4, [I

    .line 31
    .line 32
    new-instance v6, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move v7, v3

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    const-string v9, "SemWifiApServiceDetector"

    .line 51
    .line 52
    if-eqz v8, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Ljava/lang/String;

    .line 59
    .line 60
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 61
    .line 62
    invoke-virtual {v10, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    check-cast v10, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;

    .line 67
    .line 68
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->getBuffer()Ljava/util/LinkedList;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    iget v12, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mMinTimeStep:I

    .line 77
    .line 78
    if-ge v11, v12, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    :try_start_0
    iget-object v12, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mUseUdpMlModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    if-eqz v12, :cond_2

    .line 88
    .line 89
    iget v12, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->NUM_NSDP_FEATURES_PER_TS:I

    .line 90
    .line 91
    invoke-virtual {v10, v12}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->calculateStats(I)[F

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const-string v12, "Calculate stats"

    .line 96
    .line 97
    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception v9

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    iget v12, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->NUM_NSDP_FEATURES_PER_TS:I

    .line 104
    .line 105
    invoke-virtual {v10, v12, v11}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->convertTrafficData2Array(II)[F

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    const-string v12, "Use 10f per ts"

    .line 110
    .line 111
    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :goto_1
    aget-object v9, v1, v7

    .line 115
    .line 116
    array-length v12, v10

    .line 117
    invoke-static {v10, v3, v9, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    .line 119
    .line 120
    aput-object v8, v5, v7

    .line 121
    .line 122
    aput v11, v4, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    add-int/lit8 v7, v7, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {p0, v9, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 138
    .line 139
    invoke-interface {v9, v8}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_0

    .line 144
    .line 145
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 146
    .line 147
    invoke-interface {v9, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    check-cast v9, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;

    .line 152
    .line 153
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    .line 159
    invoke-direct {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 160
    .line 161
    .line 162
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 163
    .line 164
    if-lez v7, :cond_5

    .line 165
    .line 166
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->iMhsAiService:Lcom/samsung/android/mhs/ai/ISemMhsAiService;

    .line 167
    .line 168
    if-eqz p0, :cond_4

    .line 169
    .line 170
    invoke-interface {p0, v1, v5, v4, v7}, Lcom/samsung/android/mhs/ai/ISemMhsAiService;->serviceTypeQuery([[F[Ljava/lang/String;[II)V

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :catch_1
    move-exception p0

    .line 175
    goto :goto_4

    .line 176
    :cond_4
    const-string p0, "iMhsAiService object is null: "

    .line 177
    .line 178
    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :goto_4
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v1, "AI Inference Error: "

    .line 188
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_5
    :goto_5
    return-void
.end method

.method private registerBR()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$2;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v3, "com.samsung.android.wifi.NSD_HS_PRIO"

    .line 11
    .line 12
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "samsung.framework.smartprio.toggle_datcol"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "samsung.framework.smartprio.get_datcol"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "samsung.framework.smartprio.toggle_debug"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "samsung.framework.smartprio.get_debug"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private resetPriorityVariables()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mPriorityTimeCounter:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mIsPriorityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->disablePriority()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mIsPriorityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    const-string v1, "SemWifiApServiceDetector"

    .line 29
    .line 30
    const-string v2, "Update priority - Disable priority and clear all."

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mCurrConvoPredMap:Ljava/util/concurrent/ConcurrentMap;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV4IpMap:Ljava/util/Map;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mRtV6IpMap:Ljava/util/Map;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 59
    .line 60
    .line 61
    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDetectRT:Z

    .line 62
    .line 63
    return-void
.end method

.method private resetVariables()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->resetPriorityVariables()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceUpdateActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private startServiceDetectionPoll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 8
    .line 9
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v1, 0x1f4

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private updateConvoBufferMap()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mCurrConvoPredMap:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

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
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "SemWifiApServiceDetector"

    .line 16
    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mCurrConvoPredMap:Ljava/util/concurrent/ConcurrentMap;

    .line 26
    .line 27
    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Integer;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 39
    .line 40
    invoke-virtual {v4, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v4, 0x0

    .line 48
    :goto_1
    if-nez v4, :cond_2

    .line 49
    .line 50
    const-string v1, "Something is wrong. currConvoPredMap Convo key should be in the LRU Cache."

    .line 51
    .line 52
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 57
    .line 58
    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    .line 66
    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->update(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mNumClass:[I

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    aget v5, v5, v6

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->getIpVersion()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    const/16 v6, 0xc

    .line 92
    .line 93
    invoke-direct {v2, v1, v6, v5, v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;-><init>(Ljava/lang/String;III)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->update(I)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 104
    .line 105
    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const-string v1, "Convo Buffer Map: "

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v3, "{"

    .line 130
    .line 131
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 135
    .line 136
    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_6

    .line 149
    .line 150
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getStrIpConvo(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    if-nez v5, :cond_5

    .line 161
    .line 162
    const-string v5, "=null"

    .line 163
    .line 164
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v5, "="

    .line 172
    .line 173
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 177
    .line 178
    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;

    .line 183
    .line 184
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v4, "; "

    .line 192
    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_6
    const-string p0, "}"

    .line 198
    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    new-instance p0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mConvoBufferMap:Ljava/util/concurrent/ConcurrentMap;

    .line 224
    .line 225
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    :cond_8
    return-void
.end method

.method private updateLruCache(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->hasMaxBlank()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->addBlank2Buffer()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const-string v3, "=null"

    .line 86
    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/String;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 96
    .line 97
    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;

    .line 102
    .line 103
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 108
    .line 109
    if-nez v4, :cond_3

    .line 110
    .line 111
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 112
    .line 113
    iget-object v6, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->key:Ljava/lang/String;

    .line 114
    .line 115
    new-instance v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;

    .line 116
    .line 117
    invoke-direct {v7, v5}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v6, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->updateBuffer(Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;)V

    .line 125
    .line 126
    .line 127
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_2

    .line 134
    .line 135
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    const-string v6, "]"

    .line 142
    .line 143
    const-string v7, " --- ["

    .line 144
    .line 145
    if-eqz v4, :cond_5

    .line 146
    .line 147
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getStrIpConvo(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    if-nez v4, :cond_4

    .line 152
    .line 153
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_b

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    const/4 v1, 0x2

    .line 196
    if-lez p1, :cond_7

    .line 197
    .line 198
    const/4 p1, 0x0

    .line 199
    const-string v2, "Cache traffic: "

    .line 200
    .line 201
    invoke-virtual {v0, p1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v0, "Cache data poll: "

    .line 214
    .line 215
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_a

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    check-cast v2, Ljava/lang/String;

    .line 243
    .line 244
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_8

    .line 251
    .line 252
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->getStrIpConvo(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    if-nez v4, :cond_9

    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v5, "Cache data poll --- Cannot convert convoKey: "

    .line 261
    .line 262
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v5, " to standard IP form."

    .line 269
    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    const-string v5, "SemWifiApServiceDetector"

    .line 278
    .line 279
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    goto :goto_4

    .line 298
    :cond_8
    move-object v4, v2

    .line 299
    :cond_9
    :goto_4
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 300
    .line 301
    invoke-virtual {v5, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    check-cast v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;

    .line 306
    .line 307
    const-string v5, "Convo: ["

    .line 308
    .line 309
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v4, "] --- Buffer content: "

    .line 316
    .line 317
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApCacheElement;->buffer2String()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v2, ";end "

    .line 328
    .line 329
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 338
    .line 339
    .line 340
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mSemApTrafficStatsMonitor:Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

    .line 341
    .line 342
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mLruCache:Landroid/util/LruCache;

    .line 343
    .line 344
    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->updateCurConvoSet(Ljava/util/Set;)V

    .line 353
    .line 354
    .line 355
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;I)V
    .locals 3

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mVerboseLoggingEnabled:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SemWifiApServiceDetector"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x2

    .line 14
    if-ne p2, v0, :cond_2

    .line 15
    .line 16
    const-string p2, "SemWifiApServiceDetector"

    .line 17
    .line 18
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const-string p2, "SemWifiApServiceDetector"

    .line 23
    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    :try_start_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 28
    .line 29
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/util/Date;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, " "

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 68
    .line 69
    monitor-enter p2

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/16 v0, 0x7d0

    .line 82
    .line 83
    if-le p1, v0, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    monitor-exit p2

    .line 94
    return-void

    .line 95
    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    const-string p1, "SemWifiApServiceDetector"

    .line 99
    .line 100
    const-string p2, "format problem"

    .line 101
    .line 102
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string p0, "SemWifiApServiceDetector history:"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

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
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v0
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
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getRtNrtBytes()[F
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->rtBytes:F

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->nrtBytes:F

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput v0, v1, v2

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput p0, v1, v0

    .line 13
    .line 14
    return-object v1
.end method

.method public handleBootCompleted()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->isDcModeEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Is data collection mode enabled: "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isDataColModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v0, "SemWifiApServiceDetector"

    .line 57
    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$SemWifiApServiceDetectionCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 4
    .line 5
    const/4 v0, 0x7

    .line 6
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p1, "callback must not be null"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public setMhsAiServiceNsdResult([I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->formCurrConvoPredMap([I[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 5
    .line 6
    const/16 p1, 0x9

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setMhsAiServiceState(Z[I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->isMlLibraryReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mNumClass:[I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mNumTimeStep:[I

    .line 9
    .line 10
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/stream/IntStream;->summaryStatistics()Ljava/util/IntSummaryStatistics;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/util/IntSummaryStatistics;->getMin()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mMinTimeStep:I

    .line 23
    .line 24
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$SemWifiApServiceDetectionCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

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
