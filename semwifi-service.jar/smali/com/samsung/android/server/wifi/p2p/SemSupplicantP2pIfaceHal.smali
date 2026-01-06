.class public Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSupplicantP2pIfaceHal"

.field private static sVerboseLoggingEnabled:Z = true


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

.field private mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->createP2pIfaceHalMockable()Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p0, "SemSupplicantP2pIfaceHal"

    .line 22
    .line 23
    const-string p1, "Failed to get internal ISemSupplicantP2pIfaceHal instance."

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static enableVerboseLogging(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->sVerboseLoggingEnabled:Z

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->enableVerboseLogging(Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->enableVerboseLogging(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private handleNullHal(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Cannot call "

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, " because HAL object is null."

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "SemSupplicantP2pIfaceHal"

    .line 21
    .line 22
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method


# virtual methods
.method protected createP2pIfaceHalMockable()Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->serviceDeclared()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "SemSupplicantP2pIfaceHal"

    .line 11
    .line 12
    const-string v2, "Initializing SemSupplicantP2pIfaceHal using AIDL implementation."

    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->serviceDeclared()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-string v1, "SemSupplicantP2pIfaceHal"

    .line 35
    .line 36
    const-string v2, "Initializing SemSupplicantP2pIfaceHal using HIDL implementation."

    .line 37
    .line 38
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-object v1

    .line 50
    :cond_1
    const-string p0, "SemSupplicantP2pIfaceHal"

    .line 51
    .line 52
    const-string v1, "No HIDL or AIDL service available for SemSupplicantP2pIfaceHal."

    .line 53
    .line 54
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    monitor-exit v0

    .line 59
    return-object p0

    .line 60
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public find(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "find"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->find(II)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public flush()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "flush"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->flush()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public initialize()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->sVerboseLoggingEnabled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "SemSupplicantP2pIfaceHal"

    .line 9
    .line 10
    const-string v2, "Initializing SemSupplicantP2pIfaceHal."

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    const-string p0, "SemSupplicantP2pIfaceHal"

    .line 24
    .line 25
    const-string v2, "Internal ISemSupplicantP2pIfaceHal instance does not exist."

    .line 26
    .line 27
    invoke-static {p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return v1

    .line 32
    :cond_1
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->initialize()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    const-string p0, "SemSupplicantP2pIfaceHal"

    .line 39
    .line 40
    const-string v2, "Failed to init ISemSupplicantP2pIfaceHal, stopping startup."

    .line 41
    .line 42
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return v1

    .line 47
    :cond_2
    const/4 p0, 0x1

    .line 48
    monitor-exit v0

    .line 49
    return p0

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public isInitializationComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "isInitializationComplete"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->isInitializationComplete()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public isInitializationStarted()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "isInitializationStarted"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->isInitializationStarted()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public p2pRemoveClient(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "p2pRemoveClient"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->p2pRemoveClient(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "p2pSet"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setP2pIncBw(Ljava/lang/String;ZI)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setP2pIncBw"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->setP2pIncBw(Ljava/lang/String;ZI)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setP2pNoa(Ljava/lang/String;ZI)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setP2pNoa"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->setP2pNoa(Ljava/lang/String;ZI)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public setupIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setupIface"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->setupIface(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public startP2pListenOffloading(IIII)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "startP2pListenOffloading"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->startP2pListenOffloading(IIII)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public stopP2pListenOffloading()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "stopP2pListenOffloading"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->stopP2pListenOffloading()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "teardownIface"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->mP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->handleNullHal(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;->teardownIface(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method
