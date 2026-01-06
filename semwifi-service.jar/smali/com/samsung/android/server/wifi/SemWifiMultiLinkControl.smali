.class public final Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;,
        Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;
    }
.end annotation


# static fields
.field private static final DEFAULT_MODE:I = 0x0

.field private static final DEFAULT_QUERY_INTERVAL_MS:I = 0xdac

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xbb8

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiMultiLinkControl history:"

.field private static final INITIALIZATION:I = 0x2

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field private static final ML_DISABLED_TIMEOUT_NS:J = 0xdf8475800L

.field private static final NANO_GIGA:J = 0x3b9aca00L

.field private static final RETRIAL_TIMEOUT:I = 0xa

.field private static final ROAMING_INITIALIZATION_DELAY_MS:I = 0xbb8

.field private static final SAMSUNG_HYBRID_CONTROL_MODE:I = 0x2

.field private static final SAMSUNG_MANUAL_CONTROL_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiMultiLinkControl"

.field private static final TERMINATION:I = 0x3

.field private static final UPDATE_PERIOD_MS:J = 0xbb8L

.field private static final WIFI_MAX_BANDWIDTH_MHZ:I = 0x140

.field private static final WIFI_MLO_GRANT_UPDATED:I = 0x1

.field private static final WIFI_PERIODIC_UPDATE:I


# instance fields
.field private final DEBUG:Z

.field private mActiveLinks:I

.field private mBestLinkQos:[D

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private final mCmdEnableMlo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIfaceName:Ljava/lang/String;

.field private final mIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLinkStateUpdateNumber:J

.field private final mLock:Ljava/lang/Object;

.field private final mMediatorGranted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMediatorRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMlControlEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMlQos:[D

.field private mMlState:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

.field private final mMlStateCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMloConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMloDisabledTimeNs:J

.field private final mMloHas2G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMultiLinkControlHandler:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

.field private mNumLinks:I

.field private mOutageUpdateNumber:J

.field private final mRenewConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSamsungMloCtrlEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSetMlControlRes:I

.field private mTxBandwidth:I

.field private final mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

.field private final mWifiCtlFeatureMediatorGrantCallback:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

.field private final mWifiCtlFeatureMediatorPerformanceQuery:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

.field private mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

.field private final mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mlPrevStateStr:Ljava/lang/String;

.field private priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mActiveLinks:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mBestLinkQos:[D

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCmdEnableMlo(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mCmdEnableMlo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaces(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaces:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mLinkStateUpdateNumber:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMediatorGranted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediatorRegistered(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMediatorRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMlControlEnabled(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlControlEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMlQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlQos:[D

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMlState(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlState:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMlStateCheck(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlStateCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMloConnected(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMloDisabledTimeNs(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloDisabledTimeNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMloHas2G(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloHas2G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiLinkControlHandler(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMultiLinkControlHandler:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mNumLinks:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutageUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mOutageUpdateNumber:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRenewConnection(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mRenewConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSamsungMloCtrlEnabled(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mSamsungMloCtrlEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTxBandwidth(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mTxBandwidth:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCtlFeatureMediator(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCtlFeatureMediatorGrantCallback(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiCtlFeatureMediatorGrantCallback:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCtlFeatureMediatorPerformanceQuery(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiCtlFeatureMediatorPerformanceQuery:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mActiveLinks:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;[D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mBestLinkQos:[D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mLinkStateUpdateNumber:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMlQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;[D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlQos:[D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMloDisabledTimeNs(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V
    .locals 2

    .line 1
    const-wide v0, -0xe33e22200L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloDisabledTimeNs:J

    .line 7
    .line 8
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOutageUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mOutageUpdateNumber:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetMlControlRes(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mSetMlControlRes:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxBandwidth(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mTxBandwidth:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmlPrevStateStr(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mlPrevStateStr:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckMloStatus(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->checkMloStatus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$menableMultiLinkOperation(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->enableMultiLinkOperation(ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mmlStateUpdate(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mlStateUpdate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMediatorGranted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloHas2G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mCmdEnableMlo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mRenewConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlStateCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 57
    .line 58
    .line 59
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlControlEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 64
    .line 65
    .line 66
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mSamsungMloCtrlEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    invoke-direct {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 71
    .line 72
    .line 73
    iput-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMediatorRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->DEBUG:Z

    .line 76
    .line 77
    new-instance v7, Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaces:Ljava/util/HashSet;

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaceName:Ljava/lang/String;

    .line 86
    .line 87
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mNumLinks:I

    .line 88
    .line 89
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mActiveLinks:I

    .line 90
    .line 91
    const/4 v8, 0x2

    .line 92
    new-array v9, v8, [D

    .line 93
    .line 94
    fill-array-data v9, :array_0

    .line 95
    .line 96
    .line 97
    iput-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mBestLinkQos:[D

    .line 98
    .line 99
    new-array v8, v8, [D

    .line 100
    .line 101
    fill-array-data v8, :array_1

    .line 102
    .line 103
    .line 104
    iput-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlQos:[D

    .line 105
    .line 106
    const/16 v8, 0xa0

    .line 107
    .line 108
    iput v8, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mTxBandwidth:I

    .line 109
    .line 110
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mlPrevStateStr:Ljava/lang/String;

    .line 111
    .line 112
    const-wide/16 v7, 0x0

    .line 113
    .line 114
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mOutageUpdateNumber:J

    .line 115
    .line 116
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mLinkStateUpdateNumber:J

    .line 117
    .line 118
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mSetMlControlRes:I

    .line 119
    .line 120
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloDisabledTimeNs:J

    .line 121
    .line 122
    new-instance v7, Ljava/util/LinkedList;

    .line 123
    .line 124
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mHistory:Ljava/util/LinkedList;

    .line 128
    .line 129
    new-instance v7, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$1;

    .line 130
    .line 131
    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 132
    .line 133
    .line 134
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiCtlFeatureMediatorGrantCallback:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 135
    .line 136
    new-instance v7, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;

    .line 137
    .line 138
    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 139
    .line 140
    .line 141
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiCtlFeatureMediatorPerformanceQuery:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 142
    .line 143
    new-instance v7, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;

    .line 144
    .line 145
    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 146
    .line 147
    .line 148
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 149
    .line 150
    new-instance v7, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$4;

    .line 151
    .line 152
    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 153
    .line 154
    .line 155
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 156
    .line 157
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 160
    .line 161
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 162
    .line 163
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    check-cast p2, Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 168
    .line 169
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 170
    .line 171
    const-string p2, "SemWifiMultiLinkControlThread"

    .line 172
    .line 173
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    new-instance v7, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 178
    .line 179
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-direct {v7, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;Landroid/os/Looper;)V

    .line 184
    .line 185
    .line 186
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMultiLinkControlHandler:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 187
    .line 188
    const-string p2, "wifi"

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 195
    .line 196
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 197
    .line 198
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCtlFeatureMediator()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 203
    .line 204
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiEnhancedFeatureController()Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    .line 218
    .line 219
    const/4 p2, 0x1

    .line 220
    invoke-virtual {v4, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    .line 228
    .line 229
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mActiveLinks:I

    .line 230
    .line 231
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 236
    .line 237
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 242
    .line 243
    invoke-interface {p2, p3}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 244
    .line 245
    .line 246
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 247
    .line 248
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    nop

    .line 253
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private checkMloStatus()V
    .locals 7

    .line 1
    const-string v0, "Pcheck: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v2, "wifi"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloHas2G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloHas2G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mNumLinks:I

    .line 61
    .line 62
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    if-le v3, v5, :cond_3

    .line 66
    .line 67
    move v3, v5

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move v3, v2

    .line 70
    :goto_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "ro.product.vendor.device"

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "gts9u"

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    const-string v0, "0"

    .line 100
    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    const-string v0, "1"

    .line 113
    .line 114
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->addHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :goto_2
    const-string v3, "Exception occurred: "

    .line 126
    .line 127
    const-string v4, "SemWifiMultiLinkControl"

    .line 128
    .line 129
    invoke-static {v3, v0, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    move v1, v2

    .line 137
    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_6

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Landroid/net/wifi/MloLink;

    .line 148
    .line 149
    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getBand()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-ne v3, v5, :cond_5

    .line 154
    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloHas2G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    .line 160
    if-lez v1, :cond_7

    .line 161
    .line 162
    move v2, v5

    .line 163
    :cond_7
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method private enableMultiLinkOperation(ZI)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mTxBandwidth:I

    .line 2
    .line 3
    const/16 v1, 0x140

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    move v0, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v1, "2 "

    .line 17
    .line 18
    invoke-static {p2, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-string p2, "0"

    .line 24
    .line 25
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaceName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v4, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMlControl(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mSetMlControlRes:I

    .line 34
    .line 35
    if-ltz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlStateCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloDisabledTimeNs:J

    .line 47
    .line 48
    sub-long/2addr v1, v3

    .line 49
    const-wide v3, 0xdf8475800L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    cmp-long v1, v1, v3

    .line 55
    .line 56
    if-gez v1, :cond_3

    .line 57
    .line 58
    const-wide v1, -0xe33e22200L

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloDisabledTimeNs:J

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlStateCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloDisabledTimeNs:J

    .line 76
    .line 77
    :cond_3
    :goto_2
    const-string v1, "Desired cfg: "

    .line 78
    .line 79
    const-string v2, " / "

    .line 80
    .line 81
    invoke-static {v1, p2, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mSetMlControlRes:I

    .line 86
    .line 87
    const-string v3, " "

    .line 88
    .line 89
    invoke-static {p2, v1, v2, p1, v3}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->addHistory(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private mlStateUpdate()V
    .locals 9

    .line 1
    const-string v0, " / "

    .line 2
    .line 3
    const-string v1, "ML state: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaceName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getMlState(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "(\r\n|\r|\n|\n\r)"

    .line 15
    .line 16
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mlPrevStateStr:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v5, 0x2

    .line 38
    if-le v1, v5, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int/2addr v1, v5

    .line 45
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_0
    const-string v1, ""

    .line 54
    .line 55
    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->addHistory(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;-><init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlState:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 71
    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlState:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 77
    .line 78
    aget-object v4, v0, v2

    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    iput v4, v1, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->associatedLinkNumber:I

    .line 85
    .line 86
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlState:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 87
    .line 88
    iget v4, v1, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->associatedLinkNumber:I

    .line 89
    .line 90
    if-lez v4, :cond_2

    .line 91
    .line 92
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 93
    .line 94
    new-array v6, v4, [I

    .line 95
    .line 96
    iput-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->idArr:[I

    .line 97
    .line 98
    new-array v4, v4, [I

    .line 99
    .line 100
    iput-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->freqArr:[I

    .line 101
    .line 102
    const/4 v4, 0x1

    .line 103
    aget-object v6, v0, v4

    .line 104
    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->controlMode:I

    .line 110
    .line 111
    move v1, v2

    .line 112
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlState:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 113
    .line 114
    iget v6, v6, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->associatedLinkNumber:I

    .line 115
    .line 116
    if-ge v1, v6, :cond_2

    .line 117
    .line 118
    add-int/lit8 v6, v1, 0x2

    .line 119
    .line 120
    aget-object v6, v0, v6

    .line 121
    .line 122
    const-string v7, " "

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    aget-object v7, v6, v4

    .line 129
    .line 130
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-lez v7, :cond_1

    .line 135
    .line 136
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlState:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 137
    .line 138
    iget v8, v7, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 139
    .line 140
    add-int/2addr v8, v4

    .line 141
    iput v8, v7, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 142
    .line 143
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlState:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 144
    .line 145
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->idArr:[I

    .line 146
    .line 147
    aget-object v8, v6, v2

    .line 148
    .line 149
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    aput v8, v7, v1

    .line 154
    .line 155
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlState:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 156
    .line 157
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->freqArr:[I

    .line 158
    .line 159
    aget-object v6, v6, v5

    .line 160
    .line 161
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    aput v6, v7, v1

    .line 166
    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_2
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mlPrevStateStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    return-void

    .line 173
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v3, "Exception in checking ML state: "

    .line 176
    .line 177
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v1, "SemWifiMultiLinkControl"

    .line 188
    .line 189
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 193
    .line 194
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;-><init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlState:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 198
    .line 199
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->controlMode:I

    .line 200
    .line 201
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mNumLinks:I

    .line 202
    .line 203
    iput p0, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->associatedLinkNumber:I

    .line 204
    .line 205
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 206
    .line 207
    return-void
.end method


# virtual methods
.method public addHistory(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "SemWifiMultiLinkControl"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/Date;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, " "

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mHistory:Ljava/util/LinkedList;

    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mHistory:Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mHistory:Ljava/util/LinkedList;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/16 v1, 0xbb8

    .line 61
    .line 62
    if-le p1, v1, :cond_0

    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mHistory:Ljava/util/LinkedList;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    const-string p1, "SemWifiMultiLinkControl"

    .line 78
    .line 79
    const-string v0, "format problem"

    .line 80
    .line 81
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mHistory:Ljava/util/LinkedList;

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
    const-string p0, "SemWifiMultiLinkControl history:"

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

.method public getSamsungMloCtrl()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mSamsungMloCtrlEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public getTxBandwidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :try_start_0
    const-string v0, "txbandwidth"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "MHz r"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v0, v0, 0xc

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :catch_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public mlCtlEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMlControlEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMloDisabledTimeNs:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide v2, 0xdf8475800L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mLinkStateUpdateNumber:J

    .line 26
    .line 27
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mOutageUpdateNumber:J

    .line 28
    .line 29
    sub-long/2addr v0, v2

    .line 30
    const-wide/16 v2, 0xa

    .line 31
    .line 32
    cmp-long p0, v0, v2

    .line 33
    .line 34
    if-ltz p0, :cond_0

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

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaces:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaceName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMultiLinkControlHandler:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaces:Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mIfaceName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMultiLinkControlHandler:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 49
    .line 50
    const/4 p1, 0x3

    .line 51
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public renewConnection(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Roaming"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "SCPM policy update"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->addHistory(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mRenewConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mMultiLinkControlHandler:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setSamsungMloCtrl(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->mSamsungMloCtrlEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
