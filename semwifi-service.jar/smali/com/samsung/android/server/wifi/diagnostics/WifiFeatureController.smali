.class public Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;
    }
.end annotation


# static fields
.field private static final INVALID_VALUE:I = -0x1

.field static final KEY_AUTO_SHARE:Ljava/lang/String; = "autoShare"

.field static final KEY_AUTO_WIFI_AHEAD_TIME_FOR_ESTIMATED_ARRIVAL_TIME:Ljava/lang/String; = "autoWifiAheadTimeForEstimatedArrivalTime"

.field static final KEY_AUTO_WIFI_DEFAULT_USER_CONTROL_TIME:Ljava/lang/String; = "autoWifiDefaultUserControlTime"

.field static final KEY_AUTO_WIFI_DURATION_FOR_MINUS_SCORE:Ljava/lang/String; = "autoWifiDurationForMinusScore"

.field static final KEY_AUTO_WIFI_DURATION_FOR_POINT_FOUR:Ljava/lang/String; = "autoWifiDurationForPointFour"

.field static final KEY_AUTO_WIFI_DURATION_FOR_POINT_ONE:Ljava/lang/String; = "autoWifiDurationForPointOne"

.field static final KEY_AUTO_WIFI_DURATION_FOR_POINT_TWO:Ljava/lang/String; = "autoWifiDurationForPointTwo"

.field static final KEY_AUTO_WIFI_DURATION_FOR_RECOVERY_SCORE:Ljava/lang/String; = "autoWifiDurationForRecoveryScore"

.field static final KEY_AUTO_WIFI_MAX_CELL_COUNT:Ljava/lang/String; = "autoWifiMaxCellCount"

.field static final KEY_AUTO_WIFI_PNO_SCAN:Ljava/lang/String; = "autoWifiPnoScan"

.field static final KEY_CONNECTION_PERSIONALIZER_BTMDISABLE:Ljava/lang/String; = "connectionPersonalizerBtmdisable"

.field static final KEY_CONNECTION_PERSIONALIZER_LOGGING:Ljava/lang/String; = "connectionPersonalizerLogging"

.field static final KEY_EASY_SETUP:Ljava/lang/String; = "easySetup"

.field static final KEY_EASY_SETUP_PARTIAL_SCAN_INTERVAL_MS:Ljava/lang/String; = "easySetupPartialScanIntervalMs"

.field static final KEY_EASY_SETUP_RESET_AFTER_SCREEN_OFF_ON:Ljava/lang/String; = "easySetupResetAfterScreenOffOn"

.field static final KEY_PROFILE_REQUEST:Ljava/lang/String; = "wifiProfileRequest"

.field static final KEY_PROFILE_SHARE:Ljava/lang/String; = "wifiProfileShare"

.field static final KEY_QOS_PROVIDER:Ljava/lang/String; = "qosDeviceShare"

.field static final KEY_RESET:Ljava/lang/String; = "resetAll"

.field static final KEY_SCORE_PROVIDER:Ljava/lang/String; = "networkScoreProvider"

.field static final KEY_SILENT_ROAMING:Ljava/lang/String; = "silentRoaming"

.field static final KEY_STRONG_ROAMING:Ljava/lang/String; = "strongRoaming"

.field public static final TAG:Ljava/lang/String; = "SemWifi.FeatureCtrl"

.field private static final mKeys:[Ljava/lang/String;


# instance fields
.field private final mFeatureDefaults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    const-string v20, "easySetupResetAfterScreenOffOn"

    .line 2
    .line 3
    const-string v21, "easySetupPartialScanIntervalMs"

    .line 4
    .line 5
    const-string v1, "qosDeviceShare"

    .line 6
    .line 7
    const-string v2, "networkScoreProvider"

    .line 8
    .line 9
    const-string v3, "wifiProfileShare"

    .line 10
    .line 11
    const-string v4, "wifiProfileRequest"

    .line 12
    .line 13
    const-string v5, "autoShare"

    .line 14
    .line 15
    const-string v6, "connectionPersonalizerLogging"

    .line 16
    .line 17
    const-string v7, "connectionPersonalizerBtmdisable"

    .line 18
    .line 19
    const-string v8, "strongRoaming"

    .line 20
    .line 21
    const-string v9, "silentRoaming"

    .line 22
    .line 23
    const-string v10, "autoWifiPnoScan"

    .line 24
    .line 25
    const-string v11, "autoWifiAheadTimeForEstimatedArrivalTime"

    .line 26
    .line 27
    const-string v12, "autoWifiDefaultUserControlTime"

    .line 28
    .line 29
    const-string v13, "autoWifiDurationForPointOne"

    .line 30
    .line 31
    const-string v14, "autoWifiDurationForPointTwo"

    .line 32
    .line 33
    const-string v15, "autoWifiDurationForPointFour"

    .line 34
    .line 35
    const-string v16, "autoWifiDurationForMinusScore"

    .line 36
    .line 37
    const-string v17, "autoWifiDurationForRecoveryScore"

    .line 38
    .line 39
    const-string v18, "autoWifiMaxCellCount"

    .line 40
    .line 41
    const-string v19, "easySetup"

    .line 42
    .line 43
    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mKeys:[Ljava/lang/String;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mListeners:Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->initDeviceDefaultSettings()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private applyScpmPolicy(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 3

    .line 1
    const-string v0, "SCPM: there is no policy "

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getScpmConfigurationName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p1, v1}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "SemWifi.FeatureCtrl"

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " "

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :try_start_3
    new-instance p1, Ljava/io/FileInputStream;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getScpmConfigurationName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->updateFeatureStatus(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mLock:Ljava/lang/Object;

    .line 77
    .line 78
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 79
    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mListeners:Ljava/util/HashSet;

    .line 80
    .line 81
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 87
    .line 88
    .line 89
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 90
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 96
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 97
    :catchall_2
    move-exception p0

    .line 98
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_3
    move-exception p1

    .line 103
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 107
    :goto_1
    if-eqz v1, :cond_1

    .line 108
    .line 109
    :try_start_b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_4
    move-exception p1

    .line 114
    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_2
    throw p0

    .line 118
    :catch_0
    :goto_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :catch_1
    const-string p0, "SemWifi.FeatureCtrl"

    .line 123
    .line 124
    const-string p1, "couldn\'t open file"

    .line 125
    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_4
    return-void
.end method

.method private checkAndApplySettings(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mKeys:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    .line 21
    .line 22
    const/4 v6, -0x1

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eq v5, v4, :cond_1

    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v6, "apply settings key:"

    .line 42
    .line 43
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v6, " value:"

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string v6, "SemWifi.FeatureCtrl"

    .line 62
    .line 63
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    return-void
.end method

.method private checkAndResetDeviceDefaults(Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    const-string v0, "resetAll"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    const-string p1, "SemWifi.FeatureCtrl"

    .line 17
    .line 18
    const-string v1, "reset all settings"

    .line 19
    .line 20
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 26
    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method private getIntValue(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method private initDeviceDefaultSettings()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "qosDeviceShare"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 14
    .line 15
    const-string v2, "networkScoreProvider"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 21
    .line 22
    const-string v2, "wifiProfileShare"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 28
    .line 29
    const-string v2, "wifiProfileRequest"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 35
    .line 36
    const-string v2, "autoShare"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 42
    .line 43
    const-string v2, "connectionPersonalizerLogging"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 49
    .line 50
    const-string v2, "connectionPersonalizerBtmdisable"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 56
    .line 57
    const-string v2, "strongRoaming"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 63
    .line 64
    const-string v2, "silentRoaming"

    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 70
    .line 71
    const-string v2, "autoWifiPnoScan"

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 77
    .line 78
    const/16 v2, 0x3c

    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "autoWifiAheadTimeForEstimatedArrivalTime"

    .line 85
    .line 86
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 90
    .line 91
    const v2, 0x15180

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v3, "autoWifiDefaultUserControlTime"

    .line 99
    .line 100
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 104
    .line 105
    const/16 v2, 0x258

    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-string v3, "autoWifiDurationForPointOne"

    .line 112
    .line 113
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 117
    .line 118
    const/16 v3, 0x1c20

    .line 119
    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v4, "autoWifiDurationForPointTwo"

    .line 125
    .line 126
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 130
    .line 131
    const/16 v3, 0x7080

    .line 132
    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const-string v4, "autoWifiDurationForPointFour"

    .line 138
    .line 139
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 143
    .line 144
    const-string v3, "autoWifiDurationForMinusScore"

    .line 145
    .line 146
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 150
    .line 151
    const/16 v2, 0xe10

    .line 152
    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v3, "autoWifiDurationForRecoveryScore"

    .line 158
    .line 159
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 163
    .line 164
    const/16 v2, 0x64

    .line 165
    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v3, "autoWifiMaxCellCount"

    .line 171
    .line 172
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 176
    .line 177
    const-string v2, "easySetup"

    .line 178
    .line 179
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 183
    .line 184
    const/4 v1, 0x0

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const-string v2, "easySetupResetAfterScreenOffOn"

    .line 190
    .line 191
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 195
    .line 196
    const v0, 0x2bf20

    .line 197
    .line 198
    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const-string v1, "easySetupPartialScanIntervalMs"

    .line 204
    .line 205
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method private isSupported(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-ne p0, p2, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private updateFeatureStatus(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_b

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "PROFILE_SHARE"

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    move-object v2, v1

    .line 35
    check-cast v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;->isAllowedContinuityFunction()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string v4, "autoShare"

    .line 42
    .line 43
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;->isAllowedPasswordShare()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const-string v4, "wifiProfileShare"

    .line 51
    .line 52
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;->isAllowedPasswordShare()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const-string v3, "wifiProfileRequest"

    .line 60
    .line 61
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_0
    const-string v2, "ROAM"

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    move-object v2, v1

    .line 79
    check-cast v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->isEnabledStrongRoaming()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const-string v4, "strongRoaming"

    .line 86
    .line 87
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->isEnabledSilentRoaming()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const-string v4, "silentRoaming"

    .line 95
    .line 96
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->isEnabledConnectionPersionalizerLogging()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    const-string v4, "connectionPersonalizerLogging"

    .line 104
    .line 105
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->isEnabledConnectionPersionalizerBtmdisable()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const-string v3, "connectionPersonalizerBtmdisable"

    .line 113
    .line 114
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_1
    const-string v2, "AUTO_WIFI"

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_9

    .line 130
    .line 131
    move-object v2, v1

    .line 132
    check-cast v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->isEnabledAutoWifiPnoScan()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    const-string v4, "autoWifiPnoScan"

    .line 139
    .line 140
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiAheadTimeForEstimatedArrivalTime()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_2

    .line 148
    .line 149
    const-string v3, "autoWifiAheadTimeForEstimatedArrivalTime"

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiAheadTimeForEstimatedArrivalTime()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDefaultUserControlTime()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_3

    .line 163
    .line 164
    const-string v3, "autoWifiDefaultUserControlTime"

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDefaultUserControlTime()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDurationForPointOne()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_4

    .line 178
    .line 179
    const-string v3, "autoWifiDurationForPointOne"

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDurationForPointOne()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDurationForPointTwo()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_5

    .line 193
    .line 194
    const-string v3, "autoWifiDurationForPointTwo"

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDurationForPointTwo()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDurationForPointFour()Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_6

    .line 208
    .line 209
    const-string v3, "autoWifiDurationForPointFour"

    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDurationForPointFour()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    :cond_6
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDurationForMinusScore()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_7

    .line 223
    .line 224
    const-string v3, "autoWifiDurationForMinusScore"

    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDurationForMinusScore()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDurationForRecoveryScore()Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_8

    .line 238
    .line 239
    const-string v3, "autoWifiDurationForRecoveryScore"

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDurationForRecoveryScore()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    :cond_8
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiMaxCellCount()Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_a

    .line 253
    .line 254
    const-string v3, "autoWifiMaxCellCount"

    .line 255
    .line 256
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiMaxCellCount()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_9
    const-string v2, "EASY_SETUP"

    .line 265
    .line 266
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_a

    .line 275
    .line 276
    move-object v2, v1

    .line 277
    check-cast v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;

    .line 278
    .line 279
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->isEnabledEasySetup()Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    const-string v4, "easySetup"

    .line 284
    .line 285
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->isEnabledResetAfterScreenOffOn()Z

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    const-string v4, "easySetupResetAfterScreenOffOn"

    .line 293
    .line 294
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    .line 296
    .line 297
    const-string v3, "easySetupPartialScanIntervalMs"

    .line 298
    .line 299
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->getPartialScanIntervalMs()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    :cond_a
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string v3, "policy was applied : "

    .line 309
    .line 310
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    const-string v2, "SemWifi.FeatureCtrl"

    .line 321
    .line 322
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    goto/16 :goto_0

    .line 326
    .line 327
    :cond_b
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->checkAndApplySettings(Landroid/os/Bundle;)V

    .line 328
    .line 329
    .line 330
    return-void
.end method


# virtual methods
.method public getAutoWifiAheadTimeForEstimatedArrivalTime()I
    .locals 1

    .line 1
    const-string v0, "autoWifiAheadTimeForEstimatedArrivalTime"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getAutoWifiMaxCellCount()I
    .locals 1

    .line 1
    const-string v0, "autoWifiMaxCellCount"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getAutoWifiScorePolicies()[I
    .locals 5

    .line 1
    const-string v0, "autoWifiDurationForPointOne"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "autoWifiDurationForPointTwo"

    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "autoWifiDurationForPointFour"

    .line 14
    .line 15
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "autoWifiDurationForMinusScore"

    .line 20
    .line 21
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const-string v4, "autoWifiDurationForRecoveryScore"

    .line 26
    .line 27
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    filled-new-array {v0, v1, v2, v3, p0}, [I

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public getAutoWifiUserControlTime()I
    .locals 1

    .line 1
    const-string v0, "autoWifiDefaultUserControlTime"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getEasySetupPartialScanIntervalMs()I
    .locals 1

    .line 1
    const-string v0, "easySetupPartialScanIntervalMs"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getScpmConfigurationName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "WIFI_STA"

    .line 2
    .line 3
    return-object p0
.end method

.method public isSupportAutoShare()Z
    .locals 2

    .line 1
    const-string v0, "autoShare"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportAutoWifiPnoScanFeature()Z
    .locals 2

    .line 1
    const-string v0, "autoWifiPnoScan"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportConnectionPersonalizerBtmdisable()Z
    .locals 2

    .line 1
    const-string v0, "connectionPersonalizerBtmdisable"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportConnectionPersonalizerLogging()Z
    .locals 2

    .line 1
    const-string v0, "connectionPersonalizerLogging"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportEasySetup()Z
    .locals 2

    .line 1
    const-string v0, "easySetup"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportEasySetupResetAfterScreenOffOn()Z
    .locals 2

    .line 1
    const-string v0, "easySetupResetAfterScreenOffOn"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportQosProvider()Z
    .locals 2

    .line 1
    const-string v0, "qosDeviceShare"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportSamsungNetworkScore()Z
    .locals 2

    .line 1
    const-string v0, "networkScoreProvider"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportSilentRoaming()Z
    .locals 2

    .line 1
    const-string v0, "silentRoaming"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportStrongRoaming()Z
    .locals 2

    .line 1
    const-string v0, "strongRoaming"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportWifiProfileRequest()Z
    .locals 2

    .line 1
    const-string v0, "wifiProfileRequest"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isSupportWifiProfileShare()Z
    .locals 2

    .line 1
    const-string v0, "wifiProfileShare"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->applyScpmPolicy(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->applyScpmPolicy(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mListeners:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public setFeatureDefaults(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->checkAndResetDeviceDefaults(Landroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->checkAndApplySettings(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mListeners:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
