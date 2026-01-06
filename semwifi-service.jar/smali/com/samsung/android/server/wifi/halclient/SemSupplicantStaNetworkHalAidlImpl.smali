.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSupplicantStaNetworkHal"


# instance fields
.field private final mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;

.field private final mLock:Ljava/lang/Object;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;

    .line 12
    .line 13
    return-void
.end method

.method private checkISehSupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "ISehSupplicantStaNetwork."

    .line 2
    .line 3
    const-string v1, "Can\'t call "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    const-string p0, "SemSupplicantStaNetworkHal"

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ", ISehSupplicantStaNetwork is null"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    monitor-exit v2

    .line 36
    return p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mVerboseLoggingEnabled:Z

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    const-string p0, "SemSupplicantStaNetworkHal"

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " succeeded"

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_1
    const/4 p0, 0x1

    .line 66
    monitor-exit v2

    .line 67
    return p0

    .line 68
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "ISehSupplicantStaNetwork."

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v1, "SemSupplicantStaNetworkHal"

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, " failed with exception"

    .line 17
    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method


# virtual methods
.method enableVerboseLogging(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mVerboseLoggingEnabled:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public getCurrentBss()Lcom/samsung/android/server/wifi/halclient/BssInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getCurrentBss"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->checkISehSupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object v2

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/BssInfo;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->mISehSupplicantStaNetwork:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;

    .line 20
    .line 21
    invoke-interface {v3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;->getBss()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/halclient/BssInfo;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_2
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :catch_0
    move-exception v1

    .line 31
    const-string v3, "getCurrentBss"

    .line 32
    .line 33
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-object v2

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method
