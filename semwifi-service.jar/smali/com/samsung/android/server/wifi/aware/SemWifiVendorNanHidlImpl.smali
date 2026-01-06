.class public Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl$WifiVendorNanDeathRecipient;
    }
.end annotation


# static fields
.field public static final HAL_INSTANCE_NAME:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "SemWifiVendorNanHidlImpl"


# instance fields
.field private final CMD_ID_MAX:I

.field private mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

.field private final mIWifiVendorNanEventCallback:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNanEventCallback;

.field private final mLock:Ljava/lang/Object;

.field private mServiceDeclared:Z

.field private mWifiVendorNanDeathRecipient:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl$WifiVendorNanDeathRecipient;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mwifiVendorNanServiceDiedHandler(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->wifiVendorNanServiceDiedHandler()V

    .line 2
    .line 3
    .line 4
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
    iput v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->CMD_ID_MAX:I

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mServiceDeclared:Z

    .line 17
    .line 18
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanEventCallbackHidlImpl;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanEventCallbackHidlImpl;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mIWifiVendorNanEventCallback:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNanEventCallback;

    .line 24
    .line 25
    new-instance p1, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl$WifiVendorNanDeathRecipient;

    .line 26
    .line 27
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl$WifiVendorNanDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mWifiVendorNanDeathRecipient:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl$WifiVendorNanDeathRecipient;

    .line 31
    .line 32
    const-string p0, "SemWifiVendorNanHidlImpl"

    .line 33
    .line 34
    const-string p1, "SemWifiVendorNanHidlImpl() invoked"

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

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
    const-string p1, "SemWifiVendorNanHidlImpl"

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

.method private getWifiVendorNanInstance()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "SemWifiVendorNanHidlImpl"

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
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->getWifiVendorNanMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mWifiVendorNanDeathRecipient:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl$WifiVendorNanDeathRecipient;

    .line 37
    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    invoke-interface {v0, v4, v5, v6}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const-string v0, "Error on linkToDeath on IWifiVendorNan - will retry later"

    .line 47
    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return v3

    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return v1

    .line 55
    :goto_0
    const-string v1, "getWifiVendorNanInstance"

    .line 56
    .line 57
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v3
.end method

.method private getWifiVendorNanMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;
    .locals 2

    .line 1
    const/4 p0, 0x1

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;->getService(Z)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object p0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "Unable to get IWifiVendorNan service: "

    .line 9
    .line 10
    const-string v1, "SemWifiVendorNanHidlImpl"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
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
    const-string p2, "SemWifiVendorNanHidlImpl"

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
    const-string p2, "SemWifiVendorNanHidlImpl"

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
    const-string p2, "SemWifiVendorNanHidlImpl"

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "SemWifiVendorNanHidlImpl"

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
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->checkWifiVendorNanAndLogFailure(Ljava/lang/String;)Z

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mIWifiVendorNanEventCallback:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNanEventCallback;

    .line 27
    .line 28
    invoke-interface {v1, v3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;->registerVendorNanEventCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNanEventCallback;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/VendorNanStatus;
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
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

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
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getService()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "vendor.samsung.hardware.wifi.nan@1.0::IWifiVendorNan"

    .line 7
    .line 8
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;)B

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_0
    return v0

    .line 16
    :catch_0
    const-string v1, "SemWifiVendorNanHidlImpl"

    .line 17
    .line 18
    const-string v2, "Unable to check for existence of HIDL service."

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method private wifiVendorNanServiceDiedHandler()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mServiceDeclared:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public initialize()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string p0, "SemWifiVendorNanHidlImpl"

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
    const-string v1, "SemWifiVendorNanHidlImpl"

    .line 21
    .line 22
    const-string v2, "Checking for IWifiVendorNan service."

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->getWifiVendorNanInstance()Z

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->serviceDeclared()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mServiceDeclared:Z

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->registerEventCallback()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v1, "SemWifiVendorNanHidlImpl"

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
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mServiceDeclared:Z

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
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mServiceDeclared:Z

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
    const-string v2, "SemWifiVendorNanHidlImpl"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->mIWifiVendorNan:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;

    .line 11
    .line 12
    int-to-short p1, p1

    .line 13
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {v1, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/IWifiVendorNan;->setNanCommand(SLjava/util/ArrayList;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/nan/V1_0/VendorNanStatus;

    .line 18
    .line 19
    .line 20
    const-string p1, "set Nan command invoked through hidl client"

    .line 21
    .line 22
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :catch_2
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :catch_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p2, "NPE occurred! isInitializationStarted : "

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->isInitializationStarted()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->handleServiceDeadObjectException(Landroid/os/DeadObjectException;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_3
    return-void
.end method
