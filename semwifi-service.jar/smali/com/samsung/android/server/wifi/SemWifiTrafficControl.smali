.class public Lcom/samsung/android/server/wifi/SemWifiTrafficControl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;,
        Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x64

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiTrafficControl history:"

.field private static final SET_TC_CONFIGURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemWifiTrafficControl"

.field private static final TWT_CAP_NOT_INITIALIZED:I = 0x0

.field private static final TWT_CAP_NOT_SUPPORTED:I = 0x1

.field private static final TWT_CAP_SUPPORTED:I = 0x2

.field private static mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectedIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private mTCHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;

.field private final mTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private twtAvailable:I


# direct methods
.method static bridge synthetic -$$Nest$fgetconnectedIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->connectedIfaces:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOemNetd(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Lcom/android/internal/net/IOemNetd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwtMonitor(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettwtAvailable(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->twtAvailable:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputtwtAvailable(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->twtAvailable:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mqueryTwtCapability(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->queryTwtCapability()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->connectedIfaces:Ljava/util/HashSet;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 18
    .line 19
    const-string p1, "SemWifiTrafficControlThread"

    .line 20
    .line 21
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mTCHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;

    .line 35
    .line 36
    :try_start_0
    const-string p1, "netd"

    .line 37
    .line 38
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mNetdService:Landroid/net/INetd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "Failed to bind service netd, error="

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mNetdService:Landroid/net/INetd;

    .line 72
    .line 73
    if-nez p1, :cond_0

    .line 74
    .line 75
    const-string p1, "Can\'t bind service netd"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_1
    move-exception p1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v1, "Failed to get OemNetd listener "

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_1
    return-void
.end method

.method private queryTwtCapability()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getDriverFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isTwtSupported()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p0, "SemWifiTrafficControl"

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/Date;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, " "

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const/16 v0, 0x64

    .line 61
    .line 62
    if-le p0, v0, :cond_0

    .line 63
    .line 64
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    monitor-exit p1

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    const-string p1, "SemWifiTrafficControl"

    .line 78
    .line 79
    const-string v0, "format problem"

    .line 80
    .line 81
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string p0, "SemWifiTrafficControl history:"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p1
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->connectedIfaces:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->connectedIfaces:Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setTCRule(ZLjava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;I)V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->enabled:Z

    .line 8
    .line 9
    iput-object p2, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->iface:Ljava/lang/String;

    .line 10
    .line 11
    iput p3, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->limit:I

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->mTCHandler:Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;

    .line 14
    .line 15
    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
