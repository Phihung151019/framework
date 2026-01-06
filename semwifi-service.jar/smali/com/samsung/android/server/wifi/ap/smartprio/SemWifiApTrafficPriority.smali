.class public Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final FORCE_CALIBRATION_INTERVAL:F = 150000.0f

.field private static final MAX_EGRESS_SPEED_SIZE:I = 0x5

.field private static final MAX_SPEED_HISTORY_SIZE:I = 0xa

.field private static final NSD_HS_ACCESS:Ljava/lang/String; = "enable"

.field private static final NSD_HS_PRIO:Ljava/lang/String; = "com.samsung.android.wifi.NSD_HS_PRIO"

.field private static final TAG:Ljava/lang/String; = "SemWifiApTrafficPriority"

.field private static final WLAN_IFACE:Ljava/lang/String; = "wlan0"

.field private static final mAtleastOneClientSpeedisAboveLimit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mConnectedClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mDurationTrafficBelowLimit:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mEnablePriorityeBpfAPICalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mIsNrtDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mIsPriorityFeatureEnableDuringSession:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mIsRTTrafficEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mIsSmartPriorityEnablefromUI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mMaxDataBandwidthMbps:I = 0x64

.field private static final mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mRecalIntialState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mRecalState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final IDLE_TRAFFIC_DURATION_IN_SEC:I

.field private final MIN_DAT_BW_BPS:I

.field private cuurret_egress_queue_index:I

.field private cuurret_history_index:I

.field private egress_speed_queue_size:I

.field private history_speed_queue_size:I

.field private ifaceName:Ljava/lang/String;

.field private mActiveNetworkId:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrSpeedEstimation:I

.field private mCurrentNonGBRAllocated:I

.field private mCurrentPolllingInterval:I

.field private mCurrentUpstreamInterface:Ljava/lang/String;

.field private final mDataUsageHandler:Landroid/os/Handler;

.field private mEgressTotalAvgSpeed:D

.field private mEgressTotalSpeedArray:[D

.field private mGapiValue:F

.field private mHistoricalNrtSpeedArray:[F

.field private mHistoricalRtSpeedArray:[F

.field private mHistoricalTotalSpeedArray:[F

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinDataBandwidthbps:I

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNrEventLock:Ljava/lang/Object;

.field private mPrevForceCalibrationTime:J

.field private mPrevSpeedEstimation:I

.field private mPreviousResetNrValueConsumed:J

.field private mPreviousResetRealValueConsumed:J

.field private mPrioritizedIpv4:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrioritizedIpv6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecalTimer:I

.field private final mSemWifiApThreadRunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

.field private mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

.field private mTotalBytesConsumed:[J

.field private mTotalNrBytesConsumed:[J

.field private mTotalRealBytesConsumed:[J

.field private mTrafficStatsRxBytes:J

.field private mVerboseLoggingEnabled:Z

.field private final mWifiApSmartPriorityContentObserver:Landroid/database/ContentObserver;

.field private final semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

.field private final semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$FvWWifRlscOeDPmT7u1fAwl7qC4(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->triggerStartStopNsd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$MkYucQ_suw-7YfokanYJTMvLD1o(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->lambda$registerCallback$0(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveNetworkId(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mActiveNetworkId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentUpstreamInterface:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGapiValue(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiApThreadRunner(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mSemWifiApThreadRunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveNetworkId(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mActiveNetworkId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrSpeedEstimation(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUpstreamInterface(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentUpstreamInterface:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGapiValue(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficStatsRxBytes(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTrafficStatsRxBytes:J

    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtriggerStartStopNsd(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->triggerStartStopNsd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmAtleastOneClientSpeedisAboveLimit()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mAtleastOneClientSpeedisAboveLimit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmConnectedClientCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mConnectedClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsNsdActivated()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsPriorityFeatureEnableDuringSession()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsPriorityFeatureEnableDuringSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsSmartPriorityEnablefromUI()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsSmartPriorityEnablefromUI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmhsActive()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEnablePriorityeBpfAPICalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsSmartPriorityEnablefromUI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mAtleastOneClientSpeedisAboveLimit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mDurationTrafficBelowLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mConnectedClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalIntialState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsRTTrafficEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNrtDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsPriorityFeatureEnableDuringSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Landroid/os/Handler;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1388

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentPolllingInterval:I

    .line 7
    .line 8
    const/16 v0, 0xf

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->IDLE_TRAFFIC_DURATION_IN_SEC:I

    .line 11
    .line 12
    const v0, 0xf4240

    .line 13
    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->MIN_DAT_BW_BPS:I

    .line 16
    .line 17
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMinDataBandwidthbps:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mActiveNetworkId:I

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentUpstreamInterface:Ljava/lang/String;

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalTimer:I

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    new-array v2, v1, [J

    .line 33
    .line 34
    fill-array-data v2, :array_0

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalBytesConsumed:[J

    .line 38
    .line 39
    new-array v2, v1, [J

    .line 40
    .line 41
    fill-array-data v2, :array_1

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalNrBytesConsumed:[J

    .line 45
    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_2

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalRealBytesConsumed:[J

    .line 52
    .line 53
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->history_speed_queue_size:I

    .line 54
    .line 55
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->cuurret_history_index:I

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    new-array v2, v1, [F

    .line 60
    .line 61
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalNrtSpeedArray:[F

    .line 62
    .line 63
    new-array v2, v1, [F

    .line 64
    .line 65
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalRtSpeedArray:[F

    .line 66
    .line 67
    new-array v1, v1, [F

    .line 68
    .line 69
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalTotalSpeedArray:[F

    .line 70
    .line 71
    const-wide/16 v1, 0x0

    .line 72
    .line 73
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetNrValueConsumed:J

    .line 74
    .line 75
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetRealValueConsumed:J

    .line 76
    .line 77
    new-instance v3, Ljava/lang/Object;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNrEventLock:Ljava/lang/Object;

    .line 83
    .line 84
    const-string v3, " "

    .line 85
    .line 86
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->ifaceName:Ljava/lang/String;

    .line 87
    .line 88
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTrafficStatsRxBytes:J

    .line 89
    .line 90
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->egress_speed_queue_size:I

    .line 91
    .line 92
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->cuurret_egress_queue_index:I

    .line 93
    .line 94
    const/4 v3, 0x5

    .line 95
    new-array v3, v3, [D

    .line 96
    .line 97
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEgressTotalSpeedArray:[D

    .line 98
    .line 99
    const-wide/16 v3, 0x0

    .line 100
    .line 101
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEgressTotalAvgSpeed:D

    .line 102
    .line 103
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentNonGBRAllocated:I

    .line 104
    .line 105
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrevForceCalibrationTime:J

    .line 106
    .line 107
    new-instance v1, Ljava/util/HashSet;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrioritizedIpv4:Ljava/util/Set;

    .line 113
    .line 114
    new-instance v1, Ljava/util/HashSet;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrioritizedIpv6:Ljava/util/Set;

    .line 120
    .line 121
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mVerboseLoggingEnabled:Z

    .line 122
    .line 123
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$1;

    .line 124
    .line 125
    new-instance v2, Landroid/os/Handler;

    .line 126
    .line 127
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$1;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;Landroid/os/Handler;)V

    .line 131
    .line 132
    .line 133
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mWifiApSmartPriorityContentObserver:Landroid/database/ContentObserver;

    .line 134
    .line 135
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;

    .line 136
    .line 137
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$2;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 138
    .line 139
    .line 140
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 141
    .line 142
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$3;

    .line 143
    .line 144
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$3;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 145
    .line 146
    .line 147
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 148
    .line 149
    new-instance v2, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMHSDumpLogs:Ljava/util/List;

    .line 155
    .line 156
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 159
    .line 160
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 161
    .line 162
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mDataUsageHandler:Landroid/os/Handler;

    .line 163
    .line 164
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mSemWifiApThreadRunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const-string p2, "wifi_ap_smart_priority_enable"

    .line 179
    .line 180
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->registerCallback()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_1
    .array-data 8
        -0x1
        -0x1
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_2
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private calculateAvgEgressSpeed(D)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEgressTotalSpeedArray:[D

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->cuurret_egress_queue_index:I

    .line 4
    .line 5
    aput-wide p1, v0, v1

    .line 6
    .line 7
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->egress_speed_queue_size:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->egress_speed_queue_size:I

    .line 12
    .line 13
    const/4 p2, 0x5

    .line 14
    if-le p1, p2, :cond_0

    .line 15
    .line 16
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->egress_speed_queue_size:I

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    rem-int/2addr v1, p2

    .line 21
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->cuurret_egress_queue_index:I

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/stream/DoubleStream;->sum()D

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->egress_speed_queue_size:I

    .line 32
    .line 33
    int-to-double v0, v0

    .line 34
    div-double/2addr p1, v0

    .line 35
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEgressTotalAvgSpeed:D

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p2, "mEgressTotalAvgSpeed:"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEgressTotalAvgSpeed:D

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p2, " Mbps"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "SemWifiApTrafficPriority"

    .line 59
    .line 60
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEgressTotalAvgSpeed:D

    .line 64
    .line 65
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 66
    .line 67
    cmpg-double v2, p1, v0

    .line 68
    .line 69
    if-gez v2, :cond_1

    .line 70
    .line 71
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mAtleastOneClientSpeedisAboveLimit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->triggerStartStopNsd()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    cmpl-double p1, p1, v0

    .line 100
    .line 101
    if-ltz p1, :cond_2

    .line 102
    .line 103
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->triggerStartStopNsd()V

    .line 112
    .line 113
    .line 114
    :cond_2
    return-void
.end method

.method private calculateBWAllocation(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentUpstreamInterface:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "SemWifiApTrafficPriority"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "mCurrentUpstreamInterface is NULL"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getGapiValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getWifiInfoSpeed()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v4, "activeNetworkSpeed: "

    .line 28
    .line 29
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, " MbpswifiInfoSpeed: "

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " Mbps"

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-lt v0, v2, :cond_1

    .line 57
    .line 58
    iget v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 59
    .line 60
    float-to-int v2, v2

    .line 61
    if-eq v0, v2, :cond_1

    .line 62
    .line 63
    int-to-float v0, v0

    .line 64
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 65
    .line 66
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 67
    .line 68
    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    .line 70
    cmpg-float v0, v0, v2

    .line 71
    .line 72
    if-gez v0, :cond_2

    .line 73
    .line 74
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    const-string v0, "mGapiValue is less than 1 trigger to stop NSD"

    .line 83
    .line 84
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->triggerStartStopNsd()V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentUpstreamInterface:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTrafficStatsRxBytes:J

    .line 97
    .line 98
    sub-long/2addr v3, v5

    .line 99
    const-wide/16 v7, 0x8

    .line 100
    .line 101
    mul-long/2addr v3, v7

    .line 102
    long-to-int v0, v3

    .line 103
    int-to-float v0, v0

    .line 104
    iget v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentPolllingInterval:I

    .line 105
    .line 106
    int-to-float v3, v3

    .line 107
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 108
    .line 109
    mul-float/2addr v3, v4

    .line 110
    div-float/2addr v0, v3

    .line 111
    const-wide/16 v3, 0x0

    .line 112
    .line 113
    cmp-long v3, v5, v3

    .line 114
    .line 115
    if-nez v3, :cond_3

    .line 116
    .line 117
    const-string v0, "Cold start 1 Mbps"

    .line 118
    .line 119
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    move v2, v0

    .line 124
    :goto_0
    long-to-int p1, p1

    .line 125
    int-to-float p1, p1

    .line 126
    const p2, 0x49742400    # 1000000.0f

    .line 127
    .line 128
    .line 129
    div-float/2addr p1, p2

    .line 130
    sget-object p2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalIntialState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_4

    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    .line 149
    .line 150
    float-to-int v0, p1

    .line 151
    iget v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 152
    .line 153
    float-to-int v3, v3

    .line 154
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 159
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v3, "Recalibration IntialState,mCurrSpeedEstimation: "

    .line 163
    .line 164
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 168
    .line 169
    invoke-static {v1, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 174
    .line 175
    float-to-int v3, p1

    .line 176
    iget v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 177
    .line 178
    float-to-int v4, v4

    .line 179
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v3, "Recalibration mCurrSpeedEstimation: "

    .line 192
    .line 193
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 197
    .line 198
    invoke-static {v1, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_5
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 203
    .line 204
    float-to-int v3, p1

    .line 205
    iget v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 206
    .line 207
    float-to-int v4, v4

    .line 208
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 217
    .line 218
    :goto_1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEnablePriorityeBpfAPICalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_6

    .line 225
    .line 226
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_6

    .line 233
    .line 234
    iget v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 235
    .line 236
    iget v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrevSpeedEstimation:I

    .line 237
    .line 238
    if-eq v3, v4, :cond_6

    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    if-nez p2, :cond_6

    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->updatePriority()V

    .line 247
    .line 248
    .line 249
    :cond_6
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentUpstreamInterface:Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {p2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 252
    .line 253
    .line 254
    move-result-wide v3

    .line 255
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTrafficStatsRxBytes:J

    .line 256
    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v3, "Log----> Interface Name: "

    .line 260
    .line 261
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentUpstreamInterface:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v3, " totalStatsRxMegaBitRate: "

    .line 270
    .line 271
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v2, ",ebpfDatarate: "

    .line 278
    .line 279
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string p1, " ,mCurrSpeedEstimation: "

    .line 286
    .line 287
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 291
    .line 292
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string p1, " mGapiValue: "

    .line 296
    .line 297
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 301
    .line 302
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string p1, " mEnablePriorityeBpfAPICalled "

    .line 306
    .line 307
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string p2, "mCurrentNonGBRAllocated:"

    .line 327
    .line 328
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentNonGBRAllocated:I

    .line 332
    .line 333
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 344
    .line 345
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrevSpeedEstimation:I

    .line 346
    .line 347
    const/16 p2, 0x64

    .line 348
    .line 349
    if-lt p1, p2, :cond_7

    .line 350
    .line 351
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 352
    .line 353
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-eqz p1, :cond_7

    .line 358
    .line 359
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->triggerStartStopNsd()V

    .line 360
    .line 361
    .line 362
    :cond_7
    return-void
.end method

.method private calculateRecalRestrictTimer(II)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalTimer:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentPolllingInterval:I

    .line 4
    .line 5
    div-int/lit16 v1, v1, 0x3e8

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalTimer:I

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "calculateRecalRestrictTimer,ebpfrate:"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ",currentNonGBRAllocated:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "SemWifiApTrafficPriority"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/16 v0, 0x5a

    .line 38
    .line 39
    if-lez p2, :cond_1

    .line 40
    .line 41
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    int-to-double v2, p1

    .line 58
    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    int-to-double p1, p2

    .line 64
    mul-double/2addr p1, v4

    .line 65
    cmpl-double p1, v2, p1

    .line 66
    .line 67
    if-lez p1, :cond_1

    .line 68
    .line 69
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrevForceCalibrationTime:J

    .line 70
    .line 71
    const-wide/16 v2, 0x0

    .line 72
    .line 73
    cmp-long p1, p1, v2

    .line 74
    .line 75
    if-nez p1, :cond_0

    .line 76
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 78
    .line 79
    .line 80
    move-result-wide p1

    .line 81
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrevForceCalibrationTime:J

    .line 82
    .line 83
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalTimer:I

    .line 84
    .line 85
    const-string p1, "current ebpf rate is 80% of non gbr allocated bandwidth,so lets do recalibration1"

    .line 86
    .line 87
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 92
    .line 93
    .line 94
    move-result-wide p1

    .line 95
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrevForceCalibrationTime:J

    .line 96
    .line 97
    sub-long/2addr p1, v2

    .line 98
    long-to-float p1, p1

    .line 99
    const p2, 0x48127c00    # 150000.0f

    .line 100
    .line 101
    .line 102
    cmpl-float p1, p1, p2

    .line 103
    .line 104
    if-lez p1, :cond_1

    .line 105
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 107
    .line 108
    .line 109
    move-result-wide p1

    .line 110
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrevForceCalibrationTime:J

    .line 111
    .line 112
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalTimer:I

    .line 113
    .line 114
    const-string p1, "current ebpf rate is 80% of non gbr allocated bandwidth,so lets do recalibration2"

    .line 115
    .line 116
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_3

    .line 126
    .line 127
    iget p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalTimer:I

    .line 128
    .line 129
    const/16 v2, 0x64

    .line 130
    .line 131
    if-lt p2, v2, :cond_3

    .line 132
    .line 133
    const/16 p2, 0x1388

    .line 134
    .line 135
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->updatePollingInterval(I)V

    .line 136
    .line 137
    .line 138
    const/4 p2, 0x0

    .line 139
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    .line 141
    .line 142
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalIntialState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    .line 146
    .line 147
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalTimer:I

    .line 148
    .line 149
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_2

    .line 156
    .line 157
    const-string p1, "Recal state is finished,enable priority"

    .line 158
    .line 159
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->enablePriorityInternal()V

    .line 163
    .line 164
    .line 165
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string p2, "Recal Timer stoped Polling Interval: "

    .line 168
    .line 169
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentPolllingInterval:I

    .line 173
    .line 174
    invoke-static {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_3
    iget p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalTimer:I

    .line 179
    .line 180
    if-lt p2, v0, :cond_5

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-nez p2, :cond_5

    .line 187
    .line 188
    const/4 p2, 0x1

    .line 189
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 190
    .line 191
    .line 192
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalIntialState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    .line 196
    .line 197
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_4

    .line 204
    .line 205
    const-string p1, "Recal state is started,disable priority"

    .line 206
    .line 207
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->disablePriorityInternal()V

    .line 211
    .line 212
    .line 213
    :cond_4
    const/16 p1, 0x7d0

    .line 214
    .line 215
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->updatePollingInterval(I)V

    .line 216
    .line 217
    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string p2, "Recal Timer start Polling Interval: "

    .line 221
    .line 222
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentPolllingInterval:I

    .line 226
    .line 227
    invoke-static {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 228
    .line 229
    .line 230
    :cond_5
    return-void
.end method

.method private disablePriorityInternal()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "disablePriorityInternal: mEnablePriorityeBpfAPICalled"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEnablePriorityeBpfAPICalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "SemWifiApTrafficPriority"

    .line 22
    .line 23
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->disablePriority()V

    .line 39
    .line 40
    .line 41
    const-string v0, "disablePriorityInternal is called"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->addMHSDumpLog(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "Removed the smart prio filters \n"

    .line 47
    .line 48
    invoke-static {v2, v0, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentNonGBRAllocated:I

    .line 52
    .line 53
    return-void
.end method

.method private enablePriorityInternal()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getlowPriorbandwidth(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "enablePriorityInternal: mEnablePriorityeBpfAPICalled"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEnablePriorityeBpfAPICalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, " mNsdEnablePriority:"

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, " mCurrSpeedEstimation:"

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, "Current NonGBR value:"

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v4, "SemWifiApTrafficPriority"

    .line 60
    .line 61
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    if-lez v0, :cond_0

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_0

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsRTTrafficEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    .line 86
    .line 87
    const-string v1, "Added the smart prio filters \n"

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-static {v4, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->enablePriority(I)V

    .line 96
    .line 97
    .line 98
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentNonGBRAllocated:I

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "enablePriorityInternal with speed:"

    .line 103
    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->addMHSDumpLog(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_0
    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getGapiValue()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    int-to-float p0, p0

    .line 26
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 27
    .line 28
    div-float/2addr p0, v0

    .line 29
    float-to-int p0, p0

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method private getStringIpv4Address(I)Ljava/lang/String;
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

.method private getWifiInfoSpeed()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method private getlowPriorbandwidth(I)I
    .locals 4

    .line 1
    const-wide v0, 0x3fe5c28f5c28f5c3L    # 0.68

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    int-to-double v2, p1

    .line 7
    mul-double/2addr v2, v0

    .line 8
    const-wide v0, 0x3ff3333333333333L    # 1.2

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    sub-double/2addr v2, v0

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    double-to-int p0, v0

    .line 19
    add-int/lit8 p1, p1, -0x14

    .line 20
    .line 21
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method private isSmartPriorityEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "wifi_ap_smart_priority_enable"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    return v1
.end method

.method private synthetic lambda$registerCallback$0(IIILjava/lang/String;)V
    .locals 0

    .line 1
    const/16 p2, 0xb

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    if-eq p1, p2, :cond_3

    .line 5
    .line 6
    const/16 p2, 0xe

    .line 7
    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p2, 0xd

    .line 12
    .line 13
    if-ne p1, p2, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsRTTrafficEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNrtDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsPriorityFeatureEnableDuringSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string p4, "wifi_ap_smart_priority_enable"

    .line 41
    .line 42
    invoke-static {p2, p4, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/4 p4, 0x1

    .line 47
    if-ne p2, p4, :cond_1

    .line 48
    .line 49
    move p3, p4

    .line 50
    :cond_1
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mSemWifiApThreadRunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 59
    .line 60
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void

    .line 69
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 74
    .line 75
    .line 76
    iput p3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 77
    .line 78
    iput p3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrevSpeedEstimation:I

    .line 79
    .line 80
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    .line 82
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mAtleastOneClientSpeedisAboveLimit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    .line 87
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mDurationTrafficBelowLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    .line 92
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 93
    .line 94
    .line 95
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mConnectedClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    .line 97
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mSemWifiApThreadRunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 101
    .line 102
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->resetEgressAvgSpeedValues()V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->resetDataConsumeValues()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private registerCallback()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "wifi_ap_smart_priority_enable"

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
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsSmartPriorityEnablefromUI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 29
    .line 30
    .line 31
    const/16 v2, 0xc

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 47
    .line 48
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$$ExternalSyntheticLambda2;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private resetDataConsumeValues()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNrEventLock:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    new-array v2, v0, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalBytesConsumed:[J

    .line 11
    .line 12
    new-array v2, v0, [J

    .line 13
    .line 14
    fill-array-data v2, :array_1

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalNrBytesConsumed:[J

    .line 18
    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    fill-array-data v0, :array_2

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalRealBytesConsumed:[J

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetNrValueConsumed:J

    .line 29
    .line 30
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetRealValueConsumed:J

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->resetSpeedHistoricaldata()V

    .line 33
    .line 34
    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 8
        -0x1
        -0x1
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_2
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private resetEgressAvgSpeedValues()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->egress_speed_queue_size:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->cuurret_egress_queue_index:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEgressTotalSpeedArray:[D

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEgressTotalAvgSpeed:D

    .line 14
    .line 15
    return-void
.end method

.method private resetSpeedHistoricaldata()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalNrtSpeedArray:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalRtSpeedArray:[F

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalTotalSpeedArray:[F

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->cuurret_history_index:I

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->history_speed_queue_size:I

    .line 21
    .line 22
    return-void
.end method

.method private setDataConsumeValues(JJ)V
    .locals 12

    .line 1
    const-string v0, "setDataConsumeValues"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNrEventLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    sub-long v2, p1, p3

    .line 7
    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalBytesConsumed:[J

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    aget-wide v6, v4, v5

    .line 12
    .line 13
    const-wide/16 v8, -0x1

    .line 14
    .line 15
    cmp-long v10, v6, v8

    .line 16
    .line 17
    const/4 v11, 0x0

    .line 18
    if-eqz v10, :cond_0

    .line 19
    .line 20
    aput-wide v6, v4, v11

    .line 21
    .line 22
    aput-wide p1, v4, v5

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    move-object p0, v0

    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    aget-wide v6, v4, v11

    .line 30
    .line 31
    cmp-long v6, v6, v8

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    aput-wide p1, v4, v5

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    aput-wide p1, v4, v11

    .line 39
    .line 40
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalNrBytesConsumed:[J

    .line 41
    .line 42
    aget-wide v6, p1, v5

    .line 43
    .line 44
    cmp-long p2, v6, v8

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    aput-wide v6, p1, v11

    .line 49
    .line 50
    aput-wide v2, p1, v5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    aget-wide v6, p1, v11

    .line 54
    .line 55
    cmp-long p2, v6, v8

    .line 56
    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    aput-wide v2, p1, v5

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    aput-wide v2, p1, v11

    .line 63
    .line 64
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalRealBytesConsumed:[J

    .line 65
    .line 66
    aget-wide v2, p1, v5

    .line 67
    .line 68
    cmp-long p2, v2, v8

    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    aput-wide v2, p1, v11

    .line 73
    .line 74
    aput-wide p3, p1, v5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    aget-wide v2, p1, v11

    .line 78
    .line 79
    cmp-long p2, v2, v8

    .line 80
    .line 81
    if-eqz p2, :cond_5

    .line 82
    .line 83
    aput-wide p3, p1, v5

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    aput-wide p3, p1, v11

    .line 87
    .line 88
    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mVerboseLoggingEnabled:Z

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    const-string p1, "SemWifiApTrafficPriority"

    .line 93
    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalBytesConsumed:[J

    .line 100
    .line 101
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, "Nr:"

    .line 109
    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalBytesConsumed:[J

    .line 114
    .line 115
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, ",Real:"

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalRealBytesConsumed:[J

    .line 128
    .line 129
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :cond_6
    monitor-exit v1

    .line 144
    return-void

    .line 145
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p0
.end method

.method private triggerStartStopNsd()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "triggerStartStopNsd: mhsActive:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",mIsNsdActivated:"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ",mDurationTrafficBelowLimit:"

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mDurationTrafficBelowLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v4, "SemWifiApTrafficPriority"

    .line 50
    .line 51
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v5, "mAtleastOneClientSpeedisAboveLimit:"

    .line 57
    .line 58
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mAtleastOneClientSpeedisAboveLimit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v6, ",mConnectedClientCount:"

    .line 71
    .line 72
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    sget-object v6, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mConnectedClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v7, ",mIsSmartPriorityEnablefromUI:"

    .line 85
    .line 86
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsSmartPriorityEnablefromUI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v8, "mGapiValue:"

    .line 108
    .line 109
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget v8, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 113
    .line 114
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v8, ",mCurrSpeedEstimation:"

    .line 118
    .line 119
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget v8, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 123
    .line 124
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    const-string v1, "enable"

    .line 139
    .line 140
    const-string v4, "com.samsung.android.wifi.NSD_HS_PRIO"

    .line 141
    .line 142
    if-eqz v0, :cond_1

    .line 143
    .line 144
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_1

    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    const/16 v3, 0xf

    .line 161
    .line 162
    if-gt v0, v3, :cond_1

    .line 163
    .line 164
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_1

    .line 169
    .line 170
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-lez v0, :cond_1

    .line 175
    .line 176
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 177
    .line 178
    const/high16 v3, 0x3f800000    # 1.0f

    .line 179
    .line 180
    cmpl-float v0, v0, v3

    .line 181
    .line 182
    if-ltz v0, :cond_1

    .line 183
    .line 184
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 185
    .line 186
    const/16 v3, 0x64

    .line 187
    .line 188
    if-ge v0, v3, :cond_1

    .line 189
    .line 190
    const/4 v0, 0x1

    .line 191
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    .line 193
    .line 194
    const-string v2, "Starting NSD Monitoring"

    .line 195
    .line 196
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->addMHSDumpLog(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Landroid/content/Intent;

    .line 200
    .line 201
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_2

    .line 221
    .line 222
    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalTimer:I

    .line 224
    .line 225
    const-wide/16 v5, 0x0

    .line 226
    .line 227
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrevForceCalibrationTime:J

    .line 228
    .line 229
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->resetEgressAvgSpeedValues()V

    .line 230
    .line 231
    .line 232
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 233
    .line 234
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    .line 236
    .line 237
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalIntialState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 238
    .line 239
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->clearPriorityMap()V

    .line 243
    .line 244
    .line 245
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->disablePriorityInternal()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    .line 250
    .line 251
    const-string v2, "stopping NSD Monitoring"

    .line 252
    .line 253
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->addMHSDumpLog(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance v2, Landroid/content/Intent;

    .line 257
    .line 258
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    .line 266
    .line 267
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mContext:Landroid/content/Context;

    .line 268
    .line 269
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    .line 271
    .line 272
    :cond_2
    return-void
.end method

.method private updatePollingInterval(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentPolllingInterval:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentPolllingInterval:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mDataUsageHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 v0, 0x13

    .line 14
    .line 15
    iput v0, p0, Landroid/os/Message;->what:I

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "SemWifiApTrafficPriority"

    .line 8
    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 18
    .line 19
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 20
    .line 21
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, "\n"

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMHSDumpLogs:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/16 v1, 0xc8

    .line 68
    .line 69
    if-le p1, v1, :cond_0

    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMHSDumpLogs:Ljava/util/List;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMHSDumpLogs:Ljava/util/List;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p1
.end method

.method public clearPriorityMap()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "clearPriorityMap: mEnablePriorityeBpfAPICalled"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEnablePriorityeBpfAPICalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->addMHSDumpLog(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->clearPriorityMap()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public disablePriority()V
    .locals 2

    .line 1
    const-string v0, "disablePriority Called From NSD"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->addMHSDumpLog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x1388

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->updatePollingInterval(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->clearPriorityMap()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->disablePriorityInternal()V

    .line 21
    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrevForceCalibrationTime:J

    .line 26
    .line 27
    return-void
.end method

.method public enablePriority()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "enablePriority Called From NSD"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->addMHSDumpLog(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->enablePriorityInternal()V

    .line 22
    .line 23
    .line 24
    return-void
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
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getAllocatedBw()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getDataConsumedValues()[J
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    aput-wide v3, v1, v2

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    aput-wide v3, v1, v5

    .line 14
    .line 15
    const/4 v6, 0x2

    .line 16
    aput-wide v3, v1, v6

    .line 17
    .line 18
    const/4 v7, 0x3

    .line 19
    aput-wide v3, v1, v7

    .line 20
    .line 21
    const/4 v8, 0x4

    .line 22
    aput-wide v3, v1, v8

    .line 23
    .line 24
    const/4 v9, 0x5

    .line 25
    aput-wide v3, v1, v9

    .line 26
    .line 27
    const/4 v10, 0x6

    .line 28
    aput-wide v3, v1, v10

    .line 29
    .line 30
    const/4 v11, 0x7

    .line 31
    aput-wide v3, v1, v11

    .line 32
    .line 33
    const/16 v12, 0x8

    .line 34
    .line 35
    aput-wide v3, v1, v12

    .line 36
    .line 37
    const/16 v13, 0x9

    .line 38
    .line 39
    aput-wide v3, v1, v13

    .line 40
    .line 41
    const/16 v14, 0xa

    .line 42
    .line 43
    aput-wide v3, v1, v14

    .line 44
    .line 45
    const/16 v15, 0xb

    .line 46
    .line 47
    aput-wide v3, v1, v15

    .line 48
    .line 49
    const/16 v16, 0xc

    .line 50
    .line 51
    aput-wide v3, v1, v16

    .line 52
    .line 53
    const/16 v17, 0xd

    .line 54
    .line 55
    aput-wide v3, v1, v17

    .line 56
    .line 57
    const/16 v18, 0xe

    .line 58
    .line 59
    aput-wide v3, v1, v18

    .line 60
    .line 61
    const/16 v19, 0xf

    .line 62
    .line 63
    aput-wide v3, v1, v19

    .line 64
    .line 65
    move/from16 v20, v2

    .line 66
    .line 67
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNrEventLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v2

    .line 70
    :try_start_0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalBytesConsumed:[J

    .line 71
    .line 72
    aget-wide v21, v3, v20

    .line 73
    .line 74
    const-wide/16 v23, -0x1

    .line 75
    .line 76
    cmp-long v4, v21, v23

    .line 77
    .line 78
    if-eqz v4, :cond_0

    .line 79
    .line 80
    aget-wide v3, v3, v5

    .line 81
    .line 82
    cmp-long v25, v3, v23

    .line 83
    .line 84
    if-eqz v25, :cond_0

    .line 85
    .line 86
    sub-long v3, v3, v21

    .line 87
    .line 88
    aput-wide v3, v1, v20

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto/16 :goto_8

    .line 93
    .line 94
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalNrBytesConsumed:[J

    .line 95
    .line 96
    aget-wide v21, v3, v20

    .line 97
    .line 98
    cmp-long v4, v21, v23

    .line 99
    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    aget-wide v25, v3, v5

    .line 103
    .line 104
    cmp-long v4, v25, v23

    .line 105
    .line 106
    if-eqz v4, :cond_1

    .line 107
    .line 108
    sub-long v25, v25, v21

    .line 109
    .line 110
    aput-wide v25, v1, v6

    .line 111
    .line 112
    :cond_1
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalRealBytesConsumed:[J

    .line 113
    .line 114
    aget-wide v21, v4, v20

    .line 115
    .line 116
    cmp-long v25, v21, v23

    .line 117
    .line 118
    if-eqz v25, :cond_2

    .line 119
    .line 120
    aget-wide v25, v4, v5

    .line 121
    .line 122
    cmp-long v27, v25, v23

    .line 123
    .line 124
    if-eqz v27, :cond_2

    .line 125
    .line 126
    sub-long v25, v25, v21

    .line 127
    .line 128
    aput-wide v25, v1, v5

    .line 129
    .line 130
    :cond_2
    aget-wide v21, v4, v5

    .line 131
    .line 132
    cmp-long v4, v21, v23

    .line 133
    .line 134
    if-eqz v4, :cond_3

    .line 135
    .line 136
    move v4, v5

    .line 137
    move/from16 v25, v6

    .line 138
    .line 139
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetRealValueConsumed:J

    .line 140
    .line 141
    sub-long v21, v21, v5

    .line 142
    .line 143
    aput-wide v21, v1, v7

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    move v4, v5

    .line 147
    move/from16 v25, v6

    .line 148
    .line 149
    :goto_1
    aget-wide v5, v3, v4

    .line 150
    .line 151
    cmp-long v3, v5, v23

    .line 152
    .line 153
    if-eqz v3, :cond_4

    .line 154
    .line 155
    move v3, v4

    .line 156
    move-wide/from16 v21, v5

    .line 157
    .line 158
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetNrValueConsumed:J

    .line 159
    .line 160
    sub-long v5, v21, v4

    .line 161
    .line 162
    aput-wide v5, v1, v8

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    move v3, v4

    .line 166
    :goto_2
    iget v4, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 167
    .line 168
    float-to-int v4, v4

    .line 169
    int-to-long v4, v4

    .line 170
    aput-wide v4, v1, v9

    .line 171
    .line 172
    iget v4, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 173
    .line 174
    int-to-long v4, v4

    .line 175
    aput-wide v4, v1, v10

    .line 176
    .line 177
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 178
    .line 179
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    const-wide/16 v5, 0x1

    .line 184
    .line 185
    if-eqz v4, :cond_5

    .line 186
    .line 187
    move-wide v7, v5

    .line 188
    goto :goto_3

    .line 189
    :cond_5
    const-wide/16 v7, 0x0

    .line 190
    .line 191
    :goto_3
    aput-wide v7, v1, v11

    .line 192
    .line 193
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    .line 195
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_6

    .line 200
    .line 201
    move-wide v7, v5

    .line 202
    goto :goto_4

    .line 203
    :cond_6
    const-wide/16 v7, 0x0

    .line 204
    .line 205
    :goto_4
    aput-wide v7, v1, v12

    .line 206
    .line 207
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_7

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_7
    const-wide/16 v5, 0x0

    .line 217
    .line 218
    :goto_5
    aput-wide v5, v1, v13

    .line 219
    .line 220
    aget-wide v4, v1, v20

    .line 221
    .line 222
    const-wide/16 v6, 0x3e8

    .line 223
    .line 224
    mul-long/2addr v4, v6

    .line 225
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentPolllingInterval:I

    .line 226
    .line 227
    int-to-long v9, v8

    .line 228
    div-long/2addr v4, v9

    .line 229
    aput-wide v4, v1, v20

    .line 230
    .line 231
    aget-wide v9, v1, v3

    .line 232
    .line 233
    mul-long/2addr v9, v6

    .line 234
    int-to-long v11, v8

    .line 235
    div-long/2addr v9, v11

    .line 236
    aput-wide v9, v1, v3

    .line 237
    .line 238
    aget-wide v11, v1, v25

    .line 239
    .line 240
    mul-long/2addr v11, v6

    .line 241
    int-to-long v6, v8

    .line 242
    div-long/2addr v11, v6

    .line 243
    aput-wide v11, v1, v25

    .line 244
    .line 245
    iget v6, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->cuurret_history_index:I

    .line 246
    .line 247
    add-int/2addr v6, v3

    .line 248
    rem-int/2addr v6, v14

    .line 249
    iput v6, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->cuurret_history_index:I

    .line 250
    .line 251
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalNrtSpeedArray:[F

    .line 252
    .line 253
    long-to-float v8, v11

    .line 254
    aput v8, v7, v6

    .line 255
    .line 256
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalTotalSpeedArray:[F

    .line 257
    .line 258
    long-to-float v4, v4

    .line 259
    aput v4, v7, v6

    .line 260
    .line 261
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalRtSpeedArray:[F

    .line 262
    .line 263
    long-to-float v5, v9

    .line 264
    aput v5, v4, v6

    .line 265
    .line 266
    iget v4, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->history_speed_queue_size:I

    .line 267
    .line 268
    add-int/2addr v4, v3

    .line 269
    iput v4, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->history_speed_queue_size:I

    .line 270
    .line 271
    if-le v4, v14, :cond_8

    .line 272
    .line 273
    iput v14, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->history_speed_queue_size:I

    .line 274
    .line 275
    :cond_8
    const/4 v3, 0x0

    .line 276
    move v5, v3

    .line 277
    move v6, v5

    .line 278
    move v7, v6

    .line 279
    move/from16 v4, v20

    .line 280
    .line 281
    :goto_6
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->history_speed_queue_size:I

    .line 282
    .line 283
    if-ge v4, v8, :cond_9

    .line 284
    .line 285
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalTotalSpeedArray:[F

    .line 286
    .line 287
    aget v8, v8, v4

    .line 288
    .line 289
    add-float/2addr v5, v8

    .line 290
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalNrtSpeedArray:[F

    .line 291
    .line 292
    aget v8, v8, v4

    .line 293
    .line 294
    add-float/2addr v6, v8

    .line 295
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalRtSpeedArray:[F

    .line 296
    .line 297
    aget v8, v8, v4

    .line 298
    .line 299
    add-float/2addr v7, v8

    .line 300
    add-int/lit8 v4, v4, 0x1

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_9
    int-to-float v4, v8

    .line 304
    div-float/2addr v5, v4

    .line 305
    float-to-int v4, v5

    .line 306
    int-to-long v4, v4

    .line 307
    aput-wide v4, v1, v14

    .line 308
    .line 309
    int-to-float v4, v8

    .line 310
    div-float/2addr v6, v4

    .line 311
    float-to-int v4, v6

    .line 312
    int-to-long v4, v4

    .line 313
    aput-wide v4, v1, v15

    .line 314
    .line 315
    int-to-float v4, v8

    .line 316
    div-float/2addr v7, v4

    .line 317
    float-to-int v4, v7

    .line 318
    int-to-long v4, v4

    .line 319
    aput-wide v4, v1, v16

    .line 320
    .line 321
    move v4, v3

    .line 322
    move v5, v4

    .line 323
    move v6, v5

    .line 324
    move/from16 v3, v20

    .line 325
    .line 326
    :goto_7
    iget v7, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->history_speed_queue_size:I

    .line 327
    .line 328
    if-ge v3, v7, :cond_a

    .line 329
    .line 330
    float-to-double v7, v4

    .line 331
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalTotalSpeedArray:[F

    .line 332
    .line 333
    aget v4, v4, v3

    .line 334
    .line 335
    aget-wide v9, v1, v14

    .line 336
    .line 337
    long-to-float v9, v9

    .line 338
    sub-float/2addr v4, v9

    .line 339
    float-to-double v9, v4

    .line 340
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 341
    .line 342
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 343
    .line 344
    .line 345
    move-result-wide v9

    .line 346
    add-double/2addr v7, v9

    .line 347
    double-to-float v4, v7

    .line 348
    float-to-double v7, v5

    .line 349
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalNrtSpeedArray:[F

    .line 350
    .line 351
    aget v5, v5, v3

    .line 352
    .line 353
    aget-wide v9, v1, v15

    .line 354
    .line 355
    long-to-float v9, v9

    .line 356
    sub-float/2addr v5, v9

    .line 357
    float-to-double v9, v5

    .line 358
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 359
    .line 360
    .line 361
    move-result-wide v9

    .line 362
    add-double/2addr v7, v9

    .line 363
    double-to-float v5, v7

    .line 364
    float-to-double v6, v6

    .line 365
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mHistoricalRtSpeedArray:[F

    .line 366
    .line 367
    aget v8, v8, v3

    .line 368
    .line 369
    aget-wide v9, v1, v16

    .line 370
    .line 371
    long-to-float v9, v9

    .line 372
    sub-float/2addr v8, v9

    .line 373
    float-to-double v8, v8

    .line 374
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 375
    .line 376
    .line 377
    move-result-wide v8

    .line 378
    add-double/2addr v6, v8

    .line 379
    double-to-float v6, v6

    .line 380
    add-int/lit8 v3, v3, 0x1

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_a
    int-to-float v3, v7

    .line 384
    div-float/2addr v4, v3

    .line 385
    float-to-double v3, v4

    .line 386
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 387
    .line 388
    .line 389
    move-result-wide v3

    .line 390
    double-to-int v3, v3

    .line 391
    int-to-long v3, v3

    .line 392
    aput-wide v3, v1, v17

    .line 393
    .line 394
    iget v3, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->history_speed_queue_size:I

    .line 395
    .line 396
    int-to-float v3, v3

    .line 397
    div-float/2addr v5, v3

    .line 398
    float-to-double v3, v5

    .line 399
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 400
    .line 401
    .line 402
    move-result-wide v3

    .line 403
    double-to-int v3, v3

    .line 404
    int-to-long v3, v3

    .line 405
    aput-wide v3, v1, v18

    .line 406
    .line 407
    iget v3, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->history_speed_queue_size:I

    .line 408
    .line 409
    int-to-float v3, v3

    .line 410
    div-float/2addr v6, v3

    .line 411
    float-to-double v3, v6

    .line 412
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 413
    .line 414
    .line 415
    move-result-wide v3

    .line 416
    double-to-int v3, v3

    .line 417
    int-to-long v3, v3

    .line 418
    aput-wide v3, v1, v19

    .line 419
    .line 420
    const-string v3, "SemWifiApTrafficPriority"

    .line 421
    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string v5, "getDataConsumedValues,Total,Real,NReal"

    .line 428
    .line 429
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    const-string v3, "SemWifiApTrafficPriority"

    .line 447
    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    const-string v5, "getDataConsumedValues,mPreviousResetRealValueConsumed:"

    .line 454
    .line 455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetRealValueConsumed:J

    .line 459
    .line 460
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    const-string v3, "SemWifiApTrafficPriority"

    .line 471
    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    const-string v5, "getDataConsumedValues,mPreviousResetNrValueConsumed:"

    .line 478
    .line 479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetNrValueConsumed:J

    .line 483
    .line 484
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    monitor-exit v2

    .line 495
    return-object v1

    .line 496
    :goto_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    throw v0
.end method

.method public getDumpLogs()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "--SemWifiApTrafficPriority \nisSmartPriorityEnabled DB:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->isSmartPriorityEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    const-string v1, "\nmIsSmartPriorityEnablefromUI: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsSmartPriorityEnablefromUI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    const-string v1, "\nPrioritized ipv4:"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrioritizedIpv4:Ljava/util/Set;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    const-string v1, "\nPrioritized ipv6:"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrioritizedIpv6:Ljava/util/Set;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    const-string v1, "\nmIsNsdActivated:"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    const-string v1, "\nmNsdEnablePriority:"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    const-string v1, "\nmRecalState:"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mRecalState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    const-string v1, "\nmGapiValue:"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mGapiValue:F

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 99
    .line 100
    .line 101
    const-string v1, "\nmCurrSpeedEstimation:"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    .line 105
    .line 106
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    const-string v1, "\nmCurrentNonGBRAllocated:"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentNonGBRAllocated:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    .line 120
    .line 121
    const-string v1, "\n"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMHSDumpLogs:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0
.end method

.method public getNRTTrafficEnable()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNrtDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public getRTTrafficEnable()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsRTTrafficEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public getStringIpv6Address([I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget v1, p1, v0

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    aget v2, p1, v0

    .line 16
    .line 17
    shr-int/lit8 v2, v2, 0x8

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "%02X%02X"

    .line 30
    .line 31
    const-string v3, ":"

    .line 32
    .line 33
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    aget v1, p1, v0

    .line 37
    .line 38
    shr-int/lit8 v1, v1, 0x10

    .line 39
    .line 40
    and-int/lit16 v1, v1, 0xff

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    aget v0, p1, v0

    .line 47
    .line 48
    shr-int/lit8 v0, v0, 0x18

    .line 49
    .line 50
    and-int/lit16 v0, v0, 0xff

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    aget v1, p1, v0

    .line 65
    .line 66
    and-int/lit16 v1, v1, 0xff

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    aget v4, p1, v0

    .line 73
    .line 74
    shr-int/lit8 v4, v4, 0x8

    .line 75
    .line 76
    and-int/lit16 v4, v4, 0xff

    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    aget v1, p1, v0

    .line 90
    .line 91
    shr-int/lit8 v1, v1, 0x10

    .line 92
    .line 93
    and-int/lit16 v1, v1, 0xff

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    aget v0, p1, v0

    .line 100
    .line 101
    shr-int/lit8 v0, v0, 0x18

    .line 102
    .line 103
    and-int/lit16 v0, v0, 0xff

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x2

    .line 117
    aget v1, p1, v0

    .line 118
    .line 119
    and-int/lit16 v1, v1, 0xff

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    aget v4, p1, v0

    .line 126
    .line 127
    shr-int/lit8 v4, v4, 0x8

    .line 128
    .line 129
    and-int/lit16 v4, v4, 0xff

    .line 130
    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    aget v1, p1, v0

    .line 143
    .line 144
    shr-int/lit8 v1, v1, 0x10

    .line 145
    .line 146
    and-int/lit16 v1, v1, 0xff

    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    aget v0, p1, v0

    .line 153
    .line 154
    shr-int/lit8 v0, v0, 0x18

    .line 155
    .line 156
    and-int/lit16 v0, v0, 0xff

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/4 v0, 0x3

    .line 170
    aget v1, p1, v0

    .line 171
    .line 172
    and-int/lit16 v1, v1, 0xff

    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    aget v4, p1, v0

    .line 179
    .line 180
    shr-int/lit8 v4, v4, 0x8

    .line 181
    .line 182
    and-int/lit16 v4, v4, 0xff

    .line 183
    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    aget v1, p1, v0

    .line 196
    .line 197
    shr-int/lit8 v1, v1, 0x10

    .line 198
    .line 199
    and-int/lit16 v1, v1, 0xff

    .line 200
    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    aget p1, p1, v0

    .line 206
    .line 207
    shr-int/lit8 p1, p1, 0x18

    .line 208
    .line 209
    and-int/lit16 p1, p1, 0xff

    .line 210
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0
.end method

.method public getmIsPriorityFeatureEnableDuringSession()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsPriorityFeatureEnableDuringSession:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public handleDataUsageStats(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;->clientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    move-wide v6, v4

    .line 18
    move-wide v8, v6

    .line 19
    const/4 v10, 0x0

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v11

    .line 24
    const-string v12, "SemWifiApTrafficPriority"

    .line 25
    .line 26
    const/4 v13, 0x1

    .line 27
    if-eqz v11, :cond_3

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    check-cast v11, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v14

    .line 39
    check-cast v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 40
    .line 41
    if-nez v14, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-boolean v15, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->alive:Z

    .line 45
    .line 46
    if-nez v15, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v3, "handleDataUsageStats : "

    .line 52
    .line 53
    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, " : "

    .line 60
    .line 61
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-wide v11, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitratePerSecond:J

    .line 75
    .line 76
    move-object v3, v1

    .line 77
    move-object v15, v2

    .line 78
    iget-wide v1, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mBitrateEgressPerSecond:J

    .line 79
    .line 80
    add-long/2addr v8, v1

    .line 81
    iget-wide v1, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataEgressBytes:J

    .line 82
    .line 83
    add-long/2addr v4, v1

    .line 84
    iget-wide v1, v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mRtBytes:J

    .line 85
    .line 86
    add-long/2addr v6, v1

    .line 87
    iget v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMinDataBandwidthbps:I

    .line 88
    .line 89
    int-to-long v1, v1

    .line 90
    cmp-long v1, v11, v1

    .line 91
    .line 92
    if-ltz v1, :cond_2

    .line 93
    .line 94
    move v10, v13

    .line 95
    :cond_2
    move-object v1, v3

    .line 96
    move-object v2, v15

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNrtDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    if-eqz v10, :cond_4

    .line 107
    .line 108
    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-direct {v0, v4, v5, v6, v7}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->setDataConsumeValues(JJ)V

    .line 112
    .line 113
    .line 114
    if-eqz v10, :cond_5

    .line 115
    .line 116
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mDurationTrafficBelowLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 120
    .line 121
    .line 122
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mAtleastOneClientSpeedisAboveLimit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    .line 124
    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    .line 126
    .line 127
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_7

    .line 134
    .line 135
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->triggerStartStopNsd()V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mDurationTrafficBelowLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    iget v3, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentPolllingInterval:I

    .line 146
    .line 147
    div-int/lit16 v3, v3, 0x3e8

    .line 148
    .line 149
    add-int/2addr v3, v2

    .line 150
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 151
    .line 152
    .line 153
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mAtleastOneClientSpeedisAboveLimit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    .line 155
    const/4 v3, 0x0

    .line 156
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    .line 158
    .line 159
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mVerboseLoggingEnabled:Z

    .line 160
    .line 161
    if-eqz v2, :cond_6

    .line 162
    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v3, "mDurationTrafficBelowLimit: "

    .line 166
    .line 167
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    const/16 v2, 0xf

    .line 189
    .line 190
    if-lt v1, v2, :cond_7

    .line 191
    .line 192
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mIsNsdActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_7

    .line 199
    .line 200
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->triggerStartStopNsd()V

    .line 201
    .line 202
    .line 203
    :cond_7
    :goto_1
    invoke-direct {v0, v8, v9}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->calculateBWAllocation(J)V

    .line 204
    .line 205
    .line 206
    long-to-int v1, v8

    .line 207
    const v2, 0xf4240

    .line 208
    .line 209
    .line 210
    div-int/2addr v1, v2

    .line 211
    iget v2, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentNonGBRAllocated:I

    .line 212
    .line 213
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->calculateRecalRestrictTimer(II)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public isDcModeEnabled()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMinDataBandwidthbps:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public resetTotalPriorityDataConsumedValues()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNrEventLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->resetSpeedHistoricaldata()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalRealBytesConsumed:[J

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    aget-wide v3, v1, v2

    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long v7, v3, v5

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    if-ltz v7, :cond_0

    .line 18
    .line 19
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetRealValueConsumed:J

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    aget-wide v3, v1, v8

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-ltz v1, :cond_1

    .line 29
    .line 30
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetRealValueConsumed:J

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetRealValueConsumed:J

    .line 34
    .line 35
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mTotalNrBytesConsumed:[J

    .line 36
    .line 37
    aget-wide v2, v1, v2

    .line 38
    .line 39
    cmp-long v4, v2, v5

    .line 40
    .line 41
    if-ltz v4, :cond_2

    .line 42
    .line 43
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetNrValueConsumed:J

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    aget-wide v1, v1, v8

    .line 47
    .line 48
    cmp-long v3, v1, v5

    .line 49
    .line 50
    if-ltz v3, :cond_3

    .line 51
    .line 52
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetNrValueConsumed:J

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPreviousResetNrValueConsumed:J

    .line 56
    .line 57
    :goto_1
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public toggleDcMode()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMinDataBandwidthbps:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0xf4240

    .line 5
    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMinDataBandwidthbps:I

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mMinDataBandwidthbps:I

    .line 14
    .line 15
    return v1
.end method

.method public updateIpPrioList(ZLjava/util/List;Ljava/util/List;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    new-instance v7, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v8, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v4, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v5, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v6, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_1

    .line 49
    .line 50
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    check-cast v10, Ljava/lang/String;

    .line 55
    .line 56
    const-string v11, ","

    .line 57
    .line 58
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    array-length v11, v10

    .line 63
    const/4 v12, 0x4

    .line 64
    if-ne v11, v12, :cond_0

    .line 65
    .line 66
    const/4 v11, 0x0

    .line 67
    aget-object v12, v10, v11

    .line 68
    .line 69
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    const/4 v12, 0x1

    .line 73
    aget-object v13, v10, v12

    .line 74
    .line 75
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const/4 v13, 0x2

    .line 79
    aget-object v14, v10, v13

    .line 80
    .line 81
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    const/4 v14, 0x3

    .line 85
    aget-object v15, v10, v14

    .line 86
    .line 87
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    aget-object v11, v10, v11

    .line 91
    .line 92
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    aget-object v12, v10, v12

    .line 97
    .line 98
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    aget-object v13, v10, v13

    .line 103
    .line 104
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    aget-object v10, v10, v14

    .line 109
    .line 110
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    filled-new-array {v11, v12, v13, v10}, [I

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v0, v10}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getStringIpv6Address([I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_2

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    check-cast v9, Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    invoke-direct {v0, v9}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getStringIpv4Address(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_2
    if-eqz p1, :cond_3

    .line 155
    .line 156
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 157
    .line 158
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->addIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    goto :goto_2

    .line 163
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 164
    .line 165
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->delIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    if-eqz p1, :cond_4

    .line 175
    .line 176
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrioritizedIpv4:Ljava/util/Set;

    .line 177
    .line 178
    invoke-interface {v10, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    .line 180
    .line 181
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrioritizedIpv6:Ljava/util/Set;

    .line 182
    .line 183
    invoke-interface {v10, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 184
    .line 185
    .line 186
    const-string v10, "addIpToPrioList: "

    .line 187
    .line 188
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_4
    const-string v10, "delIpToPrioList: "

    .line 193
    .line 194
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrioritizedIpv4:Ljava/util/Set;

    .line 198
    .line 199
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    new-instance v11, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$$ExternalSyntheticLambda1;

    .line 203
    .line 204
    invoke-direct {v11, v10}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 208
    .line 209
    .line 210
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mPrioritizedIpv6:Ljava/util/Set;

    .line 211
    .line 212
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    new-instance v11, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$$ExternalSyntheticLambda1;

    .line 216
    .line 217
    invoke-direct {v11, v10}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 221
    .line 222
    .line 223
    :goto_3
    const-string v10, "retValue: "

    .line 224
    .line 225
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v10, ", v4 IpAddress: "

    .line 232
    .line 233
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v2, ", v6 IpAddress1: "

    .line 240
    .line 241
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v2, ", v6 IpAddress2: "

    .line 248
    .line 249
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v2, ", v6 IpAddress3: "

    .line 256
    .line 257
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v2, ", v6 IpAddress4: "

    .line 264
    .line 265
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v2, "\nIpv6"

    .line 272
    .line 273
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v2, "\nIpv4"

    .line 280
    .line 281
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->addMHSDumpLog(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return v1
.end method

.method public updatePriority()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrSpeedEstimation:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getlowPriorbandwidth(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mEnablePriorityeBpfAPICalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mNsdEnablePriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "updatePriority with speed: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->addMHSDumpLog(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->updatePriority(I)V

    .line 45
    .line 46
    .line 47
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->mCurrentNonGBRAllocated:I

    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public updateRtStats(II)V
    .locals 0

    .line 1
    return-void
.end method
