.class public Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;
.super Lcom/samsung/android/gesture/checker/SensorStuckAuror;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorStuckAurorAccSub2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2$StuckListenerAcc;
    }
.end annotation


# instance fields
.field private isStuck:Z

.field private isStuckAxis:[Z

.field sensorAcc:Landroid/hardware/Sensor;

.field sensorGyro:Landroid/hardware/Sensor;

.field sensorName:Ljava/lang/String;

.field private stuckValue:[F

.field supportGyro:Z

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method static bridge synthetic -$$Nest$fgetisStuck(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->isStuck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)[Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->isStuckAxis:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->stuckValue:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetResult(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;I[Z[F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->setResult(I[Z[F)V

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

    .line 3829
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    .line 3830
    invoke-direct {p0, p2}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;-><init>(Landroid/content/Context;)V

    .line 3818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorAcc:Landroid/hardware/Sensor;

    .line 3819
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorGyro:Landroid/hardware/Sensor;

    .line 3831
    return-void
.end method

.method static synthetic access$6200(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$6300(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$6400(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method static synthetic access$6500(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$6600(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method static synthetic access$6700(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorType:I

    return v0
.end method

.method static synthetic access$6800(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;
    .param p1, "x1"    # I

    .line 3816
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->readDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorType:I

    return v0
.end method

.method static synthetic access$7000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$7100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$7200(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$7300(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$7400(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;

    .line 3816
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method private setResult(I[Z[F)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "stuckResult"    # [Z
    .param p3, "stuckData"    # [F

    .line 3889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->isStuck:Z

    .line 3890
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->isStuckAxis:[Z

    .line 3891
    iput-object p3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->stuckValue:[F

    .line 3892
    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .line 3885
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->isStuck:Z

    return v0
.end method

.method public getResultFormatted()Ljava/lang/String;
    .locals 1

    .line 3896
    const/4 v0, 0x0

    return-object v0
.end method

.method public setup(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 3835
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorManager:Landroid/hardware/SensorManager;

    .line 3836
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 3837
    return-void

    .line 3839
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorManager:Landroid/hardware/SensorManager;

    const v1, 0x100a5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorAcc:Landroid/hardware/Sensor;

    .line 3840
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorManager:Landroid/hardware/SensorManager;

    const v1, 0x100a7

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorGyro:Landroid/hardware/Sensor;

    .line 3842
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorGyro:Landroid/hardware/Sensor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->supportGyro:Z

    .line 3844
    const-string v0, "sensor_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorType:I

    .line 3845
    const-string v0, "num_axis"

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->NUM_AXIS:I

    .line 3846
    const-string v0, "sample_cnt"

    const/16 v2, 0x258

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->MAX_SAMPLE_CNT:I

    .line 3848
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorAcc:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorName:Ljava/lang/String;

    .line 3850
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->isStuck:Z

    .line 3851
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->NUM_AXIS:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->isStuckAxis:[Z

    .line 3852
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->NUM_AXIS:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->stuckValue:[F

    .line 3854
    const-string v0, "SENSORBD"

    const-string v1, "[STUCK] AurorAccSub2: setup() -> Accelerometer Sub2"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    return-void
.end method

.method public update()V
    .locals 5

    .line 3860
    const-string v0, "[STUCK] Auror: update() -> Accelerometer Sub2"

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 3862
    const-string v0, "[STUCK] Auror: Skip verification by unsatisfied test condition."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    return-void

    .line 3866
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Auror:StuckAccSub2"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->handlerThread:Landroid/os/HandlerThread;

    .line 3867
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3868
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3871
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2$StuckListenerAcc;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2$StuckListenerAcc;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->listener:Landroid/hardware/SensorEventListener;

    .line 3873
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->isStuck:Z

    .line 3874
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->isStuckAxis:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 3875
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->stuckValue:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 3877
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->listener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorAcc:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3878
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->supportGyro:Z

    if-eqz v2, :cond_1

    .line 3879
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->listener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2;->sensorGyro:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3881
    :cond_1
    return-void
.end method
