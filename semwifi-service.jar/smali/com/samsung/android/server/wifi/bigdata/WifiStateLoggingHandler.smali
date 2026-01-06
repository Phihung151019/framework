.class public Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;,
        Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;,
        Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;,
        Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;
    }
.end annotation


# static fields
.field static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field static final BOOT_COMPLETE_STRING:Ljava/lang/String; = "boot.completed"

.field private static final CMD_WIFI_OFF:I = 0x2

.field private static final CMD_WIFI_ON:I = 0x1

.field private static final DAY:J = 0x5265c00L

.field static final DIMENSION_KEY_FIRST_CONNECT_TIME:Ljava/lang/String; = "first_connect_time"

.field static final DIMENSION_KEY_FORE_GROUND_PACKAGE_NAME:Ljava/lang/String; = "fg_pkg"

.field static final DIMENSION_KEY_IFACE_STATE_P2P_OR_AWARE:Ljava/lang/String; = "p2p_aware"

.field static final DIMENSION_KEY_IFACE_STATE_STA:Ljava/lang/String; = "sta"

.field static final DIMENSION_KEY_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field static final LOGGING_DELAY_MS:J = 0x7530L

.field private static final MAX_DURATION:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String; = "SemWifi.SA_ONOF"


# instance fields
.field private final adapter:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;

.field private final clock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final context:Landroid/content/Context;

.field private eventNumber:I

.field private final facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final ifaceHistory:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

.field private lastWifiOffTime:J

.field private lastWifiOnData:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;

.field private lastWifiOnTime:J

.field private lastWifiState:Ljava/lang/Boolean;

.field private final saLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field private final supportedAware:Z

.field private final supportedP2p:Z

.field private final wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$DuxIB6cVmG-Ge3vOf4T-h-KPjMY(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;ZZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lambda$registerReceiver$0(ZZILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$mlGyLK8iy2MsdYAGAz-Si_p9cAg(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lambda$registerReceiver$1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetifaceHistory(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;)Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->ifaceHistory:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;)V
    .locals 8

    .line 1
    new-instance v5, Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-direct {v5}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Lcom/samsung/android/server/wifi/util/SemClock;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Lcom/samsung/android/server/wifi/util/SemClock;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->saLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 6
    iput-object p6, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 7
    iput-object p5, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 8
    new-instance p2, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    invoke-direct {p2, p5}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;-><init>(Lcom/samsung/android/server/wifi/util/SemClock;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->ifaceHistory:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 9
    iput-object p7, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->adapter:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.wifi.direct"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->supportedP2p:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.wifi.aware"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->supportedAware:Z

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->registerReceiver()V

    return-void
.end method

.method private calculateDurationTimeBetweenStates()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiState:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiOnTime:J

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiOffTime:J

    .line 25
    .line 26
    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiOnTime:J

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    cmp-long v4, v0, v2

    .line 31
    .line 32
    if-lez v4, :cond_1

    .line 33
    .line 34
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiOffTime:J

    .line 35
    .line 36
    cmp-long p0, v4, v2

    .line 37
    .line 38
    if-lez p0, :cond_1

    .line 39
    .line 40
    sub-long/2addr v4, v0

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    return-wide v0

    .line 46
    :cond_1
    return-wide v2
.end method

.method private getFirstConnectionSpeedSeconds()I
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->adapter:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;->getFirstConnectionReport()[J

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x4

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 v0, 0x3

    .line 14
    aget-wide v0, p0, v0

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-lez v4, :cond_1

    .line 22
    .line 23
    aget-wide v2, p0, v5

    .line 24
    .line 25
    sub-long/2addr v0, v2

    .line 26
    const-wide/16 v2, 0x7530

    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "connection speed "

    .line 35
    .line 36
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " ms"

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v2, "SemWifi.SA_ONOF"

    .line 52
    .line 53
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const-wide/16 v2, 0x3e8

    .line 57
    .line 58
    div-long/2addr v0, v2

    .line 59
    long-to-int p0, v0

    .line 60
    return p0

    .line 61
    :cond_1
    const/4 v0, 0x1

    .line 62
    aget-wide v0, p0, v0

    .line 63
    .line 64
    cmp-long p0, v0, v2

    .line 65
    .line 66
    if-lez p0, :cond_2

    .line 67
    .line 68
    const/16 p0, 0x1f

    .line 69
    .line 70
    return p0

    .line 71
    :cond_2
    return v5
.end method

.method private synthetic lambda$registerReceiver$0(ZZILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->ifaceHistory:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 5
    .line 6
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;->CONNECTED:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 7
    .line 8
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->addHistory(ILcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->ifaceHistory:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 15
    .line 16
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;->CONNECTING:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 17
    .line 18
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->addHistory(ILcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->ifaceHistory:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 23
    .line 24
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;->DISCONNECTED:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 25
    .line 26
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->addHistory(ILcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private synthetic lambda$registerReceiver$1(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->ifaceHistory:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->addHistory(IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->supportedP2p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 6
    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->supportedAware:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 20
    .line 21
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 30
    .line 31
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$1;-><init>(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private sendWifiOffLog(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "pkg"

    .line 14
    .line 15
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;->durationOfRemainingPrevStateMs:J

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmp-long p1, v2, v4

    .line 23
    .line 24
    if-lez p1, :cond_1

    .line 25
    .line 26
    const-wide/32 v4, 0x240c8400

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(J)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->ifaceHistory:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->getLastState(I)Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v2, "sta"

    .line 48
    .line 49
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->supportedP2p:Z

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->ifaceHistory:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->getLastState(I)Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->supportedAware:Z

    .line 64
    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;->DISCONNECTED:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 68
    .line 69
    if-ne p1, v2, :cond_0

    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->ifaceHistory:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;

    .line 72
    .line 73
    const/4 v2, 0x2

    .line 74
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->getLastState(I)Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :cond_0
    const-string v2, "p2p_aware"

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->saLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 91
    .line 92
    const-string p1, "wifi_off"

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private sendWifiOnLog(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;->durationOfRemainingPrevStateMs:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v3, v1, v3

    .line 11
    .line 12
    if-lez v3, :cond_1

    .line 13
    .line 14
    const-wide/16 v3, 0x2710

    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    .line 18
    if-gtz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 24
    .line 25
    .line 26
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "pkg"

    .line 32
    .line 33
    iget-object v3, p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;->isUserAction:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v2, "fg_pkg"

    .line 51
    .line 52
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->getFirstConnectionSpeedSeconds()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-ltz p1, :cond_2

    .line 60
    .line 61
    const-string v2, "first_connect_time"

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->saLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 74
    .line 75
    const-string p1, "wifi_on"

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->sendWifiOffLog(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->eventNumber:I

    .line 19
    .line 20
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->sendWifiOnLog(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public processBigdataLogging(ZLjava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiState:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "SemWifi.SA_ONOF"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "android"

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string p2, "starting Wi-Fi state is "

    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string p2, "boot.completed"

    .line 25
    .line 26
    :cond_0
    move-object v3, p2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiState:Ljava/lang/Boolean;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne p1, v0, :cond_0

    .line 37
    .line 38
    const-string p0, "state is not changed, skip logging"

    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiState:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->calculateDurationTimeBetweenStates()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    iget-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiState:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/4 p2, 0x0

    .line 61
    const/4 v0, 0x1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    move v4, p3

    .line 68
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;-><init>(Ljava/lang/String;ZJI)V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiOnData:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;

    .line 72
    .line 73
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->eventNumber:I

    .line 74
    .line 75
    add-int/2addr p1, v0

    .line 76
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->eventNumber:I

    .line 77
    .line 78
    invoke-static {p0, v0, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    const-wide/16 p2, 0x7530

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-wide/16 p2, 0x0

    .line 88
    .line 89
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    move v4, p3

    .line 94
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    .line 102
    .line 103
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->eventNumber:I

    .line 104
    .line 105
    add-int/2addr p1, v0

    .line 106
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->eventNumber:I

    .line 107
    .line 108
    iget-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->lastWifiOnData:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;

    .line 109
    .line 110
    invoke-static {p0, v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .line 116
    .line 117
    :cond_4
    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;

    .line 118
    .line 119
    const/4 v7, 0x0

    .line 120
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;-><init>(Ljava/lang/String;ZJI)V

    .line 121
    .line 122
    .line 123
    const/4 p1, 0x2

    .line 124
    invoke-static {p0, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    .line 130
    .line 131
    return-void
.end method
