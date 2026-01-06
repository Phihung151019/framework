.class public Lcom/samsung/android/gesture/PocketProximityManager;
.super Ljava/lang/Object;
.source "PocketProximityManager.java"


# static fields
.field public static final DETECT_IN:I = 0x1

.field public static final DETECT_OUT:I = 0x2

.field public static final DETECT_TILT:I = 0x3

.field public static final DETECT_UNKNOWN:I = 0x0

.field private static final POCKET_RECOGNITION_TIME:J = 0xbb8L

.field public static final PROX_CHECK_REASON_DEBUG:I = 0x7

.field public static final PROX_CHECK_REASON_DURATION:I = 0x1

.field public static final PROX_CHECK_REASON_LIGHT:I = 0x3

.field public static final PROX_CHECK_REASON_LIGHT_HIGH:I = 0x4

.field public static final PROX_CHECK_REASON_MOTION:I = 0x2

.field public static final PROX_CHECK_REASON_NOMOVE:I = 0x5

.field public static final PROX_CHECK_REASON_UNKNOWN:I = 0x0

.field public static final PROX_FOLDABLE_ALERT:I = 0x137

.field public static final PROX_FOLDABLE_DUAL_FLIP:I = 0x14c

.field public static final PROX_FOLDABLE_FLIP:I = 0x138

.field public static final PROX_FOLDABLE_FOLD:I = 0x14b

.field public static final PROX_SUB_DEFAULT:I = 0x0

.field public static final PROX_SUB_LP_MOTION:I = 0x33

.field public static final PROX_SUB_NP_CHECK_SEVERAL_TIME:I = 0xb

.field public static PROX_SUB_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROX_SUB_VP_POCKET_ALERT:I = 0x20

.field public static final PROX_SUB_VP_POCKET_HUB:I = 0x21

.field public static final PROX_SUB_VP_POPUP_ALERT:I = 0x1f

.field public static PROX_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROX_TYPE_HOVER_POCKET:I = 0x6

.field public static final PROX_TYPE_LITE_POCKET:I = 0x5

.field public static final PROX_TYPE_NORMAL:I = 0x1

.field public static final PROX_TYPE_SYSFS_POCKET:I = 0x4

.field public static final PROX_TYPE_UNDER_DISPLAY:I = 0x2

.field public static final PROX_TYPE_VIRTUAL_POCKET:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static handler:Landroid/os/Handler;

.field public static mFeatureLevel:I

.field private static pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

.field private static pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

.field private static plm:Lcom/samsung/android/gesture/PocketLogManager;

.field private static pmm:Lcom/samsung/android/gesture/PocketMotionManager;

.field private static pocketProximityManager:Lcom/samsung/android/gesture/PocketProximityManager;

.field private static ppc:Lcom/samsung/android/gesture/PocketProximityCluster;


# instance fields
.field private isInitialized:Z

.field private isPocketSensorReceived:Z

.field private isRunningAlertProxSensor:Z

.field private isRunningPhysicalProxySensor:Z

.field private isRunningPhysicalProxySensorForA71_5g:Z

.field private isRunningPocketSensor:Z

.field private isRunningTouchSensor:Z

.field private isSettingEnabled:Z

.field private lightLimitByCallmin:Z

.field private luxRawData:I

.field private mAlertProxCnt:I

.field private mAlertProxOpenCnt:I

.field private mAlertProxRecogFlag:Z

.field private mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field private final mLockProxInt:Ljava/lang/Object;

.field private mPrevAlertProx:I

.field private physicalProx:F

.field private physicalProxSensor:Landroid/hardware/Sensor;

.field private pocketSensor:Landroid/hardware/Sensor;

.field private proxCurType:I

.field private proxDelayTime:J

.field private proxLiteState:I

.field private proxSensor:Landroid/hardware/Sensor;

.field private proxSensorType:I

.field private proxState:I

.field private proxSubType:I

.field public sensorAlertProxEventListener:Landroid/hardware/SensorEventListener;

.field public sensorHoverProxEventListener:Landroid/hardware/SensorEventListener;

.field public sensorLiteProxEventListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field public sensorNormalProxEventListener:Landroid/hardware/SensorEventListener;

.field public sensorPhysicalProxEventListener:Landroid/hardware/SensorEventListener;

.field public sensorPhysicalProxForA71_5gEventListener:Landroid/hardware/SensorEventListener;

.field public sensorPocketEventListener:Landroid/hardware/SensorEventListener;

.field private vpData:Lcom/samsung/android/gesture/VirtualPocketData;

.field private wakeUpReason:I


# direct methods
.method static bridge synthetic -$$Nest$fgetisRunningAlertProxSensor(Lcom/samsung/android/gesture/PocketProximityManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRunningPhysicalProxySensorForA71_5g(Lcom/samsung/android/gesture/PocketProximityManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetluxRawData(Lcom/samsung/android/gesture/PocketProximityManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->luxRawData:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxOpenCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetphysicalProx(Lcom/samsung/android/gesture/PocketProximityManager;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProx:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsensorManager(Lcom/samsung/android/gesture/PocketProximityManager;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwakeUpReason(Lcom/samsung/android/gesture/PocketProximityManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->wakeUpReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputluxRawData(Lcom/samsung/android/gesture/PocketProximityManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->luxRawData:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxOpenCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAlertProxRecogFlag(Lcom/samsung/android/gesture/PocketProximityManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxRecogFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputphysicalProx(Lcom/samsung/android/gesture/PocketProximityManager;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProx:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvpData(Lcom/samsung/android/gesture/PocketProximityManager;Lcom/samsung/android/gesture/VirtualPocketData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetppc()Lcom/samsung/android/gesture/PocketProximityCluster;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->ppc:Lcom/samsung/android/gesture/PocketProximityCluster;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 30
    const-class v0, Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketProximityManager:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketProximityManager;->mFeatureLevel:I

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    .line 119
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_NORMAL"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_UNDER_DISPLAY"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_VIRTUAL_POCKET"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_SYSFS_POCKET"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_LITE_POCKET"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_HOVER_POCKET"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "PROX_SUB_DEFAULT"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROX_SUB_NP_CHECK_SEVERAL_TIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROX_SUB_VP_POPUP_ALERT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROX_SUB_VP_POCKET_ALERT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROX_SUB_VP_POCKET_HUB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROX_SUB_LP_MOTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProx:F

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived:Z

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->lightLimitByCallmin:Z

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mPrevAlertProx:I

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxRecogFlag:Z

    .line 77
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxCnt:I

    .line 78
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxOpenCnt:I

    .line 80
    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->luxRawData:I

    .line 87
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mLockProxInt:Ljava/lang/Object;

    .line 90
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxCurType:I

    .line 91
    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensorType:I

    .line 92
    const/16 v1, 0x21

    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSubType:I

    .line 100
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxDelayTime:J

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isInitialized:Z

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isSettingEnabled:Z

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor:Z

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    .line 291
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$1;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorNormalProxEventListener:Landroid/hardware/SensorEventListener;

    .line 356
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$2;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPocketEventListener:Landroid/hardware/SensorEventListener;

    .line 519
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$3;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorAlertProxEventListener:Landroid/hardware/SensorEventListener;

    .line 684
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$4;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorLiteProxEventListener:Landroid/hardware/SensorEventListener;

    .line 735
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$5;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxEventListener:Landroid/hardware/SensorEventListener;

    .line 769
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$6;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxForA71_5gEventListener:Landroid/hardware/SensorEventListener;

    .line 811
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$7;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorHoverProxEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketProximityManager;
    .locals 1

    .line 170
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketProximityManager:Lcom/samsung/android/gesture/PocketProximityManager;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketProximityManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketProximityManager:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 172
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketProximityManager:Lcom/samsung/android/gesture/PocketProximityManager;

    return-object v0
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .line 851
    sput-object p0, Lcom/samsung/android/gesture/PocketProximityManager;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public alertProxAvailable()Z
    .locals 3

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "isAvailable":Z
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 588
    :cond_0
    const/4 v0, 0x1

    .line 590
    :cond_1
    return v0
.end method

.method public checkProximityType(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureLevel"    # I

    .line 176
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 178
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1004a

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 180
    const-string v0, "SemInputDeviceManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 182
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "strModel":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sput p2, Lcom/samsung/android/gesture/PocketProximityManager;->mFeatureLevel:I

    .line 186
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 187
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 188
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 189
    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "PROX_TYPE_HOVER_POCKET"

    invoke-static {v2, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_off_pocket"

    const/4 v5, -0x2

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isSettingEnabled:Z

    .line 193
    iget-boolean v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isSettingEnabled:Z

    if-ne v2, v1, :cond_3

    .line 194
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->writeTspProxInt(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 195
    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v3, "Tsp : Write 1"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerHoverSensor()V

    goto/16 :goto_3

    .line 199
    :cond_3
    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "PocketModeSetting is off "

    invoke-static {v2, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->writeTspProxInt(I)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 201
    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v3, "Tsp : Write 0"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterHoverSensor()V

    goto/16 :goto_3

    .line 205
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v4, 0x10038

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 206
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v5, 0x10045

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketSensor:Landroid/hardware/Sensor;

    .line 207
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_7

    .line 208
    const/16 v2, 0xb

    if-ne p2, v2, :cond_6

    .line 209
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v4, 0x10035

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 210
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "TYPE_PROXIMITY_POCKET"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSubType(I)V

    goto :goto_1

    .line 214
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 216
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 218
    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v3, "PROX_TYPE_NORMAL"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 219
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->readProxInt()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_8

    .line 220
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 221
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 222
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 223
    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v5, "PROX_TYPE_SYSFS_POCKET"

    invoke-static {v2, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProxSensor:Landroid/hardware/Sensor;

    goto/16 :goto_3

    .line 225
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_c

    .line 226
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 227
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 228
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v4, 0x1002e

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 229
    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "PROX_TYPE_VIRTUAL_POCKET"

    invoke-static {v2, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/16 v2, 0x1f

    if-eq p2, v2, :cond_b

    const/16 v4, 0x137

    if-ne p2, v4, :cond_9

    goto :goto_2

    .line 233
    :cond_9
    const/16 v2, 0x20

    if-ne p2, v2, :cond_a

    .line 234
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSubType(I)V

    goto :goto_3

    .line 235
    :cond_a
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_f

    .line 236
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSubType(I)V

    goto :goto_3

    .line 232
    :cond_b
    :goto_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSubType(I)V

    goto :goto_3

    .line 239
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v5, 0x10048

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 240
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_d

    .line 241
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    iput-object v5, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 242
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_e

    .line 243
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 244
    invoke-virtual {p0, v5}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 245
    sget-object v5, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v6, "PROX_TYPE_LITE_POCKET"

    invoke-static {v5, v6}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v5, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProxSensor:Landroid/hardware/Sensor;

    .line 247
    const/16 v3, 0x33

    if-ne p2, v3, :cond_f

    .line 248
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSubType(I)V

    goto :goto_3

    .line 252
    :cond_e
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 253
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 254
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "PROX_TYPE_UNDER_DISPLAY"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_f
    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isInitialized:Z

    .line 260
    return-void
.end method

.method public getLuxRawData()I
    .locals 1

    .line 864
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->luxRawData:I

    return v0
.end method

.method public getPhysicalProx()F
    .locals 1

    .line 856
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProx:F

    return v0
.end method

.method public getProxCurType()I
    .locals 1

    .line 868
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxCurType:I

    return v0
.end method

.method public getProxDelayTime()J
    .locals 2

    .line 877
    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxDelayTime:J

    return-wide v0
.end method

.method public getProxLiteState()I
    .locals 1

    .line 854
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxLiteState:I

    return v0
.end method

.method public getProxSensorType()I
    .locals 1

    .line 873
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensorType:I

    return v0
.end method

.method public getProxState()I
    .locals 1

    .line 852
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxState:I

    return v0
.end method

.method public getProxSubType()I
    .locals 1

    .line 875
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSubType:I

    return v0
.end method

.method public getVpData()Lcom/samsung/android/gesture/VirtualPocketData;
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    return-object v0
.end method

.method public getWakeUpReason()I
    .locals 1

    .line 866
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->wakeUpReason:I

    return v0
.end method

.method public initVirtualPocketData()V
    .locals 1

    .line 492
    new-instance v0, Lcom/samsung/android/gesture/VirtualPocketData;

    invoke-direct {v0}, Lcom/samsung/android/gesture/VirtualPocketData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    .line 493
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxState:I

    .line 494
    return-void
.end method

.method public initialize()V
    .locals 2

    .line 136
    invoke-static {}, Lcom/samsung/android/gesture/PocketLogManager;->getInstance()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 137
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketLogManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/samsung/android/gesture/PocketBigDataManager;->getInstance()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    .line 143
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketBigDataManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 148
    :cond_1
    invoke-static {}, Lcom/samsung/android/gesture/PocketDeviceManager;->getInstance()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 149
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    if-nez v0, :cond_2

    .line 150
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketDeviceManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 154
    :cond_2
    invoke-static {}, Lcom/samsung/android/gesture/PocketMotionManager;->getInstance()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 155
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    if-nez v0, :cond_3

    .line 156
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketMotionManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void

    .line 160
    :cond_3
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityCluster;->getInstance()Lcom/samsung/android/gesture/PocketProximityCluster;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->ppc:Lcom/samsung/android/gesture/PocketProximityCluster;

    .line 161
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    if-nez v0, :cond_4

    .line 162
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketProximityCluster"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void

    .line 166
    :cond_4
    new-instance v0, Lcom/samsung/android/gesture/VirtualPocketData;

    invoke-direct {v0}, Lcom/samsung/android/gesture/VirtualPocketData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    .line 167
    return-void
.end method

.method public isLightLimitByCallmin()Z
    .locals 1

    .line 862
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->lightLimitByCallmin:Z

    return v0
.end method

.method public isPocketSensorReceived()Z
    .locals 1

    .line 860
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived:Z

    return v0
.end method

.method public isRunningAlertProxSensor()Z
    .locals 1

    .line 883
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    return v0
.end method

.method public isRunningPhysicalProxy()Z
    .locals 1

    .line 879
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    return v0
.end method

.method public isRunningPocketSensor()Z
    .locals 1

    .line 881
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    return v0
.end method

.method public isRunningTouchSensor()Z
    .locals 1

    .line 885
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor:Z

    return v0
.end method

.method public readProxInt()I
    .locals 6

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, -0x1

    .line 599
    .local v1, "data":I
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mLockProxInt:Ljava/lang/Object;

    monitor-enter v2

    .line 602
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/sensors/proximity_sensor/pocket_prox"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 605
    goto :goto_0

    .line 625
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 614
    :catch_0
    move-exception v3

    goto :goto_2

    .line 603
    :catch_1
    move-exception v3

    .line 604
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    sget-object v4, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v5, "File not found! - Read"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    if-nez v0, :cond_0

    .line 607
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "Output file is null!"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 609
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 610
    .end local v1    # "data":I
    .local v3, "data":I
    add-int/lit8 v1, v3, -0x30

    .line 611
    .end local v3    # "data":I
    .restart local v1    # "data":I
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read proximity data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    :goto_1
    goto :goto_4

    .line 615
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 616
    if-eqz v0, :cond_1

    .line 618
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 621
    goto :goto_3

    .line 619
    :catch_2
    move-exception v4

    .line 620
    .local v4, "err":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 623
    .end local v4    # "err":Ljava/io/IOException;
    :cond_1
    :goto_3
    sget-object v4, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v5, "File read fail!!"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4
    monitor-exit v2

    .line 626
    return v1

    .line 625
    :goto_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public registerAlertProxSensor()V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorAlertProxEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    .line 502
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mPrevAlertProx:I

    .line 503
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxRecogFlag:Z

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxCnt:I

    .line 505
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxOpenCnt:I

    .line 506
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register Alert prox sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public registerHoverSensor()V
    .locals 4

    .line 800
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorHoverProxEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 802
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register proximity hover sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_0
    return-void
.end method

.method public registerLiteProxSensor()V
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorLiteProxEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 673
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setLuxRawData(I)V

    .line 674
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register Lite proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public registerNormalProxSensor()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorNormalProxEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 281
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register normal proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method registerPhysicalProximitySensor()V
    .locals 4

    .line 720
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProxSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 722
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register physical proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    .line 725
    :cond_0
    return-void
.end method

.method registerPhysicalProximitySensorForA71_5g()V
    .locals 4

    .line 754
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProxSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxForA71_5gEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 756
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register physical proximity sensor(A71_5g)"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    .line 759
    :cond_0
    return-void
.end method

.method public registerPocketProxySensor()V
    .locals 4

    .line 323
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    if-nez v0, :cond_1

    .line 327
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t Proxy register because setting is off"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPocketEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    .line 333
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register pocket sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_2
    return-void
.end method

.method public resetPocketProxyCluster()V
    .locals 2

    .line 352
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "resetPocketProxyCluster"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->ppc:Lcom/samsung/android/gesture/PocketProximityCluster;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityCluster;->resetCluster()V

    .line 354
    return-void
.end method

.method public resetPocketProxySensor()V
    .locals 0

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPocketProxySensor()V

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPocketProxySensor()V

    .line 349
    return-void
.end method

.method public setLightLimitByCallmin(Z)V
    .locals 0
    .param p1, "lightLimitByCallmin"    # Z

    .line 863
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->lightLimitByCallmin:Z

    return-void
.end method

.method public setLuxRawData(I)V
    .locals 0
    .param p1, "luxRawData"    # I

    .line 865
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->luxRawData:I

    return-void
.end method

.method public setPhysicalProx(F)V
    .locals 0
    .param p1, "physicalProx"    # F

    .line 857
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProx:F

    return-void
.end method

.method public setPocketSensorReceived(Z)V
    .locals 0
    .param p1, "isPocketSensorReceived"    # Z

    .line 861
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived:Z

    return-void
.end method

.method public setProxCurType(I)V
    .locals 4
    .param p1, "proxCurType"    # I

    .line 870
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProxCurType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxCurType:I

    .line 872
    return-void
.end method

.method public setProxDelayTime(J)V
    .locals 0
    .param p1, "proxDelayTime"    # J

    .line 878
    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxDelayTime:J

    return-void
.end method

.method public setProxLiteState(I)V
    .locals 0
    .param p1, "proxLiteState"    # I

    .line 855
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxLiteState:I

    return-void
.end method

.method public setProxSensorType(I)V
    .locals 0
    .param p1, "proxSensorType"    # I

    .line 874
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensorType:I

    return-void
.end method

.method public setProxState(I)V
    .locals 0
    .param p1, "proxState"    # I

    .line 853
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxState:I

    return-void
.end method

.method public setProxSubType(I)V
    .locals 0
    .param p1, "proxSubType"    # I

    .line 876
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSubType:I

    return-void
.end method

.method public setRunningAlertProxSensor(Z)V
    .locals 0
    .param p1, "isRunningAlertProxSensor"    # Z

    .line 884
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    return-void
.end method

.method public setRunningPhysicalProxy(Z)V
    .locals 0
    .param p1, "isRunningPhysicalProxySensor"    # Z

    .line 880
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    return-void
.end method

.method public setRunningPocketSensor(Z)V
    .locals 0
    .param p1, "isRunningPocketSensor"    # Z

    .line 882
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    return-void
.end method

.method public setRunningTouchSensor(Z)V
    .locals 0
    .param p1, "isRunningTouchSensor"    # Z

    .line 886
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor:Z

    return-void
.end method

.method public setStateIn()V
    .locals 2

    .line 263
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "setStateIn()"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxLiteState(I)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 266
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 267
    return-void
.end method

.method public setStateOut()V
    .locals 2

    .line 270
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "setStateOut()"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxLiteState(I)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 273
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/lit8 v0, v0, -0x3

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 274
    return-void
.end method

.method public setVpData(Lcom/samsung/android/gesture/VirtualPocketData;)V
    .locals 0
    .param p1, "vpData"    # Lcom/samsung/android/gesture/VirtualPocketData;

    .line 859
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    return-void
.end method

.method public setWakeUpReason(I)V
    .locals 0
    .param p1, "wakeUpReason"    # I

    .line 867
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->wakeUpReason:I

    return-void
.end method

.method startCheckingTouchMonitoring()V
    .locals 4

    .line 314
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v1, 0x6

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 315
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor:Z

    .line 316
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "start TouchMonitoring"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public unregisterAlertProxSensor()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorAlertProxEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    .line 512
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mPrevAlertProx:I

    .line 513
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxRecogFlag:Z

    .line 514
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxCnt:I

    .line 515
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxOpenCnt:I

    .line 516
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister Alert prox sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public unregisterHoverSensor()V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorHoverProxEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 808
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister proximity hover sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public unregisterLiteProxSensor()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorLiteProxEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorLiteProxEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 680
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister Lite proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    return-void
.end method

.method public unregisterNormalProxSensor()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorNormalProxEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorNormalProxEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 287
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister normal proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method

.method unregisterPhysicalProximitySensor()V
    .locals 2

    .line 728
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 730
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister physical proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    .line 733
    :cond_0
    return-void
.end method

.method unregisterPhysicalProximitySensorForA71_5g()V
    .locals 2

    .line 762
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 763
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxForA71_5gEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 764
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister physical proximity sensor(A71_5g)"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    .line 767
    :cond_0
    return-void
.end method

.method public unregisterPocketProxySensor()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPocketEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 340
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    .line 341
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister pocket sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->initVirtualPocketData()V

    .line 344
    return-void
.end method

.method public writeProxInt(I)I
    .locals 6
    .param p1, "en"    # I

    .line 630
    const/4 v0, -0x1

    .line 631
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mLockProxInt:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    const/4 v2, 0x0

    .line 635
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sensors/proximity_sensor/pocket_prox"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 639
    goto :goto_0

    .line 664
    .end local v2    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    goto :goto_6

    .line 653
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    goto :goto_3

    .line 636
    :catch_1
    move-exception v3

    .line 637
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    sget-object v4, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v5, "File not found! - Write"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    if-nez v2, :cond_0

    .line 641
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "Output file is null!"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 643
    :cond_0
    if-nez p1, :cond_1

    .line 644
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 645
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "Write proximity data : 0"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 646
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 647
    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 648
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "Write proximity data : 1"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 651
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    :goto_2
    goto :goto_5

    .line 654
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 655
    if-eqz v2, :cond_3

    .line 657
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 660
    goto :goto_4

    .line 658
    :catch_2
    move-exception v4

    .line 659
    .local v4, "err":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 662
    .end local v4    # "err":Ljava/io/IOException;
    :cond_3
    :goto_4
    sget-object v4, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v5, "File write fail!!"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    monitor-exit v1

    .line 665
    return v0

    .line 664
    :goto_6
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public writeTspProxInt(I)I
    .locals 4
    .param p1, "en"    # I

    .line 835
    const/4 v0, -0x1

    .line 836
    .local v0, "res":I
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    return v0

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v1, :cond_1

    .line 841
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setPocketModeEnable(I)I

    .line 842
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write tsp proximity data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v0, 0x1

    goto :goto_0

    .line 846
    :cond_1
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v2, "InputDeviceManager null"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :goto_0
    return v0
.end method
