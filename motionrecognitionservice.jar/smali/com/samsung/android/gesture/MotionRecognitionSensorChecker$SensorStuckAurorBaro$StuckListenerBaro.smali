.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StuckListenerBaro"
.end annotation


# instance fields
.field private final baroData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;


# direct methods
.method public static synthetic $r8$lambda$8xR-fHJDvFprV2hoNPoipNYLztg(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;Landroid/hardware/SensorEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3300
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3298
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$2500(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->baroData:Ljava/util/List;

    .line 3301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$2600(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3302
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->baroData:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$2700(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3304
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;
    .param p2, "i"    # I

    .line 3313
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->baroData:Ljava/util/List;

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

    .line 3394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[STUCK] Baro Value Dup : ["

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

    .line 3375
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    .line 3378
    .local v1, "cntDataStuck":[I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->baroData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "dataSize":I
    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 3379
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->baroData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3381
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v6, 0x0

    .line 3382
    .local v6, "cnt":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    if-ge v7, v8, :cond_1

    .line 3383
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 3384
    .local v8, "v1":Ljava/lang/Double;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    .line 3386
    .local v9, "v2":Ljava/lang/Double;
    invoke-virtual {v8, v9}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v10

    .line 3387
    .local v10, "compare":I
    if-nez v10, :cond_0

    .line 3388
    add-int/lit8 v6, v6, 0x1

    .line 3382
    .end local v8    # "v1":Ljava/lang/Double;
    .end local v9    # "v2":Ljava/lang/Double;
    .end local v10    # "compare":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3391
    .end local v7    # "j":I
    :cond_1
    aput v6, v1, v2

    .line 3378
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v6    # "cnt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3394
    .end local v2    # "i":I
    .end local v3    # "dataSize":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$3300(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro$$ExternalSyntheticLambda0;-><init>([I)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 3397
    const/4 v2, 0x0

    .line 3398
    .local v2, "stuck":Z
    const/4 v3, 0x3

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    .line 3399
    .local v3, "stuckAxis":[Z
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$3400(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v5

    new-array v5, v5, [F

    .line 3401
    .local v5, "stuckData":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$3500(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 3402
    aget v7, v1, v6

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$3600(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v8

    sub-int/2addr v8, v4

    if-ne v7, v8, :cond_3

    .line 3403
    const/4 v2, 0x1

    .line 3404
    aput-boolean v4, v3, v6

    .line 3405
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->baroData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    aput v7, v5, v6

    .line 3401
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3409
    .end local v6    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 3410
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v4, v0, v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->-$$Nest$msetResult(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;I[Z[F)V

    .line 3412
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

    .line 3372
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 3308
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "DATA2"

    const-string v3, "DATA1"

    const-string v4, ""

    const-string v5, "ERROR_TYPE"

    const-string v6, "Barometer"

    const-string v7, "SENSOR_TYPE"

    iget-object v8, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    .line 3310
    .local v8, "type":I
    const/4 v9, 0x6

    if-ne v8, v9, :cond_5

    .line 3312
    iget-object v9, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$2800(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v9

    new-instance v11, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;Landroid/hardware/SensorEvent;)V

    invoke-interface {v9, v11}, Ljava/util/stream/IntStream;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    .line 3315
    iget-object v9, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->baroData:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v11, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v11}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$2900(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v11

    if-ne v9, v11, :cond_4

    .line 3317
    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->verifyStuckAndStoreResult()V

    .line 3320
    iget-object v9, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->-$$Nest$fgetisStuck(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)Z

    move-result v9

    const-string v11, "SENSORBD"

    if-eqz v9, :cond_3

    .line 3321
    const-string v9, ""

    .line 3322
    .local v9, "temperatureStr":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3323
    .local v12, "temperature":F
    iget-object v13, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    iget-object v13, v13, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const-string v14, "/sys/class/sensors/barometer_sensor/temperature"

    invoke-static {v13, v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misFileExists(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3324
    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$smgetFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3325
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 3329
    :cond_0
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 3330
    .local v13, "jsonObj":Lorg/json/JSONObject;
    const-string v14, "MRSI_VERSION"

    const-string v15, "11.2"

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3331
    invoke-virtual {v13, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3332
    const-string v14, "CHIP_ID"

    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    iget-object v15, v15, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->sensorName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3333
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsErrorType()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v13, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3335
    move-object v14, v4

    .line 3336
    .local v14, "axis":Ljava/lang/String;
    move/from16 v16, v15

    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->-$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)[Z

    move-result-object v15

    aget-boolean v15, v15, v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v15, :cond_1

    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v17, v10

    :try_start_2
    const-string v10, "X"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v10

    goto :goto_1

    .line 3359
    .end local v13    # "jsonObj":Lorg/json/JSONObject;
    .end local v14    # "axis":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v17, v10

    :goto_0
    move/from16 v18, v8

    goto/16 :goto_2

    .line 3336
    .restart local v13    # "jsonObj":Lorg/json/JSONObject;
    .restart local v14    # "axis":Ljava/lang/String;
    :cond_1
    move/from16 v17, v10

    .line 3337
    :goto_1
    :try_start_3
    const-string v10, "STUCK AXIS"

    invoke-virtual {v13, v10, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3338
    iget-object v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)[F

    move-result-object v10

    aget v10, v10, v17

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3339
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3341
    iget-object v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    iget-object v10, v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(Ljava/lang/String;)V

    .line 3342
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[STUCK] sendMRSI: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    iget-object v10, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$3000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v15

    invoke-static {v10, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$3100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;I)Ljava/lang/String;

    move-result-object v10

    .line 3345
    .local v10, "dumpStr":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v18, v8

    .end local v8    # "type":I
    .local v18, "type":I
    :try_start_4
    const-string v8, "[STUCK] ["

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->access$3200(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "] "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3348
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 3349
    .local v4, "jsonObj2":Lorg/json/JSONObject;
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3350
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsErrorType()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v16

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3351
    const-string v5, "CHIP_NAME"

    iget-object v6, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3352
    const-string v5, "AXIS"

    invoke-virtual {v4, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3353
    iget-object v5, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;)[F

    move-result-object v5

    aget v5, v5, v17

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3354
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3355
    const-string v0, "REG_DUMP"

    invoke-virtual {v4, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3357
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendSDMPData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3361
    .end local v4    # "jsonObj2":Lorg/json/JSONObject;
    .end local v10    # "dumpStr":Ljava/lang/String;
    .end local v13    # "jsonObj":Lorg/json/JSONObject;
    .end local v14    # "axis":Ljava/lang/String;
    :cond_2
    goto :goto_3

    .line 3359
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v18    # "type":I
    .restart local v8    # "type":I
    :catch_3
    move-exception v0

    move/from16 v18, v8

    goto :goto_2

    :catch_4
    move-exception v0

    move/from16 v18, v8

    move/from16 v17, v10

    .line 3360
    .end local v8    # "type":I
    .local v0, "e":Lorg/json/JSONException;
    .restart local v18    # "type":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 3320
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v9    # "temperatureStr":Ljava/lang/String;
    .end local v12    # "temperature":F
    .end local v18    # "type":I
    .restart local v8    # "type":I
    :cond_3
    move/from16 v18, v8

    move/from16 v17, v10

    .line 3364
    .end local v8    # "type":I
    .restart local v18    # "type":I
    :goto_3
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro;->stop()V

    .line 3365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[STUCK] FINISH STUCK CHECKER: Barometer: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->baroData:Ljava/util/List;

    move/from16 v4, v17

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3315
    .end local v18    # "type":I
    .restart local v8    # "type":I
    :cond_4
    move/from16 v18, v8

    .end local v8    # "type":I
    .restart local v18    # "type":I
    goto :goto_4

    .line 3310
    .end local v18    # "type":I
    .restart local v8    # "type":I
    :cond_5
    move/from16 v18, v8

    .line 3368
    .end local v8    # "type":I
    .restart local v18    # "type":I
    :goto_4
    return-void
.end method
