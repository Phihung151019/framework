.class Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScanHandler"
.end annotation


# static fields
.field private static final RECV_SCAN_DATA:I = 0x0

.field private static final RECV_SCAN_RESULTS:I = 0x1


# instance fields
.field private mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

.field private final mContext:Landroid/content/Context;

.field private mIsRegisteredListener:Z

.field private mIsRegisteredPnoListener:Z

.field private final mNetworkPnoScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;

.field private mTargetConfigKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanListener;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;


# direct methods
.method static bridge synthetic -$$Nest$mstartScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->startScan(Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->stopPnoScan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-direct {p2, p1, p3}, Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;-><init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;I)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mNetworkPnoScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;

    .line 15
    .line 16
    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanListener;

    .line 17
    .line 18
    invoke-direct {p2, p1, p3}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanListener;-><init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;I)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanListener;

    .line 22
    .line 23
    return-void
.end method

.method private findFrom([Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const-string v2, "AutoWifi.Scanner"

    .line 4
    .line 5
    if-ge v1, v0, :cond_3

    .line 6
    .line 7
    aget-object v3, p1, v1

    .line 8
    .line 9
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getSecurityString(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->getConfigKeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/String;

    .line 45
    .line 46
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mTargetConfigKeys:Ljava/util/Set;

    .line 47
    .line 48
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    const-string p0, "found "

    .line 55
    .line 56
    invoke-static {p0, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v4

    .line 60
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "not found, scan result size: "

    .line 66
    .line 67
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    array-length p1, p1

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method

.method private getConfigKeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v0, p2

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    aget-object v2, p2, v1

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "\""

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object p0
.end method

.method private notifyToClient(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;->onNetworkNotFound()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 18
    .line 19
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;->onNetworkFound(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private registerScanListener()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredListener:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->retrieveWifiScannerIfNecessary()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredListener:Z

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "AutoWifi.Scanner"

    .line 20
    .line 21
    const-string v0, "already registered"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private retrieveWifiScannerIfNecessary()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/autowifi/Scanner;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private startScan(Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mNetworkPnoScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/net/wifi/WifiScanner;->startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$PnoScanListener;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredPnoListener:Z

    return-void
.end method

.method private startScan(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/WorkSource;

    const/16 v1, 0x3e8

    const-string v2, "com.samsung.android.server.wifi"

    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->retrieveWifiScannerIfNecessary()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/Scanner$HiddenNetworkScanListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->this$0:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/autowifi/Scanner$HiddenNetworkScanListener;-><init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;I)V

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    return-void
.end method

.method private stopPnoScan()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredPnoListener:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredPnoListener:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mNetworkPnoScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiScanner;->stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private unregisterScanListener()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredListener:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredListener:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->retrieveWifiScannerIfNecessary()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mWifiScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanListener;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiScanner;->unregisterScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "AutoWifi.Scanner"

    .line 20
    .line 21
    const-string v0, "already unregistered"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "AutoWifi.Scanner"

    .line 6
    .line 7
    const-string p1, "listener is null"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, [Landroid/net/wifi/WifiScanner$ScanData;

    .line 21
    .line 22
    array-length v0, p1

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_3

    .line 25
    .line 26
    aget-object v2, p1, v1

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->findFrom([Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->notifyToClient(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, [Landroid/net/wifi/ScanResult;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->findFrom([Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->notifyToClient(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->notifyToClient(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method isTracking()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mIsRegisteredListener:Z

    .line 2
    .line 3
    return p0
.end method

.method startTracking(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V
    .locals 0
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mTargetConfigKeys:Ljava/util/Set;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->registerScanListener()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method stopTracking()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->unregisterScanListener()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
