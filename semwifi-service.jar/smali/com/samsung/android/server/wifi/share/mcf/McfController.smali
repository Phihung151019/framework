.class public Lcom/samsung/android/server/wifi/share/mcf/McfController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.MCF"


# instance fields
.field private final mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

.field private mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

.field private final mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

.field private final mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCasterManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mListener:Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriberManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-direct {v0, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/McfController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 9
    iput-object p4, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    return-void
.end method

.method private isValidPasswordData(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;)Z"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method private isValidQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getByteArrayForSharing()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x3

    .line 8
    aget-byte p0, p0, p1

    .line 9
    .line 10
    if-eqz p0, :cond_0

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

.method private stopScanForPasswordIfRunning()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isEnabledSharingPassword()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopScanForPassword()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private stopScanForQosIfRunning()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isEnabledQoSSharing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopScanForQoS()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private updatePasswordData(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isEnabledSharingPassword()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->updatePasswordDate(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method


# virtual methods
.method public bindMcfService(Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mListener:Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isServiceBound()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    .line 14
    .line 15
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/McfAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_1
    const-string p0, "WifiProfileShare.MCF"

    .line 27
    .line 28
    const-string p1, "failed to bind mcf service"

    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public checkAndUpdatePasswordData(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;",
            "Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isBleActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "WifiProfileShare.MCF"

    .line 10
    .line 11
    const-string p1, "failed to update password data, not opened"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isValidPasswordData(Ljava/util/List;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->stopScanForPasswordIfRunning()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->updatePasswordData(Ljava/util/List;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->startScanForPassword(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public checkAndUpdateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isBleActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "WifiProfileShare.MCF"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Fail update QosData, inactive state"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isValidQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string p1, "stop sharing QosData, invalid data"

    .line 24
    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->stopScanForQosIfRunning()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isEnabledQoSSharing()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getByteArrayForSharing()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->updateQoSData([B)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->startScanForQoS(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    :goto_0
    if-eqz p0, :cond_3

    .line 58
    .line 59
    const-string p0, "success update QosData !"

    .line 60
    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method public clearUserRequestPasswordHistory()V
    .locals 2

    .line 1
    const-string v0, "WifiProfileShare.MCF"

    .line 2
    .line 3
    const-string v1, "clearUserConfirmHistory "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->clearUserRequestPasswordHistory()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public isLowLatencyForCasterPasswordShare()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isLowLatencyForPasswordShare()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isLowLatencyForSubscriberPasswordScan()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isLowLatencyForPasswordScan()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isLowLatencyForSubscriberQoSScan()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isLowLatencyForQoSScan()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isServiceBound()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public setScanMode(ZZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setScanModeToLowLatency isLowLatencyForCasterPassword : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", subsQosLatency : "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", subsPassLatency : "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "WifiProfileShare.MCF"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->setScanMode(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 42
    .line 43
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->setScanMode(ZZ)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setUserConfirm(ZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendPasswordData(ZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startCaster(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;",
            "Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isBleActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "WifiProfileShare.MCF"

    .line 10
    .line 11
    const-string p1, "failed to start caster, not opened"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isValidQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->startScanForQoS(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isValidPasswordData(Ljava/util/List;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 36
    .line 37
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->startScanForPassword(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method public startSubscriberForPassword()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isBleActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->postStartScanForPassword(Z)V

    return-void

    .line 6
    :cond_0
    const-string p0, "WifiProfileShare.MCF"

    const-string v0, "failed to start subscriber for password"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSubscriberForPassword(Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isBleActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->preStartScanForPassword(Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    const-string p0, "WifiProfileShare.MCF"

    const-string p1, "startSubscriberForPassword failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public startSubscriberForQoS(Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isBleActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "WifiProfileShare.MCF"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "startSubscriberForQoS"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startScanForQoS(Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const-string p0, "startSubscriberForQoS failed"

    .line 24
    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public stopAllCasterMode()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopAll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stopPostAdvertise()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isBleActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopPostAdvertise()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "WifiProfileShare.MCF"

    .line 16
    .line 17
    const-string v0, "skip to stop post advertise packet, not opened"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public stopSubscriberModeForPassword()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isBleActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAll()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "WifiProfileShare.MCF"

    .line 16
    .line 17
    const-string v0, "skip to stop subscriber for password, not opened"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public stopSubscriberModeForQoS()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unbindMcfService()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isServiceBound()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfAdapter;->unbindService()Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 14
    .line 15
    :cond_0
    return-void
.end method
