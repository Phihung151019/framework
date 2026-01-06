.class public Lcom/samsung/android/server/wifi/SemL4sController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemL4sController$NetworkCallbacks;
    }
.end annotation


# static fields
.field private static final EVENT_PRIMARY_IFACE_CHANGED:I = 0x1

.field private static final EVENT_SET_L4S_POLICY:I = 0x2

.field private static final EVENT_WIFI_CONNECTED:I = 0x3

.field private static final EVENT_WIFI_DISCONNECTED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SemL4sController"

.field private static final VER:Ljava/lang/String; = "1.0.0"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mL4sConnCountDuring24H:I

.field private mL4sEnabled:Z

.field private mL4sEnabledDuring24H:Z

.field private final mL4sHandler:Landroid/os/Handler;

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mPolicyEnabled:Z

.field private mPrimaryIfaceName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$5ARKpAX1oi5G7fw-QX6SNBytfXc(Lcom/samsung/android/server/wifi/SemL4sController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemL4sController;->lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemL4sController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmL4sEnabled(Lcom/samsung/android/server/wifi/SemL4sController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmL4sHandler(Lcom/samsung/android/server/wifi/SemL4sController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicyEnabled(Lcom/samsung/android/server/wifi/SemL4sController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPolicyEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemL4sController;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmL4sEnabled(Lcom/samsung/android/server/wifi/SemL4sController;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmL4sEnabledDuring24H(Lcom/samsung/android/server/wifi/SemL4sController;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sEnabledDuring24H:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPolicyEnabled(Lcom/samsung/android/server/wifi/SemL4sController;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPolicyEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemL4sController;Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemL4sController;->getIfaceName(Landroid/net/Network;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemL4sController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemL4sController;->interfaceChanged(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$smlogd(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->logd(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$smlogi(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->logi(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPolicyEnabled:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sEnabled:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sEnabledDuring24H:Z

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sConnCountDuring24H:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemL4sController;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sHandler:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->registerNetworkCallbacks()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/SemL4sController;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 29
    .line 30
    .line 31
    const-string p0, "SemL4sController Initialized: ver=1.0.0"

    .line 32
    .line 33
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->logi(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private getIfaceName(Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, ""

    .line 17
    .line 18
    return-object p0
.end method

.method private getNMS()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mNetd:Landroid/os/INetworkManagementService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "network_management"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "getNMS: IBinder returned is null"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->loge(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mNetd:Landroid/os/INetworkManagementService;

    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mNetd:Landroid/os/INetworkManagementService;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_2
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method private interfaceChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "Primary interface changed to "

    .line 12
    .line 13
    const-string v1, " from "

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemL4sController;->logd(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPolicyEnabled:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->startL4s()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sEnabled:Z

    .line 40
    .line 41
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v0, "interfaceChanged: mL4sEnabled = "

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sEnabled:Z

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->logd(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private synthetic lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SemL4sController"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SemL4sController"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SemL4sController"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemL4sController$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemL4sController$2;-><init>(Lcom/samsung/android/server/wifi/SemL4sController;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private registerNetworkCallbacks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "connectivity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/SemL4sController$NetworkCallbacks;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemL4sController$NetworkCallbacks;-><init>(Lcom/samsung/android/server/wifi/SemL4sController;I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private declared-synchronized updateBigDataStats()V
    .locals 5

    .line 1
    const-string v0, "Number of L4S connections in session: "

    .line 2
    .line 3
    const-string v1, "getL4sConnCount: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sEnabledDuring24H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mNetd:Landroid/os/INetworkManagementService;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-interface {v3}, Landroid/os/INetworkManagementService;->getL4sConnCount()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_3

    .line 22
    :catch_0
    move-exception v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v3, "getL4sConnCount: mNetd is null"

    .line 25
    .line 26
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemL4sController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemL4sController;->loge(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->logd(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sConnCountDuring24H:I

    .line 61
    .line 62
    add-int/2addr v0, v2

    .line 63
    iput v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sConnCountDuring24H:I

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPolicyEnabled:Z

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sEnabledDuring24H:Z

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sConnCountDuring24H:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    :goto_2
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    throw v0
.end method


# virtual methods
.method public getL4sConnectionCount()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->updateBigDataStats()V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sConnCountDuring24H:I

    .line 5
    .line 6
    return p0
.end method

.method registerContentObserver(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "sem_wifi_l4s_enabled"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v3, :cond_0

    .line 12
    .line 13
    const-string v4, "L4S toggle in Wi-Fi labs is: "

    .line 14
    .line 15
    invoke-static {v0, v4}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->logi(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sHandler:Landroid/os/Handler;

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-virtual {v0, v4, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v3, Lcom/samsung/android/server/wifi/SemL4sController$1;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v3, p0, v4, p1}, Lcom/samsung/android/server/wifi/SemL4sController$1;-><init>(Lcom/samsung/android/server/wifi/SemL4sController;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 1

    .line 1
    const-string v0, "SemClientModeManager registered"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->logd(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemL4sController;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public resetL4sConnectionCount()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mL4sConnCountDuring24H:I

    .line 3
    .line 4
    return-void
.end method

.method startL4s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->getNMS()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mNetd:Landroid/os/INetworkManagementService;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v2, p0}, Landroid/os/INetworkManagementService;->startL4s(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string v2, "startL4s: "

    .line 31
    .line 32
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->loge(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    move p0, v0

    .line 40
    :goto_0
    const-string v2, "startL4s: returned with ret = "

    .line 41
    .line 42
    invoke-static {p0, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemL4sController;->logd(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    move v1, v0

    .line 52
    :cond_2
    return v1

    .line 53
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "startL4s: Ignored since iface="

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, " mNetd="

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mNetd:Landroid/os/INetworkManagementService;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->logi(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v1
.end method

.method stopL4s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->getNMS()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->updateBigDataStats()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mNetd:Landroid/os/INetworkManagementService;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v2, p0}, Landroid/os/INetworkManagementService;->stopL4s(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string v2, "stopL4s: "

    .line 34
    .line 35
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->loge(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    move p0, v0

    .line 43
    :goto_0
    const-string v2, "stopL4s: returned with ret = "

    .line 44
    .line 45
    invoke-static {p0, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemL4sController;->logd(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    if-nez p0, :cond_2

    .line 53
    .line 54
    move v1, v0

    .line 55
    :cond_2
    return v1

    .line 56
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v2, "stopL4s: Ignored since iface="

    .line 59
    .line 60
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, " mNetd="

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController;->mNetd:Landroid/os/INetworkManagementService;

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->logi(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v1
.end method
