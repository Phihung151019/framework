.class public Lcom/samsung/android/game/SystemHelper;
.super Ljava/lang/Object;
.source "SystemHelper.java"


# static fields
.field private static final MSG_BLOCK:I = 0x0

.field private static final MSG_RELEASE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SystemHelper"


# instance fields
.field private lastBlockTime:J

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private needReleaseBlock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 39
    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    .line 40
    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/game/SystemHelper;->lastBlockTime:J

    .line 45
    const-string v0, "SystemHelper"

    const-string v1, "ctor"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/game/SystemHelper;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 49
    new-instance v0, Lcom/samsung/android/os/SemAffinityControl;

    invoke-direct {v0}, Lcom/samsung/android/os/SemAffinityControl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    .line 50
    new-instance v0, Lcom/samsung/android/game/SystemHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/SystemHelper$1;-><init>(Lcom/samsung/android/game/SystemHelper;)V

    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method


# virtual methods
.method public callEnableWifiSwitch(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 527
    const-string v0, "SystemHelper"

    const-string v1, "value_bool_1"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 529
    .local v2, "responseJson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 530
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 531
    .local v4, "paramObject":Lorg/json/JSONObject;
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 532
    .local v5, "enable":Z
    iget-object v6, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 533
    iget-object v6, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    :goto_0
    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    invoke-virtual {v2, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callEnableWifiSwitch(). end enable:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v4    # "paramObject":Lorg/json/JSONObject;
    .end local v5    # "enable":Z
    goto :goto_1

    .line 536
    :catch_0
    move-exception v1

    .line 537
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "callEnableWifiSwitch(). JSONException!!"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public callReleaseBlock()V
    .locals 3

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callReleaseBlock needReleaseBlock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-boolean v0, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 548
    :cond_0
    return-void
.end method

.method public declared-synchronized enableWifiSwitch(Z)V
    .locals 2
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 468
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/game/SystemHelper;->lastBlockTime:J

    .line 470
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->allowAutojoinGlobal(Z)V

    .line 471
    if-nez p1, :cond_1

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z

    goto :goto_0

    .line 474
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 464
    .end local p1    # "enable":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getBlockState()Z
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getLastBlockTime()J
    .locals 2

    .line 555
    iget-wide v0, p0, Lcom/samsung/android/game/SystemHelper;->lastBlockTime:J

    return-wide v0
.end method

.method public getNetworkStats(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 119
    const-string v0, "package_uid"

    const-string v1, "SystemHelper"

    const/4 v2, 0x0

    .line 120
    .local v2, "response":Ljava/lang/String;
    if-nez p1, :cond_0

    return-object v2

    .line 122
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    const-wide/16 v4, 0x0

    .local v4, "down":J
    const-wide/16 v6, 0x0

    .line 125
    .local v6, "up":J
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, "uidInt":I
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    .line 127
    .end local v6    # "up":J
    .local v8, "up":J
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    .line 128
    .end local v4    # "down":J
    .local v6, "down":J
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    .local v4, "responseJson":Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "network_stats_up"

    invoke-virtual {v4, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    const-string v5, "network_stats_down"

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .end local v2    # "response":Ljava/lang/String;
    .local v1, "response":Ljava/lang/String;
    move-object v2, v1

    goto :goto_0

    .line 133
    .end local v1    # "response":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 134
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "network read json exception"

    invoke-static {v1, v10}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    .end local v0    # "uidInt":I
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v4    # "responseJson":Lorg/json/JSONObject;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "down":J
    .end local v8    # "up":J
    :cond_1
    :goto_0
    goto :goto_1

    .line 137
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "network read remote exception"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2
.end method

.method public getPidUidFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 144
    const-string v0, "package_name"

    const/4 v1, 0x0

    .line 145
    .local v1, "response":Ljava/lang/String;
    if-nez p1, :cond_0

    return-object v1

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/SystemHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 147
    .local v2, "pids":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    return-object v1

    .line 148
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v3, "responseJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    .local v4, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 152
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 154
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 155
    .local v6, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v7, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 156
    const-string v7, "package_pid"

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v7, "package_uid"

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    goto :goto_1

    .line 153
    .end local v6    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 161
    .end local v5    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 165
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v4    # "requestJson":Lorg/json/JSONObject;
    :cond_4
    goto :goto_2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SystemHelper"

    const-string v5, "pid/uid json exception"

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method

.method public getSysFsDataWithJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 66
    const-string v0, "SystemHelper"

    const/4 v1, 0x0

    .line 67
    .local v1, "response":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v2, "responseJson":Lorg/json/JSONObject;
    if-nez p1, :cond_0

    .line 70
    return-object v1

    .line 78
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    .line 80
    .local v4, "noSysNodeToRead":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 81
    return-object v1

    .line 83
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .line 84
    .local v5, "names":Lorg/json/JSONArray;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .end local v4    # "noSysNodeToRead":I
    .local v6, "values":Lorg/json/JSONArray;
    nop

    .line 90
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 92
    :try_start_1
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "fileName":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 94
    goto :goto_2

    .line 96
    :cond_2
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .local v8, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "line":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_3

    .line 101
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "line":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 108
    nop

    .line 111
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 107
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 108
    nop

    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "responseJson":Lorg/json/JSONObject;
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v5    # "names":Lorg/json/JSONArray;
    .end local v6    # "values":Lorg/json/JSONArray;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    throw v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 109
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "responseJson":Lorg/json/JSONObject;
    .restart local v3    # "requestJson":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    .restart local v5    # "names":Lorg/json/JSONArray;
    .restart local v6    # "values":Lorg/json/JSONArray;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 110
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "getSysFsDataWithJson()-sysfs data read exception"

    invoke-static {v0, v8}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .end local v1    # "response":Ljava/lang/String;
    .local v0, "response":Ljava/lang/String;
    return-object v0

    .line 85
    .end local v0    # "response":Ljava/lang/String;
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v5    # "names":Lorg/json/JSONArray;
    .end local v6    # "values":Lorg/json/JSONArray;
    .restart local v1    # "response":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 86
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "getSysFsDataWithJson()-requestJson JSONException"

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object v1
.end method

.method getThreadData(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 282
    move-object/from16 v1, p1

    const-string v2, "/task/"

    const-string v3, "/proc/"

    const-string v4, "SystemHelper"

    const/4 v5, 0x0

    .line 283
    .local v5, "response":Ljava/lang/String;
    const/4 v6, 0x0

    .line 284
    .local v6, "paramObject":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 285
    return-object v5

    .line 289
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "getThreadData(). JSONException!!"

    invoke-static {v4, v7, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v0

    .line 294
    .local v7, "responseJson":Lorg/json/JSONObject;
    if-eqz v6, :cond_6

    const-string v0, "package_pid"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_c

    .line 298
    :cond_1
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 301
    .local v8, "pid":I
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "fileName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v9, "directory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 304
    .local v10, "files":[Ljava/lang/String;
    if-nez v10, :cond_2

    .line 305
    const/4 v2, 0x0

    return-object v2

    .line 310
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v9    # "directory":Ljava/io/File;
    :cond_2
    nop

    .line 312
    array-length v9, v10

    const/4 v0, 0x0

    move v11, v0

    :goto_1
    if-ge v11, v9, :cond_5

    aget-object v12, v10, v11

    .line 313
    .local v12, "taskID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "/sched"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 315
    .local v13, "taskStatsFile":Ljava/lang/String;
    const/4 v14, 0x6

    .line 316
    .local v14, "lineNumber":I
    const/4 v15, 0x1

    .line 317
    .local v15, "counter":I
    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v16, v2

    :try_start_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    .line 318
    .local v1, "taskReader":Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v2, v0

    .line 319
    .local v2, "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_5
    const-string v0, ""

    .line 320
    .local v0, "line":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v18, v17

    .end local v0    # "line":Ljava/lang/String;
    .local v18, "line":Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 321
    add-int/lit8 v15, v15, 0x1

    .line 322
    if-ne v15, v14, :cond_3

    .line 323
    const/16 v0, 0x3a

    move-object/from16 v17, v1

    move-object/from16 v1, v18

    .end local v18    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    .local v17, "taskReader":Ljava/io/InputStreamReader;
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move/from16 v18, v0

    .line 324
    .local v18, "index":I
    add-int/lit8 v0, v18, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v19, v0

    .line 326
    .local v19, "numberText":Ljava/lang/String;
    :try_start_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 327
    .local v20, "execTime":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 330
    .end local v20    # "execTime":D
    goto :goto_3

    .line 328
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v20, v1

    .end local v1    # "line":Ljava/lang/String;
    .local v20, "line":Ljava/lang/String;
    :try_start_8
    const-string v1, "getThreadData(). NumberFormatException!!"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 331
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 317
    .end local v18    # "index":I
    .end local v19    # "numberText":Ljava/lang/String;
    .end local v20    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .line 322
    .end local v17    # "taskReader":Ljava/io/InputStreamReader;
    .local v1, "taskReader":Ljava/io/InputStreamReader;
    .local v18, "line":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v1

    move-object/from16 v20, v18

    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    .end local v18    # "line":Ljava/lang/String;
    .restart local v17    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v20    # "line":Ljava/lang/String;
    move-object/from16 v0, v20

    goto :goto_2

    .line 320
    .end local v17    # "taskReader":Ljava/io/InputStreamReader;
    .end local v20    # "line":Ljava/lang/String;
    .restart local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v18    # "line":Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v1

    move-object/from16 v20, v18

    .line 334
    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    .end local v18    # "line":Ljava/lang/String;
    .restart local v17    # "taskReader":Ljava/io/InputStreamReader;
    :goto_3
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v2    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_a

    .line 317
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_6

    .end local v17    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v2    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v1

    move-object v1, v0

    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v17    # "taskReader":Ljava/io/InputStreamReader;
    :goto_4
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "paramObject":Lorg/json/JSONObject;
    .end local v7    # "responseJson":Lorg/json/JSONObject;
    .end local v8    # "pid":I
    .end local v10    # "files":[Ljava/lang/String;
    .end local v12    # "taskID":Ljava/lang/String;
    .end local v13    # "taskStatsFile":Ljava/lang/String;
    .end local v14    # "lineNumber":I
    .end local v15    # "counter":I
    .end local v17    # "taskReader":Ljava/io/InputStreamReader;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_5
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v2    # "taskStatsFileReader":Ljava/io/BufferedReader;
    .restart local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v6    # "paramObject":Lorg/json/JSONObject;
    .restart local v7    # "responseJson":Lorg/json/JSONObject;
    .restart local v8    # "pid":I
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v12    # "taskID":Ljava/lang/String;
    .restart local v13    # "taskStatsFile":Ljava/lang/String;
    .restart local v14    # "lineNumber":I
    .restart local v15    # "counter":I
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v1

    move-object v1, v0

    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v17    # "taskReader":Ljava/io/InputStreamReader;
    :goto_6
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "paramObject":Lorg/json/JSONObject;
    .end local v7    # "responseJson":Lorg/json/JSONObject;
    .end local v8    # "pid":I
    .end local v10    # "files":[Ljava/lang/String;
    .end local v12    # "taskID":Ljava/lang/String;
    .end local v13    # "taskStatsFile":Ljava/lang/String;
    .end local v14    # "lineNumber":I
    .end local v15    # "counter":I
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_7
    throw v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 336
    .end local v17    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v6    # "paramObject":Lorg/json/JSONObject;
    .restart local v7    # "responseJson":Lorg/json/JSONObject;
    .restart local v8    # "pid":I
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v12    # "taskID":Ljava/lang/String;
    .restart local v13    # "taskStatsFile":Ljava/lang/String;
    .restart local v14    # "lineNumber":I
    .restart local v15    # "counter":I
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_8

    .line 334
    :catch_3
    move-exception v0

    goto :goto_9

    .line 336
    :catch_4
    move-exception v0

    move-object/from16 v16, v2

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    const-string v1, "getThreadData(). Exception in for loop"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    .line 335
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_9
    const-string v1, "getThreadData(). IOException or NumberFormatException!!"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    nop

    .line 312
    .end local v12    # "taskID":Ljava/lang/String;
    .end local v13    # "taskStatsFile":Ljava/lang/String;
    .end local v14    # "lineNumber":I
    .end local v15    # "counter":I
    :goto_b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto/16 :goto_1

    .line 341
    :cond_5
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 307
    .end local v10    # "files":[Ljava/lang/String;
    :catch_6
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "getThreadData(). Exception!!"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "pid":I
    :cond_6
    :goto_c
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getThreadInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 377
    move-object/from16 v1, p1

    const-string v0, "package_pid"

    const-string v2, "thread_ids"

    const-string v3, "cpu_sum"

    const-string v4, "name"

    const-string v5, "SystemHelper"

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 378
    return-object v6

    .line 382
    :cond_0
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 383
    .local v7, "param":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 386
    .local v8, "responseJson":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 387
    .local v9, "tids":[Ljava/lang/String;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 388
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 389
    .local v2, "array":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    move-object v9, v10

    .line 390
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 391
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    .line 390
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 394
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v10    # "i":I
    :cond_1
    const-string v2, "/proc/"

    if-nez v9, :cond_2

    :try_start_1
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 396
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9

    move-object v10, v0

    .line 398
    .local v10, "pid":Ljava/lang/String;
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/task/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_9

    move-object v9, v11

    .line 403
    .end local v0    # "directory":Ljava/io/File;
    goto :goto_1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "getThreadInfo(). Exception!!"

    invoke-static {v5, v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    return-object v6

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "pid":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v9, :cond_3

    .line 407
    const-string v0, "getThreadInfo(). tids is null"

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-object v6

    .line 412
    :cond_3
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9

    const-string v10, "getThreadInfo(). Exception"

    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 413
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v12, v0

    .line 414
    .local v12, "response":Lorg/json/JSONObject;
    array-length v13, v9

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_5

    aget-object v0, v9, v14
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_9

    move-object v15, v0

    .line 415
    .local v15, "taskID":Ljava/lang/String;
    :try_start_5
    new-instance v0, Ljava/io/InputStreamReader;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_9

    move-object/from16 v16, v6

    :try_start_6
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v1, "/comm"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8

    move-object v1, v0

    .line 416
    .local v1, "taskReader":Ljava/io/InputStreamReader;
    :try_start_7
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v6, v0

    .line 417
    .local v6, "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 419
    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 421
    .end local v0    # "name":Ljava/lang/String;
    :cond_4
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v6    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    .line 423
    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 415
    .restart local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v6    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    move-object v11, v0

    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_c
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    .end local v7    # "param":Lorg/json/JSONObject;
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "tids":[Ljava/lang/String;
    .end local v12    # "response":Lorg/json/JSONObject;
    .end local v15    # "taskID":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_3
    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .end local v6    # "taskStatsFileReader":Ljava/io/BufferedReader;
    .restart local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v7    # "param":Lorg/json/JSONObject;
    .restart local v8    # "responseJson":Lorg/json/JSONObject;
    .restart local v9    # "tids":[Ljava/lang/String;
    .restart local v12    # "response":Lorg/json/JSONObject;
    .restart local v15    # "taskID":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_e
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "param":Lorg/json/JSONObject;
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "tids":[Ljava/lang/String;
    .end local v12    # "response":Lorg/json/JSONObject;
    .end local v15    # "taskID":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_4
    throw v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_8

    .line 421
    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v7    # "param":Lorg/json/JSONObject;
    .restart local v8    # "responseJson":Lorg/json/JSONObject;
    .restart local v9    # "tids":[Ljava/lang/String;
    .restart local v12    # "response":Lorg/json/JSONObject;
    .restart local v15    # "taskID":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v16, v6

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_f
    invoke-static {v5, v10, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v15    # "taskID":Ljava/lang/String;
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, v16

    goto :goto_2

    .line 425
    :cond_5
    move-object/from16 v16, v6

    invoke-virtual {v8, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 412
    .end local v12    # "response":Lorg/json/JSONObject;
    :cond_6
    move-object/from16 v16, v6

    .line 429
    :goto_7
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 430
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 431
    .local v1, "response":Lorg/json/JSONObject;
    array-length v4, v9

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v4, :cond_9

    aget-object v0, v9, v11
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_8

    move-object v6, v0

    .line 432
    .local v6, "taskID":Ljava/lang/String;
    :try_start_10
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/sched"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_8

    move-object v12, v0

    .line 433
    .local v12, "taskReader":Ljava/io/InputStreamReader;
    :try_start_11
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move-object v13, v0

    .line 434
    .local v13, "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_12
    const-string v0, ""

    .line 435
    .local v0, "line":Ljava/lang/String;
    :goto_9
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .end local v0    # "line":Ljava/lang/String;
    .local v15, "line":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 436
    const-string v0, ".*sum_exec_runtime.*"

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 437
    const/16 v0, 0x3a

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v14, v0

    .line 438
    .local v14, "index":I
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object/from16 v17, v0

    .line 440
    .local v17, "numberText":Ljava/lang/String;
    :try_start_13
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 443
    move-object/from16 v18, v2

    goto :goto_a

    .line 441
    :catch_3
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v18, v2

    :try_start_14
    const-string v2, "getThreadInfo(). NumberFormatException!!"

    invoke-static {v5, v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 444
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_a

    .line 432
    .end local v14    # "index":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "numberText":Ljava/lang/String;
    :catchall_4
    move-exception v0

    goto :goto_b

    .line 436
    .restart local v15    # "line":Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v2

    move-object v0, v15

    goto :goto_9

    .line 435
    :cond_8
    move-object/from16 v18, v2

    .line 447
    .end local v15    # "line":Ljava/lang/String;
    :goto_a
    :try_start_15
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .end local v13    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_16
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_11

    .line 432
    :catchall_5
    move-exception v0

    goto :goto_d

    .restart local v13    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :catchall_6
    move-exception v0

    move-object/from16 v18, v2

    :goto_b
    move-object v2, v0

    :try_start_17
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    :try_start_18
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v6    # "taskID":Ljava/lang/String;
    .end local v7    # "param":Lorg/json/JSONObject;
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "tids":[Ljava/lang/String;
    .end local v12    # "taskReader":Ljava/io/InputStreamReader;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_c
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .end local v13    # "taskStatsFileReader":Ljava/io/BufferedReader;
    .restart local v1    # "response":Lorg/json/JSONObject;
    .restart local v6    # "taskID":Ljava/lang/String;
    .restart local v7    # "param":Lorg/json/JSONObject;
    .restart local v8    # "responseJson":Lorg/json/JSONObject;
    .restart local v9    # "tids":[Ljava/lang/String;
    .restart local v12    # "taskReader":Ljava/io/InputStreamReader;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v18, v2

    :goto_d
    move-object v2, v0

    :try_start_19
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    :try_start_1a
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v6    # "taskID":Ljava/lang/String;
    .end local v7    # "param":Lorg/json/JSONObject;
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "tids":[Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_e
    throw v2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_8

    .line 449
    .end local v12    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v1    # "response":Lorg/json/JSONObject;
    .restart local v6    # "taskID":Ljava/lang/String;
    .restart local v7    # "param":Lorg/json/JSONObject;
    .restart local v8    # "responseJson":Lorg/json/JSONObject;
    .restart local v9    # "tids":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_f

    .line 447
    :catch_5
    move-exception v0

    goto :goto_10

    .line 449
    :catch_6
    move-exception v0

    move-object/from16 v18, v2

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    :goto_f
    :try_start_1b
    invoke-static {v5, v10, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    move-object/from16 v18, v2

    .line 448
    .local v0, "e":Ljava/io/IOException;
    :goto_10
    const-string v2, "getThreadInfo(). IOException"

    invoke-static {v5, v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    .end local v0    # "e":Ljava/io/IOException;
    :goto_11
    nop

    .line 431
    .end local v6    # "taskID":Ljava/lang/String;
    :goto_12
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v18

    goto/16 :goto_8

    .line 453
    :cond_9
    invoke-virtual {v8, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    .end local v1    # "response":Lorg/json/JSONObject;
    :cond_a
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_8

    return-object v0

    .line 457
    .end local v7    # "param":Lorg/json/JSONObject;
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "tids":[Ljava/lang/String;
    :catch_8
    move-exception v0

    goto :goto_13

    :catch_9
    move-exception v0

    move-object/from16 v16, v6

    .line 458
    .local v0, "e":Lorg/json/JSONException;
    :goto_13
    const-string v1, "getThreadInfo(). JSONException!!"

    invoke-static {v5, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .end local v0    # "e":Lorg/json/JSONException;
    return-object v16
.end method

.method getThreadNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 480
    move-object/from16 v1, p1

    const-string v2, "/task/"

    const-string v3, "/proc/"

    const-string v0, "package_pid"

    const-string v4, "SystemHelper"

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 481
    return-object v5

    .line 483
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 486
    .local v6, "responseJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 488
    .local v7, "paramObject":Lorg/json/JSONObject;
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 489
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 492
    :cond_1
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v8, v0

    .line 495
    .local v8, "pid":Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "fileName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v9, "directory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 498
    .local v10, "files":[Ljava/lang/String;
    if-nez v10, :cond_2

    .line 499
    return-object v5

    .line 504
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v9    # "directory":Ljava/io/File;
    :cond_2
    nop

    .line 506
    :try_start_2
    array-length v5, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v5, :cond_4

    aget-object v0, v10, v9

    move-object v11, v0

    .line 507
    .local v11, "taskID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "/comm"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v12, v0

    .line 508
    .local v12, "taskStatsFile":Ljava/lang/String;
    :try_start_3
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v13, v0

    .line 509
    .local v13, "taskReader":Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v14, v0

    .line 510
    .local v14, "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 512
    invoke-virtual {v6, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 514
    .end local v0    # "line":Ljava/lang/String;
    :cond_3
    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v14    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 516
    .end local v13    # "taskReader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 508
    .restart local v13    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v14    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    move-object v15, v0

    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {v15, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "responseJson":Lorg/json/JSONObject;
    .end local v7    # "paramObject":Lorg/json/JSONObject;
    .end local v8    # "pid":Ljava/lang/String;
    .end local v10    # "files":[Ljava/lang/String;
    .end local v11    # "taskID":Ljava/lang/String;
    .end local v12    # "taskStatsFile":Ljava/lang/String;
    .end local v13    # "taskReader":Ljava/io/InputStreamReader;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_1
    throw v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v14    # "taskStatsFileReader":Ljava/io/BufferedReader;
    .restart local v6    # "responseJson":Lorg/json/JSONObject;
    .restart local v7    # "paramObject":Lorg/json/JSONObject;
    .restart local v8    # "pid":Ljava/lang/String;
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v11    # "taskID":Ljava/lang/String;
    .restart local v12    # "taskStatsFile":Ljava/lang/String;
    .restart local v13    # "taskReader":Ljava/io/InputStreamReader;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v14, v0

    :try_start_a
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-virtual {v14, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "responseJson":Lorg/json/JSONObject;
    .end local v7    # "paramObject":Lorg/json/JSONObject;
    .end local v8    # "pid":Ljava/lang/String;
    .end local v10    # "files":[Ljava/lang/String;
    .end local v11    # "taskID":Ljava/lang/String;
    .end local v12    # "taskStatsFile":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_2
    throw v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2

    .line 514
    .end local v13    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v6    # "responseJson":Lorg/json/JSONObject;
    .restart local v7    # "paramObject":Lorg/json/JSONObject;
    .restart local v8    # "pid":Ljava/lang/String;
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v11    # "taskID":Ljava/lang/String;
    .restart local v12    # "taskStatsFile":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v13, "getThreadName(). Exception in for loop"

    invoke-static {v4, v13, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 506
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "taskID":Ljava/lang/String;
    .end local v12    # "taskStatsFile":Ljava/lang/String;
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 521
    .end local v7    # "paramObject":Lorg/json/JSONObject;
    .end local v8    # "pid":Ljava/lang/String;
    .end local v10    # "files":[Ljava/lang/String;
    :cond_4
    goto :goto_4

    .line 501
    .restart local v7    # "paramObject":Lorg/json/JSONObject;
    .restart local v8    # "pid":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 502
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "getThreadNames(). Exception!!"

    invoke-static {v4, v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_2

    return-object v2

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "paramObject":Lorg/json/JSONObject;
    .end local v8    # "pid":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 520
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "getThreadNames(). JSONException!!"

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setRenderThreadAffinity(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 170
    move-object/from16 v1, p1

    const-string v2, "/task/"

    const-string v3, "/proc/"

    const-string v4, "SystemHelper"

    const/4 v5, 0x0

    if-nez v1, :cond_0

    return-object v5

    .line 171
    :cond_0
    const/4 v6, 0x0

    .line 173
    .local v6, "paramObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "setRenderThreadAffinity(). JSONException!!"

    invoke-static {v4, v7}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v6, :cond_4

    const-string v0, "package_pid"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 178
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 180
    .local v7, "pid":I
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 181
    .local v8, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 182
    .local v9, "directory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 183
    .local v10, "files":[Ljava/lang/String;
    if-nez v10, :cond_1

    return-object v5

    .line 184
    :cond_1
    array-length v11, v10

    const/4 v0, 0x0

    move v12, v0

    :goto_1
    if-ge v12, v11, :cond_3

    aget-object v0, v10, v12

    move-object v13, v0

    .line 185
    .local v13, "taskID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "/comm"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-object v14, v0

    .line 187
    .local v14, "taskStatsFile":Ljava/lang/String;
    :try_start_2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v15, v0

    .line 188
    .local v15, "tid":I
    new-instance v0, Ljava/io/BufferedReader;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-object/from16 v16, v5

    :try_start_3
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object/from16 v17, v2

    :try_start_4
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object v1, v0

    .line 190
    .local v1, "taskStatsReader":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "comm":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "RenderThread"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    .line 192
    move-object/from16 v2, p0

    :try_start_6
    iget-object v5, v2, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v5, v15}, Lcom/samsung/android/os/SemAffinityControl;->setAffinityForBig(I)I

    move-result v5

    .line 193
    .local v5, "ret":I
    move-object/from16 v18, v0

    .end local v0    # "comm":Ljava/lang/String;
    .local v18, "comm":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v19, v1

    .end local v1    # "taskStatsReader":Ljava/io/BufferedReader;
    .local v19, "taskStatsReader":Ljava/io/BufferedReader;
    :try_start_7
    const-string v1, "setRenderThreadAffinity(). invoked SemAffinityControl.setAffinityForBig() for tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 195
    .end local v5    # "ret":I
    .end local v18    # "comm":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_6

    .line 198
    .end local v19    # "taskStatsReader":Ljava/io/BufferedReader;
    .restart local v1    # "taskStatsReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 195
    :catch_2
    move-exception v0

    goto :goto_5

    .line 191
    .restart local v0    # "comm":Ljava/lang/String;
    :cond_2
    move-object/from16 v2, p0

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    .line 198
    .end local v0    # "comm":Ljava/lang/String;
    .end local v1    # "taskStatsReader":Ljava/io/BufferedReader;
    .restart local v19    # "taskStatsReader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 199
    :goto_3
    goto :goto_7

    .line 200
    .end local v15    # "tid":I
    .end local v19    # "taskStatsReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    goto :goto_a

    .line 198
    .restart local v1    # "taskStatsReader":Ljava/io/BufferedReader;
    .restart local v15    # "tid":I
    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object/from16 v19, v1

    .end local v1    # "taskStatsReader":Ljava/io/BufferedReader;
    .restart local v19    # "taskStatsReader":Ljava/io/BufferedReader;
    goto :goto_8

    .line 195
    .end local v19    # "taskStatsReader":Ljava/io/BufferedReader;
    .restart local v1    # "taskStatsReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object/from16 v2, p0

    :goto_5
    move-object/from16 v19, v1

    .line 196
    .end local v1    # "taskStatsReader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "taskStatsReader":Ljava/io/BufferedReader;
    :goto_6
    :try_start_9
    const-string v1, "setRenderThreadAffinity(). IOException or NumberFormatException!!"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    .line 202
    .end local v15    # "tid":I
    .end local v19    # "taskStatsReader":Ljava/io/BufferedReader;
    :goto_7
    goto :goto_b

    .line 198
    .restart local v15    # "tid":I
    .restart local v19    # "taskStatsReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v0

    :goto_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V

    .line 199
    nop

    .end local v6    # "paramObject":Lorg/json/JSONObject;
    .end local v7    # "pid":I
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "directory":Ljava/io/File;
    .end local v10    # "files":[Ljava/lang/String;
    .end local v13    # "taskID":Ljava/lang/String;
    .end local v14    # "taskStatsFile":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 200
    .end local v15    # "tid":I
    .end local v19    # "taskStatsReader":Ljava/io/BufferedReader;
    .restart local v6    # "paramObject":Lorg/json/JSONObject;
    .restart local v7    # "pid":I
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v9    # "directory":Ljava/io/File;
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v13    # "taskID":Ljava/lang/String;
    .restart local v14    # "taskStatsFile":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v5

    :goto_9
    move-object/from16 v2, p0

    .line 201
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_a
    :try_start_b
    const-string v1, "setRenderThreadAffinity(). Exception in for loop"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "taskID":Ljava/lang/String;
    .end local v14    # "taskStatsFile":Ljava/lang/String;
    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 204
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "directory":Ljava/io/File;
    .end local v10    # "files":[Ljava/lang/String;
    :catch_8
    move-exception v0

    goto :goto_c

    .line 184
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v9    # "directory":Ljava/io/File;
    .restart local v10    # "files":[Ljava/lang/String;
    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v16, v5

    .line 206
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "directory":Ljava/io/File;
    .end local v10    # "files":[Ljava/lang/String;
    goto :goto_d

    .line 204
    :catch_9
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v16, v5

    .line 205
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_c
    const-string v1, "setRenderThreadAffinity(). Exception!!"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "pid":I
    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v16, v5

    .line 208
    :goto_d
    return-object v16
.end method

.method setThreadAffinity(ZLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "isForBig"    # Z
    .param p2, "jsonParam"    # Ljava/lang/String;

    .line 242
    const-string v0, "setThreadAffinity(). JSONException!!"

    const-string v1, "SystemHelper"

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 244
    :cond_0
    const/4 v2, 0x0

    .line 245
    .local v2, "paramObject":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .local v3, "responseJson":Lorg/json/JSONObject;
    const/4 v4, -0x1

    .line 249
    .local v4, "ret":I
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception v5

    .line 251
    .local v5, "e":Lorg/json/JSONException;
    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v2, :cond_2

    const-string v5, "thread_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 255
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 258
    .local v5, "tid":I
    const-string v6, ", ret: "

    if-eqz p1, :cond_1

    .line 259
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v7, v5}, Lcom/samsung/android/os/SemAffinityControl;->setAffinityForBig(I)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 260
    .end local v4    # "ret":I
    .local v7, "ret":I
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setThreadAffinityforBig(). invoked SemAffinityControl.setThreadAffinityforBig() for tid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v7

    goto :goto_1

    .line 262
    .end local v7    # "ret":I
    .restart local v4    # "ret":I
    :cond_1
    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v7, v5}, Lcom/samsung/android/os/SemAffinityControl;->setAffinityForLittle(I)I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 263
    .end local v4    # "ret":I
    .restart local v7    # "ret":I
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setThreadAffinityforLittle(). invoked SemAffinityControl.setThreadAffinityforLittle() for tid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v4, v7

    .line 267
    .end local v7    # "ret":I
    .restart local v4    # "ret":I
    :goto_1
    goto :goto_3

    .line 265
    .end local v4    # "ret":I
    .restart local v7    # "ret":I
    :catch_1
    move-exception v4

    goto :goto_2

    .end local v7    # "ret":I
    .restart local v4    # "ret":I
    :catch_2
    move-exception v6

    move v7, v4

    move-object v4, v6

    .line 266
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "ret":I
    :goto_2
    const-string v6, "setThreadAffinity. Exception!!"

    invoke-static {v1, v6, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v7

    .line 270
    .end local v5    # "tid":I
    .end local v7    # "ret":I
    .local v4, "ret":I
    :cond_2
    :goto_3
    const-string v5, "value_bool_1"

    if-nez v4, :cond_3

    .line 271
    const/4 v6, 0x1

    :try_start_5
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_4

    .line 273
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 277
    :goto_4
    goto :goto_5

    .line 275
    :catch_3
    move-exception v5

    .line 276
    .local v5, "e":Lorg/json/JSONException;
    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setThreadsAffinities(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 345
    const-string v0, "little"

    const-string v1, "big"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 346
    return-object v2

    .line 349
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 350
    .local v3, "param":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 352
    .local v4, "responseJson":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 353
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 354
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 355
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    .line 356
    .local v8, "tid":I
    iget-object v9, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v9, v8}, Lcom/samsung/android/os/SemAffinityControl;->setAffinityForBig(I)I

    move-result v9

    .line 357
    .local v9, "res":I
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v9, :cond_1

    move v11, v7

    goto :goto_1

    :cond_1
    move v11, v6

    :goto_1
    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 354
    nop

    .end local v8    # "tid":I
    .end local v9    # "res":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 362
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 363
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 364
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    .line 365
    .local v5, "tid":I
    iget-object v8, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v8, v5}, Lcom/samsung/android/os/SemAffinityControl;->setAffinityForLittle(I)I

    move-result v8

    .line 366
    .local v8, "res":I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v8, :cond_3

    move v10, v7

    goto :goto_3

    :cond_3
    move v10, v6

    :goto_3
    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 363
    nop

    .end local v5    # "tid":I
    .end local v8    # "res":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 369
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 370
    .end local v3    # "param":Lorg/json/JSONObject;
    .end local v4    # "responseJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "SystemHelper"

    const-string v3, "setThreadsAffinities(). JSONException!!"

    invoke-static {v1, v3, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .end local v0    # "e":Lorg/json/JSONException;
    return-object v2
.end method

.method unsetRenderThreadAffinity(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 212
    const-string v0, "SystemHelper"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 213
    :cond_0
    const/4 v2, 0x0

    .line 215
    .local v2, "paramObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "unsetRenderThreadAffinity(). JSONException!!"

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "package_pid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 221
    .local v3, "pid":I
    iget-object v4, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v4, v3}, Lcom/samsung/android/os/SemAffinityControl;->clearAffinity(I)I

    move-result v4

    .line 222
    .local v4, "ret":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsetRenderThreadAffinity(). invoked SemAffinityControl.clearAffinity() for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .end local v3    # "pid":I
    .end local v4    # "ret":I
    :cond_1
    return-object v1
.end method

.method writeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 228
    const-string v0, "SystemHelper"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 230
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, "paramObject":Lorg/json/JSONObject;
    const-string v3, "pathname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "pathname":Ljava/lang/String;
    const-string v4, "content"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "content":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/game/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 234
    .local v5, "ret":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeFile(). invoked Util.writeFile, pathname "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ret: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v2    # "paramObject":Lorg/json/JSONObject;
    .end local v3    # "pathname":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "ret":Z
    goto :goto_0

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "writeFile(). JSONException!!"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v1
.end method
