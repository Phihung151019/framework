.class public Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;
.super Lcom/samsung/android/wifi/stdp/IStandardPlusManager$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StandardPlusServiceImpl"


# instance fields
.field private mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

.field private final mContext:Landroid/content/Context;

.field private mEventCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/wifi/stdp/IStandardPlusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHistoricalDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAwareSupported:Z

.field private mIsBootComplete:Z

.field private mSemAwareMgr:Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBleHelper(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventCallbacks(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mEventCallbacks:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 14
    .line 15
    return-void
.end method

.method private addHistoricalDumpLog(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x64

    .line 24
    .line 25
    if-le v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Time: "

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " "

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, "\n"

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public disableUsdNearby(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "StandardPlusServiceImpl"

    .line 7
    .line 8
    const-string v1, "disableUsdNearby"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->startAdvertising(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "Internal API call history"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public enableUsdNearby(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "StandardPlusServiceImpl"

    .line 7
    .line 8
    const-string v1, "enableUsdNearby"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->startAdvertising(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public registerCallback(ILcom/samsung/android/wifi/stdp/IStandardPlusCallback;)Z
    .locals 3

    .line 1
    const-string v0, "registerCallback"

    .line 2
    .line 3
    const-string v1, "StandardPlusServiceImpl"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mEventCallbacks:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string p0, "It already exists in the callback list"

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mEventCallbacks:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public start(Landroid/os/HandlerThread;)V
    .locals 2

    .line 1
    const-string v0, "StandardPlusServiceImpl"

    .line 2
    .line 3
    const-string v1, "Starting StandardPlus service"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance p1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mEventCallbacks:Ljava/util/HashMap;

    .line 25
    .line 26
    return-void
.end method

.method public startBleScan()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "StandardPlusServiceImpl"

    .line 7
    .line 8
    const-string v1, "startBleScan"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->startScan()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public startLate()V
    .locals 2

    .line 1
    const-string v0, "StandardPlusServiceImpl"

    .line 2
    .line 3
    const-string v1, "Late initialization of StandardPlus service"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mIsBootComplete:Z

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;-><init>(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;-><init>(Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "android.hardware.wifi.aware"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mIsAwareSupported:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string v1, "sem_wifi_aware"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mSemAwareMgr:Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public stopBleAdvertising()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "StandardPlusServiceImpl"

    .line 7
    .line 8
    const-string v1, "stopBleAdvertising"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->stopAdvertising()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public stopBleScan()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "StandardPlusServiceImpl"

    .line 7
    .line 8
    const-string v1, "stopBleScan"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mBleHelper:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->stopScan()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public unregisterCallback(I)Z
    .locals 2

    .line 1
    const-string v0, "StandardPlusServiceImpl"

    .line 2
    .line 3
    const-string v1, "unregisterCallback"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->mEventCallbacks:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method
