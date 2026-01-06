.class public Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;


# static fields
.field private static final HAL_INSTANCE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SemSupplicantP2pIfaceHalAidlImpl"

.field private static sVerboseLoggingEnabled:Z


# instance fields
.field private mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

.field private mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

.field private mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

.field private mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

.field private mInitializationStarted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

.field private final mSupplicantDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public static synthetic $r8$lambda$X4J3-8_XqRHY39vlHG7gFUX16tI(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->lambda$new$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "/default"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->sVerboseLoggingEnabled:Z

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mInitializationStarted:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 22
    .line 23
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mSupplicantDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 31
    .line 32
    return-void
.end method

.method private checkSehSupplicantAndLogFailure(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Can\'t call "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", ISehSupplicantExt is null"

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    monitor-exit v1

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x1

    .line 38
    monitor-exit v1

    .line 39
    return p0

    .line 40
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method private checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Can\'t call "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", ISupplicantP2pIface is null"

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    monitor-exit v1

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x1

    .line 38
    monitor-exit v1

    .line 39
    return p0

    .line 40
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method private checkSupplicantAndLogFailure(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Can\'t call "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", ISupplicant is null"

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    monitor-exit v1

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x1

    .line 38
    monitor-exit v1

    .line 39
    return p0

    .line 40
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method private checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Can\'t call "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", ISupplicantP2pIface is null"

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    monitor-exit v1

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x1

    .line 38
    monitor-exit v1

    .line 39
    return p0

    .line 40
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public static enableVerboseLogging(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->sVerboseLoggingEnabled:Z

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->enableVerboseLogging(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private getIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getIface"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->getP2pInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    monitor-exit v0

    .line 37
    return-object v3

    .line 38
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method private getSehIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getSehIface"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_4

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;->getP2pInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :catch_2
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :goto_0
    const-string p1, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 32
    .line 33
    const-string v1, "Encountered exception at getSehIface: "

    .line 34
    .line 35
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    goto :goto_3

    .line 39
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_3
    monitor-exit v0

    .line 47
    return-object v3

    .line 48
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "ISupplicantP2pIface."

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->supplicantServiceDiedHandler()V

    .line 7
    .line 8
    .line 9
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, " failed with remote exception: "

    .line 20
    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    monitor-exit v1

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method private handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "ISehSupplicantP2pIface."

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 7
    .line 8
    .line 9
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, " failed with remote exception: "

    .line 20
    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    monitor-exit v1

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method private handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "ISehSupplicantStaIface."

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

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
    const-string p2, " failed with service specific exception: "

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

.method private handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "ISupplicantP2pIface."

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

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
    const-string p2, " failed with service specific exception: "

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

.method private synthetic lambda$new$0()V
    .locals 2

    .line 1
    const-string v0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 2
    .line 3
    const-string v1, "ISupplicant/ISupplicantP2pIface died"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->supplicantServiceDiedHandler()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method private sehSupplicantServiceDiedHandler()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public static serviceDeclared()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private setupP2pIface(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "Unable to register callback for iface "

    .line 2
    .line 3
    const-string v1, "Unable to add iface "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    monitor-exit v2

    .line 14
    return v4

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    monitor-exit v2

    .line 41
    return v4

    .line 42
    :cond_1
    iput-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 51
    .line 52
    invoke-direct {v1, p1, v3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    monitor-exit v2

    .line 79
    return v4

    .line 80
    :cond_2
    const/4 p0, 0x1

    .line 81
    monitor-exit v2

    .line 82
    return p0

    .line 83
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method private setupSehP2pIface(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "Unable to register seh callback for iface "

    .line 2
    .line 3
    const-string v1, "Unable to get seh iface "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    monitor-exit v2

    .line 14
    return v4

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getSehIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    monitor-exit v2

    .line 41
    return v4

    .line 42
    :cond_1
    iput-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 51
    .line 52
    invoke-direct {v1, p1, v3}, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->registerSehCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    monitor-exit v2

    .line 79
    return v4

    .line 80
    :cond_2
    const/4 p0, 0x1

    .line 81
    monitor-exit v2

    .line 82
    return p0

    .line 83
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method private supplicantServiceDiedHandler()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mInitializationStarted:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method


# virtual methods
.method public find(II)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public flush()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "flush"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->flush()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    monitor-exit v0

    .line 37
    return v3

    .line 38
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getName"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    monitor-exit v0

    .line 37
    return-object v3

    .line 38
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method protected getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;
    .locals 4

    .line 1
    const-string v0, "Unable to get ISehSupplicantExt service, "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-string v2, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 19
    .line 20
    const-string v3, "obtaining ISehSupplicantExt binder extension"

    .line 21
    .line 22
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_2
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 36
    .line 37
    const-string v2, "could not get extension of ISupplicant binder"

    .line 38
    .line 39
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 44
    .line 45
    const-string v2, "could not get ISupplicant binder"

    .line 46
    .line 47
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :goto_0
    :try_start_3
    const-string v2, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :goto_1
    monitor-exit v1

    .line 69
    const/4 p0, 0x0

    .line 70
    return-object p0

    .line 71
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    throw p0
.end method

.method protected getServiceBinderMockable()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    monitor-exit v0

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method protected getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;
    .locals 4

    .line 1
    const-string v0, "Unable to get ISupplicant service, "

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    const-string v2, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0

    .line 41
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v0
.end method

.method public initialize()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 10
    .line 11
    const-string v1, "Service is already initialized."

    .line 12
    .line 13
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return v2

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mInitializationStarted:Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string p0, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 35
    .line 36
    const-string v1, "Unable to obtain ISupplicant binder."

    .line 37
    .line 38
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return v3

    .line 43
    :cond_1
    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 44
    .line 45
    const-string v4, "Obtained ISupplicant binder."

    .line 46
    .line 47
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 59
    .line 60
    const-string v4, "Unable to obtain ISehSupplicantExt binder"

    .line 61
    .line 62
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_2
    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 66
    .line 67
    const-string v4, "Connected to supplicant aidl service with extension"

    .line 68
    .line 69
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    .line 73
    .line 74
    .line 75
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    return v3

    .line 80
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mSupplicantDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 81
    .line 82
    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    .line 84
    .line 85
    :try_start_4
    monitor-exit v0

    .line 86
    return v2

    .line 87
    :catch_0
    move-exception v1

    .line 88
    const-string v2, "initialize"

    .line 89
    .line 90
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    monitor-exit v0

    .line 94
    return v3

    .line 95
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    throw p0
.end method

.method public isInitializationComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public isInitializationStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mInitializationStarted:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

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

.method public p2pRemoveClient(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "p2pSet"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 18
    .line 19
    invoke-interface {v2, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    monitor-exit v0

    .line 37
    return v3

    .line 38
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "registerCallback"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    monitor-exit v0

    .line 37
    return v3

    .line 38
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public registerSehCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "registerSehCallback"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    monitor-exit v0

    .line 37
    return v3

    .line 38
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public setP2pIncBw(Ljava/lang/String;ZI)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setP2pIncBw"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 18
    .line 19
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->setNoaBandwidth(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    monitor-exit v0

    .line 37
    return v3

    .line 38
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public setP2pNoa(Ljava/lang/String;ZI)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "setP2pNoa"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 18
    .line 19
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->setNoa(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    monitor-exit v0

    .line 37
    return v3

    .line 38
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public setupIface(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->setupP2pIface(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SemSupplicantP2pIfaceHalAidlImpl"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Failed to setup P2p iface"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->setupSehP2pIface(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    const-string p0, "Failed to setup Seh P2p iface"

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public startP2pListenOffloading(IIII)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "startP2pListenOffloading"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 18
    .line 19
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->startListenOffloading(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    monitor-exit v0

    .line 37
    return v3

    .line 38
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public stopP2pListenOffloading()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "stopP2pListenOffloading"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v3

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->stopListenOffloading()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    monitor-exit v0

    .line 37
    return v3

    .line 38
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    const-string v0, "teardownIface"

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    monitor-exit p1

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "teardownIface"

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    monitor-exit p1

    .line 26
    return v1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalAidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    monitor-exit p1

    .line 34
    return p0

    .line 35
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
