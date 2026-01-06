.class Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;
.super Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiGripSensorWrapper"
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

    .line 1417
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 1418
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 1419
    return-void
.end method


# virtual methods
.method public onHeadSetStatusChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1426
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->mVersion:I

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const-string v1, "/sys/class/sensors/grip_sensor_wifi/grip_earjack"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$mwriteSysfs(Lcom/samsung/android/gesture/MotionRecognitionSAR;Ljava/lang/String;I)V

    .line 1428
    const-string v0, "MotionRecognitionService"

    const-string v1, "[EARJACK] Write EarJack state to sys node for wifi "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1434
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1435
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10027

    if-eq v0, v1, :cond_1

    .line 1436
    return-void

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x43960000    # 300.0f

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 1439
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x3

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmIsKoreaPhoneType(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1442
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->setUnknownMode(II)V

    goto :goto_0

    .line 1445
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v4

    if-nez v0, :cond_4

    .line 1446
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->setBackOff(I)V

    goto :goto_0

    .line 1447
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-ne v0, v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->clearBackOff(I)V

    .line 1452
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v4

    if-eqz v0, :cond_9

    .line 1454
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x4

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmIsKoreaPhoneType(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1455
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-int v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->setUnknownMode(II)V

    goto :goto_2

    .line 1457
    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->setBackOff(I)V

    goto :goto_1

    .line 1458
    :cond_6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    if-ne v0, v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->clearBackOff(I)V

    .line 1459
    :cond_7
    :goto_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->setBackOff(I)V

    goto :goto_2

    .line 1460
    :cond_8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    if-ne v0, v3, :cond_9

    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;->clearBackOff(I)V

    .line 1463
    :cond_9
    :goto_2
    return-void
.end method

.method public onTAStatusChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 1422
    return-void
.end method
