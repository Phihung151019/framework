.class public Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;
.super Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final JSON_KEY_AUTO_JOIN:Ljava/lang/String; = "autojoin"

.field static final JSON_KEY_BSSID:Ljava/lang/String; = "bssid"

.field static final JSON_KEY_FORCED_CONNECTION_REQUIRES:Ljava/lang/String; = "force"

.field static final JSON_KEY_HIDDEN_SSID:Ljava/lang/String; = "hiddenssid"

.field static final JSON_KEY_PASSWORD:Ljava/lang/String; = "password"

.field static final JSON_KEY_RANDOM_MAC:Ljava/lang/String; = "randommac"

.field static final JSON_KEY_SECURE_TYPE:Ljava/lang/String; = "securetype"

.field static final JSON_KEY_SSID:Ljava/lang/String; = "ssid"

.field static final JSON_KEY_TARGET_DEVICE:Ljava/lang/String; = "target"

.field static final OPEN:Ljava/lang/String; = "open"

.field static final OWE:Ljava/lang/String; = "owe"

.field static final PSK:Ljava/lang/String; = "psk"

.field static final SAE:Ljava/lang/String; = "sae"

.field private static final TAG:Ljava/lang/String; = "SemWifi.ContinuityData"

.field public static final TYPE:I = 0x1

.field static final WAPI:Ljava/lang/String; = "wapi"

.field static final WEP:Ljava/lang/String; = "wep"


# instance fields
.field private final allowAutojoin:Z

.field private bssid:Ljava/lang/String;

.field private final isHiddenSSID:Z

.field private final networkName:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final randomMac:I

.field private requireForcedConnection:Z

.field private final secureType:Ljava/lang/String;

.field private final targetDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;-><init>(I)V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->targetDevices:Ljava/util/HashSet;

    .line 21
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->networkName:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isRequiresPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    const-string v1, "wep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    .line 28
    :goto_0
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->allowAutojoin:Z

    .line 29
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isHiddenSSID:Z

    .line 30
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iput p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->randomMac:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;)V
    .locals 1

    .line 31
    iget-object v0, p1, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->config:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->isRequiredForcedConnection()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->requireForcedConnection:Z

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getBssid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->bssid:Ljava/lang/String;

    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->targetDevices:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->getTargetDevices()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->targetDevices:Ljava/util/HashSet;

    .line 3
    const-string v1, "ssid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->networkName:Ljava/lang/String;

    .line 4
    const-string v1, "securetype"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isRequiresPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    const-string v1, "password"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    .line 8
    :goto_0
    const-string v1, "autojoin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->allowAutojoin:Z

    .line 9
    const-string v1, "hiddenssid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isHiddenSSID:Z

    .line 10
    const-string v1, "bssid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->bssid:Ljava/lang/String;

    .line 12
    :cond_1
    const-string v1, "randommac"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->randomMac:I

    .line 13
    const-string v1, "force"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->requireForcedConnection:Z

    if-eqz v0, :cond_3

    .line 15
    const-string v0, "target"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 17
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->targetDevices:Ljava/util/HashSet;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p0, "sae"

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string p0, "psk"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const/4 v0, 0x6

    .line 22
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-string p0, "owe"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    const/4 v0, 0x7

    .line 32
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const-string p0, "wapi"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    const-string p0, "wep"

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_4
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_5

    .line 57
    .line 58
    const-string p0, "open"

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string v0, "unsupported security type"

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method private isRequiresPassword()Z
    .locals 2

    .line 1
    const-string v0, "owe"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "open"

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static isSupported(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    .line 5
    .line 6
    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->networkName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, -0x1

    .line 20
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    sparse-switch v7, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :sswitch_0
    const-string v7, "wapi"

    .line 29
    .line 30
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v6, 0x5

    .line 38
    goto :goto_0

    .line 39
    :sswitch_1
    const-string v7, "open"

    .line 40
    .line 41
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v6, v0

    .line 49
    goto :goto_0

    .line 50
    :sswitch_2
    const-string v7, "wep"

    .line 51
    .line 52
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v6, 0x3

    .line 60
    goto :goto_0

    .line 61
    :sswitch_3
    const-string v7, "sae"

    .line 62
    .line 63
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    move v6, v1

    .line 71
    goto :goto_0

    .line 72
    :sswitch_4
    const-string v7, "psk"

    .line 73
    .line 74
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    move v6, v2

    .line 82
    goto :goto_0

    .line 83
    :sswitch_5
    const-string v7, "owe"

    .line 84
    .line 85
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    move v6, v5

    .line 93
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :pswitch_0
    const/4 v0, 0x7

    .line 98
    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_1
    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :pswitch_2
    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    .line 116
    .line 117
    aput-object v1, v0, v5

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :pswitch_3
    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    .line 124
    .line 125
    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :pswitch_4
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    .line 132
    .line 133
    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :pswitch_5
    const/4 v0, 0x6

    .line 137
    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 138
    .line 139
    .line 140
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->allowAutojoin:Z

    .line 141
    .line 142
    iput-boolean v0, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 143
    .line 144
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isHiddenSSID:Z

    .line 145
    .line 146
    iput-boolean v0, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 147
    .line 148
    iget v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->randomMac:I

    .line 149
    .line 150
    iput v0, v3, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 151
    .line 152
    new-instance v0, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;

    .line 153
    .line 154
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->requireForcedConnection:Z

    .line 155
    .line 156
    invoke-direct {v0, v3, v1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->bssid:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_6

    .line 166
    .line 167
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->bssid:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->setBssid(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->targetDevices:Ljava/util/HashSet;

    .line 173
    .line 174
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/share/continuity/SharedConfigInfo;->addAllTargets(Ljava/util/Set;)V

    .line 175
    .line 176
    .line 177
    return-object v0

    .line 178
    nop

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x1af7d -> :sswitch_5
        0x1b2c8 -> :sswitch_4
        0x1bbd7 -> :sswitch_3
        0x1cb62 -> :sswitch_2
        0x34264a -> :sswitch_1
        0x379243 -> :sswitch_0
    .end sparse-switch

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 5

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->getJsonObject()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ssid"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->networkName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    const-string v1, "securetype"

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isRequiresPassword()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v1, "password"

    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    :cond_0
    const-string v1, "autojoin"

    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->allowAutojoin:Z

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v1, "hiddenssid"

    .line 40
    .line 41
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isHiddenSSID:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v1, "randommac"

    .line 47
    .line 48
    iget v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->randomMac:I

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->requireForcedConnection:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const-string v1, "force"

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->targetDevices:Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    new-instance v1, Lorg/json/JSONArray;

    .line 72
    .line 73
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->targetDevices:Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/String;

    .line 93
    .line 94
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const-string v2, "target"

    .line 105
    .line 106
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->bssid:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    const-string v1, "bssid"

    .line 118
    .line 119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->bssid:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    :cond_3
    return-object v0

    .line 125
    :catch_0
    const-string p0, "SemWifi.ContinuityData"

    .line 126
    .line 127
    const-string v0, "failed to generate shared data"

    .line 128
    .line 129
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    const/4 p0, 0x0

    .line 133
    return-object p0
.end method

.method public getTargetDevices()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->targetDevices:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method
