.class public Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;,
        Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;
    }
.end annotation


# static fields
.field public static final NSD_VERSION:I = 0x2

.field public static PORT:I = 0x1f95

.field public static final STOP_DISCOVERY_TIMEOUT:I = 0x1d4c0

.field public static final ServiceName:Ljava/lang/String; = "HotspotDeviceNameService"

.field public static TAG:Ljava/lang/String; = "SemWifiApNsd:NsdUtils"

.field private static mConnectivityManager:Landroid/net/ConnectivityManager; = null

.field private static mNwService:Landroid/os/INetworkManagementService; = null

.field public static mServerSocket:Ljava/net/ServerSocket; = null

.field public static final mServerType:Ljava/lang/String; = "_hotspot._tcp."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static closeSocketPort()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->mServerSocket:Ljava/net/ServerSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->mServerSocket:Ljava/net/ServerSocket;

    .line 15
    .line 16
    return-void
.end method

.method private static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "connectivity"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    sput-object p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    return-object p0
.end method

.method public static getDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "device_name"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "default_device_name"

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v0, "CscFeature_Common_ConfigDevBrandName"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_2
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :cond_3
    return-object p0
.end method

.method public static getLocalPort()I
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->mServerSocket:Ljava/net/ServerSocket;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sget-object v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "mServerSocket.getLocalPort() is :"

    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "mServerSocket.getLocalPort() is -1 or 0 : "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget v2, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->PORT:I

    .line 42
    .line 43
    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 44
    .line 45
    .line 46
    sget v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->PORT:I

    .line 47
    .line 48
    return v0
.end method

.method public static getWifiBandSupportedBitCode(Landroid/content/Context;)B
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "wifi"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->setIs5GhzBandSupportedTrue()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->is6GHzBandSupported()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->setIs6GhzBandSupportedTrue()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->getBandSupportByteCode()B

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public static getWifiSecurityTypeSupportBitCode(Landroid/content/Context;)B
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "wifi"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->setIsEnhancedOpenSupportedTrue()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->setIsWPA3SupportedTrue()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->getSecurityTypeByteCode()B

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method private static getWlanInterfaceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "wlan0"

    .line 42
    .line 43
    :goto_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "getWlanInterfaceName:"

    .line 46
    .line 47
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public static getWlanMacFromInterface(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "network_management"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->mNwService:Landroid/os/INetworkManagementService;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->getWlanInterfaceName(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "getWlanMacFromInterface ifcg is null"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method

.method public static isPhone()Z
    .locals 2

    .line 1
    const-string v0, "ro.build.characteristics"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "phone"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    .line 1
    const-string v0, "ro.build.characteristics"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "tablet"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public static isWatch()Z
    .locals 2

    .line 1
    const-string v0, "ro.build.characteristics"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "watch"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method
