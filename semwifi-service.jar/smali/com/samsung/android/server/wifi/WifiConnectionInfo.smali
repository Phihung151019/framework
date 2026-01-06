.class public Lcom/samsung/android/server/wifi/WifiConnectionInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final INVALID_FREQUENCY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemWifi.ConnectionInfo"


# instance fields
.field volatile bssid:Ljava/lang/String;

.field volatile isConnected:Z

.field lastConfig:Landroid/net/wifi/WifiConfiguration;

.field lastConfigKey:Ljava/lang/String;

.field lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

.field private final logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field volatile networkId:I

.field wifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->reset()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getConfigKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFrequency()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, -0x1

    .line 11
    return p0
.end method

.method public getLastSemWifiConfig()Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLastWifiConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNetworkId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 2
    .line 3
    return p0
.end method

.method public getNetworkType()Lcom/samsung/android/server/wifi/diagnostics/NetworkType;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->CARRIER:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 20
    .line 21
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "OpenRoaming"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->OPEN_ROAMING:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->PASSPOINT:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->EPHEMERAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/WifiUtils;->isAndroidHotspot(Landroid/net/wifi/WifiInfo;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->MOBILE_HOTSPOT:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    iget v0, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->FAVORITE:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 77
    .line 78
    iget-boolean p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 79
    .line 80
    if-eqz p0, :cond_6

    .line 81
    .line 82
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_6
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->NORMAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 86
    .line 87
    return-object p0
.end method

.method public getPrintableBssid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, ""

    .line 11
    .line 12
    return-object p0
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasConfigKey()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public hasNetworkIdInWifiInfo()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 13
    .line 14
    return-void
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method setSemWifiConfig(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 2
    .line 3
    return-void
.end method

.method setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfigKey:Ljava/lang/String;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-string p1, ""

    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfigKey:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method setWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p1, "SemWifi.ConnectionInfo"

    .line 25
    .line 26
    const-string v0, "WifiInfo.getBSSID returns empty string, reset it"

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isConnected: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", networkId: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", bssid: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getPrintableBssid()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", lastConfigKey: "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfigKey:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 46
    .line 47
    const-string v2, ""

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    const-string v1, ", config"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object v1, v2

    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 59
    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    const-string v2, ", semConfig"

    .line 63
    .line 64
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method
