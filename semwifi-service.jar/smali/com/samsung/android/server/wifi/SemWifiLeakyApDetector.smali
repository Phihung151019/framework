.class public Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.super Lcom/android/internal/util/StateMachine;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;,
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;
    }
.end annotation


# static fields
.field static final ACTIVATION_RSSI:I = -0x3c

.field private static final ACTIVE_DETECTION_DURATION_US:I = 0x1800

.field static final CMD_CHECK_WHETHER_KNOWN_AP:I = 0x11

.field static final CMD_DEACTIVATE_SCHEDULED_PM:I = 0x12

.field static final CMD_END_PASSIVE_DETECTION:I = 0xf

.field static final CMD_SET_GRACE_PERIOD:I = 0x10

.field static final CMD_START_ACTIVE_DETECTION:I = 0xd

.field static final CMD_START_PASSIVE_DETECTION:I = 0xe

.field static final CMD_WAIT_FOR_START_CONDITION:I = 0x13

.field private static final DBG:Z

.field static final DEACTIVATION_RSSI:I = -0x41

.field static final DETECTION_TYPE_ACTIVE:I = 0x1

.field static final DETECTION_TYPE_NOT_LEAKY:I = 0x0

.field static final DETECTION_TYPE_PASSIVE:I = 0x2

.field static final DETECTION_TYPE_SESSION:I = 0x4

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xc8

.field static final EVENT_HIGH_RSSI:I = 0x7

.field static final EVENT_LEAKY_AP_DETECTION:I = 0x8

.field static final EVENT_LOW_RSSI:I = 0x6

.field static final EVENT_NETWORK_CONNECTED:I = 0x1

.field static final EVENT_NETWORK_DISCONNECTED:I = 0x3

.field static final EVENT_ROAM_CONNECT:I = 0x2

.field static final EVENT_SCREEN_OFF:I = 0x5

.field static final EVENT_SCREEN_ON:I = 0x4

.field private static final FAILURE_DUE_TO_BUSY:I = -0xa

.field private static final FAILURE_DUE_TO_FIRMWARE_UNINITIALIZED:I = -0x2

.field private static final FAILURE_DUE_TO_INVALID_ARGS:I = -0x5

.field private static final FAILURE_DUE_TO_IP_ADDRESS_EMPTY:I = -0xb

.field private static final FAILURE_DUE_TO_NOT_AVAILABLE:I = -0x4

.field private static final FAILURE_DUE_TO_NOT_SUPPORTED:I = -0x3

.field private static final FAILURE_DUE_TO_OTHER_REASON:I = -0x1

.field private static final FILENAME_DETECTION_RECORD:Ljava/lang/String; = "leaky_ap_list.json"

.field private static final GRACE_PERIOD_US:I = 0x400

.field static final LEAKY_AP_DETECTION_ALLOWED:I = 0x1

.field static final LEAKY_AP_DETECTION_NOT_ALLOWED:I = 0x0

.field private static final MAX_DATA_SIZE:I = 0xc8

.field private static final PASSIVE_DETECTION_DURATION_US:I = 0x1800

.field static final RETRY_TIMEOUT_MS:I = 0x3e8

.field static final START_CONDITION_NOT_INITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiLeakyApDetector"


# instance fields
.field private final mActiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;

.field private final mControlHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;

.field private final mDetectionRecordFile:Ljava/io/File;

.field private mDetectionResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

.field private final mDisconnectedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

.field private mIfaceName:Ljava/lang/String;

.field private mIsConnected:Z

.field private mIsDetectionResultUpdated:Z

.field private mIsFeatureSupported:Z

.field private mIsLeakyApDetectionAllowed:I

.field private mIsScreenOn:Z

.field private final mNotDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

.field mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field private final mPassiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;

.field private mRssi:I

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method public static synthetic $r8$lambda$BAcfvKgPY8WFwma6YbJh_nj5mNQ(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveDetectionState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mActiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsConnected(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDetectionResultUpdated(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsDetectionResultUpdated:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFeatureSupported(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsFeatureSupported:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLeakyApDetectionAllowed(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsLeakyApDetectionAllowed:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsScreenOn:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mNotDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassiveDetectionState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mPassiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mRssi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsLeakyApDetectionAllowed(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsLeakyApDetectionAllowed:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mRssi:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mdoActiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->doActiveDetection()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mendPassiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->endPassiveDetection()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$merrorToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->errorToString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->eventToString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->logControlHistory(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetGracePeriod(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->setGracePeriod()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mstartPassiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->startPassiveDetection()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mstoreDetectionResultsToFile(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->storeDetectionResultsToFile()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDetectionResult(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->updateDetectionResult(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLeakyApDeterminationType(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->updateLeakyApDeterminationType(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->DBG:Z

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
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 8

    .line 1
    const-string v0, "SemWifiLeakyApDetector"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsFeatureSupported:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsScreenOn:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsConnected:Z

    .line 20
    .line 21
    const/16 v1, -0x7f

    .line 22
    .line 23
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mRssi:I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsLeakyApDetectionAllowed:I

    .line 27
    .line 28
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDefaultState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;

    .line 34
    .line 35
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDisconnectedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    .line 41
    .line 42
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    .line 43
    .line 44
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    .line 45
    .line 46
    .line 47
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    .line 48
    .line 49
    new-instance v4, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    .line 50
    .line 51
    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    .line 52
    .line 53
    .line 54
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mNotDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    .line 55
    .line 56
    new-instance v5, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;

    .line 57
    .line 58
    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    .line 59
    .line 60
    .line 61
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mActiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;

    .line 62
    .line 63
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;

    .line 64
    .line 65
    invoke-direct {v6, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    .line 66
    .line 67
    .line 68
    iput-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mPassiveDetectionState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;

    .line 69
    .line 70
    new-instance v7, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;

    .line 71
    .line 72
    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    .line 73
    .line 74
    .line 75
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 76
    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsDetectionResultUpdated:Z

    .line 78
    .line 79
    new-instance v0, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v5, v4}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v6, v4}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, "/misc/wifi/"

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance v1, Ljava/io/File;

    .line 143
    .line 144
    const-string v2, "leaky_ap_list.json"

    .line 145
    .line 146
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionRecordFile:Ljava/io/File;

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->loadDetectionResultsFromFile()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->parseLeakyApInfoFileData(Ljava/lang/String;)Ljava/util/HashMap;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 164
    .line 165
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkIfScheduledPmIsSupported(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isScheduledPmSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method private convertIntegerToFourDigitsFormat(I)Ljava/lang/String;
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

.method private doActiveDetection()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->convertIntegerToFourDigitsFormat(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->convertIntegerToFourDigitsFormat(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, " "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " 6144"

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_0
    const-string v0, "dhcpInfo is invalid"

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->logControlHistory(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/16 p0, -0xb

    .line 59
    .line 60
    return p0
.end method

.method private endPassiveDetection()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->endLeakyApPassiveDetection(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private errorToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/16 p0, -0xb

    .line 2
    .line 3
    if-eq p1, p0, :cond_5

    .line 4
    .line 5
    const/16 p0, -0xa

    .line 6
    .line 7
    if-eq p1, p0, :cond_4

    .line 8
    .line 9
    const/4 p0, -0x5

    .line 10
    if-eq p1, p0, :cond_3

    .line 11
    .line 12
    const/4 p0, -0x4

    .line 13
    if-eq p1, p0, :cond_2

    .line 14
    .line 15
    const/4 p0, -0x3

    .line 16
    if-eq p1, p0, :cond_1

    .line 17
    .line 18
    const/4 p0, -0x2

    .line 19
    if-eq p1, p0, :cond_0

    .line 20
    .line 21
    const-string p0, "Unknown event: "

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    const-string p0, "FIRMWARE_UNINITIALIZED"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    const-string p0, "NOT_SUPPORTED"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string p0, "NOT_AVAILABLE"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    const-string p0, "INVALID_ARGS"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_4
    const-string p0, "BUSY"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_5
    const-string p0, "IP_ADDRESS_EMPTY"

    .line 44
    .line 45
    return-object p0
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string p0, "Unknown event: "

    .line 5
    .line 6
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    const-string p0, "CMD_WAIT_FOR_START_CONDITION"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_2
    const-string p0, "CMD_DEACTIVATE_SCHEDULED_PM"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_3
    const-string p0, "CMD_CHECK_WHETHER_KNOWN_AP"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_4
    const-string p0, "CMD_SET_GRACE_PERIOD"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_5
    const-string p0, "CMD_END_PASSIVE_DETECTION"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_6
    const-string p0, "CMD_START_PASSIVE_DETECTION"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_7
    const-string p0, "CMD_START_ACTIVE_DETECTION"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_8
    const-string p0, "EVENT_LEAKY_AP_DETECTION"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_9
    const-string p0, "EVENT_HIGH_RSSI"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_a
    const-string p0, "EVENT_LOW_RSSI"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_b
    const-string p0, "EVENT_SCREEN_OFF"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_c
    const-string p0, "EVENT_SCREEN_ON"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_d
    const-string p0, "EVENT_NETWORK_DISCONNECTED"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_e
    const-string p0, "EVENT_ROAM_CONNECT"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_f
    const-string p0, "EVENT_NETWORK_CONNECTED"

    .line 54
    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private getLeakyApDetectionResult(Landroid/net/wifi/WifiInfo;IJ)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->bssid:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->getMacOuiFromVsie(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iput-object p0, v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->oui:Ljava/lang/String;

    .line 34
    .line 35
    move-object p0, v1

    .line 36
    :goto_0
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->lastUpdatedTime:J

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;

    .line 41
    .line 42
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;-><init>()V

    .line 43
    .line 44
    .line 45
    iput p2, p3, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;->detectionType:I

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p3, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;->rssi:I

    .line 52
    .line 53
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->detectionInfoArray:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    return-object p0
.end method

.method private getMacOuiFromVsie(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/WifiUtils;->getMacOuiFromVsie(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Ljava/util/HashSet;

    .line 22
    .line 23
    const-string v0, "00:A0:C6"

    .line 24
    .line 25
    const-string v1, "50:6F:9A"

    .line 26
    .line 27
    const-string v2, "00:50:F2"

    .line 28
    .line 29
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-lez p0, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    add-int/lit8 p0, p0, -0x1

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsScreenOn:Z

    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsScreenOn:Z

    .line 13
    .line 14
    const/4 p1, 0x5

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private logControlHistory(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "SemWifiLeakyApDetector"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string v1, "MM-dd HH:mm:ss.SSS "

    .line 9
    .line 10
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/Date;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/16 v0, 0xc8

    .line 58
    .line 59
    if-le p1, v0, :cond_0

    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    monitor-exit v1

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public static makeWifiLeakyApDetector(Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClientModeManager()Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method private removeOldRecord()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->lastUpdatedTime:J

    .line 33
    .line 34
    iget-wide v5, v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->lastUpdatedTime:J

    .line 35
    .line 36
    cmp-long v3, v3, v5

    .line 37
    .line 38
    if-lez v3, :cond_0

    .line 39
    .line 40
    :cond_1
    move-object v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 45
    .line 46
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->bssid:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method private setGracePeriod()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, " 1024"

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private startPassiveDetection()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, " 6144"

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private storeDetectionResultsToFile()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsDetectionResultUpdated:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_5

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    .line 16
    .line 17
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionRecordFile:Ljava/io/File;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-array v4, v0, [Ljava/nio/file/OpenOption;

    .line 26
    .line 27
    invoke-static {v3, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    .line 40
    .line 41
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->toJson()Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v2

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    .line 77
    .line 78
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v4, "leaky_ap_list"

    .line 82
    .line 83
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :catch_0
    move-exception v1

    .line 98
    goto :goto_3

    .line 99
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catchall_1
    move-exception v1

    .line 104
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 108
    :goto_3
    const-string v2, "SemWifiLeakyApDetector"

    .line 109
    .line 110
    const-string v3, "Exception during File writing"

    .line 111
    .line 112
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .line 114
    .line 115
    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsDetectionResultUpdated:Z

    .line 116
    .line 117
    :cond_2
    :goto_5
    return-void
.end method

.method private updateDetectionResult(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x11

    .line 20
    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/16 v3, 0xc8

    .line 38
    .line 39
    if-lt v2, v3, :cond_0

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeOldRecord()V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->getLeakyApDetectionResult(Landroid/net/wifi/WifiInfo;IJ)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsDetectionResultUpdated:Z

    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method private updateLeakyApDeterminationType(I)V
    .locals 3

    .line 1
    const-string v0, "Determined as a Leaky AP. Detection type: "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->logControlHistory(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x11

    .line 29
    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 47
    .line 48
    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->leakyApDeterminedType:I

    .line 49
    .line 50
    or-int/2addr p1, v2

    .line 51
    iput p1, v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->leakyApDeterminedType:I

    .line 52
    .line 53
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsDetectionResultUpdated:Z

    .line 60
    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public dongleRoamEvent()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mControlHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string v0, "SemWifiLeakyApDetector history:"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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
    const-string v0, "Leaky AP List --------------------------------------"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 75
    .line 76
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->leakyApDeterminedType:I

    .line 77
    .line 78
    if-lez v1, :cond_1

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "BSSID "

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->bssid:Ljava/lang/String;

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    const/16 v4, 0x8

    .line 91
    .line 92
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, " Type "

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->leakyApDeterminedType:I

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, " OUI "

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->oui:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const-string p0, "----------------------------------------------------"

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    throw p0
.end method

.method public handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->checkIfScheduledPmIsSupported(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsFeatureSupported:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsConnected:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method isLeakyAp(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x11

    .line 9
    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionResult:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 27
    .line 28
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->leakyApDeterminedType:I

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    return v0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_1
    return v0
.end method

.method isLeakyApDetectionCompleted()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDeterminedState:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    .line 6
    .line 7
    if-ne v0, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public leakyApDetectionEvent()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method loadDetectionResultsFromFile()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionRecordFile:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "SemWifiLeakyApDetector"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Not exist a stored result"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const-string p0, ""

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const/16 v2, 0x800

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 27
    .line 28
    new-instance v4, Ljava/io/InputStreamReader;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mDetectionRecordFile:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/4 v5, 0x0

    .line 37
    new-array v6, v5, [Ljava/nio/file/OpenOption;

    .line 38
    .line 39
    invoke-static {p0, v6}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-direct {v4, p0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :try_start_1
    new-array p0, v2, [C

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v3, p0}, Ljava/io/BufferedReader;->read([C)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-lez v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0, p0, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_5

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :catch_1
    move-exception p0

    .line 72
    goto :goto_4

    .line 73
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception v2

    .line 78
    :try_start_4
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    :goto_3
    const-string v2, "IOException "

    .line 83
    .line 84
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    goto :goto_5

    .line 88
    :goto_4
    const-string v2, "UnsupportedEncodingException "

    .line 89
    .line 90
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClientModeManager()Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsConnected:Z

    .line 25
    .line 26
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIfaceName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsConnected:Z

    .line 42
    .line 43
    const/4 p2, 0x3

    .line 44
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p1, "ifaceName is null, isConnected "

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean p1, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "SemWifiLeakyApDetector"

    .line 65
    .line 66
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method parseLeakyApInfoFileData(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "SemWifiLeakyApDetector"

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "leaky_ap_list"

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ge v1, v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->fromJson(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->bssid:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    const-string v1, "JSONException "

    .line 55
    .line 56
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    :goto_1
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->DBG:Z

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    const-string p1, "File Data is null"

    .line 65
    .line 66
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_2
    return-object p0
.end method

.method public setStartCondition(Z)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->mIsLeakyApDetectionAllowed:I

    .line 4
    .line 5
    return-void
.end method
