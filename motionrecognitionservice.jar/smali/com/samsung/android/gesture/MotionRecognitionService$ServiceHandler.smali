.class final Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;
.super Landroid/os/Handler;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1375
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    .line 1376
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1377
    return-void
.end method

.method private checkListener(III)Z
    .locals 4
    .param p1, "event"    # I
    .param p2, "motionSensors"    # I
    .param p3, "motionType"    # I

    .line 1380
    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 1381
    return v0

    .line 1384
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p2

    const/4 v2, 0x0

    const-string v3, "MotionRecognitionService"

    if-nez v1, :cond_1

    .line 1385
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSettings(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSettings;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isSettingMotion(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1386
    const-string v0, "checkListener : Setting is OFF"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return v2

    .line 1391
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1404
    return v0

    .line 1400
    :sswitch_0
    and-int/lit16 v1, p3, 0x400

    if-eqz v1, :cond_2

    .line 1401
    return v0

    .line 1394
    :sswitch_1
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_3

    const/high16 v1, 0x20000

    and-int/2addr v1, p3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1407
    :cond_2
    const-string v0, "checkListener : return false;"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    return v2

    .line 1396
    :cond_3
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x56 -> :sswitch_1
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method private injectSensorAdditionalInfoMotion(Landroid/hardware/Sensor;[I)V
    .locals 3
    .param p1, "motionSensor"    # Landroid/hardware/Sensor;
    .param p2, "data"    # [I

    .line 1635
    invoke-static {p1, p2}, Landroid/hardware/SensorAdditionalInfo;->createMotionData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v0

    .line 1637
    .local v0, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1638
    const-string v1, "MotionRecognitionService"

    const-string v2, "injectSensorAdditionalInfo failed "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_0
    return-void
.end method

.method private injectSensorAdditionalInfoSContext(Landroid/hardware/Sensor;[I)V
    .locals 3
    .param p1, "sensorhub"    # Landroid/hardware/Sensor;
    .param p2, "data"    # [I

    .line 1627
    invoke-static {p1, p2}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v0

    .line 1629
    .local v0, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1630
    const-string v1, "MotionRecognitionService"

    const-string v2, "injectSensorAdditionalInfoSContext failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1413
    if-eqz p1, :cond_e

    .line 1414
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const v2, 0x1009f

    const v3, 0x10032

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    .line 1607
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1608
    .local v0, "sensorhub":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 1609
    new-array v1, v5, [I

    .line 1610
    .local v1, "intData":[I
    aput v4, v1, v6

    .line 1611
    const/16 v2, 0x50c1

    aput v2, v1, v7

    .line 1613
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "power share disabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoSContext(Landroid/hardware/Sensor;[I)V

    .line 1615
    .end local v1    # "intData":[I
    goto/16 :goto_5

    .line 1616
    :cond_0
    const-string v1, "MotionRecognitionService"

    const-string v2, "No Sensor Hub."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    goto/16 :goto_5

    .line 1592
    .end local v0    # "sensorhub":Landroid/hardware/Sensor;
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1593
    .restart local v0    # "sensorhub":Landroid/hardware/Sensor;
    if-eqz v0, :cond_1

    .line 1594
    new-array v1, v5, [I

    .line 1595
    .restart local v1    # "intData":[I
    aput v4, v1, v6

    .line 1596
    const v2, 0x10050c1

    aput v2, v1, v7

    .line 1598
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "power share enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoSContext(Landroid/hardware/Sensor;[I)V

    .line 1600
    .end local v1    # "intData":[I
    goto/16 :goto_5

    .line 1601
    :cond_1
    const-string v1, "MotionRecognitionService"

    const-string v2, "No Sensor Hub."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    goto/16 :goto_5

    .line 1577
    .end local v0    # "sensorhub":Landroid/hardware/Sensor;
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1578
    .restart local v0    # "sensorhub":Landroid/hardware/Sensor;
    if-eqz v0, :cond_2

    .line 1579
    new-array v1, v5, [I

    .line 1580
    .restart local v1    # "intData":[I
    aput v4, v1, v6

    .line 1581
    const v2, 0x120049c1

    aput v2, v1, v7

    .line 1583
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call screen foreground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoSContext(Landroid/hardware/Sensor;[I)V

    .line 1585
    .end local v1    # "intData":[I
    goto/16 :goto_5

    .line 1586
    :cond_2
    const-string v1, "MotionRecognitionService"

    const-string v2, "No Sensor Hub."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    goto/16 :goto_5

    .line 1562
    .end local v0    # "sensorhub":Landroid/hardware/Sensor;
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1563
    .restart local v0    # "sensorhub":Landroid/hardware/Sensor;
    if-eqz v0, :cond_3

    .line 1564
    new-array v1, v5, [I

    .line 1565
    .restart local v1    # "intData":[I
    aput v4, v1, v6

    .line 1566
    const v2, 0x110049c1

    aput v2, v1, v7

    .line 1568
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call screen background: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoSContext(Landroid/hardware/Sensor;[I)V

    .line 1570
    .end local v1    # "intData":[I
    goto/16 :goto_5

    .line 1571
    :cond_3
    const-string v1, "MotionRecognitionService"

    const-string v2, "No Sensor Hub."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    goto/16 :goto_5

    .line 1547
    .end local v0    # "sensorhub":Landroid/hardware/Sensor;
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1548
    .restart local v0    # "sensorhub":Landroid/hardware/Sensor;
    if-eqz v0, :cond_4

    .line 1549
    new-array v1, v1, [I

    .line 1550
    .local v1, "data":[I
    const/16 v2, 0x8

    aput v2, v1, v6

    .line 1551
    const v2, 0x100048c1

    aput v2, v1, v7

    .line 1552
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v5

    .line 1553
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inject RefreshRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoSContext(Landroid/hardware/Sensor;[I)V

    .line 1555
    .end local v1    # "data":[I
    goto/16 :goto_5

    .line 1556
    :cond_4
    const-string v1, "MotionRecognitionService"

    const-string v2, "SensorHub is null. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    goto/16 :goto_5

    .line 1543
    .end local v0    # "sensorhub":Landroid/hardware/Sensor;
    :sswitch_5
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListener(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1544
    goto/16 :goto_5

    .line 1538
    :sswitch_6
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListener(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1540
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1541
    goto/16 :goto_5

    .line 1465
    :sswitch_7
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mstartMotions(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1467
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/hardware/context/SemContextManager;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1468
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmSemContextManager(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/hardware/context/SemContextManager;)V

    .line 1469
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/hardware/context/SemContextManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/SemContextManager;)V

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmSensorChecker(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 1470
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$msetupSmartAlertAvailability(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1473
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmCheckProximityPopup(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/CheckProximitySensor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSARMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/CheckProximitySensor;->startPalmSensorCheck(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    .line 1474
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmBrightnessHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->startWritingBrightness()V

    .line 1475
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmLightSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_6

    .line 1476
    const-string v0, "MotionRecognitionService"

    const-string v1, "Support: calibratedLux type sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mregisterCalibratedLuxSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    goto :goto_0

    .line 1479
    :cond_6
    const-string v0, "MotionRecognitionService"

    const-string v1, "Not Support: calibratedLux type sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmInputManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/input/InputManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1482
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmInputManager(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/hardware/input/InputManager;)V

    .line 1483
    const-string v0, "MotionRecognitionService"

    const-string v1, "Support: InputService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1535
    :sswitch_8
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mwritePocketDetectorSysfs(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1536
    goto/16 :goto_5

    .line 1532
    :sswitch_9
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v7}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mwritePocketDetectorSysfs(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1533
    goto/16 :goto_5

    .line 1459
    :sswitch_a
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSettings(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->updateFromMotionSystemSettings()V

    .line 1460
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmPalmMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1461
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmPalmMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->settingOnChanged(Z)V

    goto/16 :goto_5

    .line 1457
    :sswitch_b
    goto/16 :goto_5

    .line 1454
    :sswitch_c
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$minitializeMotionEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1455
    goto/16 :goto_5

    .line 1444
    :sswitch_d
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorChecker(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1448
    const-string v0, "MotionRecognitionService"

    const-string v1, "HQMService is supported, skip enableTestSensor() function!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmPalmMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmPalmMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->enablePalmLogging()V

    goto/16 :goto_5

    .line 1440
    :sswitch_e
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$monChangedScreenState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1441
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$munregisterCalibratedLuxSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1442
    goto/16 :goto_5

    .line 1434
    :sswitch_f
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v7}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$monChangedScreenState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1435
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmRegisteredPocketDetector(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1436
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$munregisterPocketDetector(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    goto/16 :goto_5

    .line 1416
    :sswitch_10
    const-string v0, "MotionRecognitionService"

    const-string v1, "received message in handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const/4 v0, 0x0

    .line 1419
    .local v0, "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1422
    goto :goto_1

    .line 1420
    :catch_0
    move-exception v1

    .line 1421
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassCastException in handleMessage: msg.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1423
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_1
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received message in handler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1425
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 1426
    .local v3, "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    invoke-virtual {v0}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v4

    iget v5, v3, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionSensors:I

    iget v6, v3, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->checkListener(III)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1427
    invoke-virtual {v3, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->callback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V

    .line 1428
    .end local v3    # "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    :cond_8
    goto :goto_2

    .line 1429
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmEventPool(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->recycle(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V

    .line 1430
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1431
    monitor-exit v1

    .line 1432
    goto/16 :goto_5

    .line 1431
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1504
    .end local v0    # "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    :sswitch_11
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHasSensorHub(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1505
    new-array v0, v5, [I

    .line 1506
    .local v0, "data":[I
    aput v4, v0, v6

    .line 1508
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 1509
    const v1, 0xd47c1

    aput v1, v0, v7

    goto :goto_3

    .line 1511
    :cond_a
    const v1, 0xf47c1

    aput v1, v0, v7

    .line 1513
    :goto_3
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inject Call State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoMotion(Landroid/hardware/Sensor;[I)V

    .line 1515
    .end local v0    # "data":[I
    goto/16 :goto_5

    .line 1516
    :cond_b
    const-string v0, "MotionRecognitionService"

    const-string v1, "MotionSensor is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    goto/16 :goto_5

    .line 1521
    :sswitch_12
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1522
    new-array v0, v5, [I

    .line 1523
    .restart local v0    # "data":[I
    aput v4, v0, v6

    .line 1524
    const v1, 0x1047c1

    aput v1, v0, v7

    .line 1525
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inject auto rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mgetWindowRotation(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoMotion(Landroid/hardware/Sensor;[I)V

    .line 1527
    .end local v0    # "data":[I
    goto :goto_5

    .line 1528
    :cond_c
    const-string v0, "MotionRecognitionService"

    const-string v1, "MotionSensor is null. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    goto :goto_5

    .line 1489
    :sswitch_13
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHasSensorHub(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1490
    new-array v0, v5, [I

    .line 1491
    .restart local v0    # "data":[I
    aput v4, v0, v6

    .line 1493
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_d

    .line 1494
    const v1, 0x10047c1

    aput v1, v0, v7

    goto :goto_4

    .line 1496
    :cond_d
    const/16 v1, 0x47c1

    aput v1, v0, v7

    .line 1498
    :goto_4
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inject screen on / off : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->injectSensorAdditionalInfoMotion(Landroid/hardware/Sensor;[I)V

    .line 1500
    .end local v0    # "data":[I
    nop

    .line 1624
    :cond_e
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x1 -> :sswitch_13
        0x5 -> :sswitch_12
        0xa -> :sswitch_11
        0xb -> :sswitch_11
        0x55 -> :sswitch_10
        0x56 -> :sswitch_f
        0x57 -> :sswitch_e
        0x58 -> :sswitch_d
        0x59 -> :sswitch_c
        0x5a -> :sswitch_b
        0x5b -> :sswitch_a
        0x5c -> :sswitch_9
        0x5d -> :sswitch_8
        0x5e -> :sswitch_7
        0x5f -> :sswitch_6
        0x60 -> :sswitch_5
        0x62 -> :sswitch_4
        0x63 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method
