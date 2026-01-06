.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1199
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1275
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1202
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1203
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 1204
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1206
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccWrongRangeEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 1207
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1208
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$misMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;[F)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1211
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    const-string v4, "SENSORBD"

    if-nez v3, :cond_1

    .line 1212
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingForVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmIsMovingForVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1213
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingForVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_7

    .line 1214
    const-string v2, "AccWrongRange : EVENT_NONE"

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$munregisterAccWrongRangeListener(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    goto/16 :goto_4

    .line 1217
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    .line 1218
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1219
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v6

    mul-float/2addr v5, v7

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v2

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v8

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccVectorsum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;F)V

    .line 1223
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccVectorsum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)F

    move-result v3

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v3, v9

    const/high16 v5, 0x40e00000    # 7.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    .line 1224
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    goto :goto_0

    .line 1226
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 1229
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_3

    .line 1230
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputWrongVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V

    .line 1233
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmAccVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 1234
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetWrongVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1235
    const-string v3, "AccWrongRange : TEST DONE! FAILURE"

    invoke-static {v4, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1238
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "MRSI_VERSION"

    const-string v5, "11.2"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1239
    const-string v4, "SENSOR_TYPE"

    const-string v5, "Accelerometer"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1240
    const-string v4, "CHIP_ID"

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1241
    const-string v4, "ERROR_TYPE"

    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsErrorType()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    aget-object v5, v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1243
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetmSensorStuckAurorMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->getResultFormatted()Ljava/lang/String;

    move-result-object v4

    .line 1244
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1245
    .local v5, "temp":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 1246
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1247
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1248
    .local v9, "k":Ljava/lang/String;
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1249
    nop

    .end local v9    # "k":Ljava/lang/String;
    goto :goto_1

    .line 1251
    :cond_4
    const-string v9, "DATA1"

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v6

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1252
    const-string v9, "DATA2"

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v10, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1253
    const-string v2, "DATA3"

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v9, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1256
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const-string v8, "MRSI"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sm"

    invoke-static {v2, v8, v9, v6, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendHWParamServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "temp":Lorg/json/JSONObject;
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_2

    .line 1258
    :catch_0
    move-exception v2

    .line 1259
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1260
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2
    goto :goto_3

    .line 1262
    :cond_5
    const-string v2, "AccWrongRange : TEST DONE! PASS!"

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$munregisterAccWrongRangeListener(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    goto :goto_4

    .line 1267
    :cond_6
    const-string v2, "AccWrongRange : EVENT_MOVE"

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$munregisterAccWrongRangeListener(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 1271
    :cond_7
    :goto_4
    return-void
.end method
