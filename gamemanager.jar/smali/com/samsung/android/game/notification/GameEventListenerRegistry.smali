.class Lcom/samsung/android/game/notification/GameEventListenerRegistry;
.super Ljava/lang/Object;
.source "GameEventListenerRegistry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameEventListenerRegistry"

.field private static final eventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final listenerFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/PendingIntent;",
            "Lcom/samsung/android/game/notification/GameEventFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->eventListeners:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->listenerFilters:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$register$0(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 1
    .param p0, "k"    # Ljava/lang/Integer;

    .line 25
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getAllListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Landroid/app/PendingIntent;",
            "Lcom/samsung/android/game/notification/GameEventFilter;",
            ">;>;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->listenerFilters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getFilterForListener(Landroid/app/PendingIntent;)Lcom/samsung/android/game/notification/GameEventFilter;
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 51
    const-string v0, "GameEventListenerRegistry"

    if-nez p1, :cond_0

    .line 52
    const-string v1, "getFilterForListener: pendingIntent is null"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilterForListener: pendingIntentCreator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->listenerFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/notification/GameEventFilter;

    return-object v0
.end method

.method getListenersForEvent(I)Ljava/util/Set;
    .locals 2
    .param p1, "gameEvent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getListenersForEvent: gameEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameEventListenerRegistry"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->eventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method declared-synchronized register(Landroid/app/PendingIntent;Lcom/samsung/android/game/notification/GameEventFilter;)V
    .locals 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "filter"    # Lcom/samsung/android/game/notification/GameEventFilter;

    monitor-enter p0

    .line 21
    :try_start_0
    const-string v0, "GameEventListenerRegistry"

    const-string v1, "register"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->unregister(Landroid/app/PendingIntent;)V

    .line 23
    sget-object v0, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->listenerFilters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p2}, Lcom/samsung/android/game/notification/GameEventFilter;->targetEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 25
    .local v1, "event":I
    sget-object v2, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->eventListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/notification/GameEventListenerRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/game/notification/GameEventListenerRegistry$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    nop

    .end local v1    # "event":I
    goto :goto_0

    .line 27
    .end local p0    # "this":Lcom/samsung/android/game/notification/GameEventListenerRegistry;
    :cond_0
    monitor-exit p0

    return-void

    .line 20
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local p2    # "filter":Lcom/samsung/android/game/notification/GameEventFilter;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized unregister(Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    monitor-enter p0

    .line 30
    :try_start_0
    const-string v0, "GameEventListenerRegistry"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->listenerFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/notification/GameEventFilter;

    .line 32
    .local v0, "removed":Lcom/samsung/android/game/notification/GameEventFilter;
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/game/notification/GameEventFilter;->targetEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 34
    .local v2, "event":I
    sget-object v3, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->eventListeners:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 35
    .local v3, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    sget-object v4, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->eventListeners:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v2    # "event":I
    .end local v3    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .end local p0    # "this":Lcom/samsung/android/game/notification/GameEventListenerRegistry;
    :cond_0
    goto :goto_0

    .line 43
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    .end local v0    # "removed":Lcom/samsung/android/game/notification/GameEventFilter;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
