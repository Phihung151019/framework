.class public Lcom/samsung/android/gesture/PocketSensitivityManager;
.super Ljava/lang/Object;
.source "PocketSensitivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;
    }
.end annotation


# static fields
.field public static final SENSITIVITY_LIGHT:I = 0x4

.field public static final SENSITIVITY_NONE:I = 0x0

.field public static final SENSITIVITY_POSITION_BAR:I = 0x1

.field public static final SENSITIVITY_POSITION_DUAL_FLIP:I = 0x5

.field public static final SENSITIVITY_POSITION_FLIP:I = 0x2

.field public static final SENSITIVITY_POSITION_FOLD:I = 0x3

.field public static SENSITIVITY_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static mFeatureLevel:I

.field public static mSensitivityFeatureLevel:I

.field public static mSensitivityState:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

.field private static pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

.field private static plm:Lcom/samsung/android/gesture/PocketLogManager;

.field private static pmm:Lcom/samsung/android/gesture/PocketMotionManager;

.field private static pocketSensitivityManager:Lcom/samsung/android/gesture/PocketSensitivityManager;

.field private static ppm:Lcom/samsung/android/gesture/PocketProximityManager;


# instance fields
.field private dualFlipEnabled:Z

.field private mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field private mIsInitialized:Z

.field private mIsPocketPosSensorReceived:Z

.field private mIsRunningPocketPosSensor:Z

.field private mPocketPosSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field public sensorPocketPosEventListener:Landroid/hardware/SensorEventListener;

.field private vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;


# direct methods
.method static bridge synthetic -$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;Lcom/samsung/android/gesture/VirtualPocketPosData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    .line 25
    const-class v0, Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pocketSensitivityManager:Lcom/samsung/android/gesture/PocketSensitivityManager;

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mFeatureLevel:I

    .line 34
    sput v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    .line 37
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 38
    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 39
    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 40
    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 48
    sget-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityState:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    .line 52
    sget-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "SENSITIVITY_NONE"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSITIVITY_POSITION_BAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSITIVITY_POSITION_FLIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSITIVITY_POSITION_FOLD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSITIVITY_LIGHT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSITIVITY_POSITION_DUAL_FLIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    .line 29
    new-instance v0, Lcom/samsung/android/gesture/VirtualPocketPosData;

    invoke-direct {v0}, Lcom/samsung/android/gesture/VirtualPocketPosData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsPocketPosSensorReceived:Z

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsInitialized:Z

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->dualFlipEnabled:Z

    .line 200
    new-instance v0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketSensitivityManager$1;-><init>(Lcom/samsung/android/gesture/PocketSensitivityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->sensorPocketPosEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketSensitivityManager;
    .locals 1

    .line 61
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pocketSensitivityManager:Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pocketSensitivityManager:Lcom/samsung/android/gesture/PocketSensitivityManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pocketSensitivityManager:Lcom/samsung/android/gesture/PocketSensitivityManager;

    return-object v0
.end method


# virtual methods
.method public checkSensitivityType(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureLevel"    # I
    .param p3, "sensitivityFeatureLevel"    # I

    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 101
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 102
    sput p2, Lcom/samsung/android/gesture/PocketSensitivityManager;->mFeatureLevel:I

    .line 103
    sput p3, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    .line 105
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eq v0, v1, :cond_1

    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-eq v0, v3, :cond_1

    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-ne v0, v2, :cond_2

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x100a2

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    .line 110
    :cond_2
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-eq v0, v1, :cond_3

    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-eq v0, v3, :cond_3

    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-ne v0, v2, :cond_4

    .line 112
    :cond_3
    const-string v0, "SemInputDeviceManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_5

    .line 116
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get Position Mode Sensor"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_5
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsInitialized:Z

    .line 119
    return-void
.end method

.method public disableDualFlipMode()V
    .locals 4

    .line 192
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Disable DualFlip Mode"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->dualFlipEnabled:Z

    .line 195
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x14

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 197
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 198
    return-void
.end method

.method public enableDualFlipMode()V
    .locals 4

    .line 183
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Enable DualFlip Mode"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->dualFlipEnabled:Z

    .line 186
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x13

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 188
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 189
    return-void
.end method

.method public enablePocketPositionSensor(I)V
    .locals 6
    .param p1, "LIDState"    # I

    .line 131
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    const-wide/16 v1, 0x0

    const/16 v3, 0xf

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 132
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_0

    .line 134
    :cond_0
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    const/4 v5, 0x5

    if-ne v0, v5, :cond_2

    .line 135
    :cond_1
    if-ne p1, v4, :cond_2

    .line 136
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 138
    :cond_2
    :goto_0
    return-void
.end method

.method public getSensitivityState()Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;
    .locals 1

    .line 251
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityState:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    return-object v0
.end method

.method public getVpPosData()Lcom/samsung/android/gesture/VirtualPocketPosData;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;

    return-object v0
.end method

.method public initVirtualPocketPosData()V
    .locals 1

    .line 239
    new-instance v0, Lcom/samsung/android/gesture/VirtualPocketPosData;

    invoke-direct {v0}, Lcom/samsung/android/gesture/VirtualPocketPosData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;

    .line 240
    return-void
.end method

.method public initialize()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/samsung/android/gesture/PocketLogManager;->getInstance()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 71
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketLogManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->getInstance()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 78
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    if-nez v0, :cond_1

    .line 79
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketProximityManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void

    .line 84
    :cond_1
    invoke-static {}, Lcom/samsung/android/gesture/PocketDeviceManager;->getInstance()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 85
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    if-nez v0, :cond_2

    .line 86
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketDeviceManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 91
    :cond_2
    invoke-static {}, Lcom/samsung/android/gesture/PocketMotionManager;->getInstance()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 92
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    if-nez v0, :cond_3

    .line 93
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketMotionManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 96
    :cond_3
    return-void
.end method

.method public isDualFlipEnabled()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->dualFlipEnabled:Z

    return v0
.end method

.method public isPocketPosSensorReceived()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsPocketPosSensorReceived:Z

    return v0
.end method

.method public isRunningPocketPosSensor()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    return v0
.end method

.method public registerPocketPositionSensor()V
    .locals 5

    .line 145
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "This is FactoryBinary"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_0
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    if-nez v0, :cond_1

    .line 150
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t PocketMode register because setting is off"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->sensorPocketPosEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 155
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    .line 156
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "register pocket position sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_2
    return-void
.end method

.method public setLightSensitivity(I)V
    .locals 4
    .param p1, "mlux"    # I

    .line 170
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->getLightThreshold()I

    move-result v0

    const-wide/16 v1, 0x0

    if-gt p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->getATStatus()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getSensitivityState()Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getSensitivityState()Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->DISABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    if-ne v0, v3, :cond_3

    .line 172
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v3, 0x11

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getSensitivityState()Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getSensitivityState()Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->ENABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    if-ne v0, v3, :cond_3

    .line 177
    :cond_2
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 180
    :cond_3
    :goto_0
    return-void
.end method

.method public setPocketPosSensorReceived(Z)V
    .locals 0
    .param p1, "isPocketPosSensorReceived"    # Z

    .line 256
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsPocketPosSensorReceived:Z

    return-void
.end method

.method public setSensitivityMode(I)V
    .locals 2
    .param p1, "en"    # I

    .line 123
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setLowSensitivityModeEnable(I)I

    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "mInputDeviceManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void
.end method

.method public setSensitivityState(Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    .line 243
    sput-object p1, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityState:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    .line 244
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->ENABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    if-ne p1, v0, :cond_0

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityMode(I)V

    goto :goto_0

    .line 247
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityMode(I)V

    .line 249
    :goto_0
    return-void
.end method

.method public unregisterPocketPositionSensor()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->sensorPocketPosEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 163
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    .line 164
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister pocket position sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->initVirtualPocketPosData()V

    .line 167
    return-void
.end method
