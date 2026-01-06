.class Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;
.super Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sub1GripSensorWrapper"
.end annotation


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

    .line 1298
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 1299
    return-void
.end method


# virtual methods
.method public onHeadSetStatusChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1321
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1325
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1326
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mType:I

    if-eq v0, v1, :cond_1

    .line 1327
    return-void

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    const/high16 v3, 0x40a00000    # 5.0f

    const/16 v4, 0x12c

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x43960000    # 300.0f

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eqz v0, :cond_8

    .line 1330
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x3

    aget v0, v0, v9

    cmpl-float v0, v0, v6

    if-nez v0, :cond_2

    .line 1331
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    goto :goto_0

    .line 1332
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v9

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 1333
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    .line 1334
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    goto :goto_0

    .line 1336
    :cond_3
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    .line 1337
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setBackOff(I)V

    goto :goto_0

    .line 1338
    :cond_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-ne v0, v7, :cond_5

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    .line 1341
    :cond_5
    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    const-wide v9, 0x10000000000L

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-ne v0, v2, :cond_6

    goto :goto_1

    .line 1343
    :cond_6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-ne v0, v7, :cond_8

    .line 1344
    invoke-virtual {p0, v9, v10, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setTunerGrip(JZ)V

    goto :goto_2

    .line 1342
    :cond_7
    :goto_1
    invoke-virtual {p0, v9, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setTunerGrip(JZ)V

    .line 1348
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v8

    if-eqz v0, :cond_f

    .line 1350
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x4

    aget v0, v0, v9

    cmpl-float v0, v0, v6

    if-nez v0, :cond_9

    .line 1351
    invoke-virtual {p0, v8, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    goto :goto_3

    .line 1352
    :cond_9
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    cmpl-float v0, v0, v5

    if-nez v0, :cond_a

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v9

    cmpl-float v0, v0, v3

    if-nez v0, :cond_a

    .line 1353
    invoke-virtual {p0, v8, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    .line 1354
    invoke-virtual {p0, v8}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    goto :goto_3

    .line 1356
    :cond_a
    invoke-virtual {p0, v8, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setUnknownMode(II)V

    .line 1357
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    float-to-int v0, v0

    if-nez v0, :cond_b

    invoke-virtual {p0, v8}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setBackOff(I)V

    goto :goto_3

    .line 1358
    :cond_b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    float-to-int v0, v0

    if-ne v0, v7, :cond_c

    invoke-virtual {p0, v8}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    .line 1361
    :cond_c
    :goto_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    float-to-int v0, v0

    const-wide v3, 0x20000000000L

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    float-to-int v0, v0

    if-ne v0, v2, :cond_d

    goto :goto_4

    .line 1363
    :cond_d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    float-to-int v0, v0

    if-ne v0, v7, :cond_f

    .line 1364
    invoke-virtual {p0, v3, v4, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setTunerGrip(JZ)V

    goto :goto_5

    .line 1362
    :cond_e
    :goto_4
    invoke-virtual {p0, v3, v4, v8}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->setTunerGrip(JZ)V

    .line 1367
    :cond_f
    :goto_5
    return-void
.end method

.method public onTAStatusChanged(Z)V
    .locals 5
    .param p1, "state"    # Z

    .line 1303
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mVersion:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_2

    .line 1304
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    const-string v3, "MotionRecognitionService"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] Before receiving the SAR request for Return : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return-void

    .line 1308
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TA] connected -  disabled : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    .line 1311
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->clearBackOff(I)V

    .line 1312
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->disableSensor()V

    goto :goto_0

    .line 1313
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_2

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] disconnected -  enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;->enableSensor()V

    .line 1318
    :cond_2
    :goto_0
    return-void
.end method
