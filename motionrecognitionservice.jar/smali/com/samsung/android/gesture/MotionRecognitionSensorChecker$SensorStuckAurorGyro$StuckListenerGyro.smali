.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StuckListenerGyro"
.end annotation


# instance fields
.field private final gyroData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;


# direct methods
.method public static synthetic $r8$lambda$waAq7ho7BTLheAsvH75p0mpWXmI(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;Landroid/hardware/SensorEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3111
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$1300(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->gyroData:Ljava/util/List;

    .line 3112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$1400(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3113
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->gyroData:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$1500(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3115
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;
    .param p2, "i"    # I

    .line 3124
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->gyroData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$verifyStuckAndStoreResult$1([II)V
    .locals 2
    .param p0, "cntDataStuck"    # [I
    .param p1, "i"    # I

    .line 3201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[STUCK] Gyro Value Dup : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private verifyStuckAndStoreResult()V
    .locals 11

    .line 3183
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    .line 3185
    .local v1, "cntDataStuck":[I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->gyroData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "dataSize":I
    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 3186
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->gyroData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3188
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v6, 0x0

    .line 3189
    .local v6, "cnt":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    if-ge v7, v8, :cond_1

    .line 3190
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 3191
    .local v8, "v1":Ljava/lang/Double;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    .line 3193
    .local v9, "v2":Ljava/lang/Double;
    invoke-virtual {v8, v9}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v10

    .line 3194
    .local v10, "compare":I
    if-nez v10, :cond_0

    .line 3195
    add-int/lit8 v6, v6, 0x1

    .line 3189
    .end local v8    # "v1":Ljava/lang/Double;
    .end local v9    # "v2":Ljava/lang/Double;
    .end local v10    # "compare":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3198
    .end local v7    # "j":I
    :cond_1
    aput v6, v1, v2

    .line 3185
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v6    # "cnt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3201
    .end local v2    # "i":I
    .end local v3    # "dataSize":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$2100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro$$ExternalSyntheticLambda1;-><init>([I)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 3204
    const/4 v2, 0x0

    .line 3205
    .local v2, "stuck":Z
    const/4 v3, 0x3

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    .line 3206
    .local v3, "stuckAxis":[Z
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$2200(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v5

    new-array v5, v5, [F

    .line 3208
    .local v5, "stuckData":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$2300(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 3209
    aget v7, v1, v6

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$2400(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v8

    sub-int/2addr v8, v4

    if-ne v7, v8, :cond_3

    .line 3210
    const/4 v2, 0x1

    .line 3211
    aput-boolean v4, v3, v6

    .line 3212
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->gyroData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    aput v7, v5, v6

    .line 3208
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3216
    .end local v6    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 3217
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v4, v0, v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$msetResult(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;I[Z[F)V

    .line 3219
    :cond_5
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 3180
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 3119
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "DATA3"

    const-string v3, "DATA2"

    const-string v4, "DATA1"

    const-string v5, ""

    const-string v6, "ERROR_TYPE"

    const-string v7, "Gyroscope"

    const-string v8, "SENSOR_TYPE"

    iget-object v9, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    .line 3121
    .local v9, "type":I
    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    .line 3123
    iget-object v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$1600(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v10

    new-instance v12, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;Landroid/hardware/SensorEvent;)V

    invoke-interface {v10, v12}, Ljava/util/stream/IntStream;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    .line 3126
    iget-object v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->gyroData:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v12, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v12}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$1700(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v12

    if-ne v10, v12, :cond_5

    .line 3128
    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->verifyStuckAndStoreResult()V

    .line 3130
    iget-object v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$fgetisStuck(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)Z

    move-result v10

    const-string v12, "SENSORBD"

    if-eqz v10, :cond_4

    .line 3133
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 3134
    .local v10, "jsonObj":Lorg/json/JSONObject;
    const-string v13, "MRSI_VERSION"

    const-string v14, "11.2"

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3135
    invoke-virtual {v10, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3136
    const-string v13, "CHIP_ID"

    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    iget-object v14, v14, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->sensorName:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3137
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsErrorType()[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v10, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3139
    move-object v13, v5

    .line 3140
    .local v13, "axis":Ljava/lang/String;
    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)[Z

    move-result-object v15

    aget-boolean v15, v15, v11

    if-eqz v15, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v14

    const-string v14, "X"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    goto :goto_0

    :cond_0
    move/from16 v16, v14

    .line 3141
    :goto_0
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)[Z

    move-result-object v14

    const/4 v15, 0x1

    aget-boolean v14, v14, v15

    if-eqz v14, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v17, v15

    const-string v15, "Y"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    goto :goto_1

    :cond_1
    move/from16 v17, v15

    .line 3142
    :goto_1
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)[Z

    move-result-object v14

    aget-boolean v14, v14, v16

    if-eqz v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Z"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 3143
    :cond_2
    const-string v14, "STUCK AXIS"

    invoke-virtual {v10, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3144
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)[F

    move-result-object v14

    aget v14, v14, v11

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3145
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)[F

    move-result-object v14

    aget v14, v14, v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3146
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)[F

    move-result-object v14

    aget v14, v14, v16

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3148
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    iget-object v14, v14, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(Ljava/lang/String;)V

    .line 3149
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[STUCK] sendMRSI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$1800(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v15

    invoke-static {v14, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$1900(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;I)Ljava/lang/String;

    move-result-object v14

    .line 3153
    .local v14, "dumpString":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v18, v11

    :try_start_1
    const-string v11, "[STUCK] ["

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->access$2000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "] "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3156
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3157
    .local v5, "jsonObj2":Lorg/json/JSONObject;
    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3158
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsErrorType()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v16

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3159
    const-string v6, "CHIP_NAME"

    iget-object v7, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3160
    const-string v6, "AXIS"

    invoke-virtual {v5, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3161
    iget-object v6, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)[F

    move-result-object v6

    aget v6, v6, v18

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3162
    iget-object v4, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)[F

    move-result-object v4

    aget v4, v4, v17

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3163
    iget-object v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;)[F

    move-result-object v3

    aget v3, v3, v16

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3164
    const-string v0, "REG_DUMP"

    invoke-virtual {v5, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3166
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendSDMPData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3170
    .end local v5    # "jsonObj2":Lorg/json/JSONObject;
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v13    # "axis":Ljava/lang/String;
    .end local v14    # "dumpString":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 3168
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v18, v11

    .line 3169
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 3130
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    move/from16 v18, v11

    .line 3172
    :goto_3
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro;->stop()V

    .line 3173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[STUCK] FINISH STUCK CHECKER: Gyroscope: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyro$StuckListenerGyro;->gyroData:Ljava/util/List;

    move/from16 v4, v18

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :cond_5
    return-void
.end method
