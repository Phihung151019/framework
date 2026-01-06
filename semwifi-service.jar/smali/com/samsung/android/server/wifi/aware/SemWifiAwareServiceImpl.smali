.class public Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;
.super Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiAwareService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDbg:Z

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

.field private mIsAwareP2pConcurrencySupported:Ljava/lang/Boolean;

.field private mIsAwareSoftApConcurrencySupported:Ljava/lang/Boolean;

.field private mIsBootComplete:Z

.field private mServiceStarted:Z

.field private mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private mWifiVendorNan:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;


# direct methods
.method public static synthetic $r8$lambda$H9t7LF5RTkaxkXIX2LdPLwkkxMo(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->lambda$startLate$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$NiUgQlEpoE55tqWSM2c05CXjaWw(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->lambda$startLate$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$RJY_SFGJyoEZmsVRt82AvF2ENhE(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->lambda$start$0(Landroid/os/HandlerThread;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$kceslhEHmFMYgql9-1-w61s7rtw(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->lambda$setNanCommand$3(I[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mDbg:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mServiceStarted:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mIsAwareSoftApConcurrencySupported:Ljava/lang/Boolean;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mIsAwareP2pConcurrencySupported:Ljava/lang/Boolean;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 31
    .line 32
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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

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

.method private enableVerboseLogging(ZLcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V
    .locals 2

    .line 1
    const-string v0, "enableVerboseLogging: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiAwareService"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mDbg:Z

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->enableVerboseLogging(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private initSemWifiVendorNan()V
    .locals 3

    .line 1
    const-string v0, "checkAndInitSemWifiVendorNan"

    .line 2
    .line 3
    const-string v1, "SemWifiAwareService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v2, "versionProvider is not ready, awake"

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v1, v2, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiVendorNan:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->initialize()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mServiceStarted:Z

    .line 46
    .line 47
    return-void
.end method

.method private synthetic lambda$setNanCommand$3(I[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiVendorNan:Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->setNanCommand(I[B)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "setNanCommand : cmdId="

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " , length="

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    array-length p1, p2

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->addHistoricalDumpLog(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private synthetic lambda$start$0(Landroid/os/HandlerThread;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->start(Landroid/content/Context;Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 19
    .line 20
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->enableVerboseLogging(ZLcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic lambda$startLate$1()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->startLate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$startLate$2()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->initSemWifiVendorNan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p3, "isAwareSoftApConcurrencySupported: "

    .line 18
    .line 19
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->isAwareSoftApConcurrencySupported()Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p3, "isAwareP2pConcurrencySupported: "

    .line 39
    .line 40
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->isAwareP2pConcurrencySupported()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public getMaxNdpCountForAwareP2p()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->getMaxNdpCountForAwareP2p()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getMaxNdpCountForAwareSoftAp()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->getMaxNdpCountForAwareSoftAp()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getStdPlusFeature()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "SemWifiAwareService"

    .line 14
    .line 15
    const-string v2, "versionProvider is not ready, awake"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getDriverFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isStdPlusSupported()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getStdPlusFeature()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v4, "getStdPlusFeature: stdPlus="

    .line 45
    .line 46
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " result="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->addHistoricalDumpLog(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-wide v2
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mIsBootComplete:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "SemWifiAwareService"

    .line 6
    .line 7
    const-string p1, "Received shell command when boot is not complete!"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    move-object v1, p0

    .line 34
    move-object v5, p4

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public isAwareP2pConcurrencySupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mIsAwareP2pConcurrencySupported:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiAwareNative()Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->isAwareP2pConcurrencySupported()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mIsAwareP2pConcurrencySupported:Ljava/lang/Boolean;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mIsAwareP2pConcurrencySupported:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public isAwareSoftApConcurrencySupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mIsAwareSoftApConcurrencySupported:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiAwareNative()Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->isAwareSoftApConcurrencySupported()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mIsAwareSoftApConcurrencySupported:Ljava/lang/Boolean;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mIsAwareSoftApConcurrencySupported:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public isPreEnabled()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->isPreEnabled()I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public isVendorNanServiceAvailable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mServiceStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method public setClusterMergingEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->setClusterMergingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNanCommand(I[B)V
    .locals 3

    .line 1
    const-string v0, "setNanCommand - cmdId : "

    .line 2
    .line 3
    const-string v1, " cmd length : "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, p2

    .line 10
    const-string v2, "SemWifiAwareService"

    .line 11
    .line 12
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 16
    .line 17
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;I[B)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->run(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public start(Landroid/os/HandlerThread;)V
    .locals 3

    .line 1
    const-string v0, "SemWifiAwareService"

    .line 2
    .line 3
    const-string v1, "Starting Sem Wi-Fi Aware service"

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
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 22
    .line 23
    invoke-direct {v1, v2, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;Landroid/os/HandlerThread;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public startLate()V
    .locals 3

    .line 1
    const-string v0, "SemWifiAwareService"

    .line 2
    .line 3
    const-string v1, "Late initialization of Sem Wi-Fi Aware service"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mIsBootComplete:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;-><init>(Landroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 30
    .line 31
    new-instance v1, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda2;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
