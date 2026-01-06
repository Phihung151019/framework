.class public Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;
    }
.end annotation


# static fields
.field private static final START_DISCOVERY:I = 0x1

.field private static final STOP_DISCOVERY:I = 0x2

.field private static TAG:Ljava/lang/String; = "SemWifiApNsd:Hotspot"


# instance fields
.field private isDiscoveryStarted:Z

.field private mClientEntry:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDiscoveryListner:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mHotspotHandler:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;

.field private mLock:Ljava/lang/Object;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private final mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;",
            ">;"
        }
    .end annotation
.end field

.field private mStatInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

.field private mWifiApState:I

.field private final semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$Gi4Uujxq4Y7vgitFFuCWb44B9gE(Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->lambda$clearAll$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$UlALyIW9AC1QCiY85TyGQQkv3Nc(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->lambda$new$0(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisDiscoveryStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->isDiscoveryStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHotspotHandler(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mHotspotHandler:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mWifiApState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputisDiscoveryStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->isDiscoveryStarted:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAll(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->clearAll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAllMAC(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->clearAllMAC()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$minsertMAC(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->insertMAC(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterServiceInfoCallback(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->registerServiceInfoCallback(Landroid/net/nsd/NsdServiceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveMAC(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->removeMAC(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartDiscovery(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->startDiscovery()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopDiscovery(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->stopDiscovery()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopResolveService(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->stopResolveService(Landroid/net/nsd/NsdServiceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mClientEntry:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    new-instance v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$1;-><init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mStatInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    new-instance p1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;

    .line 37
    .line 38
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;-><init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Landroid/os/Looper;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mHotspotHandler:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;

    .line 42
    .line 43
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-string v0, "servicediscovery"

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroid/net/nsd/NsdManager;

    .line 62
    .line 63
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 64
    .line 65
    new-instance p2, Landroid/os/HandlerExecutor;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mHotspotHandler:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;

    .line 68
    .line 69
    invoke-direct {p2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mExecutor:Ljava/util/concurrent/Executor;

    .line 73
    .line 74
    const/16 p2, 0xb

    .line 75
    .line 76
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mWifiApState:I

    .line 77
    .line 78
    new-instance p2, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$$ExternalSyntheticLambda1;

    .line 79
    .line 80
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private checkAllMacresolved()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mClientEntry:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map$Entry;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mClientEntry:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    monitor-exit v0

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p0, 0x1

    .line 52
    monitor-exit v0

    .line 53
    return p0

    .line 54
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method private clearAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private clearAllMAC()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mClientEntry:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method private initializeDiscoveryListner()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;-><init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mDiscoveryListner:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 7
    .line 8
    return-void
.end method

.method private insertMAC(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mClientEntry:Ljava/util/HashMap;

    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method private static synthetic lambda$clearAll$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$new$0(IIILjava/lang/String;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p3, "onreceive WIFI_AP_STATE_CHANGED apState : "

    .line 4
    .line 5
    invoke-static {p3, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mWifiApState:I

    .line 9
    .line 10
    const/16 p2, 0xb

    .line 11
    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    .line 14
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mDiscoveryListner:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->clearAllMAC()V

    .line 19
    .line 20
    .line 21
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mHotspotHandler:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$HotspotHandler;

    .line 22
    .line 23
    const/4 p4, 0x2

    .line 24
    invoke-virtual {p3, p4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    if-eq p1, p2, :cond_3

    .line 28
    .line 29
    const/16 p2, 0xe

    .line 30
    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 p2, 0xd

    .line 35
    .line 36
    if-ne p1, p2, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mStatInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void

    .line 46
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mStatInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private registerServiceInfoCallback(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 4

    .line 1
    const-string v0, "registerServiceInfoCallback,resolving "

    .line 2
    .line 3
    const-string v1, "registerServiceInfoCallback, already resolve in progress for "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    sget-object p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mExecutor:Ljava/util/concurrent/Executor;

    .line 67
    .line 68
    invoke-direct {v0, v1, p1, v2, p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;-><init>(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;Ljava/util/concurrent/Executor;Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->resolveService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catch_0
    move-exception p0

    .line 85
    sget-object p1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    const-string v0, "registerServiceInfoCallback"

    .line 88
    .line 89
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private removeMAC(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mClientEntry:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method private resolvedMAC(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mClientEntry:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mClientEntry:Ljava/util/HashMap;

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method private startDiscovery()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->initializeDiscoveryListner()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 5
    .line 6
    const-string v1, "_hotspot._tcp."

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mDiscoveryListner:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2, p0}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 12
    .line 13
    .line 14
    return v2
.end method

.method private stopDiscovery()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mDiscoveryListner:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->isDiscoveryStarted:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mDiscoveryListner:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->isDiscoveryStarted:Z

    .line 20
    .line 21
    return-void
.end method

.method private stopResolveService(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 4

    .line 1
    const-string v0, "stopResolveService, resolving "

    .line 2
    .line 3
    const-string v1, "stopResolveService, already resolve in progress for "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    sget-object p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->stopResolveService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catch_0
    move-exception p0

    .line 76
    sget-object p1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string v0, "stopResolveService"

    .line 79
    .line 80
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private updateDeviceDetailsFromNsd(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZ)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v1, p1

    .line 20
    move-object v2, p2

    .line 21
    move v3, p3

    .line 22
    move-object v4, p4

    .line 23
    move v5, p5

    .line 24
    move v6, p6

    .line 25
    move v7, p7

    .line 26
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->updateDeviceDetailsFromNsd(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZ)V

    .line 27
    .line 28
    .line 29
    move-object p3, v2

    .line 30
    move-object p2, v4

    .line 31
    move p4, v6

    .line 32
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 p5, 0x1

    .line 41
    if-ne v5, p5, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p5, 0x0

    .line 45
    :goto_0
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->updateStaticClientDetailsFromNSD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method private wifiClientInfo(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 35

    .line 1
    const-string v0, "ISCAH"

    .line 2
    .line 3
    const-string v1, "IPV6"

    .line 4
    .line 5
    const-string v2, "IPV4"

    .line 6
    .line 7
    const-string v3, "dhcp_name"

    .line 8
    .line 9
    const-string v4, "IS_STATIC_IP"

    .line 10
    .line 11
    const-string v5, "VERSION"

    .line 12
    .line 13
    const-string v6, "BANDTYPE"

    .line 14
    .line 15
    const-string v7, "SECURITYTYPE"

    .line 16
    .line 17
    const-string v8, "is auto hotspot client = "

    .line 18
    .line 19
    const-string v9, "onServiceResolved:deviceName : "

    .line 20
    .line 21
    const-string v10, "onServiceResolved:deviceType : "

    .line 22
    .line 23
    const-string v11, "onServiceResolved: is_dhcp_name_disabled: "

    .line 24
    .line 25
    const-string v12, "onServiceResolved: isStaticIP: "

    .line 26
    .line 27
    const-string v13, "onServiceResolved: MAC: "

    .line 28
    .line 29
    const-string v14, "onServiceResolved: IP: "

    .line 30
    .line 31
    const-string v15, "ipv6 : "

    .line 32
    .line 33
    move-object/from16 v16, v8

    .line 34
    .line 35
    const-string v8, "ipv4 : "

    .line 36
    .line 37
    move-object/from16 v17, v9

    .line 38
    .line 39
    const-string v9, "is_dhcp_name_disabled : "

    .line 40
    .line 41
    move-object/from16 v18, v10

    .line 42
    .line 43
    const-string v10, "version : "

    .line 44
    .line 45
    move-object/from16 v19, v11

    .line 46
    .line 47
    const-string v11, "semWifiApBandSupported : "

    .line 48
    .line 49
    move-object/from16 v20, v12

    .line 50
    .line 51
    const-string v12, "semWifiApSecurityTypeSupported : "

    .line 52
    .line 53
    move-object/from16 v21, v13

    .line 54
    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    .line 60
    .line 61
    .line 62
    move-result-object v22

    .line 63
    move-object/from16 v23, v13

    .line 64
    .line 65
    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    move-object/from16 v22, v13

    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/net/nsd/NsdServiceInfo;->getAttributes()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    move-object/from16 v24, v14

    .line 76
    .line 77
    const-string v14, "paarams"

    .line 78
    .line 79
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    check-cast v13, [B

    .line 84
    .line 85
    array-length v14, v13

    .line 86
    if-lez v14, :cond_8

    .line 87
    .line 88
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    .line 89
    .line 90
    move-object/from16 v25, v0

    .line 91
    .line 92
    new-instance v0, Ljava/lang/String;

    .line 93
    .line 94
    move-object/from16 v26, v15

    .line 95
    .line 96
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 97
    .line 98
    invoke-direct {v0, v13, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v0, "IP"

    .line 105
    .line 106
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/lang/String;

    .line 111
    .line 112
    const-string v13, "MAC"

    .line 113
    .line 114
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    move-object/from16 v28, v13

    .line 119
    .line 120
    check-cast v28, Ljava/lang/String;

    .line 121
    .line 122
    const-string v13, "DEVICENAME"

    .line 123
    .line 124
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    check-cast v13, Ljava/lang/String;

    .line 129
    .line 130
    const-string v15, "deviceType"

    .line 131
    .line 132
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    check-cast v15, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v27

    .line 146
    if-nez v27, :cond_0

    .line 147
    .line 148
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    int-to-byte v7, v7

    .line 159
    move-object/from16 v31, v13

    .line 160
    .line 161
    new-instance v13, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;

    .line 162
    .line 163
    invoke-direct {v13, v7}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;-><init>(B)V

    .line 164
    .line 165
    .line 166
    sget-object v7, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 167
    .line 168
    move-object/from16 p1, v13

    .line 169
    .line 170
    new-instance v13, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApSecurityTypeSupported;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    goto/16 :goto_3

    .line 192
    .line 193
    :cond_0
    move-object/from16 v31, v13

    .line 194
    .line 195
    :goto_0
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_1

    .line 200
    .line 201
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Ljava/lang/Integer;

    .line 206
    .line 207
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    int-to-byte v6, v6

    .line 212
    new-instance v7, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;

    .line 213
    .line 214
    invoke-direct {v7, v6}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;-><init>(B)V

    .line 215
    .line 216
    .line 217
    sget-object v6, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 218
    .line 219
    new-instance v12, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils$SemWifiApBandSupported;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    :cond_1
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-nez v6, :cond_2

    .line 243
    .line 244
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    sget-object v6, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 255
    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    :cond_2
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-nez v5, :cond_3

    .line 276
    .line 277
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    check-cast v4, Ljava/lang/Boolean;

    .line 282
    .line 283
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    sget-object v5, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 288
    .line 289
    const-string v6, "isStaticIP : -1"

    .line 290
    .line 291
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_3
    const/4 v4, -0x1

    .line 296
    :goto_1
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    const/4 v6, 0x0

    .line 301
    if-nez v5, :cond_4

    .line 302
    .line 303
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Ljava/lang/Boolean;

    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    sget-object v5, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 314
    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    goto :goto_2

    .line 331
    :cond_4
    move v3, v6

    .line 332
    :goto_2
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-nez v5, :cond_5

    .line 337
    .line 338
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    check-cast v2, Ljava/lang/String;

    .line 343
    .line 344
    sget-object v5, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 345
    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    :cond_5
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-nez v2, :cond_6

    .line 366
    .line 367
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    check-cast v1, Ljava/lang/String;

    .line 372
    .line 373
    sget-object v2, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 374
    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    move-object/from16 v7, v26

    .line 378
    .line 379
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    :cond_6
    move-object/from16 v1, v25

    .line 393
    .line 394
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-nez v2, :cond_7

    .line 399
    .line 400
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    check-cast v1, Ljava/lang/Integer;

    .line 405
    .line 406
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-ltz v1, :cond_7

    .line 411
    .line 412
    const/4 v6, 0x1

    .line 413
    :cond_7
    sget-object v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 414
    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    move-object/from16 v5, v24

    .line 418
    .line 419
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    sget-object v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 433
    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    move-object/from16 v5, v21

    .line 437
    .line 438
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-static/range {v28 .. v28}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    sget-object v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 456
    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    move-object/from16 v5, v20

    .line 460
    .line 461
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    sget-object v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 475
    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    move-object/from16 v5, v19

    .line 479
    .line 480
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    sget-object v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 494
    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    move-object/from16 v5, v18

    .line 498
    .line 499
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v5, " = "

    .line 506
    .line 507
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-static {v15}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceType;->getDeviceTypeAsString(I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    sget-object v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 525
    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    move-object/from16 v5, v17

    .line 529
    .line 530
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    move-object/from16 v13, v31

    .line 534
    .line 535
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    sget-object v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 546
    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    move-object/from16 v5, v16

    .line 550
    .line 551
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .line 563
    .line 564
    move-object/from16 v27, p0

    .line 565
    .line 566
    move-object/from16 v29, v0

    .line 567
    .line 568
    move/from16 v33, v3

    .line 569
    .line 570
    move/from16 v32, v4

    .line 571
    .line 572
    move/from16 v34, v6

    .line 573
    .line 574
    move-object/from16 v31, v13

    .line 575
    .line 576
    move/from16 v30, v15

    .line 577
    .line 578
    invoke-direct/range {v27 .. v34}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->updateDeviceDetailsFromNsd(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZ)V

    .line 579
    .line 580
    .line 581
    move-object/from16 v13, v28

    .line 582
    .line 583
    move-object/from16 v0, p0

    .line 584
    .line 585
    invoke-direct {v0, v13}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->resolvedMAC(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    .line 587
    .line 588
    goto :goto_4

    .line 589
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 590
    .line 591
    .line 592
    :cond_8
    :goto_4
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 593
    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    const-string v2, "onServiceResolved:"

    .line 597
    .line 598
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    move-object/from16 v2, v23

    .line 602
    .line 603
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    const-string v2, " "

    .line 607
    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    move-object/from16 v2, v22

    .line 612
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "onLost: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onResolveStopped(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "onResolveStopped: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "onResolved"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->mNsdServiceInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->wifiClientInfo(Landroid/net/nsd/NsdServiceInfo;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
