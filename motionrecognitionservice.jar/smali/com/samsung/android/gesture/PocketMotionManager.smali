.class public Lcom/samsung/android/gesture/PocketMotionManager;
.super Ljava/lang/Object;
.source "PocketMotionManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# static fields
.field private static final ANGLE_THD:I = 0x14

.field private static final ANGLE_THD_Z:I = 0x32

.field public static final AT_TYPE_NONE:I = 0x0

.field public static final AT_TYPE_NOT_WALK:I = 0x2

.field public static final AT_TYPE_WALK:I = 0x1

.field private static final LPF_ALPHA:D = 0.9300000071525574

.field private static final MAX_AXIS_SIZE:I = 0x3

.field private static final MAX_SENSOR_DATA:I = 0x24

.field private static final TAG:Ljava/lang/String;

.field private static final TILT_THD:D = 0.800000011920929

.field private static accSensor:Landroid/hardware/Sensor;

.field private static isRunningATMode:Z

.field private static isRunningAccSensor:Z

.field private static isRunningTiltSensor:Z

.field private static mATStatus:I

.field private static mContext:Landroid/content/Context;

.field private static mIsATEnabled:Z

.field private static mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private static pocketMotionManager:Lcom/samsung/android/gesture/PocketMotionManager;

.field private static sensorManager:Landroid/hardware/SensorManager;

.field private static tiltSensor:Landroid/hardware/Sensor;


# instance fields
.field private accIndex:I

.field private accLPF:[[D

.field private accRaw:[[D

.field private accYData:D

.field private angle:[I

.field private isAccDataBufferFull:Z

.field private final mLockAccReg:Ljava/lang/Object;

.field public sensorAccEventListener:Landroid/hardware/SensorEventListener;

.field public sensorTiltEventListener:Landroid/hardware/SensorEventListener;

.field private tiltAngle:D

.field private tiltDetectorFlag:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaccRaw(Lcom/samsung/android/gesture/PocketMotionManager;)[[D
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputaccYData(Lcom/samsung/android/gesture/PocketMotionManager;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accYData:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAccDataBufferFull(Lcom/samsung/android/gesture/PocketMotionManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->isAccDataBufferFull:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->pocketMotionManager:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 40
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    .line 41
    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    .line 42
    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    .line 54
    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 55
    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->mIsATEnabled:Z

    .line 56
    sput v1, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->mLockAccReg:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v4, 0x0

    const/16 v5, 0x24

    aput v5, v1, v4

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    .line 35
    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    .line 36
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    .line 50
    iput-boolean v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltDetectorFlag:Z

    .line 136
    new-instance v0, Lcom/samsung/android/gesture/PocketMotionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketMotionManager$1;-><init>(Lcom/samsung/android/gesture/PocketMotionManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorAccEventListener:Landroid/hardware/SensorEventListener;

    .line 252
    new-instance v0, Lcom/samsung/android/gesture/PocketMotionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketMotionManager$2;-><init>(Lcom/samsung/android/gesture/PocketMotionManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorTiltEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketMotionManager;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->pocketMotionManager:Lcom/samsung/android/gesture/PocketMotionManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketMotionManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->pocketMotionManager:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 62
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->pocketMotionManager:Lcom/samsung/android/gesture/PocketMotionManager;

    return-object v0
.end method

.method public static initActivityTracker()V
    .locals 3

    .line 281
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "init activity tracker"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->mContext:Landroid/content/Context;

    const-string v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextManager;

    sput-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 285
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->mIsATEnabled:Z

    .line 289
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    .line 290
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->isAccDataBufferFull:Z

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    .line 101
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    sput-object p0, Lcom/samsung/android/gesture/PocketMotionManager;->mContext:Landroid/content/Context;

    .line 82
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 83
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->accSensor:Landroid/hardware/Sensor;

    .line 84
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->accSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "accelerometer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltSensor:Landroid/hardware/Sensor;

    .line 88
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "tilt detector is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    .line 92
    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    .line 94
    invoke-static {}, Lcom/samsung/android/gesture/PocketMotionManager;->initActivityTracker()V

    .line 95
    return-void
.end method


# virtual methods
.method calcAccLPF()V
    .locals 10

    .line 163
    iget v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->isAccDataBufferFull:Z

    if-nez v0, :cond_1

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    iget v3, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v3, v3, v4

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 168
    :cond_1
    iget v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    add-int/lit8 v0, v0, 0x24

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x24

    .line 169
    .local v0, "prevIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 170
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    iget v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    aget-object v4, v4, v0

    aget-wide v4, v4, v2

    const-wide v6, 0x3fedc28f60000000L    # 0.9300000071525574

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v7, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v6, v6, v7

    aget-wide v6, v6, v2

    const-wide v8, 0x3fb1eb8500000000L    # 0.06999999284744263

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    .end local v0    # "prevIdx":I
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method calcAccTilt()V
    .locals 15

    .line 176
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->isAccDataBufferFull:Z

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    const/4 v1, 0x3

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x24

    .line 181
    .local v0, "refIdx":I
    const-wide/16 v2, 0x0

    move-wide v4, v2

    .local v4, "cosAlpha":D
    move-wide v6, v2

    .local v6, "normRef":D
    move-wide v8, v2

    .line 182
    .local v8, "normCur":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v1, :cond_1

    .line 183
    iget-object v11, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    iget v12, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v11, v11, v12

    aget-wide v11, v11, v10

    iget-object v13, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    iget v14, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v13, v13, v14

    aget-wide v13, v13, v10

    mul-double/2addr v11, v13

    add-double/2addr v8, v11

    .line 184
    iget-object v11, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    aget-object v11, v11, v0

    aget-wide v11, v11, v10

    iget-object v13, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    aget-object v13, v13, v0

    aget-wide v13, v13, v10

    mul-double/2addr v11, v13

    add-double/2addr v6, v11

    .line 185
    iget-object v11, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    iget v12, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v11, v11, v12

    aget-wide v11, v11, v10

    iget-object v13, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    aget-object v13, v13, v0

    aget-wide v13, v13, v10

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    .line 182
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 187
    .end local v10    # "i":I
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 188
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 190
    mul-double v10, v8, v6

    const-wide v12, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    cmpl-double v1, v10, v12

    if-ltz v1, :cond_2

    .line 191
    mul-double v10, v8, v6

    div-double/2addr v4, v10

    goto :goto_1

    .line 193
    :cond_2
    const-wide v4, 0x3feff7cee0000000L    # 0.9990000128746033

    .line 195
    :goto_1
    const-wide v10, 0x3fefae1480000000L    # 0.9900000095367432

    cmpl-double v1, v4, v10

    if-lez v1, :cond_3

    .line 196
    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    goto :goto_2

    .line 197
    :cond_3
    const-wide v1, -0x401051eb80000000L    # -0.9900000095367432

    cmpg-double v1, v4, v1

    if-gez v1, :cond_4

    .line 198
    const-wide v1, 0x40091eb860000000L    # 3.140000104904175

    iput-wide v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    goto :goto_2

    .line 200
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    .line 201
    :goto_2
    return-void
.end method

.method calcAngle()V
    .locals 10

    .line 204
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v0, v0, v4

    aget-wide v4, v0, v1

    mul-double/2addr v2, v4

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v0, v0, v4

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v7, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v0, v0, v7

    aget-wide v7, v0, v4

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v5, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v0, v0, v5

    const/4 v5, 0x2

    aget-wide v6, v0, v5

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v8, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v0, v0, v8

    aget-wide v8, v0, v5

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 205
    .local v2, "realg":D
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v7, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v6, v6, v7

    aget-wide v6, v6, v1

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-int v6, v6

    aput v6, v0, v1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v6, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v1, v1, v6

    aget-wide v6, v1, v4

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-int v1, v6

    aput v1, v0, v4

    .line 207
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v1, v1, v4

    aget-wide v6, v1, v5

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    const-wide v8, 0x4056800000000000L    # 90.0

    sub-double/2addr v6, v8

    double-to-int v1, v6

    mul-int/lit8 v1, v1, -0x1

    aput v1, v0, v5

    .line 208
    return-void
.end method

.method public getATStatus()I
    .locals 1

    .line 341
    sget v0, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    return v0
.end method

.method public getAccYData()D
    .locals 2

    .line 276
    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accYData:D

    return-wide v0
.end method

.method public isTiltChanged()Z
    .locals 5

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->isAccDataBufferFull:Z

    if-nez v1, :cond_0

    .line 213
    return v0

    .line 215
    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    const-wide v3, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 216
    const/4 v0, 0x1

    .line 217
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tilt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    return v0
.end method

.method public isTiltDetectorFlag()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltDetectorFlag:Z

    return v0
.end method

.method public isUpsidePosition()Z
    .locals 7

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0x14

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    const/16 v5, 0x32

    if-lt v1, v5, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 226
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Angle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    aget v2, v6, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    aget v4, v6, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    return v0
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 318
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 319
    .local v0, "context":Lcom/samsung/android/hardware/context/SemContext;
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getActivityTrackerContext()Lcom/samsung/android/hardware/context/SemContextActivityTracker;

    move-result-object v1

    .line 321
    .local v1, "activityTracker":Lcom/samsung/android/hardware/context/SemContextActivityTracker;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->getTimeStamp()J

    move-result-wide v2

    .line 322
    .local v2, "timestamp":J
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->getStatus()I

    move-result v4

    .line 323
    .local v4, "status":I
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->getAccuracy()I

    move-result v5

    .line 324
    .local v5, "accuracy":I
    sget-object v6, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activity tracker "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 328
    :pswitch_0
    const/4 v6, 0x1

    sput v6, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    .line 329
    goto :goto_0

    .line 332
    :pswitch_1
    const/4 v6, 0x2

    sput v6, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    .line 333
    nop

    .line 338
    .end local v1    # "activityTracker":Lcom/samsung/android/hardware/context/SemContextActivityTracker;
    .end local v2    # "timestamp":J
    .end local v4    # "status":I
    .end local v5    # "accuracy":I
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerAccelSensor()Z
    .locals 7

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "result":Z
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 107
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v2, "This is FactoryBinary"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return v0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->mLockAccReg:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v3, Lcom/samsung/android/gesture/PocketMotionManager;->accSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    if-nez v3, :cond_1

    .line 113
    sget-object v3, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorAccEventListener:Landroid/hardware/SensorEventListener;

    sget-object v5, Lcom/samsung/android/gesture/PocketMotionManager;->accSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    move v0, v3

    .line 115
    :cond_1
    if-eqz v0, :cond_2

    .line 116
    sget-object v3, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v4, "register acc sensor"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sput-boolean v2, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketMotionManager;->initialize()V

    goto :goto_0

    .line 120
    :cond_2
    sget-object v2, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v3, "register acc sensor fail"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    monitor-exit v1

    .line 123
    return v0

    .line 122
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerActivityTracker()V
    .locals 2

    .line 293
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    .line 294
    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->mIsATEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    if-nez v0, :cond_0

    .line 295
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x19

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 296
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "register activity tracker"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    .line 299
    :cond_0
    return-void
.end method

.method public registerTiltSensor()V
    .locals 4

    .line 235
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    if-nez v0, :cond_0

    .line 236
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorTiltEventListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/samsung/android/gesture/PocketMotionManager;->tiltSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 237
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketMotionManager;->setTiltDetectorFlag(Z)V

    .line 239
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "register tilt sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method public requestToUpdateActivityTracker()V
    .locals 2

    .line 311
    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->mIsATEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 312
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x19

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 313
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "request activity tracker"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    return-void
.end method

.method public setTiltDetectorFlag(Z)V
    .locals 0
    .param p1, "tiltDetectorFlag"    # Z

    .line 272
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltDetectorFlag:Z

    .line 273
    return-void
.end method

.method public unregisterAccelSensor()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->mLockAccReg:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorAccEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 130
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v2, "unregister acc sensor"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterActivityTracker()V
    .locals 3

    .line 302
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    .line 303
    sget-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->mIsATEnabled:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 304
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v2, 0x19

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 305
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v2, "unregister activity tracker"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    .line 308
    :cond_0
    return-void
.end method

.method public unregisterTiltSensor()V
    .locals 2

    .line 244
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 245
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorTiltEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 246
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    .line 247
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketMotionManager;->setTiltDetectorFlag(Z)V

    .line 248
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister tilt sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method
