.class public Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# static fields
.field static final NETWORK_ID:Ljava/lang/String; = "networkId"

.field static final SETUP_STATIC_IP:Ljava/lang/String; = "setupStaticIp"

.field private static final TAG:Ljava/lang/String; = "SemWifi.AutoTestHelper"


# instance fields
.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 7
    .line 8
    return-void
.end method

.method private setupStaticIpConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    rem-int/lit8 v0, v0, 0xa

    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    neg-int v0, v0

    .line 19
    :cond_0
    new-instance v1, Landroid/net/StaticIpConfiguration$Builder;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "192.168.1.1"

    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "setupStaticIpConfiguration ip:"

    .line 31
    .line 32
    const-string v4, ", gw:192.168.1.1"

    .line 33
    .line 34
    invoke-static {v3, v0, v4}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "SemWifi.AutoTestHelper"

    .line 39
    .line 40
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    new-instance v3, Landroid/net/LinkAddress;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/16 v4, 0x18

    .line 50
    .line 51
    invoke-direct {v3, v0, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 62
    .line 63
    .line 64
    const-string v0, "8.8.8.8"

    .line 65
    .line 66
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 75
    .line 76
    .line 77
    new-instance v0, Landroid/net/IpConfiguration;

    .line 78
    .line 79
    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 85
    .line 86
    .line 87
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 105
    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public setTestSettings(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "setupStaticIp"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "networkId"

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "setup static ip for network id: "

    .line 31
    .line 32
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "SemWifi.AutoTestHelper"

    .line 37
    .line 38
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;->setupStaticIpConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
