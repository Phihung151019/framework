.class public Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$PreScanResultProcessorHolder;,
        Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallbacks(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->callbacks:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    return-object p0
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "SemPreScanResultProcessor"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->TAG:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->callbacks:Ljava/util/Set;

    .line 5
    sget-object v0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->mContext:Landroid/content/Context;

    const-string v1, "wifinl80211"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 6
    const-string v1, "PreScanResultProcessorThread"

    .line 7
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$1;-><init>(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;)V

    .line 11
    const-string p0, "wlan0"

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->registerSyncPreScanResultListener(Ljava/lang/String;Landroid/net/wifi/nl80211/WifiNl80211Manager$PreScanResultListener;)Z

    return-void
.end method

.method synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$PreScanResultProcessorHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public registerHookCallback(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;)Z
    .locals 3

    .line 1
    const-string v0, "HookCallback was already registered, "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->callbacks:Ljava/util/Set;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->callbacks:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;->reqClassName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    monitor-exit v1

    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->callbacks:Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    monitor-exit v1

    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public unregisterHookCallback(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->callbacks:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->callbacks:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method
