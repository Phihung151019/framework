.class Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;
.super Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainGripSensorWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V
    .locals 0
    .param p2, "s"    # Landroid/hardware/Sensor;
    .param p3, "sarDevice"    # Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1194
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 1195
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 1196
    return-void
.end method


# virtual methods
.method public onHeadSetStatusChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1219
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mVersion:I

    const/16 v1, 0x200

    const-string v2, "MotionRecognitionService"

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mVersion:I

    const/16 v1, 0x600

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1233
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mVersion:I

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_4

    .line 1234
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mIndex:I

    if-nez v0, :cond_4

    .line 1235
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const-string v1, "/sys/class/sensors/grip_sensor/grip_earjack"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$mwriteSysfs(Lcom/samsung/android/gesture/MotionRecognitionSAR;Ljava/lang/String;I)V

    .line 1236
    const-string v0, "[EARJACK] Write earjack state to sys node for main"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1220
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v3

    if-nez v0, :cond_2

    .line 1221
    const-string v0, "[EARJACK] Before receiving the SAR request for Main. Return."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return-void

    .line 1224
    :cond_2
    if-ne p1, v3, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mSensorEnabled:Z

    if-eqz v0, :cond_3

    .line 1225
    const-string v0, "[EARJACK] connected - Grip disabled"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1228
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1229
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->disableSensor()V

    goto :goto_1

    .line 1230
    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v3

    if-eqz v0, :cond_4

    .line 1231
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->enableSensor()V

    .line 1239
    :cond_4
    :goto_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1243
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1244
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10018

    if-eq v0, v1, :cond_1

    .line 1245
    return-void

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmIsKoreaPhoneType(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/high16 v4, 0x43960000    # 300.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 1249
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v5

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v0, v0, v7

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 1250
    invoke-virtual {p0, v6, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1251
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1252
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setLeftRightHand(I)V

    .line 1253
    return-void

    .line 1256
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v6

    const/16 v7, 0x12c

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, -0x1

    const/4 v10, 0x5

    const/high16 v11, 0x40a00000    # 5.0f

    if-eqz v0, :cond_a

    .line 1257
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    .line 1258
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    goto :goto_0

    .line 1259
    :cond_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    cmpl-float v0, v0, v8

    if-nez v0, :cond_5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v11

    if-nez v0, :cond_5

    .line 1260
    invoke-virtual {p0, v6, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1261
    invoke-virtual {p0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    goto :goto_0

    .line 1263
    :cond_5
    invoke-virtual {p0, v6, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1264
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    float-to-int v0, v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setBackOff(I)V

    goto :goto_0

    .line 1265
    :cond_6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    float-to-int v0, v0

    if-ne v0, v10, :cond_7

    invoke-virtual {p0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1268
    :cond_7
    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    float-to-int v0, v0

    const-wide v12, 0x200000000L

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    float-to-int v0, v0

    if-ne v0, v9, :cond_8

    goto :goto_1

    .line 1270
    :cond_8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    float-to-int v0, v0

    if-ne v0, v10, :cond_a

    .line 1271
    invoke-virtual {p0, v12, v13, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setTunerGrip(JZ)V

    goto :goto_2

    .line 1269
    :cond_9
    :goto_1
    invoke-virtual {p0, v12, v13, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setTunerGrip(JZ)V

    .line 1274
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v5

    if-eqz v0, :cond_12

    .line 1276
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    cmpl-float v0, v0, v4

    if-nez v0, :cond_b

    .line 1277
    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    goto :goto_4

    .line 1278
    :cond_b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v8

    if-nez v0, :cond_c

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    cmpl-float v0, v0, v11

    if-nez v0, :cond_c

    .line 1279
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1280
    invoke-virtual {p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    goto :goto_4

    .line 1282
    :cond_c
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setUnknownMode(II)V

    .line 1283
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    if-ne v0, v9, :cond_d

    goto :goto_3

    .line 1284
    :cond_d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    if-ne v0, v10, :cond_f

    invoke-virtual {p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    goto :goto_4

    .line 1283
    :cond_e
    :goto_3
    invoke-virtual {p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setBackOff(I)V

    .line 1287
    :cond_f
    :goto_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v1

    const-wide v1, 0x400000000L

    if-eqz v0, :cond_11

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    if-ne v0, v9, :cond_10

    goto :goto_5

    .line 1289
    :cond_10
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v11

    if-nez v0, :cond_12

    .line 1290
    invoke-virtual {p0, v1, v2, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setTunerGrip(JZ)V

    goto :goto_6

    .line 1288
    :cond_11
    :goto_5
    invoke-virtual {p0, v1, v2, v5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->setTunerGrip(JZ)V

    .line 1293
    :cond_12
    :goto_6
    return-void
.end method

.method public onTAStatusChanged(Z)V
    .locals 5
    .param p1, "state"    # Z

    .line 1200
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mVersion:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mVersion:I

    const/16 v2, 0x200

    if-ne v0, v2, :cond_3

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    const-string v3, "MotionRecognitionService"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] Before receiving the SAR request for Return : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return-void

    .line 1205
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mSensorEnabled:Z

    if-eqz v0, :cond_2

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TA] connected -  disabled : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1208
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->clearBackOff(I)V

    .line 1209
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->disableSensor()V

    goto :goto_0

    .line 1210
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_3

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] disconnected -  enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;->enableSensor()V

    .line 1215
    :cond_3
    :goto_0
    return-void
.end method
