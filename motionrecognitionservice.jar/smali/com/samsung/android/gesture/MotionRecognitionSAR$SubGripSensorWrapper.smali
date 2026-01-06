.class Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;
.super Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubGripSensorWrapper"
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

    .line 1372
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 1373
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 1374
    return-void
.end method


# virtual methods
.method public onHeadSetStatusChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1395
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1399
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1400
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mType:I

    if-eq v0, v1, :cond_1

    .line 1401
    return-void

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_4

    .line 1404
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x3

    aget v0, v0, v2

    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmIsKoreaPhoneType(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1405
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->setUnknownMode(II)V

    goto :goto_0

    .line 1407
    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->setUnknownMode(II)V

    .line 1408
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->setBackOff(I)V

    goto :goto_0

    .line 1409
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->clearBackOff(I)V

    .line 1412
    :cond_4
    :goto_0
    return-void
.end method

.method public onTAStatusChanged(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 1378
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mVersion:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_2

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v2, "MotionRecognitionService"

    if-nez v0, :cond_0

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] Before receiving the SAR request for Return : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    return-void

    .line 1383
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TA] connected -  disabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->clearBackOff(I)V

    .line 1386
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->disableSensor()V

    goto :goto_0

    .line 1387
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_2

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TA] disconnected -  enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;->enableSensor()V

    .line 1392
    :cond_2
    :goto_0
    return-void
.end method
