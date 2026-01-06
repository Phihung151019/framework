.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScanHandler"
.end annotation


# static fields
.field private static final CMD_FULL_SCAN_FAIL_REPORTED:I = 0x2

.field private static final CMD_FULL_SCAN_RESULTS_REPORTED:I = 0x1

.field private static final CMD_PARTIAL_SCAN_FAIL_REPORTED:I = 0x4

.field private static final CMD_PARTIAL_SCAN_RESULTS_REPORTED:I = 0x3

.field private static final CMD_PNO_SCAN_FAIL_REPORTED:I = 0x5

.field private static final CMD_PNO_SCAN_RESULTS_REPORTED:I


# instance fields
.field private mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

.field private final mContext:Landroid/net/wifi/WifiContext;

.field private final mPartialScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;

.field private final mPnoScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;


# direct methods
.method static bridge synthetic -$$Nest$misAvailableScanner(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->isAvailableScanner()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterScanListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->registerScanListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->startPartialScan(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->startPnoScan(Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->stopPnoScan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Landroid/net/wifi/WifiContext;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mContext:Landroid/net/wifi/WifiContext;

    .line 7
    .line 8
    new-instance p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-direct {p2, p1, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;I)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mPnoScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;

    .line 15
    .line 16
    new-instance p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;

    .line 17
    .line 18
    invoke-direct {p2, p1, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;I)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mPartialScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;

    .line 22
    .line 23
    return-void
.end method

.method private isAvailableScanner()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method private registerScanListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiScanner;->registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private startPartialScan(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/WorkSource;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    const-string v2, "com.samsung.android.server.wifi"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 11
    .line 12
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mPartialScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;

    .line 18
    .line 19
    invoke-virtual {v1, p1, v2, p0, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private startPnoScan(Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 2
    .line 3
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mPnoScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p1, v1, p0}, Landroid/net/wifi/WifiScanner;->startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$PnoScanListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private stopPnoScan()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mPnoScanListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiScanner;->stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->mClientListener:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;

    .line 2
    .line 3
    const-string v0, "SilentRoamingPnoScanner"

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "listener is null"

    .line 8
    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    if-eqz v1, :cond_6

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_5

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v1, v2, :cond_4

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x5

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "WifiScanHandler: unhandled message=  "

    .line 35
    .line 36
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget p1, p1, Landroid/os/Message;->what:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 53
    .line 54
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onPnoScanFailure(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onPartialScanFailure()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, [Landroid/net/wifi/ScanResult;

    .line 65
    .line 66
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onPartialScanResults([Landroid/net/wifi/ScanResult;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onFullScanFailure()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, [Landroid/net/wifi/ScanResult;

    .line 77
    .line 78
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onFullScanResults([Landroid/net/wifi/ScanResult;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, [Landroid/net/wifi/ScanResult;

    .line 85
    .line 86
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "scan failed reason: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, " "

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "SilentRoamingPnoScanner"

    .line 24
    .line 25
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    return-void
.end method
