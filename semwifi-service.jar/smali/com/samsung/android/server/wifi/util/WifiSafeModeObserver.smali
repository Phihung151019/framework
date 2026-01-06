.class public Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private isRegistered:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final observer:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->listeners:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlock(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->listeners:Ljava/util/Set;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->context:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 21
    .line 22
    new-instance p1, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;

    .line 23
    .line 24
    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;-><init>(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;Landroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->observer:Landroid/database/ContentObserver;

    .line 28
    .line 29
    return-void
.end method

.method private registerObserver()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isRegistered:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->context:Landroid/content/Context;

    .line 7
    .line 8
    const-string v2, "safe_wifi"

    .line 9
    .line 10
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->observer:Landroid/database/ContentObserver;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isRegistered:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->context:Landroid/content/Context;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->observer:Landroid/database/ContentObserver;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public isWifiSafeModeEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->context:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "safe_wifi"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    return v2
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isRegistered:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->registerObserver()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->lock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->listeners:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->listeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->listeners:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->unregisterObserver()V

    .line 19
    .line 20
    .line 21
    :cond_0
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
