.class public Lcom/samsung/android/server/wifi/db/WifiControlMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifi.ControlMonitor"

.field public static final UNKNOWN_OR_SYSTEM:Ljava/lang/String; = "android"


# instance fields
.field private final lastCallerInfoCallback:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lastWifiState:I

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/db/WifiControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

.field private final wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final wifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;


# direct methods
.method public static synthetic $r8$lambda$0gHKucH2OtOMGW3d6h_0QAbuIHs(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lambda$new$0(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$pOYOq9_7JvlI2zBUzUXqc1zNC68(Ljava/lang/String;ZZLcom/samsung/android/server/wifi/db/WifiControlListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lambda$notifyToClients$1(Ljava/lang/String;ZZLcom/samsung/android/server/wifi/db/WifiControlListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlastWifiState(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lastWifiState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiControlHistoryManager(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiThreadRunner(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->wifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyToClients(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->notifyToClients(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;-><init>(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lastCallerInfoCallback:Ljava/util/function/BiConsumer;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->wifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 14
    .line 15
    new-instance p2, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lock:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance p2, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->listeners:Ljava/util/Set;

    .line 28
    .line 29
    const/4 p2, 0x4

    .line 30
    iput p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lastWifiState:I

    .line 31
    .line 32
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 33
    .line 34
    new-instance p2, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V
    .locals 0

    .line 1
    const/4 p3, 0x3

    .line 2
    if-eq p2, p3, :cond_1

    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    if-ne p2, p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :cond_1
    :goto_0
    iput p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lastWifiState:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lastCallerInfoCallback:Ljava/util/function/BiConsumer;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getLastCallerInfoForSta(Ljava/util/function/BiConsumer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static synthetic lambda$notifyToClients$1(Ljava/lang/String;ZZLcom/samsung/android/server/wifi/db/WifiControlListener;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlListener;->onWifiStateChangedBy(Ljava/lang/String;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private notifyToClients(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "com.android.systemui"

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    const-string v1, "com.sec.android.dexsystemui"

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "com.android.settings"

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string v1, "com.samsung.android.sidegesturepad"

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const-string v1, "android_apm"

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 50
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->listeners:Ljava/util/Set;

    .line 51
    .line 52
    new-instance v2, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    invoke-direct {v2, p1, p2, v1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ZZ)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method


# virtual methods
.method public registerListener(Lcom/samsung/android/server/wifi/db/WifiControlListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->listeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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
