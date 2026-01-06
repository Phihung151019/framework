.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;
    }
.end annotation


# static fields
.field private static final CONNECT_TO_SUPPLICANT_MAX_SAMPLES:I = 0x32

.field private static final CONNECT_TO_SUPPLICANT_SAMPLING_INTERVAL_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pNative"


# instance fields
.field private final mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

.field private mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

.field private final mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

.field private mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

.field private final mWifiP2pMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

.field private final mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSupplicantP2pIfaceHal(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;)Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiP2pMonitor(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mWifiP2pMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmWifiP2pIface(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mWifiP2pMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 11
    .line 12
    return-void
.end method

.method private createP2pIface(Landroid/os/Handler;Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "SemWifiP2pNative"

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

    .line 15
    .line 16
    invoke-virtual {v0, v3, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createP2pIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p0, "Failed to create P2p iface in HalDeviceManager"

    .line 25
    .line 26
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getName(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    const-string p0, "Failed to get p2p iface name"

    .line 43
    .line 44
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mWifiP2pMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->startMonitoring(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    const-string p0, "Vendor Hal is not supported, ignoring createP2pIface."

    .line 55
    .line 56
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-object v1
.end method

.method private waitForSupplicantConnection()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->isInitializationStarted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->initialize()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 21
    .line 22
    const/16 v3, 0x32

    .line 23
    .line 24
    if-ge v0, v3, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->isInitializationComplete()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_1
    const-wide/16 v3, 0x64

    .line 37
    .line 38
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    move v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return v1
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->enableVerboseLogging(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isHalInterfaceSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

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

.method public isP2pSoftApConcurrencySupported()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

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
    const/4 v1, 0x3

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

.method public p2pFind(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->find(II)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public p2pFlush()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->flush()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public p2pRemoveClient(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->p2pRemoveClient(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setP2pIncBw(Ljava/lang/String;ZI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->setP2pIncBw(Ljava/lang/String;ZI)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setP2pNoa(Ljava/lang/String;ZI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->setP2pNoa(Ljava/lang/String;ZI)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setupP2pInterface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Setup P2P interface"

    .line 2
    .line 3
    const-string v1, "SemWifiP2pNative"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

    .line 18
    .line 19
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->createP2pIface(Landroid/os/Handler;Landroid/os/WorkSource;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string p0, "Failed to create P2p iface"

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-object p2

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->waitForSupplicantConnection()Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-nez p3, :cond_1

    .line 37
    .line 38
    const-string p3, "Failed to connect to supplicant"

    .line 39
    .line 40
    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->teardownInterface(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p2

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->setupIface(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_2

    .line 54
    .line 55
    const-string p0, "Failed to setup P2p iface in supplicant"

    .line 56
    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-object p2

    .line 61
    :cond_2
    const-string p0, "P2P interface setup completed"

    .line 62
    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_3
    const-string p1, "P2P interface is already existed"

    .line 68
    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public startP2pListenOffloading(IIII)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->startP2pListenOffloading(IIII)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopP2pListenOffloading()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->stopP2pListenOffloading()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public teardownInterface(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Teardown P2P interface"

    .line 2
    .line 3
    const-string v1, "SemWifiP2pNative"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mWifiP2pIface:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->teardownAndInvalidate(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p0, "P2P interface teardown completed"

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    const-string v0, "HAL (HIDL) is not supported. Destroy listener for the interface."

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->teardownAndInvalidate(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
