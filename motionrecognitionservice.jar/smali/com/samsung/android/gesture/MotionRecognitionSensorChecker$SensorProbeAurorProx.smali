.class public Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;
.super Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorProbeAurorProx"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V
    .locals 0
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

    .line 2614
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    .line 2615
    return-void
.end method


# virtual methods
.method public setup(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2618
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->code:I

    .line 2619
    const-string v0, "sensor_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->sensorType:I

    .line 2620
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->sensorName:Ljava/lang/String;

    .line 2621
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->feature:Ljava/lang/String;

    .line 2622
    const-string v0, "efs_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->pathEFS:Ljava/lang/String;

    .line 2625
    const-string v0, "log_key_chip_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->log_key_name:Ljava/lang/String;

    .line 2626
    const-string v0, "log_key_err_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->log_key_probe:Ljava/lang/String;

    .line 2628
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->status:I

    .line 2630
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2631
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2632
    .local v2, "hasFeature":Z
    const/4 v3, 0x0

    .line 2633
    .local v3, "hasSensor":Z
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->context:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->sensorType:I

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->sensor:Landroid/hardware/Sensor;

    .line 2634
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->sensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_0

    .line 2635
    const/4 v3, 0x1

    .line 2636
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->sensorName:Ljava/lang/String;

    .line 2639
    :cond_0
    const-string v4, "/efs/FactoryApp/Sensorinfo/"

    if-eqz v2, :cond_2

    .line 2640
    if-eqz v3, :cond_1

    .line 2641
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->status:I

    .line 2643
    invoke-static {}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->getInstance()Lcom/samsung/android/gesture/checker/util/EfsFileManager;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->pathEFS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->sensorName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->create(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2645
    :cond_1
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->status:I

    goto :goto_0

    .line 2648
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->status:I

    .line 2649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUROR] SETUP EFS -> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->sensorName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SENSORBD"

    invoke-static {v5, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    invoke-static {}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->getInstance()Lcom/samsung/android/gesture/checker/util/EfsFileManager;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->pathEFS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "None"

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->create(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    :goto_0
    return-void
.end method

.method public update()V
    .locals 10

    .line 2657
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2658
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 2659
    .local v1, "hasFeature":Z
    if-nez v1, :cond_0

    .line 2660
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->setStatus(I)V

    .line 2661
    return-void

    .line 2664
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/efs/FactoryApp/Sensorinfo/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->pathEFS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2665
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2666
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2668
    .local v4, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2670
    .local v5, "is":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    move v7, v6

    .local v7, "n":I
    if-ltz v6, :cond_1

    .line 2671
    int-to-char v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2673
    .end local v7    # "n":I
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2675
    .end local v5    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 2668
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
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;
    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2673
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "hasFeature":Z
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;
    :catch_0
    move-exception v5

    .line 2674
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 2677
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->context:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->sensorType:I

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 2678
    .local v5, "s":Landroid/hardware/Sensor;
    const-string v6, "None"

    .line 2679
    .local v6, "nameSensor":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 2680
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2683
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2684
    .local v7, "nameEfs":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2685
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->setStatus(I)V

    goto :goto_3

    .line 2687
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->setStatus(I)V

    .line 2689
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AUROR] UPDATE     : ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->code:I

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

    .line 2691
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorProx;->getStatus()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2689
    const-string v9, "SENSORBD"

    invoke-static {v9, v8}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "s":Landroid/hardware/Sensor;
    .end local v6    # "nameSensor":Ljava/lang/String;
    .end local v7    # "nameEfs":Ljava/lang/String;
    :cond_4
    return-void
.end method
