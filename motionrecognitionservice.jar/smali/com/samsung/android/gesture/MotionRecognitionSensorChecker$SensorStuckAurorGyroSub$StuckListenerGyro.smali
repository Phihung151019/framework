.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;
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

.field final synthetic this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;


# direct methods
.method public static synthetic $r8$lambda$k9b2qltvKGVT0BNFm07JAPdJWbc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;Landroid/hardware/SensorEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3705
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3703
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$5000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->gyroData:Ljava/util/List;

    .line 3706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$5100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3707
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->gyroData:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$5200(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3709
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;
    .param p2, "i"    # I

    .line 3717
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->gyroData:Ljava/util/List;

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

    .line 3794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[STUCK] Gyro Sub Value Dup : ["

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

    .line 3776
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    .line 3778
    .local v1, "cntDataStuck":[I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->gyroData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "dataSize":I
    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 3779
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->gyroData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3781
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v6, 0x0

    .line 3782
    .local v6, "cnt":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    if-ge v7, v8, :cond_1

    .line 3783
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 3784
    .local v8, "v1":Ljava/lang/Double;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    .line 3786
    .local v9, "v2":Ljava/lang/Double;
    invoke-virtual {v8, v9}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v10

    .line 3787
    .local v10, "compare":I
    if-nez v10, :cond_0

    .line 3788
    add-int/lit8 v6, v6, 0x1

    .line 3782
    .end local v8    # "v1":Ljava/lang/Double;
    .end local v9    # "v2":Ljava/lang/Double;
    .end local v10    # "compare":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3791
    .end local v7    # "j":I
    :cond_1
    aput v6, v1, v2

    .line 3778
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v6    # "cnt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3794
    .end local v2    # "i":I
    .end local v3    # "dataSize":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$5800(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro$$ExternalSyntheticLambda0;-><init>([I)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 3797
    const/4 v2, 0x0

    .line 3798
    .local v2, "stuck":Z
    const/4 v3, 0x3

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    .line 3799
    .local v3, "stuckAxis":[Z
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$5900(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v5

    new-array v5, v5, [F

    .line 3801
    .local v5, "stuckData":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$6000(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 3802
    aget v7, v1, v6

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$6100(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v8

    sub-int/2addr v8, v4

    if-ne v7, v8, :cond_3

    .line 3803
    const/4 v2, 0x1

    .line 3804
    aput-boolean v4, v3, v6

    .line 3805
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->gyroData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    aput v7, v5, v6

    .line 3801
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3809
    .end local v6    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 3810
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v4, v0, v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$msetResult(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;I[Z[F)V

    .line 3812
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

    .line 3773
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 3713
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "DATA3"

    const-string v3, "DATA2"

    const-string v4, "DATA1"

    const-string v5, ""

    const-string v6, "ERROR_TYPE"

    const-string v7, "SENSOR_TYPE"

    iget-object v8, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    .line 3715
    .local v8, "type":I
    const v9, 0x10099

    if-ne v8, v9, :cond_5

    .line 3716
    iget-object v9, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$5300(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v9

    new-instance v11, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;Landroid/hardware/SensorEvent;)V

    invoke-interface {v9, v11}, Ljava/util/stream/IntStream;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    .line 3719
    iget-object v9, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->gyroData:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v11, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v11}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$5400(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v11

    if-ne v9, v11, :cond_5

    .line 3720
    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->verifyStuckAndStoreResult()V

    .line 3722
    iget-object v9, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$fgetisStuck(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)Z

    move-result v9

    const-string v11, "SENSORBD"

    if-eqz v9, :cond_4

    .line 3725
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 3726
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v12, "MRSI_VERSION"

    const-string v13, "11.2"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3727
    const-string v12, "Sub_Gyroscope"

    invoke-virtual {v9, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3728
    const-string v12, "CHIP_ID"

    iget-object v13, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    iget-object v13, v13, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->sensorName:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3729
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsErrorType()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-virtual {v9, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3731
    move-object v12, v5

    .line 3732
    .local v12, "axis":Ljava/lang/String;
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[Z

    move-result-object v14

    aget-boolean v14, v14, v10

    if-eqz v14, :cond_0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "X"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 3733
    :cond_0
    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[Z

    move-result-object v14

    const/4 v15, 0x1

    aget-boolean v14, v14, v15

    if-eqz v14, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v16, v13

    const-string v13, "Y"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    goto :goto_0

    :cond_1
    move/from16 v16, v13

    .line 3734
    :goto_0
    iget-object v13, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v13}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$fgetisStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[Z

    move-result-object v13

    aget-boolean v13, v13, v16

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Z"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 3735
    :cond_2
    const-string v13, "STUCK AXIS"

    invoke-virtual {v9, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3736
    iget-object v13, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v13}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[F

    move-result-object v13

    aget v13, v13, v10

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3737
    iget-object v13, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v13}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[F

    move-result-object v13

    aget v13, v13, v15

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3738
    iget-object v13, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v13}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[F

    move-result-object v13

    aget v13, v13, v16

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3740
    iget-object v13, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    iget-object v13, v13, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(Ljava/lang/String;)V

    .line 3741
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[STUCK] sendMRSI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    iget-object v13, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    iget-object v14, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$5500(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$5600(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;I)Ljava/lang/String;

    move-result-object v13

    .line 3745
    .local v13, "dumpStr":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v15

    const-string v15, "[STUCK] ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->access$5700(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3748
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3749
    .local v5, "jsonObject2":Lorg/json/JSONObject;
    const-string v14, "GyroscopeSub"

    invoke-virtual {v5, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3750
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsErrorType()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v16

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3751
    const-string v6, "CHIP_NAME"

    iget-object v7, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3752
    const-string v6, "AXIS"

    invoke-virtual {v5, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3753
    iget-object v6, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[F

    move-result-object v6

    aget v6, v6, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3754
    iget-object v4, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[F

    move-result-object v4

    aget v4, v4, v17

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3755
    iget-object v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->-$$Nest$fgetstuckValue(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;)[F

    move-result-object v3

    aget v3, v3, v16

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3756
    const-string v0, "REG_DUMP"

    invoke-virtual {v5, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3758
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendSDMPData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3762
    .end local v5    # "jsonObject2":Lorg/json/JSONObject;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "axis":Ljava/lang/String;
    .end local v13    # "dumpStr":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 3760
    :catch_0
    move-exception v0

    .line 3761
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3765
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub;->stop()V

    .line 3766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[STUCK] FINISH STUCK CHECKER: Gyroscope Sub: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorGyroSub$StuckListenerGyro;->gyroData:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    :cond_5
    return-void
.end method
