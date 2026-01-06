.class public Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;
.super Lcom/samsung/android/gesture/checker/SensorStuckAuror;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorStuckAurorBaro"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;
    }
.end annotation


# instance fields
.field private isStuck:Z

.field private isStuckAxis:[Z

.field sensorBaro:Landroid/hardware/Sensor;

.field sensorName:Ljava/lang/String;

.field private stuckValue:[F

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method static bridge synthetic -$$Nest$fgetisStuck(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->isStuck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)[Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->isStuckAxis:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->stuckValue:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetResult(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;I[Z[F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->setResult(I[Z[F)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3232
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    .line 3233
    invoke-direct {p0, p2}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;-><init>(Landroid/content/Context;)V

    .line 3225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorBaro:Landroid/hardware/Sensor;

    .line 3234
    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorType:I

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;
    .param p1, "x1"    # I

    .line 3223
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->readDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorType:I

    return v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    .line 3223
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method private setResult(I[Z[F)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "stuckResult"    # [Z
    .param p3, "stuckData"    # [F

    .line 3286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->isStuck:Z

    .line 3287
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->isStuckAxis:[Z

    .line 3288
    iput-object p3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->stuckValue:[F

    .line 3289
    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .line 3282
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->isStuck:Z

    return v0
.end method

.method public getResultFormatted()Ljava/lang/String;
    .locals 1

    .line 3293
    const/4 v0, 0x0

    return-object v0
.end method

.method public setup(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 3260
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorManager:Landroid/hardware/SensorManager;

    .line 3261
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 3262
    return-void

    .line 3265
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorBaro:Landroid/hardware/Sensor;

    .line 3267
    const-string v0, "sensor_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorType:I

    .line 3268
    const-string v0, "num_axis"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->NUM_AXIS:I

    .line 3269
    const-string v0, "sample_cnt"

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->MAX_SAMPLE_CNT:I

    .line 3271
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorBaro:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorName:Ljava/lang/String;

    .line 3273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->isStuck:Z

    .line 3274
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->NUM_AXIS:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->isStuckAxis:[Z

    .line 3275
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->NUM_AXIS:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->stuckValue:[F

    .line 3277
    const-string v0, "SENSORBD"

    const-string v1, "[STUCK] AurorBaro: setup() -> Pressure"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    return-void
.end method

.method public update()V
    .locals 5

    .line 3238
    const-string v0, "[STUCK] Auror: update() -> Pressure"

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 3241
    const-string v0, "[STUCK] Auror: Skip verification by unsatisfied test condition."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    return-void

    .line 3245
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Auror:StuckBaro"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->handlerThread:Landroid/os/HandlerThread;

    .line 3246
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3247
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3249
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->listener:Landroid/hardware/SensorEventListener;

    .line 3251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->isStuck:Z

    .line 3252
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->isStuckAxis:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 3253
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->stuckValue:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 3255
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->listener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorBaro:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3256
    return-void
.end method
