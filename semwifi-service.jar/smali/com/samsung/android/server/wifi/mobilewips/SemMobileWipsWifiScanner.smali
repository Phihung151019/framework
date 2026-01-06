.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;,
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;
    }
.end annotation


# static fields
.field private static final MWIPS_PACKAGE:Ljava/lang/String; = "com.samsung.android.server.wifi.mobilewips"

.field private static final TAG:Ljava/lang/String; = "MobileWips::scanner"

.field private static final mLock:Ljava/lang/Object;

.field private static mStarted:Z


# instance fields
.field private final ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

.field private mPartialScanListener:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

.field private mScannerThread:Landroid/os/HandlerThread;

.field private final mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPartialScanListener(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Landroid/net/wifi/WifiScanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkSource(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Landroid/os/WorkSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWorkSource:Landroid/os/WorkSource;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmStarted()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mStarted:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Landroid/net/wifi/WifiScanner;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 5
    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    .line 7
    .line 8
    const-string v1, "MobileWips::scanner"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mScannerThread:Landroid/os/HandlerThread;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mScannerThread:Landroid/os/HandlerThread;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 32
    .line 33
    new-instance p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

    .line 39
    .line 40
    new-instance p1, Landroid/os/WorkSource;

    .line 41
    .line 42
    const/16 p2, 0x3e8

    .line 43
    .line 44
    const-string v0, "com.samsung.android.server.wifi.mobilewips"

    .line 45
    .line 46
    invoke-direct {p1, p2, v0}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWorkSource:Landroid/os/WorkSource;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public removeMessages(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendEmptyMessage(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->sendMessage(Landroid/os/Message;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    .line 2
    .line 3
    int-to-long v0, p2

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v0, 0x1

    .line 5
    :try_start_0
    sput-boolean v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mStarted:Z

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v0
.end method

.method public stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mStarted:Z

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->mWipsScannerHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method
