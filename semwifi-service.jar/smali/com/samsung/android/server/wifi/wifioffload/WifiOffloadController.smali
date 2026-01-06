.class public Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final DATA_USAGE_THRESHOLD:I = 0x1

.field private static final DONT_SHOW_AGAIN_TIMER:I = 0x2932e00

.field static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "app.offload.datausage.limit"

.field private static final TAG:Ljava/lang/String; = "WifiOffloadController"


# instance fields
.field mBlockListApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field mIsAirplaneMode:Z

.field mIsSettingEnabled:Z

.field mIsTimerRunning:Z

.field mIsWifiApEnabled:Z

.field mIsWifiConnected:Z

.field mIsWifiEnabled:Z

.field private final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field mStartTime:J

.field private final mWifiManager:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field mWifiOffloadDBHelper:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;


# direct methods
.method public static synthetic $r8$lambda$ymp7uLyBV4sno6o0j-mkehPC3Ao(Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->lambda$isAppInBackground$0(Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mStartTime:J

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiManager:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 13
    .line 14
    const-class p4, Landroid/app/usage/NetworkStatsManager;

    .line 15
    .line 16
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    check-cast p4, Landroid/app/usage/NetworkStatsManager;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 23
    .line 24
    new-instance p4, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;

    .line 25
    .line 26
    invoke-direct {p4, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiOffloadDBHelper:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;

    .line 30
    .line 31
    new-instance p4, Landroid/content/IntentFilter;

    .line 32
    .line 33
    invoke-direct {p4}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 37
    .line 38
    invoke-virtual {p4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 42
    .line 43
    invoke-virtual {p4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 47
    .line 48
    invoke-virtual {p4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;-><init>(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    const-string p4, "airplane_mode_on"

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p3, p1, p4, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x1

    .line 67
    if-ne v1, v2, :cond_0

    .line 68
    .line 69
    move v1, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move v1, v0

    .line 72
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsAirplaneMode:Z

    .line 73
    .line 74
    const-string v1, "wifi_offload_network_notify"

    .line 75
    .line 76
    invoke-virtual {p3, p1, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-ne v3, v2, :cond_1

    .line 81
    .line 82
    move v0, v2

    .line 83
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsSettingEnabled:Z

    .line 84
    .line 85
    invoke-static {p4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    new-instance v0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$2;

    .line 90
    .line 91
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$2;-><init>(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;Landroid/os/Handler;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p1, p4, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    new-instance v0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$3;

    .line 102
    .line 103
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$3;-><init>(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;Landroid/os/Handler;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, p1, p4, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    .line 108
    .line 109
    new-instance p2, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const p3, 0x1070011

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .line 128
    .line 129
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mBlockListApps:Ljava/util/List;

    .line 130
    .line 131
    return-void
.end method

.method private getActiveSubscriberId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "phone"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method private insertAppCount(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "packagename"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "launchcount"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiOffloadDBHelper:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;->insert(Landroid/content/ContentValues;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static synthetic lambda$isAppInBackground$0(Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method


# virtual methods
.method calculateDataUsageForInterface(ILandroid/net/NetworkTemplate;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, -0x1

    .line 7
    const-wide/high16 v2, -0x8000000000000000L

    .line 8
    .line 9
    const-wide v4, 0x7fffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    move v6, p1

    .line 15
    move-object v1, p2

    .line 16
    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->getDataUsageFromStats(Landroid/app/usage/NetworkStats;)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    return-wide p0

    .line 25
    :cond_0
    const-wide/16 p0, 0x0

    .line 26
    .line 27
    return-wide p0
.end method

.method public checkAppForOffloading(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "appLaunchCount = "

    .line 2
    .line 3
    const-string v1, "package = "

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->isAppInBackground(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const-string v5, "WifiOffloadController"

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " in background. no offload needed"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/16 v4, 0x80

    .line 50
    .line 51
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    :try_start_3
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->isWifiOffloadNeeded(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->getAppLaunchCount(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    if-nez v4, :cond_1

    .line 83
    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->insertAppCount(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->updateAppLaunchCount(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->checkPreconditions()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->isAppDataUsageLimitExceeded(Ljava/lang/String;I)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->showWifiOffloadDialog(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const-string p0, "app data usage not exceeded threshold"

    .line 110
    .line 111
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    const-string p0, "all preconditions not passed"

    .line 116
    .line 117
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catch_0
    :try_start_4
    const-string p0, "package not found"

    .line 125
    .line 126
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    .line 128
    .line 129
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method checkPreconditions()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checkPreconditions : mIsWifiEnabled = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " mIsWifiConnected = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiConnected:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mIsAirplaneMode = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsAirplaneMode:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " mIsWifiApEnabled = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiApEnabled:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " mIsSettingEnabled = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsSettingEnabled:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " mIsTimerRunning = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->isTimerRunning()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "WifiOffloadController"

    .line 70
    .line 71
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiEnabled:Z

    .line 75
    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiConnected:Z

    .line 79
    .line 80
    if-nez v0, :cond_0

    .line 81
    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsAirplaneMode:Z

    .line 83
    .line 84
    if-nez v0, :cond_0

    .line 85
    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiApEnabled:Z

    .line 87
    .line 88
    if-nez v0, :cond_0

    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsSettingEnabled:Z

    .line 91
    .line 92
    if-eqz v0, :cond_0

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->isTimerRunning()Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_0

    .line 99
    .line 100
    const/4 p0, 0x1

    .line 101
    return p0

    .line 102
    :cond_0
    const/4 p0, 0x0

    .line 103
    return p0
.end method

.method getAppLaunchCount(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiOffloadDBHelper:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p1, "launchcount"

    .line 17
    .line 18
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return p1
.end method

.method getDataUsageFromStats(Landroid/app/usage/NetworkStats;)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    new-instance p0, Landroid/app/usage/NetworkStats$Bucket;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    add-long/2addr v4, v2

    .line 31
    add-long/2addr v0, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "DataUsage for app is "

    .line 36
    .line 37
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v2, "WifiOffloadController"

    .line 48
    .line 49
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-wide v0
.end method

.method isAppDataUsageLimitExceeded(Ljava/lang/String;I)Z
    .locals 15

    .line 1
    move/from16 v1, p2

    .line 2
    .line 3
    const/16 v2, 0x3e8

    .line 4
    .line 5
    if-eq v1, v2, :cond_0

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_1

    .line 9
    .line 10
    :cond_0
    const/4 v8, 0x0

    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 14
    .line 15
    const-string v4, "app.offload.datausage.limit"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/high16 v4, 0x100000

    .line 23
    .line 24
    mul-int/2addr v2, v4

    .line 25
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->getAppLaunchCount(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    new-instance v6, Landroid/net/NetworkTemplate$Builder;

    .line 30
    .line 31
    const/4 v7, 0x4

    .line 32
    invoke-direct {v6, v7}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {p0, v1, v6}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->calculateDataUsageForInterface(ILandroid/net/NetworkTemplate;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v9, "Wi-Fi : DataUsage = "

    .line 46
    .line 47
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v9, " AppLaunchCount = "

    .line 54
    .line 55
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const-string v10, "WifiOffloadController"

    .line 66
    .line 67
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    int-to-long v11, v4

    .line 71
    div-long v13, v6, v11

    .line 72
    .line 73
    move/from16 p1, v4

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    int-to-long v3, v2

    .line 77
    cmp-long v2, v13, v3

    .line 78
    .line 79
    if-ltz v2, :cond_2

    .line 80
    .line 81
    :goto_0
    move v3, v5

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    new-instance v2, Landroid/net/NetworkTemplate$Builder;

    .line 84
    .line 85
    invoke-direct {v2, v5}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->calculateDataUsageForInterface(ILandroid/net/NetworkTemplate;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    add-long/2addr v6, v0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, "Wi-Fi + Mobile Data : DataUsage = "

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    move/from16 v1, p1

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    div-long/2addr v6, v11

    .line 123
    cmp-long v0, v6, v3

    .line 124
    .line 125
    if-ltz v0, :cond_3

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    move v3, v8

    .line 129
    :goto_1
    const-string v0, "dataUsageCrossed ? "

    .line 130
    .line 131
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    return v3

    .line 139
    :goto_2
    return v8
.end method

.method isAppInBackground(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "activity"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance v0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 40
    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    const/16 p1, 0x64

    .line 46
    .line 47
    if-eq p0, p1, :cond_0

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string p1, "WifiOffloadController"

    .line 53
    .line 54
    const-string v0, "unable to check app in background"

    .line 55
    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_0
    const/4 p0, 0x0

    .line 63
    return p0
.end method

.method isTimerRunning()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsTimerRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mStartTime:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/32 v2, 0x2932e00

    .line 13
    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsTimerRunning:Z

    .line 21
    .line 22
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsTimerRunning:Z

    .line 23
    .line 24
    return p0
.end method

.method isWifiOffloadNeeded(Ljava/lang/String;I)Z
    .locals 8

    .line 1
    const-string v0, "WifiOffloadController"

    .line 2
    .line 3
    const-string v1, "No internet permission for package = "

    .line 4
    .line 5
    const-string v2, "package = "

    .line 6
    .line 7
    const-string v3, "Block List package = "

    .line 8
    .line 9
    const-string v4, "Active Network type = "

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v7, "connectivity"

    .line 15
    .line 16
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    :goto_0
    if-nez v6, :cond_1

    .line 31
    .line 32
    const-string v4, "No active network"

    .line 33
    .line 34
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_1
    move v4, v5

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v4, ", so no Wi-Fi offload needed"

    .line 58
    .line 59
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v4, 0x1

    .line 71
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mBlockListApps:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move v4, v5

    .line 95
    :cond_3
    const/16 v3, 0x3e8

    .line 96
    .line 97
    if-ne p2, v3, :cond_4

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, " has SYSTEM_UID. adding to Block List"

    .line 108
    .line 109
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mBlockListApps:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move v4, v5

    .line 125
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    const-string p2, "android.permission.INTERNET"

    .line 132
    .line 133
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    const/4 p2, -0x1

    .line 138
    if-ne p0, p2, :cond_5

    .line 139
    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    move v5, v4

    .line 157
    goto :goto_3

    .line 158
    :catch_0
    const-string p0, "security exception occurred while getting active network info"

    .line 159
    .line 160
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string p2, "isWifiOffloadNeeded : packageName = "

    .line 166
    .line 167
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string p1, " result = "

    .line 174
    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    return v5
.end method

.method showWifiOffloadDialog(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiManager:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getScanResults()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v1, "com.samsung.wifioffload.WIFI_OFFLOAD_DIALOG"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v1, 0x10008000

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string v1, "EXTRA_PACKAGE_NAME"

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    const-string p1, "WifiOffloadController"

    .line 41
    .line 42
    const-string v0, "no scan result. don\'t show dialog and start scan"

    .line 43
    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const-string p1, "sem_wifi"

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->startScan()Z

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public startTimer()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mStartTime:J

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsTimerRunning:Z

    .line 9
    .line 10
    return-void
.end method

.method updateAppLaunchCount(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v1, "launchcount"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiOffloadDBHelper:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
