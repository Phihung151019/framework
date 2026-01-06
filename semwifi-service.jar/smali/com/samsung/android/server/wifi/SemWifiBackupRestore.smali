.class public Lcom/samsung/android/server/wifi/SemWifiBackupRestore;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final ACTION_RESPONSE_RESTORE:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

.field private static final INVALID_LOCATION:D = 1000.0

.field private static final KEY_SEM_WIFI_HEAD:Ljava/lang/String; = "semwificonfig"

.field private static final MIN_SCORE_FOR_FAVORITE_AP:I = 0x9

.field private static final RESTORE_MAX_RETRY:I = 0x3

.field private static final SEM_WFI_CONFIG_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final SEM_WFI_CONFIG_LOCATION:Ljava/lang/String; = "location"

.field private static final SEM_WFI_CONFIG_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final SEM_WFI_CONFIG_NETWORKSCORE:Ljava/lang/String; = "networkScore"

.field private static final SEM_WIFI_CONFIG_CONFIGKEY:Ljava/lang/String; = "configKey"

.field private static final TAG:Ljava/lang/String; = "SemWifiBackupRestore"


# instance fields
.field private mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

.field private mLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSemConfigs:Lorg/json/JSONArray;

.field private mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public static synthetic $r8$lambda$fOmladH8FjBeZOE-Ru7sAfcqkxE(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->lambda$addOrUpdateNetwork$0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSemConfigs(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)Lorg/json/JSONArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddOrUpdateNetwork(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->addOrUpdateNetwork(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "sem_wifi"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getAutoWifiController()Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 25
    .line 26
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Landroid/content/IntentFilter;

    .line 32
    .line 33
    const-string v0, "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

    .line 34
    .line 35
    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private addOrUpdateNetwork(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "addOrUpdateNetwork length is "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "SemWifiBackupRestore"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    move v2, v0

    .line 28
    move v3, v2

    .line 29
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;

    .line 30
    .line 31
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v2, v4, :cond_4

    .line 36
    .line 37
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "configKey"

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 50
    .line 51
    invoke-virtual {v5, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-nez v5, :cond_0

    .line 56
    .line 57
    const-string v4, "ignore restore network "

    .line 58
    .line 59
    invoke-static {v4, v7}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 68
    .line 69
    invoke-virtual {v5, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-nez v5, :cond_1

    .line 74
    .line 75
    new-instance v5, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 76
    .line 77
    invoke-direct {v5, v7}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    const-string v6, "networkScore"

    .line 81
    .line 82
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    iput v6, v5, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 87
    .line 88
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 89
    .line 90
    const/16 v9, 0x3e8

    .line 91
    .line 92
    invoke-virtual {v8, v5, v9}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 93
    .line 94
    .line 95
    const/16 v5, 0x9

    .line 96
    .line 97
    if-ge v6, v5, :cond_2

    .line 98
    .line 99
    if-gez v6, :cond_3

    .line 100
    .line 101
    :cond_2
    const-string v5, "location"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const-string v5, "latitude"

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 114
    .line 115
    .line 116
    move-result-wide v8

    .line 117
    const-string v5, "longitude"

    .line 118
    .line 119
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 120
    .line 121
    .line 122
    move-result-wide v10

    .line 123
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 124
    .line 125
    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->restoreNetworkLocation(Ljava/lang/String;DD)V

    .line 126
    .line 127
    .line 128
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;

    .line 134
    .line 135
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eq v3, v0, :cond_5

    .line 140
    .line 141
    const/4 v0, 0x3

    .line 142
    if-ge p1, v0, :cond_5

    .line 143
    .line 144
    new-instance v0, Landroid/os/Handler;

    .line 145
    .line 146
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$$ExternalSyntheticLambda0;

    .line 154
    .line 155
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;I)V

    .line 156
    .line 157
    .line 158
    const-wide/16 p0, 0x7530

    .line 159
    .line 160
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    .line 162
    .line 163
    :cond_5
    return-void
.end method

.method private synthetic lambda$addOrUpdateNetwork$0(I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->addOrUpdateNetwork(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method getBackupDatatoJsonString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "SemWifiBackupRestore"

    .line 4
    .line 5
    const-string p1, "Invalid configuration list received"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string p0, ""

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lorg/json/JSONArray;

    .line 19
    .line 20
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 40
    .line 41
    iget-object v4, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_3

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const/16 v4, 0x8

    .line 81
    .line 82
    if-ne v3, v4, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    .line 86
    .line 87
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v4, "configKey"

    .line 91
    .line 92
    iget-object v5, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    const-string v4, "networkScore"

    .line 98
    .line 99
    iget v5, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 100
    .line 101
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    iget-object v2, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->getConfigLocation(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v4, "location"

    .line 111
    .line 112
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    const-string p0, "semwificonfig"

    .line 120
    .line 121
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method

.method getConfigLocation(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mLocations:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "longitude"

    .line 18
    .line 19
    const-string v4, "latitude"

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mLocations:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mLocations:Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 66
    .line 67
    .line 68
    return-object v0
.end method

.method restoreSemConfigurationsBackupData(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "semwificonfig"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "SemWifiBackupRestore"

    .line 6
    .line 7
    const-string p1, "restore data is null"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method retrieveSemWifiConfigsBackupData(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, "run retrieveSemWifiConfigsBackupData() size:"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getNetworkLocations()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mLocations:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->getBackupDatatoJsonString(Ljava/util/List;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p1, "SemWifiBackupRestore"

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :cond_0
    const-string p0, ""

    .line 44
    .line 45
    return-object p0
.end method
