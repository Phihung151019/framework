.class public final Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private mController:Lcom/samsung/android/wifi/intelligence/ins/InsController;

.field private mLastTrainTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmController(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;)Lcom/samsung/android/wifi/intelligence/ins/InsController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->mController:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTrainTime(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->mLastTrainTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmLastTrainTime(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->mLastTrainTime:J

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->mLastTrainTime:J

    .line 7
    .line 8
    const-string v0, "SemInsManager"

    .line 9
    .line 10
    const-string v1, "SemInsManager()"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->mController:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->init()V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;-><init>(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;->CUSTOM_BATTERY_ACTION_TRAIN:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;->CUSTOM_BATTERY_ACTION_INFER:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static getCompressedFilesWithBssid()Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/data/com.samsung.android.wifi.intelligence/files/ins/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_7

    .line 22
    .line 23
    array-length v1, v0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    array-length v2, v0

    .line 34
    const/4 v3, 0x0

    .line 35
    :goto_0
    if-ge v3, v2, :cond_6

    .line 36
    .line 37
    aget-object v4, v0, v3

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-eqz v5, :cond_5

    .line 51
    .line 52
    array-length v5, v5

    .line 53
    if-nez v5, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    new-instance v5, Ljava/io/File;

    .line 57
    .line 58
    const-string v6, "path_model_data_collected.csv"

    .line 59
    .line 60
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    const-string v7, "="

    .line 68
    .line 69
    if-eqz v6, :cond_4

    .line 70
    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v5}, Lcom/samsung/android/wifi/intelligence/ins/util/CompressUtil;->compressCsv(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_4
    new-instance v5, Ljava/io/File;

    .line 107
    .line 108
    const-string v6, "nsm_model_data_collected.csv"

    .line 109
    .line 110
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_5

    .line 118
    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-static {v5}, Lcom/samsung/android/wifi/intelligence/ins/util/CompressUtil;->compressCsv(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    if-eqz v4, :cond_5

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_6
    return-object v1

    .line 158
    :cond_7
    :goto_2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 159
    .line 160
    return-object v0
.end method


# virtual methods
.method public final onOutageCountChanged(Ljava/lang/String;DDIZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDIZ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->mController:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 2
    .line 3
    move-wide v1, p4

    .line 4
    move v3, p6

    .line 5
    move v4, p7

    .line 6
    move-object/from16 v5, p9

    .line 7
    .line 8
    move-object/from16 v6, p10

    .line 9
    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->onOutageCountUpdate(DIZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "{\"bssid\": \""

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, "\",\"rssi\": "

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ",\"latency\": "

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ",\"outage_count\": "

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, ",\"lq_callback_triggered\": "

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ",\"outage_log\": \""

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, "\"\"Magnetic Sensor Events size\": \""

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, "\"\"Pressure Sensor Events size\": \""

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, "\"}"

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string p1, "SemInsManager"

    .line 97
    .line 98
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final setEnableInfer(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->mController:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->setEnableInfer(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setEnableTrain(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->mController:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->setEnableTrain(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "SemInsManager"

    .line 2
    .line 3
    const-string v1, "onStartLogging()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->mController:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->start(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p0, "INS Manager start"

    .line 14
    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->mController:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->stop()V

    .line 4
    .line 5
    .line 6
    const-string p0, "SemInsManager"

    .line 7
    .line 8
    const-string v0, "INS Manager stop"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method
