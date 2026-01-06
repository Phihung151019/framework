.class public Lcom/samsung/android/server/wifi/OpenRoamingLogger;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenRoamingLogger"


# instance fields
.field private mConnectedOpenroamingAp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mScannedOpenroamingAp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mScannedOpenroamingAp:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mConnectedOpenroamingAp:Ljava/util/Set;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 23
    .line 24
    new-instance p1, Lcom/samsung/android/server/wifi/OpenRoamingLogger$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/OpenRoamingLogger$1;-><init>(Lcom/samsung/android/server/wifi/OpenRoamingLogger;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static getRoamingConsortium([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/samsung/android/server/wifi/util/RoamingConsortium;
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/util/RoamingConsortium;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/RoamingConsortium;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget-object v3, p0, v2

    .line 13
    .line 14
    iget v4, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 15
    .line 16
    const/16 v5, 0x6f

    .line 17
    .line 18
    if-ne v4, v5, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/util/RoamingConsortium;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v3

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v5, "Failed to parse Roaming Consortium IE: "

    .line 28
    .line 29
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "OpenRoamingLogger"

    .line 44
    .line 45
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method private isAllowedOAuthProvder()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "sem_wifi_allowed_oauth_provider"

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    const-string v0, "[cisco]"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    const/4 p0, 0x1

    .line 29
    return p0
.end method


# virtual methods
.method public getConnectedOpenroamingApCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mConnectedOpenroamingAp:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getScannedOpenroamingApCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mScannedOpenroamingAp:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->updateConnectedOpenRoamingAp(Landroid/net/wifi/WifiInfo;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mScannedOpenroamingAp:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mConnectedOpenroamingAp:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public updateConnectedOpenRoamingAp(Landroid/net/wifi/WifiInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "samsung.openroaming.net"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->isAllowedOAuthProvder()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mConnectedOpenroamingAp:Ljava/util/Set;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "updateConnectedOpenRoamingAp, connectedOpenroamingAp: "

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "OpenRoamingLogger"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public updateScannedOpenRoamingAp(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    new-array v2, v1, [J

    .line 4
    .line 5
    fill-array-data v2, :array_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_5

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 23
    .line 24
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 25
    .line 26
    invoke-static {v4}, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->getRoamingConsortium([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/samsung/android/server/wifi/util/RoamingConsortium;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/util/RoamingConsortium;->getRoamingConsortiums()[J

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    array-length v6, v4

    .line 38
    move v7, v5

    .line 39
    move v8, v7

    .line 40
    :goto_1
    if-ge v7, v6, :cond_3

    .line 41
    .line 42
    aget-wide v9, v4, v7

    .line 43
    .line 44
    move v11, v5

    .line 45
    :goto_2
    if-ge v11, v1, :cond_2

    .line 46
    .line 47
    aget-wide v12, v2, v11

    .line 48
    .line 49
    cmp-long v12, v9, v12

    .line 50
    .line 51
    if-nez v12, :cond_1

    .line 52
    .line 53
    move v8, v0

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    add-int/2addr v11, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_3
    add-int/2addr v7, v0

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move v5, v8

    .line 60
    :cond_4
    if-eqz v5, :cond_0

    .line 61
    .line 62
    iget-object v4, p0, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->mScannedOpenroamingAp:Ljava/util/Set;

    .line 63
    .line 64
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v5, "updateScannedOpenRoamingAp, scanResult.BSSID: "

    .line 75
    .line 76
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const-string v4, "OpenRoamingLogger"

    .line 89
    .line 90
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    return-void

    .line 95
    :array_0
    .array-data 8
        0x502a
        0x4096
        0x5a03ba0000L
    .end array-data
.end method
