.class public Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final FILE_PATH:Ljava/lang/String; = "/data/misc/wifi_hostapd/hotspotLabs.txt"

.field private static final TAG:Ljava/lang/String; = "SemWifiApLoggerHelper"

.field private static helper:Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;

.field private static mChannelEventsStringBuilder:Ljava/lang/StringBuilder;

.field private static mClientEventStringBuilder:Ljava/lang/StringBuilder;

.field private static mConfigEventsStringBuilder:Ljava/lang/StringBuilder;

.field private static mConnectionEventsStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "#tag_wifi_ap_lab_channel_switch_event#"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mChannelEventsStringBuilder:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "#tag_wifi_ap_lab_hotspot_connection_event#"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mConnectionEventsStringBuilder:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "#tag_wifi_ap_lab_config_event#"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mConfigEventsStringBuilder:Ljava/lang/StringBuilder;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "#tag_wifi_ap_lab_client_event#"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mClientEventStringBuilder:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static createFile()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "createFile: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    const-string v2, "/data/misc/wifi_hostapd/hotspotLabs.txt"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    const-string v2, "createFile: creating new file"

    .line 22
    .line 23
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 28
    .line 29
    .line 30
    :try_start_1
    const-string v1, "/system/bin/sh"

    .line 31
    .line 32
    const-string v2, "-c"

    .line 33
    .line 34
    const-string v3, "/system/bin/chmod 665 /data/misc/wifi_hostapd/hotspotLabs.txt"

    .line 35
    .line 36
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    const/4 v2, 0x0

    .line 41
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    :try_start_4
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string v3, "createFile: exception 2"

    .line 61
    .line 62
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    .line 64
    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 68
    .line 69
    .line 70
    :cond_0
    return v0

    .line 71
    :goto_0
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 74
    .line 75
    .line 76
    :cond_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 77
    :catch_1
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    const-string v2, "createFile: exception 3"

    .line 80
    .line 81
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return v0

    .line 85
    :catch_2
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    const-string v2, "createFile: exception 1"

    .line 88
    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return v0

    .line 93
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 94
    return v0
.end method

.method public static declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "#tag_wifi_ap_lab_hotspot_speed_event#"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    const-string v1, "[D]"

    .line 19
    .line 20
    invoke-static {p0, v1, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method public static declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "#tag_wifi_ap_lab_hotspot_speed_event#"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    const-string v1, "[E]"

    .line 19
    .line 20
    invoke-static {p0, v1, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method public static getDumpLogs()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getDumpLogs"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mChannelEventsStringBuilder:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "\n\n"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mConnectionEventsStringBuilder:Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mConfigEventsStringBuilder:Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mClientEventStringBuilder:Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public static declared-synchronized i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "#tag_wifi_ap_lab_hotspot_speed_event#"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    const-string v1, "[I]"

    .line 19
    .line 20
    invoke-static {p0, v1, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method private static writeToFile(Ljava/lang/String;)Z
    .locals 8

    .line 49
    const-string v0, "writeToFile: exception 2"

    const-string v1, "writeToFile: close file writer"

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isHotspotLabsEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 50
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->createFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    const-string v0, "Failed to create File"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 52
    :cond_1
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    const-string v4, "writeToFile: "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 53
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    const-string v6, "/data/misc/wifi_hostapd/hotspotLabs.txt"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move v3, v7

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v4, v5

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v4, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 59
    :goto_1
    :try_start_3
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    const-string v5, "writeToFile: exception 1"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_2

    .line 61
    :try_start_4
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 63
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return v3

    :goto_3
    if-eqz v4, :cond_3

    .line 65
    :try_start_5
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 67
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    :cond_3
    :goto_4
    throw p0
.end method

.method private static writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    const-string v3, "#tag_wifi_ap_lab_channel_switch_event#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "\n"

    const-string v5, ",, "

    if-eqz v3, :cond_0

    .line 4
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mChannelEventsStringBuilder:Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v3, v4, v2, v5, p2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    const-string v3, "#tag_wifi_ap_lab_hotspot_connection_event#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mConnectionEventsStringBuilder:Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v3, v4, v2, v5, p2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_0
    const-string v3, "#tag_wifi_ap_lab_config_event#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mConfigEventsStringBuilder:Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v3, v4, v2, v5, p2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    const-string v3, "#tag_wifi_ap_lab_client_event#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->mClientEventStringBuilder:Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v3, v4, v2, v5, p2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isHotspotLabsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 p0, 0x0

    return p0

    .line 16
    :cond_4
    const-string v3, "TagName = "

    const-string v6, ",, LogType = "

    .line 17
    const-string v7, ",, LogVersion = 1,, TimeInMillis = "

    .line 18
    invoke-static {v3, p0, v6, p1, v7}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",, ===>>>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, "#tag_wifi_ap_lab_hotspot_speed_event#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 21
    const-string p0, "DateTime = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_5
    invoke-static {p1, p2, v4}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->writeToFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
