.class public Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;
.super Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorProbeAurorSub"
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

    .line 2699
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/content/Context;)V

    .line 2700
    return-void
.end method


# virtual methods
.method public setup(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2704
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->code:I

    .line 2705
    const-string v0, "sensor_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->sensorType:I

    .line 2706
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->sensorName:Ljava/lang/String;

    .line 2707
    const-string v0, "efs_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->pathEFS:Ljava/lang/String;

    .line 2708
    const-string v0, "log_key_chip_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->log_key_name:Ljava/lang/String;

    .line 2709
    const-string v0, "log_key_err_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->log_key_probe:Ljava/lang/String;

    .line 2711
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->status:I

    .line 2713
    const/4 v1, 0x0

    .line 2715
    .local v1, "hasSub":Z
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sensors/ssc_core/support_dual_sensor"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2716
    .local v2, "f1":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sensors/ssp_sensor/support_dual_sensor"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2717
    .local v4, "f2":Ljava/io/File;
    const-string v6, "NONE"

    .line 2718
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    const-string v8, "SENSORBD"

    if-eqz v7, :cond_0

    .line 2719
    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$smgetFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2720
    const-string v3, "[AUROR] SETUP      : path confirmed for SLPI"

    invoke-static {v8, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2721
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2722
    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$smgetFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2723
    const-string v3, "[AUROR] SETUP      : path confirmed for SHUB"

    invoke-static {v8, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_1
    :goto_0
    const-string v3, "DUAL_GYRO"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2727
    const/4 v1, 0x1

    .line 2729
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUROR] SETUP      : DUAL SENSOR = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    const-string v3, "/efs/FactoryApp/Sensorinfo/"

    if-eqz v1, :cond_5

    .line 2732
    const/4 v5, 0x0

    .line 2733
    .local v5, "hasSensor":Z
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->context:Landroid/content/Context;

    const-string v8, "sensor"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    iget v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->sensorType:I

    .line 2734
    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->sensor:Landroid/hardware/Sensor;

    .line 2735
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->sensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_3

    .line 2736
    const/4 v5, 0x1

    .line 2737
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->sensorName:Ljava/lang/String;

    .line 2739
    :cond_3
    if-eqz v5, :cond_4

    .line 2740
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->status:I

    .line 2741
    invoke-static {}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->getInstance()Lcom/samsung/android/gesture/checker/util/EfsFileManager;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->pathEFS:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->sensorName:Ljava/lang/String;

    invoke-virtual {v0, v3, v7}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->create(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2743
    :cond_4
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->status:I

    .line 2745
    .end local v5    # "hasSensor":Z
    :goto_1
    goto :goto_2

    .line 2746
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->status:I

    .line 2747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUROR] SETUP EFS -> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->sensorName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    invoke-static {}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->getInstance()Lcom/samsung/android/gesture/checker/util/EfsFileManager;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->pathEFS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "None"

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->create(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    :goto_2
    return-void
.end method

.method public update()V
    .locals 13

    .line 2754
    const/4 v0, 0x0

    .line 2755
    .local v0, "hasSub":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sensors/ssc_core/support_dual_sensor"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2756
    .local v1, "f1":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sensors/ssp_sensor/support_dual_sensor"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2757
    .local v3, "f2":Ljava/io/File;
    const-string v5, "NONE"

    .line 2758
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "SENSORBD"

    if-eqz v6, :cond_0

    .line 2759
    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$smgetFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2760
    const-string v2, "[AUROR] UPDATE     : path confirmed for SLPI"

    invoke-static {v7, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2761
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2762
    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$smgetFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2763
    const-string v2, "[AUROR] UPDATE     : path confirmed for SHUB"

    invoke-static {v7, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    :cond_1
    :goto_0
    const-string v2, "DUAL_GYRO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2767
    const/4 v0, 0x1

    .line 2769
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUROR] UPDATE     : DUAL SENSOR = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    if-nez v0, :cond_3

    .line 2772
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->setStatus(I)V

    .line 2773
    return-void

    .line 2776
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/efs/FactoryApp/Sensorinfo/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->pathEFS:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2777
    .local v2, "efsPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2778
    .local v4, "efsFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2779
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2780
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2782
    .local v8, "is":Ljava/io/InputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v9

    move v10, v9

    .local v10, "n":I
    if-ltz v9, :cond_4

    .line 2783
    int-to-char v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2785
    .end local v10    # "n":I
    :cond_4
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2787
    .end local v8    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 2780
    .restart local v8    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v10

    :try_start_4
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "hasSub":Z
    .end local v1    # "f1":Ljava/io/File;
    .end local v2    # "efsPath":Ljava/lang/String;
    .end local v3    # "f2":Ljava/io/File;
    .end local v4    # "efsFile":Ljava/io/File;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;
    :goto_2
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2785
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v0    # "hasSub":Z
    .restart local v1    # "f1":Ljava/io/File;
    .restart local v2    # "efsPath":Ljava/lang/String;
    .restart local v3    # "f2":Ljava/io/File;
    .restart local v4    # "efsFile":Ljava/io/File;
    .restart local v5    # "str":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;
    :catch_0
    move-exception v8

    .line 2786
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 2789
    .end local v8    # "e":Ljava/io/IOException;
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->context:Landroid/content/Context;

    const-string v9, "sensor"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager;

    iget v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->sensorType:I

    .line 2790
    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    .line 2791
    .local v8, "s":Landroid/hardware/Sensor;
    const-string v9, "None"

    .line 2792
    .local v9, "nameSensor":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 2793
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2796
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2797
    .local v10, "nameEfs":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2798
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->setStatus(I)V

    goto :goto_4

    .line 2800
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->setStatus(I)V

    .line 2802
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AUROR] UPDATE     : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->code:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] nameSensor = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " VS EFS = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2803
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAurorSub;->getStatus()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2802
    invoke-static {v7, v11}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "s":Landroid/hardware/Sensor;
    .end local v9    # "nameSensor":Ljava/lang/String;
    .end local v10    # "nameEfs":Ljava/lang/String;
    :cond_7
    return-void
.end method
