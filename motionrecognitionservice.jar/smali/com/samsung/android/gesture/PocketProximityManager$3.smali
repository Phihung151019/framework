.class Lcom/samsung/android/gesture/PocketProximityManager$3;
.super Ljava/lang/Object;
.source "PocketProximityManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketProximityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketProximityManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketProximityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketProximityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 581
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    .line 523
    .local v2, "proxRaw":I
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fputmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;I)V

    .line 526
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened()Z

    move-result v3

    if-nez v3, :cond_1

    .line 527
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ALERT SENSOR : Cover is closed now"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetisRunningAlertProxSensor(Lcom/samsung/android/gesture/PocketProximityManager;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 529
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 531
    :cond_0
    return-void

    .line 534
    :cond_1
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_b

    .line 535
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    float-to-int v2, v3

    .line 538
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, "alert prox : "

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x6

    const-string v12, ", "

    if-lt v3, v11, :cond_3

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v3

    if-eq v3, v11, :cond_2

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x14

    if-nez v3, :cond_3

    .line 539
    :cond_2
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v9

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v5

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v4

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v7

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v6

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v10

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_3
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v3

    if-gt v3, v10, :cond_4

    .line 547
    return-void

    .line 550
    :cond_4
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRelease()I

    move-result v3

    .line 552
    .local v3, "proxMin":I
    if-nez v3, :cond_5

    .line 553
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v3

    .line 554
    :cond_5
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_6

    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v13

    if-le v3, v13, :cond_6

    .line 555
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v3

    goto :goto_0

    .line 556
    :cond_6
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v13

    if-eq v13, v14, :cond_7

    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v13

    const/16 v14, 0x12c

    if-le v13, v14, :cond_7

    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v13

    if-le v3, v13, :cond_7

    .line 557
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v3

    .line 559
    :cond_7
    :goto_0
    if-lt v3, v2, :cond_8

    .line 560
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13, v9}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fputmAlertProxRecogFlag(Lcom/samsung/android/gesture/PocketProximityManager;Z)V

    .line 561
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v14

    add-int/2addr v14, v5

    invoke-static {v13, v14}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fputmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;I)V

    .line 562
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mAlertProxOpenCnt : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v15}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_8
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v13

    const/16 v14, 0xa

    if-lt v13, v14, :cond_a

    .line 566
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v13}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    .line 567
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    const-string v4, "mAlertProxOpen : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v4

    if-lt v4, v11, :cond_9

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v4

    if-ne v4, v14, :cond_9

    .line 570
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v11, v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v5

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v16

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v9, v7

    float-to-int v7, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v8, v6

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v10

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_9
    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetisRunningAlertProxSensor(Lcom/samsung/android/gesture/PocketProximityManager;)Z

    move-result v4

    if-ne v4, v5, :cond_a

    .line 574
    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$3;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 577
    :cond_a
    return-void

    .line 544
    .end local v3    # "proxMin":I
    :cond_b
    return-void
.end method
