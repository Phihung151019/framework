.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;
    }
.end annotation


# static fields
.field public static final BAND_24_GHZ_CH:I = 0x0

.field public static final BAND_5_GHZ_CH:I = 0x1

.field public static final BAND_6_GHZ_CH:I = 0x2

.field public static final ENTRY:I = 0x0

.field public static final GOOD:I = 0x2

.field public static final PNO_MIN_RSSI_LEVEL:I = -0x3f

.field public static final PNO_RSSI_OFFSET:I = 0xa

.field public static final SUFFICIENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SilentRoamingPnoScanner"

.field public static final pnoRssi2:[I

.field public static final pnoRssi5:[I

.field public static final pnoRssi6:[I


# instance fields
.field private final PNO_MIN_SCAN_INTERVAL:I

.field private final mContext:Landroid/net/wifi/WifiContext;

.field private final mDbg:Z

.field private final mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, -0x4a

    .line 2
    .line 3
    const/16 v1, -0x49

    .line 4
    .line 5
    const/16 v2, -0x3f

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->pnoRssi2:[I

    .line 12
    .line 13
    const/16 v1, -0x46

    .line 14
    .line 15
    filled-new-array {v0, v1, v2}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sput-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->pnoRssi5:[I

    .line 20
    .line 21
    filled-new-array {v0, v1, v2}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->pnoRssi6:[I

    .line 26
    .line 27
    return-void
.end method

.method constructor <init>(Landroid/net/wifi/WifiContext;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x493e0

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->PNO_MIN_SCAN_INTERVAL:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mDbg:Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mContext:Landroid/net/wifi/WifiContext;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    new-instance p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    .line 19
    .line 20
    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Landroid/net/wifi/WifiContext;Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    .line 24
    .line 25
    return-void
.end method

.method public static createPnoNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
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
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 36
    .line 37
    or-int/2addr p0, v2

    .line 38
    int-to-byte p0, p0

    .line 39
    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    const/4 v1, 0x3

    .line 43
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 50
    .line 51
    or-int/lit8 p0, p0, 0x4

    .line 52
    .line 53
    int-to-byte p0, p0

    .line 54
    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 58
    .line 59
    or-int/lit8 p0, p0, 0x1

    .line 60
    .line 61
    int-to-byte p0, p0

    .line 62
    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 63
    .line 64
    return-object v0
.end method


# virtual methods
.method public isAvailableScanner()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->-$$Nest$misAvailableScanner(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->-$$Nest$mregisterScanListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startPartialScan([ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 11
    .line 12
    array-length v2, p1

    .line 13
    new-array v3, v2, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 14
    .line 15
    iput-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 16
    .line 17
    :goto_0
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 20
    .line 21
    new-instance v4, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 22
    .line 23
    aget v5, p1, v1

    .line 24
    .line 25
    invoke-direct {v4, v5}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 26
    .line 27
    .line 28
    aput-object v4, v3, v1

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "startPartialScan : freq list = "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v1, "SilentRoamingPnoScanner"

    .line 52
    .line 53
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x3

    .line 57
    iput p1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    iget-object p1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    .line 71
    .line 72
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->-$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public startPnoScan(Ljava/util/List;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;[I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "SilentRoamingPnoScanner"

    .line 8
    .line 9
    const-string p1, "No saved network for starting disconnected PNO."

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 18
    .line 19
    .line 20
    new-array v0, v0, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 21
    .line 22
    iput-object v0, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

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
    iput-object p1, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    aget v0, p2, p1

    .line 34
    .line 35
    iput v0, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aget v0, p2, v0

    .line 39
    .line 40
    iput v0, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    aget p2, p2, v0

    .line 44
    .line 45
    iput p2, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->min6GHzRssi:I

    .line 46
    .line 47
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mContext:Landroid/net/wifi/WifiContext;

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const v0, 0x7f050074

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iput p2, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->scanIterations:I

    .line 61
    .line 62
    iget-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mContext:Landroid/net/wifi/WifiContext;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const v0, 0x7f050073

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iput p2, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->scanIntervalMultiplier:I

    .line 76
    .line 77
    new-instance p2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 78
    .line 79
    invoke-direct {p2}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x7

    .line 83
    iput v0, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 84
    .line 85
    const/4 v0, 0x4

    .line 86
    iput v0, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 87
    .line 88
    iput p1, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 89
    .line 90
    const p1, 0x493e0

    .line 91
    .line 92
    .line 93
    iput p1, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    .line 96
    .line 97
    invoke-static {p0, v1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->-$$Nest$mstartPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public startScan()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->startScan()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stopPnoScan()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
