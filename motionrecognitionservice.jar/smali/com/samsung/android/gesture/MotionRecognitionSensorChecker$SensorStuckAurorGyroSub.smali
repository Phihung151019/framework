.class public Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;
.super Lcom/samsung/android/gesture/checker/SensorStuckAuror;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorStuckAurorGyroSub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;
    }
.end annotation


# instance fields
.field private isStuck:Z

.field private isStuckAxis:[Z

.field sensorGyro:Landroid/hardware/Sensor;

.field sensorName:Ljava/lang/String;

.field private stuckValue:[F

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method static bridge synthetic -$$Nest$fgetisStuck(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->isStuck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->isStuckAxis:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->stuckValue:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetResult(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;I[Z[F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->setResult(I[Z[F)V

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

    .line 3637
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    .line 3638
    invoke-direct {p0, p2}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;-><init>(Landroid/content/Context;)V

    .line 3629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorGyro:Landroid/hardware/Sensor;

    .line 3639
    return-void
.end method

.method static synthetic access$5000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$5100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$5200(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method static synthetic access$5300(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$5400(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method static synthetic access$5500(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorType:I

    return v0
.end method

.method static synthetic access$5600(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;
    .param p1, "x1"    # I

    .line 3627
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->readDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorType:I

    return v0
.end method

.method static synthetic access$5800(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$5900(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$6000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$6100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    .line 3627
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method private setResult(I[Z[F)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "stuckResult"    # [Z
    .param p3, "stuckData"    # [F

    .line 3691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->isStuck:Z

    .line 3692
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->isStuckAxis:[Z

    .line 3693
    iput-object p3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->stuckValue:[F

    .line 3694
    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .line 3687
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->isStuck:Z

    return v0
.end method

.method public getResultFormatted()Ljava/lang/String;
    .locals 1

    .line 3698
    const/4 v0, 0x0

    return-object v0
.end method

.method public setup(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 3643
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorManager:Landroid/hardware/SensorManager;

    .line 3644
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 3645
    return-void

    .line 3648
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10099

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorGyro:Landroid/hardware/Sensor;

    .line 3650
    const-string v0, "sensor_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorType:I

    .line 3651
    const-string v0, "num_axis"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->NUM_AXIS:I

    .line 3652
    const-string v0, "sample_cnt"

    const/16 v1, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->MAX_SAMPLE_CNT:I

    .line 3654
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorGyro:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorName:Ljava/lang/String;

    .line 3656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->isStuck:Z

    .line 3657
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->NUM_AXIS:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->isStuckAxis:[Z

    .line 3658
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->NUM_AXIS:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->stuckValue:[F

    .line 3660
    const-string v0, "SENSORBD"

    const-string v1, "[STUCK] AurorGyro Sub: setup() -> Gyroscope"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    return-void
.end method

.method public update()V
    .locals 5

    .line 3665
    const-string v0, "[STUCK] Auror: update() -> Gyroscope Sub"

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 3667
    const-string v0, "[STUCK] Auror: Skip verification by unsatisfied test condition."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    return-void

    .line 3671
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Auror:StuckGyroSub"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->handlerThread:Landroid/os/HandlerThread;

    .line 3672
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3673
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3675
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->listener:Landroid/hardware/SensorEventListener;

    .line 3677
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->isStuck:Z

    .line 3678
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->isStuckAxis:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 3679
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->stuckValue:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 3681
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->listener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorGyro:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3683
    return-void
.end method
