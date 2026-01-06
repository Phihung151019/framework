.class public Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;
    }
.end annotation


# static fields
.field private static final HAL_INSTANCE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SemWifiVendorNanAidlImpl"


# instance fields
.field private final CMD_ID_MAX:I

.field private mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

.field private final mIWifiVendorNanEventCallback:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNanEventCallback;

.field private final mLock:Ljava/lang/Object;

.field private mServiceDeclared:Z

.field private mWifiVendorNanDeathRecipient:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mwifiVendorNanServiceDiedHandler(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->wifiVendorNanServiceDiedHandler()V

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
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;->DESCRIPTOR:Ljava/lang/String;

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
    sput-object v0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->CMD_ID_MAX:I

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mServiceDeclared:Z

    .line 17
    .line 18
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanEventCallbackAidlImpl;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanEventCallbackAidlImpl;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mIWifiVendorNanEventCallback:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNanEventCallback;

    .line 24
    .line 25
    new-instance p1, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;

    .line 26
    .line 27
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mWifiVendorNanDeathRecipient:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;

    .line 31
    .line 32
    const-string p0, "SemWifiVendorNanAidlImpl"

    .line 33
    .line 34
    const-string p1, "SemWifiVendorNanAidlImpl() invoked"

    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private checkWifiVendorNanAndLogFailure(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Can\'t call "

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
    const-string p1, ", IWifiVendorNan is null"

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
    const-string p1, "SemWifiVendorNanAidlImpl"

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

.method private getServiceBinderMockable()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private getWifiVendorNanInstance()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "SemWifiVendorNanAidlImpl"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p0, "Service is already initialized, skipping getWifiVendorNanInstance"

    .line 9
    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->getWifiVendorNanMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string p0, "Unable to obtain IWifiVendorNan binder."

    .line 24
    .line 25
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v3

    .line 29
    :cond_1
    const-string v0, "Obtained IWifiVendorNan binder."

    .line 30
    .line 31
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    return v3

    .line 41
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mWifiVendorNanDeathRecipient:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl$WifiVendorNanDeathRecipient;

    .line 42
    .line 43
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "getWifiVendorNanInstance"

    .line 49
    .line 50
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v3
.end method

.method private getWifiVendorNanMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;
    .locals 2

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Unable to get IWifiVendorNan service, "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "SemWifiVendorNanAidlImpl"

    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "IWifiVendorNan"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p2, " failed with exception"

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p2, "SemWifiVendorNanAidlImpl"

    .line 21
    .line 22
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private handleServiceDeadObjectException(Landroid/os/DeadObjectException;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "IWifiVendorNan"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p2, " failed with exception"

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p2, "SemWifiVendorNanAidlImpl"

    .line 21
    .line 22
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "IWifiVendorNan"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p2, " failed with exception"

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p2, "SemWifiVendorNanAidlImpl"

    .line 21
    .line 22
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private registerEventCallback()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "SemWifiVendorNanAidlImpl"

    .line 5
    .line 6
    const-string v2, "registerEventCallback called"

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const-string v1, "registerVendorNanEventCallback"

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->checkWifiVendorNanAndLogFailure(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return v2

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mIWifiVendorNanEventCallback:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNanEventCallback;

    .line 27
    .line 28
    invoke-interface {v1, v3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;->registerVendorNanEventCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNanEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    :try_start_2
    monitor-exit v0

    .line 33
    return p0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    const-string v3, "registerVendorNanEventCallback"

    .line 36
    .line 37
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return v2

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method

.method public static serviceDeclared()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private wifiVendorNanServiceDiedHandler()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mServiceDeclared:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public initialize()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string p0, "SemWifiVendorNanAidlImpl"

    .line 9
    .line 10
    const-string v1, "Service is already initialized, skipping initialize method"

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    monitor-exit v0

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, "SemWifiVendorNanAidlImpl"

    .line 21
    .line 22
    const-string v2, "Checking for IWifiVendorNan service."

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->getWifiVendorNanInstance()Z

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->serviceDeclared()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mServiceDeclared:Z

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->registerEventCallback()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v1, "SemWifiVendorNanAidlImpl"

    .line 43
    .line 44
    const-string v2, "registerEventCallback failed!!"

    .line 45
    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mServiceDeclared:Z

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return p0

    .line 53
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public isInitializationStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mServiceDeclared:Z

    .line 2
    .line 3
    return p0
.end method

.method public setNanCommand(I[B)V
    .locals 3

    .line 1
    const-string v0, "setNanCommand"

    .line 2
    .line 3
    const-string v1, "set Nan command Called"

    .line 4
    .line 5
    const-string v2, "SemWifiVendorNanAidlImpl"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;

    .line 11
    .line 12
    int-to-char p1, p1

    .line 13
    invoke-interface {v1, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/IWifiVendorNan;->setNanCommand(C[B)V

    .line 14
    .line 15
    .line 16
    const-string p1, "set Nan command invoked through aidl client"

    .line 17
    .line 18
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :catch_2
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :catch_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p2, "NPE occurred! isInitializationStarted : "

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->isInitializationStarted()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->handleServiceDeadObjectException(Landroid/os/DeadObjectException;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_3
    return-void
.end method
