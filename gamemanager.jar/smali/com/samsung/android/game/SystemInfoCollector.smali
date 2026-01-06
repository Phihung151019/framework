.class public Lcom/samsung/android/game/SystemInfoCollector;
.super Ljava/lang/Object;
.source "SystemInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/SystemInfoCollector$KeyName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemInfoCollector"

.field private static final VIRTUAL_GAMEPAD_DESCRIPTOR:Ljava/lang/String; = "ec0a7e0b45cafc43aea2844bc2e1bd1d024003dc"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private getAudioInfo()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 207
    const/4 v0, -0x1

    .line 208
    .local v0, "volume":I
    const/4 v1, 0x0

    .line 210
    .local v1, "outputDevice":I
    iget-object v2, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 211
    .local v2, "audioManager":Landroid/media/AudioManager;
    if-eqz v2, :cond_4

    .line 213
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 214
    .local v4, "streamMaxVolume":I
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 215
    .local v5, "streamVolume":I
    const/high16 v6, 0x42c80000    # 100.0f

    int-to-float v7, v5

    mul-float/2addr v7, v6

    int-to-float v6, v4

    div-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 221
    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v6

    .line 222
    .local v6, "currentDeviceType":I
    if-eq v6, v3, :cond_2

    const/4 v3, 0x4

    if-eq v6, v3, :cond_2

    const/16 v3, 0x16

    if-ne v6, v3, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    const/4 v3, 0x7

    if-eq v6, v3, :cond_1

    const/16 v3, 0x8

    if-ne v6, v3, :cond_3

    .line 228
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 225
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 230
    .end local v4    # "streamMaxVolume":I
    .end local v5    # "streamVolume":I
    .end local v6    # "currentDeviceType":I
    :cond_3
    :goto_1
    goto :goto_2

    .line 231
    :cond_4
    const-string v3, "SystemInfoCollector"

    const-string v4, "stopCollecting()-audioManager is null"

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_2
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private getBatteryInfo()Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    .line 138
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v1

    .line 139
    .local v1, "batteryStatus":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 140
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 141
    .local v2, "level":I
    const-string v4, "scale"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 142
    .local v3, "scale":I
    const-string v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 145
    .local v4, "pluggedType":I
    mul-int/lit8 v5, v2, 0x64

    div-int/2addr v5, v3

    .line 153
    .local v5, "batteryPercent":I
    move v6, v4

    .line 156
    .local v6, "batteryPluggedType":I
    new-instance v7, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v7

    .line 159
    .end local v2    # "level":I
    .end local v3    # "scale":I
    .end local v4    # "pluggedType":I
    .end local v5    # "batteryPercent":I
    .end local v6    # "batteryPluggedType":I
    :cond_0
    return-object v0
.end method

.method private getBrightnessInfo()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 165
    const-string v0, "SystemInfoCollector"

    const/4 v1, -0x1

    .line 167
    .local v1, "screenBrightness":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 170
    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "get screenBrightness on resume failure"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    const/4 v2, -0x1

    .line 178
    .local v2, "screenBrightnessMode":I
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v0

    .line 181
    goto :goto_1

    .line 179
    :catch_1
    move-exception v3

    .line 180
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "get screenBrightnessMode failure"

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getGameVersionInfo(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 243
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 244
    .local v1, "versionName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 246
    .local v2, "versionCode":J
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 247
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "versionName":Ljava/lang/String;
    .end local v2    # "versionCode":J
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemInfoCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private isWifiConnected()Z
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 193
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 196
    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2

    .line 199
    .end local v1    # "wifi":Landroid/net/NetworkInfo;
    :cond_0
    goto :goto_0

    .line 200
    :cond_1
    const-string v1, "SystemInfoCollector"

    const-string v2, "getWifiConnected()-connectivityManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public makeSystemInfoForFocusIn()Ljava/lang/String;
    .locals 5

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v0, "json":Lorg/json/JSONObject;
    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->getBatteryInfo()Landroid/util/Pair;

    move-result-object v1

    .line 54
    .local v1, "batteryInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    const-string v2, "batteryPercent"

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "batteryPluggedType"

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 63
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->getBrightnessInfo()Landroid/util/Pair;

    move-result-object v2

    .line 65
    .local v2, "brightnessInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_1
    const-string v3, "brightness"

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v3, "brightnessMode"

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    goto :goto_1

    .line 67
    :catch_1
    move-exception v3

    .line 68
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public makeSystemInfoForFocusOut(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v0, "json":Lorg/json/JSONObject;
    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->getBatteryInfo()Landroid/util/Pair;

    move-result-object v1

    .line 90
    .local v1, "batteryInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    const-string v2, "batteryPercent"

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v2, "batteryPluggedType"

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->getBrightnessInfo()Landroid/util/Pair;

    move-result-object v2

    .line 101
    .local v2, "brightnessInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_1
    const-string v3, "brightness"

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v3, "brightnessMode"

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    goto :goto_1

    .line 103
    :catch_1
    move-exception v3

    .line 104
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 107
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->getAudioInfo()Landroid/util/Pair;

    move-result-object v3

    .line 109
    .local v3, "audioInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_2
    const-string v4, "audioVolume"

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v4, "audioOutputDevice"

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    goto :goto_2

    .line 111
    :catch_2
    move-exception v4

    .line 112
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 116
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_2
    :try_start_3
    const-string v4, "wifiConnected"

    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 119
    goto :goto_3

    .line 117
    :catch_3
    move-exception v4

    .line 118
    .restart local v4    # "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 121
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_3
    invoke-direct {p0, p1}, Lcom/samsung/android/game/SystemInfoCollector;->getGameVersionInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 122
    .local v4, "gameVersionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v4, :cond_1

    .line 124
    :try_start_4
    const-string v5, "versionName"

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v5, "versionCode"

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 128
    goto :goto_4

    .line 126
    :catch_4
    move-exception v5

    .line 127
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 131
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
