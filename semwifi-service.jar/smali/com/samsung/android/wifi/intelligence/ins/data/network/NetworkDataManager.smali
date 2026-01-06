.class public final Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "connectivity"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    return-void
.end method

.method public static start()V
    .locals 2

    .line 1
    const-string v0, "NetworkDataManager"

    .line 2
    .line 3
    const-string v1, "start()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCurrentNetworkData()Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;-><init>()V

    .line 14
    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->setWIFI(Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroid/net/wifi/WifiInfo;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->setRSSI(Ljava/lang/Integer;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->setTxLinkSpeed(Ljava/lang/Integer;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->setRxLinkSpeed(Ljava/lang/Integer;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    return-object v0
.end method
