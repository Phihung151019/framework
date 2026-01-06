.class Lcom/samsung/android/gesture/PocketProximityManager$2;
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

    .line 356
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 488
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 36
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    new-instance v3, Lcom/samsung/android/gesture/VirtualPocketData;

    invoke-direct {v3}, Lcom/samsung/android/gesture/VirtualPocketData;-><init>()V

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fputvpData(Lcom/samsung/android/gesture/PocketProximityManager;Lcom/samsung/android/gesture/VirtualPocketData;)V

    .line 363
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 364
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/VirtualPocketData;->setState(I)V

    .line 365
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/VirtualPocketData;->setReason(I)V

    .line 366
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getReason()I

    move-result v3

    const/16 v4, 0xa

    rem-int/2addr v3, v4

    const-string v6, " lux "

    const-string v7, " reason "

    const-string v8, "POCKET SENSOR : state "

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x7

    if-ne v3, v14, :cond_0

    .line 367
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v3

    new-instance v15, Lcom/samsung/android/gesture/PocketDumpVirtual;

    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v16

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v18

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/VirtualPocketData;->getReason()I

    move-result v19

    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v12

    float-to-int v4, v4

    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v11

    float-to-int v5, v5

    const/16 v32, 0x6

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v10

    float-to-int v9, v9

    move/from16 v33, v14

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v32

    float-to-int v14, v14

    move/from16 v34, v10

    iget-object v10, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v33

    float-to-int v10, v10

    move/from16 v35, v12

    iget-object v12, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v13

    float-to-int v12, v12

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v26, -0x1

    const/16 v27, -0x1

    const-wide/16 v28, 0x0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v9

    move/from16 v24, v10

    move/from16 v25, v12

    move/from16 v23, v14

    invoke-direct/range {v15 .. v31}, Lcom/samsung/android/gesture/PocketDumpVirtual;-><init>(JIIIIIIIIIIJII)V

    invoke-virtual {v3, v15}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 368
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/gesture/VirtualPocketData;->getReason()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " proxy1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v35

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " proxy2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v11

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v13

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POCKET SENSOR : proxy3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v34

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " proxy4 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v32

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " proxy5 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v33

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void

    .line 373
    :cond_0
    move/from16 v34, v10

    move/from16 v35, v12

    move/from16 v33, v14

    const/16 v32, 0x6

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v35

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Lcom/samsung/android/gesture/VirtualPocketData;->setBaseProxy(I)V

    .line 374
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v11

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Lcom/samsung/android/gesture/VirtualPocketData;->setCurrentProxy(I)V

    .line 375
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v13

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Lcom/samsung/android/gesture/VirtualPocketData;->setLuxPocket(I)V

    .line 376
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v34

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Lcom/samsung/android/gesture/VirtualPocketData;->setReleaseDiff(I)V

    .line 377
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v32

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Lcom/samsung/android/gesture/VirtualPocketData;->setMinRelease(I)V

    .line 378
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v9, v33

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Lcom/samsung/android/gesture/VirtualPocketData;->setMinRecog(I)V

    .line 380
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/gesture/VirtualPocketData;->getReason()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/gesture/VirtualPocketData;->getBaseProxy()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/gesture/VirtualPocketData;->getCurrentProxy()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/gesture/VirtualPocketData;->getLuxPocket()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "POCKET SENSOR : release diff "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/gesture/VirtualPocketData;->getReleaseDiff()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " minRel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRelease()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " minRecog "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    const/16 v6, 0x10

    if-lt v3, v6, :cond_2

    .line 384
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/gesture/VirtualPocketData;->setPocketVer(I)V

    .line 385
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v7, 0x8

    aget v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/gesture/VirtualPocketData;->setLastOpenProxy(I)V

    .line 386
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/gesture/VirtualPocketData;->setLastCloseProxy(I)V

    .line 387
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v6, v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/VirtualPocketData;->setHighLuxProxy(I)V

    .line 388
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v6, 0xb

    aget v4, v4, v6

    float-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/gesture/VirtualPocketData;->setHighLuxProxyTime(J)V

    .line 389
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v6, 0xc

    aget v4, v4, v6

    float-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/gesture/VirtualPocketData;->setCurProxyCheckTime(J)V

    .line 390
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getPocketVer()I

    move-result v3

    const v4, 0x16f75ec

    if-lt v3, v4, :cond_1

    .line 391
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/gesture/VirtualPocketData;->setLightDynmTHD(Z)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v6, 0xd

    aget v4, v4, v6

    float-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/gesture/VirtualPocketData;->setPrevProxyCheckTime(J)V

    .line 395
    :goto_0
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v6, 0xe

    aget v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/VirtualPocketData;->setProxyCallMin(I)V

    .line 397
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetppc()Lcom/samsung/android/gesture/PocketProximityCluster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityCluster;->getOpenCentroid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/VirtualPocketData;->setOpenCentroid(I)V

    .line 398
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetppc()Lcom/samsung/android/gesture/PocketProximityCluster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityCluster;->getCloseCentroid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/VirtualPocketData;->setCloseCentroid(I)V

    .line 400
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/VirtualPocketData;->getPocketVer()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->setPocketVer(I)V

    .line 402
    new-instance v3, Ljava/util/Date;

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/VirtualPocketData;->getHighLuxProxyTime()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "highLuxTime":Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    iget-object v6, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/VirtualPocketData;->getCurProxyCheckTime()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "curProxyTime":Ljava/lang/String;
    new-instance v6, Ljava/util/Date;

    iget-object v7, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/gesture/VirtualPocketData;->getPrevProxyCheckTime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, "prevProxyTime":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "POCKET SENSOR : lastOpenProxy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/VirtualPocketData;->getLastOpenProxy()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lastCloseProxy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/VirtualPocketData;->getLastCloseProxy()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " highLuxProxy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/VirtualPocketData;->getHighLuxProxy()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "POCKET SENSOR : highLuxProxyTime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curProxyCheckTime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prevProxyCheckTime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "POCKET SENSOR : proxyCallMin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/VirtualPocketData;->getProxyCallMin()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pocketVer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/VirtualPocketData;->getPocketVer()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "POCKET SENSOR : openCentroid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/VirtualPocketData;->getOpenCentroid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " closeCentroid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/gesture/VirtualPocketData;->getCloseCentroid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v7, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/gesture/VirtualPocketData;->getProxyCallMin()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/gesture/VirtualPocketData;->getCurrentProxy()I

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/gesture/VirtualPocketData;->getProxyCallMin()I

    move-result v8

    sub-int/2addr v7, v8

    const/16 v8, 0xbb8

    if-lt v7, v8, :cond_2

    .line 412
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "lightLimitByCallmin = true"

    invoke-static {v7, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v7, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v7, v5}, Lcom/samsung/android/gesture/PocketProximityManager;->setLightLimitByCallmin(Z)V

    .line 417
    .end local v3    # "highLuxTime":Ljava/lang/String;
    .end local v4    # "curProxyTime":Ljava/lang/String;
    .end local v6    # "prevProxyTime":Ljava/lang/String;
    :cond_2
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3, v5}, Lcom/samsung/android/gesture/PocketProximityManager;->setPocketSensorReceived(Z)V

    .line 419
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getCurrentProxy()I

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetppc()Lcom/samsung/android/gesture/PocketProximityCluster;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/VirtualPocketData;->getCurrentProxy()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/PocketProximityCluster;->inputProxData(I)V

    .line 424
    :cond_3
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened()Z

    move-result v3

    if-nez v3, :cond_4

    .line 425
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POCKET SENSOR : Cover is closed now"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void

    .line 434
    :cond_4
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v3

    const-wide/16 v6, 0x0

    if-ne v3, v11, :cond_5

    .line 435
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Tilt!!!!"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-boolean v3, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v3, v5, :cond_5

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v3

    if-nez v3, :cond_5

    .line 437
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v13, v6, v7}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 438
    sput v13, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 439
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v3, v13}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 443
    :cond_5
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v3

    if-nez v3, :cond_6

    .line 444
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetppc()Lcom/samsung/android/gesture/PocketProximityCluster;

    move-result-object v4

    iget-object v8, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v8}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/gesture/VirtualPocketData;->getCurrentProxy()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/PocketProximityCluster;->getCurrentProxState(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/VirtualPocketData;->setState(I)V

    .line 445
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v3

    if-eqz v3, :cond_6

    .line 446
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Using the clustering data"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_6
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v3

    if-nez v3, :cond_8

    .line 451
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->alertProxAvailable()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetisRunningAlertProxSensor(Lcom/samsung/android/gesture/PocketProximityManager;)Z

    move-result v3

    if-ne v3, v5, :cond_7

    .line 452
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 454
    :cond_7
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v3

    if-ne v3, v5, :cond_d

    .line 456
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    move/from16 v4, v35

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 457
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->startCheckingTouchMonitoring()V

    goto/16 :goto_1

    .line 460
    :cond_8
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v3

    if-ne v3, v5, :cond_c

    .line 461
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    .line 462
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_a

    .line 463
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getLastOpenProxy()I

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/VirtualPocketData;->getCurrentProxy()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRelease()I

    move-result v3

    if-nez v3, :cond_a

    .line 464
    :cond_9
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Proximity set out by pocket raw data"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    .line 466
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxySensor()V

    .line 467
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v3

    move/from16 v4, v34

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 470
    :cond_a
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived()Z

    move-result v3

    if-ne v3, v5, :cond_d

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getLuxPocket()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->getLightThreshold()I

    move-result v4

    if-gt v3, v4, :cond_d

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_d

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetisRunningAlertProxSensor(Lcom/samsung/android/gesture/PocketProximityManager;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 471
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRelease()I

    move-result v3

    if-nez v3, :cond_b

    .line 472
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "There\'s no data(minrecog, minrelease, callmin"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void

    .line 475
    :cond_b
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->registerAlertProxSensor()V

    goto :goto_1

    .line 478
    :cond_c
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 479
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    .line 480
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->alertProxAvailable()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetisRunningAlertProxSensor(Lcom/samsung/android/gesture/PocketProximityManager;)Z

    move-result v3

    if-ne v3, v5, :cond_d

    .line 481
    iget-object v3, v0, Lcom/samsung/android/gesture/PocketProximityManager$2;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 484
    :cond_d
    :goto_1
    return-void
.end method
