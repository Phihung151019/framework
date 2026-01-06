.class public Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/aware/ISemWifiNanIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiNanIfaceAidlImpl"


# instance fields
.field private mFrameworkCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

.field private final mHalCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;

.field private mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;


# direct methods
.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;)V
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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;

    .line 12
    .line 13
    new-instance p1, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mHalCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;

    .line 19
    .line 20
    return-void
.end method

.method private checkIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Unable to call "

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " because iface is null."

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "SemWifiNanIfaceAidlImpl"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method private handleIllegalArgumentException(Ljava/lang/IllegalArgumentException;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " failed with illegal argument exception: "

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "SemWifiNanIfaceAidlImpl"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, " failed with remote exception: "

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "SemWifiNanIfaceAidlImpl"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " failed with service-specific exception: "

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "SemWifiNanIfaceAidlImpl"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method protected getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getName"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

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

    .line 14
    return-object v2

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return-object v1

    .line 23
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mIfaceName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    :try_start_2
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :catch_0
    move-exception v1

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :goto_0
    const-string v3, "getName"

    .line 38
    .line 39
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    const-string v3, "getName"

    .line 44
    .line 45
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    monitor-exit v0

    .line 49
    return-object v2

    .line 50
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p0
.end method

.method public registerFrameworkCallback(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "registerFrameworkCallback"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

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

    .line 14
    return v2

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string p0, "SemWifiNanIfaceAidlImpl"

    .line 22
    .line 23
    const-string p1, "Framework callback is already registered"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return v2

    .line 30
    :cond_1
    if-nez p1, :cond_2

    .line 31
    .line 32
    const-string p0, "SemWifiNanIfaceAidlImpl"

    .line 33
    .line 34
    const-string p1, "Cannot register a null framework callback"

    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    return v2

    .line 41
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mWifiNanIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mHalCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;

    .line 44
    .line 45
    invoke-interface {v1, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->mFrameworkCallback:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    :try_start_2
    monitor-exit v0

    .line 52
    return p0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :goto_0
    const-string v1, "registerFrameworkCallback"

    .line 58
    .line 59
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_1
    const-string v1, "registerFrameworkCallback"

    .line 64
    .line 65
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_2
    monitor-exit v0

    .line 69
    return v2

    .line 70
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method
