.class public Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;
.super Lcom/samsung/android/gesture/checker/SensorAuror;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorProbeAuror"
.end annotation


# instance fields
.field protected code:I

.field protected context:Landroid/content/Context;

.field feature:Ljava/lang/String;

.field log_key_name:Ljava/lang/String;

.field log_key_probe:Ljava/lang/String;

.field pathEFS:Ljava/lang/String;

.field protected sensor:Landroid/hardware/Sensor;

.field protected sensorName:Ljava/lang/String;

.field protected sensorType:I

.field protected status:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2457
    invoke-direct {p0}, Lcom/samsung/android/gesture/checker/SensorAuror;-><init>()V

    .line 2458
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->context:Landroid/content/Context;

    .line 2459
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->status:I

    .line 2460
    const-string v0, "None"

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    .line 2461
    return-void
.end method


# virtual methods
.method public getProbeCode()I
    .locals 1

    .line 2559
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->code:I

    return v0
.end method

.method public getResultFormatted()Ljava/lang/String;
    .locals 4

    .line 2580
    const-string v0, ""

    .line 2581
    .local v0, "probe":Ljava/lang/String;
    const-string v1, ""

    .line 2583
    .local v1, "name":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->status:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2589
    :pswitch_0
    const-string v0, "SUCCESS"

    .line 2590
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    .line 2591
    goto :goto_0

    .line 2593
    :pswitch_1
    const-string v0, "FAIL"

    .line 2594
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    goto :goto_0

    .line 2585
    :pswitch_2
    const-string v0, "N/A"

    .line 2586
    const-string v1, "N/A"

    .line 2587
    nop

    .line 2598
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2600
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->log_key_name:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2601
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->log_key_probe:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2604
    goto :goto_1

    .line 2602
    :catch_0
    move-exception v3

    .line 2603
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 2605
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSensorName()Ljava/lang/String;
    .locals 1

    .line 2571
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 2563
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->status:I

    return v0
.end method

.method public setSensorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sensorName"    # Ljava/lang/String;

    .line 2575
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    .line 2576
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 2567
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->status:I

    .line 2568
    return-void
.end method

.method public setup(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2475
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->code:I

    .line 2476
    const-string v0, "sensor_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorType:I

    .line 2477
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    .line 2478
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->feature:Ljava/lang/String;

    .line 2479
    const-string v0, "efs_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->pathEFS:Ljava/lang/String;

    .line 2481
    const-string v0, "log_key_chip_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->log_key_name:Ljava/lang/String;

    .line 2482
    const-string v0, "log_key_err_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->log_key_probe:Ljava/lang/String;

    .line 2484
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->status:I

    .line 2487
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2488
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2489
    .local v2, "hasFeature":Z
    const/4 v3, 0x0

    .line 2490
    .local v3, "hasSensor":Z
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->context:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorType:I

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensor:Landroid/hardware/Sensor;

    .line 2491
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_0

    .line 2492
    const/4 v3, 0x1

    .line 2493
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    .line 2496
    :cond_0
    const-string v4, "/efs/FactoryApp/Sensorinfo/"

    if-eqz v2, :cond_2

    .line 2497
    if-eqz v3, :cond_1

    .line 2498
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->status:I

    .line 2500
    invoke-static {}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->getInstance()Lcom/samsung/android/gesture/checker/util/EfsFileManager;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->pathEFS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->create(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2502
    :cond_1
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->status:I

    goto :goto_0

    .line 2505
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->status:I

    .line 2506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUROR] SETUP EFS -> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SENSORBD"

    invoke-static {v5, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    invoke-static {}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->getInstance()Lcom/samsung/android/gesture/checker/util/EfsFileManager;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->pathEFS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "None"

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->create(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    :goto_0
    return-void
.end method

.method public update()V
    .locals 10

    .line 2520
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2521
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 2522
    .local v1, "hasFeature":Z
    if-nez v1, :cond_0

    .line 2523
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setStatus(I)V

    .line 2524
    return-void

    .line 2527
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/efs/FactoryApp/Sensorinfo/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->pathEFS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2528
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2529
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2531
    .local v4, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2533
    .local v5, "is":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    move v7, v6

    .local v7, "n":I
    if-ltz v6, :cond_1

    .line 2534
    int-to-char v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2536
    .end local v7    # "n":I
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2538
    .end local v5    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 2531
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "hasFeature":Z
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;
    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2536
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "hasFeature":Z
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;
    :catch_0
    move-exception v5

    .line 2537
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 2541
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->context:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->sensorType:I

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 2542
    .local v5, "s":Landroid/hardware/Sensor;
    const-string v6, "None"

    .line 2543
    .local v6, "nameSensor":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 2544
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2547
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2548
    .local v7, "nameEfs":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2549
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setStatus(I)V

    goto :goto_3

    .line 2551
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->setStatus(I)V

    .line 2553
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AUROR] UPDATE     : ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->code:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] nameSensor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " VS EFS = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2554
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;->getStatus()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2553
    const-string v9, "SENSORBD"

    invoke-static {v9, v8}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "s":Landroid/hardware/Sensor;
    .end local v6    # "nameSensor":Ljava/lang/String;
    .end local v7    # "nameEfs":Ljava/lang/String;
    :cond_4
    return-void
.end method
