.class Lcom/samsung/android/server/wifi/autowifi/Scanner;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;,
        Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;,
        Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanListener;,
        Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;,
        Lcom/samsung/android/server/wifi/autowifi/Scanner$HiddenNetworkScanListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoWifi.Scanner"


# instance fields
.field private final mContext:Landroid/net/wifi/WifiContext;

.field private final mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/Scanner;)Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/autowifi/Scanner;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method constructor <init>(Landroid/net/wifi/WifiContext;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mContext:Landroid/net/wifi/WifiContext;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 7
    .line 8
    const-string p2, "location"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Landroid/location/LocationManager;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mLocationManager:Landroid/location/LocationManager;

    .line 17
    .line 18
    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 19
    .line 20
    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;-><init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;Landroid/content/Context;Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 26
    .line 27
    return-void
.end method

.method public static createPnoNetwork(Landroid/net/wifi/WifiConfiguration;[I)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 13
    .line 14
    or-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    int-to-byte v1, v1

    .line 17
    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 18
    .line 19
    :cond_0
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    or-int/2addr v1, v2

    .line 23
    int-to-byte v1, v1

    .line 24
    or-int/lit8 v1, v1, 0x4

    .line 25
    .line 26
    int-to-byte v1, v1

    .line 27
    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 28
    .line 29
    array-length v1, p1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iput-object p1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 41
    .line 42
    or-int/2addr p0, v2

    .line 43
    int-to-byte p0, p0

    .line 44
    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    const/4 p1, 0x3

    .line 48
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 55
    .line 56
    or-int/lit8 p0, p0, 0x4

    .line 57
    .line 58
    int-to-byte p0, p0

    .line 59
    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 63
    .line 64
    or-int/lit8 p0, p0, 0x1

    .line 65
    .line 66
    int-to-byte p0, p0

    .line 67
    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 68
    .line 69
    return-object v0
.end method

.method private getScanSettings(Ljava/util/List;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;)",
            "Landroid/net/wifi/WifiScanner$ScanSettings;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 8
    .line 9
    const/16 v0, 0x1f

    .line 10
    .line 11
    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 15
    .line 16
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object p0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mLocationManager:Landroid/location/LocationManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "AutoWifi isAvailable : "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ", "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "AutoWifi.Scanner"

    .line 44
    .line 45
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    return p0

    .line 54
    :cond_0
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public isTracking()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public registerListener(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AutoWifi.Scanner"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "target network list is empty"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->isAvailable()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->startTracking(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const-string p0, "unavailable scan now"

    .line 28
    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public startDisconnectedPnoScan(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AutoWifi.Scanner"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "No saved network for starting disconnected PNO."

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 18
    .line 19
    .line 20
    new-array v0, v0, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 21
    .line 22
    iput-object v0, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 29
    .line 30
    iput-object p1, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 31
    .line 32
    const/16 p1, -0x50

    .line 33
    .line 34
    iput p1, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min6GHzRssi:I

    .line 35
    .line 36
    iput p1, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 37
    .line 38
    iput p1, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mContext:Landroid/net/wifi/WifiContext;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const v0, 0x7f050074

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->scanIterations:I

    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mContext:Landroid/net/wifi/WifiContext;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const v0, 0x7f050073

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->scanIntervalMultiplier:I

    .line 69
    .line 70
    new-instance p1, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 71
    .line 72
    invoke-direct {p1}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x7

    .line 76
    iput v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 77
    .line 78
    const/4 v0, 0x4

    .line 79
    iput v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    iput v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 83
    .line 84
    const v0, 0xea60

    .line 85
    .line 86
    .line 87
    iput v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 88
    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 98
    .line 99
    invoke-static {p0, v2, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->-$$Nest$mstartScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_1
    const-string p0, "startPnoScan ignored, there is no listener"

    .line 104
    .line 105
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public startScan()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->startScan()Z

    return-void

    .line 3
    :cond_0
    const-string p0, "AutoWifi.Scanner"

    const-string v0, "startScan ignored, there is no listener"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startScan(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->getScanSettings(Ljava/util/List;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->-$$Nest$mstartScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void

    .line 6
    :cond_0
    const-string p0, "AutoWifi.Scanner"

    const-string p1, "startScan ignored, there is no listener"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopPnoScan()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->stopTracking()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "AutoWifi.Scanner"

    .line 16
    .line 17
    const-string v0, "unregisterListener ignored, there is no listener"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method
