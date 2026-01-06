.class public Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;
.super Lcom/samsung/android/gesture/checker/SensorStuckAuror;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorStuckAurorAcc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc$StuckListenerAcc;
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
.method static bridge synthetic -$$Nest$fgetisStuck(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)[Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuckAxis:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->stuckValue:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetResult(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;I[Z[F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->setResult(I[Z[F)V

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

    .line 2821
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    .line 2822
    invoke-direct {p0, p2}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;-><init>(Landroid/content/Context;)V

    .line 2810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorAcc:Landroid/hardware/Sensor;

    .line 2811
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorGyro:Landroid/hardware/Sensor;

    .line 2823
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->MAX_SAMPLE_CNT:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorType:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;
    .param p1, "x1"    # I

    .line 2808
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->readDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorType:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->NUM_AXIS:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;

    .line 2808
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->NUM_AXIS:I

    return v0
.end method

.method private setResult(I[Z[F)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "stuckResult"    # [Z
    .param p3, "stuckData"    # [F

    .line 2879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuck:Z

    .line 2880
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuckAxis:[Z

    .line 2881
    iput-object p3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->stuckValue:[F

    .line 2882
    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .line 2875
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuck:Z

    return v0
.end method

.method public getResultFormatted()Ljava/lang/String;
    .locals 3

    .line 2887
    const-string v0, ""

    .line 2888
    .local v0, "axis":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuckAxis:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2889
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuckAxis:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2890
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuckAxis:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2892
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2894
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "STUCK AXIS"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2897
    goto :goto_0

    .line 2895
    :catch_0
    move-exception v2

    .line 2896
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2898
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setup(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2827
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorManager:Landroid/hardware/SensorManager;

    .line 2828
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 2829
    return-void

    .line 2831
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorAcc:Landroid/hardware/Sensor;

    .line 2832
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorGyro:Landroid/hardware/Sensor;

    .line 2834
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorGyro:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->supportGyro:Z

    .line 2836
    const-string v0, "sensor_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorType:I

    .line 2837
    const-string v0, "num_axis"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->NUM_AXIS:I

    .line 2838
    const-string v0, "sample_cnt"

    const/16 v1, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->MAX_SAMPLE_CNT:I

    .line 2840
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorAcc:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorName:Ljava/lang/String;

    .line 2842
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuck:Z

    .line 2843
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->NUM_AXIS:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuckAxis:[Z

    .line 2844
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->NUM_AXIS:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->stuckValue:[F

    .line 2846
    const-string v0, "SENSORBD"

    const-string v1, "[STUCK] AurorAcc: setup() -> Accelerometer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    return-void
.end method

.method public update()V
    .locals 5

    .line 2851
    const-string v0, "[STUCK] Auror: update() -> Accelerometer"

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 2853
    const-string v0, "[STUCK] Auror: Skip verification by unsatisfied test condition."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    return-void

    .line 2857
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Auror:StuckAcc"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->handlerThread:Landroid/os/HandlerThread;

    .line 2858
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2859
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2861
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc$StuckListenerAcc;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc$StuckListenerAcc;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->listener:Landroid/hardware/SensorEventListener;

    .line 2863
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuck:Z

    .line 2864
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->isStuckAxis:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 2865
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->stuckValue:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 2867
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->listener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorAcc:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2868
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->supportGyro:Z

    if-eqz v2, :cond_1

    .line 2869
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->listener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAcc;->sensorGyro:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2871
    :cond_1
    return-void
.end method
