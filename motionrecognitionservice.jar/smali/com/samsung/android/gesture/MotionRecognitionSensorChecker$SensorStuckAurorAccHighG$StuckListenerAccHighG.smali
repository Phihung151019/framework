.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StuckListenerAccHighG"
.end annotation


# instance fields
.field private final accData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;


# direct methods
.method public static synthetic $r8$lambda$m49gBkMwpiAac2dlyJO-QaDVstY(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;Landroid/hardware/SensorEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4291
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4289
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$8700(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->accData:Ljava/util/List;

    .line 4292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$8800(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4293
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->accData:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$8900(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4295
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;
    .param p2, "i"    # I

    .line 4304
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->accData:Ljava/util/List;

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

    .line 4381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[STUCK] Acc HighG Value Dup : ["

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

    .line 4363
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    .line 4365
    .local v1, "cntDataStuck":[I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->accData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "dataSize":I
    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 4366
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->accData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4368
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v6, 0x0

    .line 4369
    .local v6, "cnt":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    if-ge v7, v8, :cond_1

    .line 4370
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 4371
    .local v8, "v1":Ljava/lang/Double;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    .line 4373
    .local v9, "v2":Ljava/lang/Double;
    invoke-virtual {v8, v9}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v10

    .line 4374
    .local v10, "compare":I
    if-nez v10, :cond_0

    .line 4375
    add-int/lit8 v6, v6, 0x1

    .line 4369
    .end local v8    # "v1":Ljava/lang/Double;
    .end local v9    # "v2":Ljava/lang/Double;
    .end local v10    # "compare":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4378
    .end local v7    # "j":I
    :cond_1
    aput v6, v1, v2

    .line 4365
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v6    # "cnt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4381
    .end local v2    # "i":I
    .end local v3    # "dataSize":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$9500(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG$$ExternalSyntheticLambda1;-><init>([I)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 4384
    const/4 v2, 0x0

    .line 4385
    .local v2, "stuck":Z
    const/4 v3, 0x3

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    .line 4386
    .local v3, "stuckAxis":[Z
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$9600(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

    move-result v5

    new-array v5, v5, [F

    .line 4388
    .local v5, "stuckData":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$9700(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 4389
    aget v7, v1, v6

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$9800(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

    move-result v8

    sub-int/2addr v8, v4

    if-ne v7, v8, :cond_3

    .line 4390
    const/4 v2, 0x1

    .line 4391
    aput-boolean v4, v3, v6

    .line 4392
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->accData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    aput v7, v5, v6

    .line 4388
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4396
    .end local v6    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 4397
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v4, v0, v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$msetResult(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;I[Z[F)V

    .line 4399
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

    .line 4360
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 4299
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "DATA3"

    const-string v3, "DATA2"

    const-string v4, "DATA1"

    const-string v5, ""

    const-string v6, "ERROR_TYPE"

    const-string v7, "Accelerometer_HighG"

    const-string v8, "SENSOR_TYPE"

    iget-object v9, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    .line 4301
    .local v9, "type":I
    const v10, 0x10072

    if-ne v9, v10, :cond_5

    .line 4303
    iget-object v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$9000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v10

    new-instance v12, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;Landroid/hardware/SensorEvent;)V

    invoke-interface {v10, v12}, Ljava/util/stream/IntStream;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    .line 4306
    iget-object v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->accData:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v12, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v12}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$9100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

    move-result v12

    if-ne v10, v12, :cond_5

    .line 4308
    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->verifyStuckAndStoreResult()V

    .line 4310
    iget-object v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$fgetisStuck(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)Z

    move-result v10

    const-string v12, "SENSORBD"

    if-eqz v10, :cond_4

    .line 4312
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 4313
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const-string v13, "MRSI_VERSION"

    const-string v14, "11.2"

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4314
    invoke-virtual {v10, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4315
    const-string v13, "CHIP_ID"

    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    iget-object v14, v14, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->sensorName:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4316
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsErrorType()[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v10, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4318
    move-object v13, v5

    .line 4319
    .local v13, "axis":Ljava/lang/String;
    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)[Z

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

    .line 4320
    :goto_0
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)[Z

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

    .line 4321
    :goto_1
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)[Z

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

    .line 4322
    :cond_2
    const-string v14, "STUCK AXIS"

    invoke-virtual {v10, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4323
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)[F

    move-result-object v14

    aget v14, v14, v11

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4324
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)[F

    move-result-object v14

    aget v14, v14, v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4325
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)[F

    move-result-object v14

    aget v14, v14, v16

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4327
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    iget-object v14, v14, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(Ljava/lang/String;)V

    .line 4328
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

    .line 4330
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$9200(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

    move-result v15

    invoke-static {v14, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$9300(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;I)Ljava/lang/String;

    move-result-object v14

    .line 4331
    .local v14, "dumpStr":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v18, v11

    :try_start_1
    const-string v11, "[STUCK] ["

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->access$9400(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)I

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

    .line 4333
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4334
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 4335
    .local v5, "jsonObject2":Lorg/json/JSONObject;
    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4336
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsErrorType()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v16

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4337
    const-string v6, "CHIP_NAME"

    iget-object v7, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4338
    const-string v6, "AXIS"

    invoke-virtual {v5, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4339
    iget-object v6, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)[F

    move-result-object v6

    aget v6, v6, v18

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4340
    iget-object v4, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)[F

    move-result-object v4

    aget v4, v4, v17

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4341
    iget-object v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;)[F

    move-result-object v3

    aget v3, v3, v16

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4342
    const-string v0, "REG_DUMP"

    invoke-virtual {v5, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4344
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendSDMPData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4349
    .end local v5    # "jsonObject2":Lorg/json/JSONObject;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "axis":Ljava/lang/String;
    .end local v14    # "dumpStr":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 4347
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v18, v11

    .line 4348
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 4310
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    move/from16 v18, v11

    .line 4352
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[STUCK] FINISH STUCK CHECKER: Accelerometer HighG: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->accData:Ljava/util/List;

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

    .line 4353
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG$StuckListenerAccHighG;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccHighG;->stop()V

    .line 4356
    :cond_5
    return-void
.end method
