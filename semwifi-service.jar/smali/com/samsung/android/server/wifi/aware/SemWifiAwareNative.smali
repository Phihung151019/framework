.class public Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiAwareNative"


# instance fields
.field private final mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

.field private mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;

.field private final mLock:Ljava/lang/Object;

.field private mWifiAwareNativeCallback:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;

.field private mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

.field private final mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWifiNanIface(Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmWifiNanIface(Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 17
    .line 18
    return-void
.end method

.method private createNanIface(Landroid/os/Handler;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->createNanIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "SemWifiAwareNative"

    .line 19
    .line 20
    const-string p1, "Vendor Hal is not supported, ignoring createNanIface."

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method


# virtual methods
.method public isAwareP2pConcurrencySupported()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->checkInterfaceConcurrency([Ljava/lang/Integer;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public isAwareSoftApConcurrencySupported()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->checkInterfaceConcurrency([Ljava/lang/Integer;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public isHalInterfaceSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public releaseAware()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 3
    .line 4
    return-void
.end method

.method public setWifiAwareNativeCallback(Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiAwareNativeCallback:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setupNanInterface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Setup NAN interface"

    .line 2
    .line 3
    const-string v1, "SemWifiAwareNative"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;

    .line 18
    .line 19
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->createNanIface(Landroid/os/Handler;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const-string p0, "Failed to create Nan iface"

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const-string p1, "NAN interface setup completed"

    .line 33
    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    const-string p1, "NAN interface is already existed"

    .line 39
    .line 40
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public teardownInterface(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Teardown NAN interface"

    .line 2
    .line 3
    const-string v0, "SemWifiAwareNative"

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const-string p0, "NAN interface teardown completed"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    const-string p0, "HAL (HIDL) is not supported. Destroy listener for the interface."

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public tryToGetAware(Landroid/os/Handler;)V
    .locals 6

    .line 1
    const-string v0, "tryToGetAware: mWifiNanIface="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "SemWifiAwareNative"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 14
    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string p0, "SemWifiAwareNative"

    .line 38
    .line 39
    const-string p1, "tryToGetAware: mHalDeviceManager is null!?"

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 46
    :cond_1
    new-instance v0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 54
    .line 55
    new-instance v3, Landroid/os/WorkSource;

    .line 56
    .line 57
    const-string v4, "com.samsung.android.server.wifi.aware"

    .line 58
    .line 59
    const/16 v5, 0x3e8

    .line 60
    .line 61
    invoke-direct {v3, v5, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-virtual {v2, v4, v0, p1, v3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createNanIface(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    const-string p0, "SemWifiAwareNative"

    .line 72
    .line 73
    const-string p1, "Was not able to obtain a WifiNanIface (even though enabled!?)"

    .line 74
    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v0, "SemWifiAwareNative"

    .line 80
    .line 81
    const-string v2, "Obtained a WifiNanIface"

    .line 82
    .line 83
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiAwareNativeCallback:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;->registerFrameworkCallback(Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    const-string v0, "SemWifiAwareNative"

    .line 95
    .line 96
    const-string v2, "Unable to register callback with WifiNanIface"

    .line 97
    .line 98
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->mWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 102
    .line 103
    :goto_0
    monitor-exit v1

    .line 104
    return-void

    .line 105
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
.end method
