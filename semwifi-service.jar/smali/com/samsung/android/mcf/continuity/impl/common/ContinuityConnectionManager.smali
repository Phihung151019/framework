.class final Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;
.super Lcom/samsung/android/mcf/continuity/impl/common/ContinuityBaseConnectionManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mAcceptTimerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContinuityConnectionMapLock:Ljava/lang/Object;

.field private final mContinuitySessionGuest:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionGuest;

.field private final mContinuitySessionHost:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionHost;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityUdpSocketManager;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityBaseConnectionManager;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityUdpSocketManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mContinuityConnectionMapLock:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mAcceptTimerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionHost;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionHost;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mContinuitySessionHost:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionHost;

    .line 37
    .line 38
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionGuest;

    .line 39
    .line 40
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityBaseConnectionManager;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityUdpSocketManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mContinuitySessionGuest:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionGuest;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method final destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mContinuitySessionGuest:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionGuest;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "ContinuitySessionGuest"

    .line 7
    .line 8
    const-string v2, "setSelectedWifiInterface"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityBaseConnectionManager;->mContinuityConnectionMapLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mContinuityConnectionMapLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v1

    .line 30
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityBaseConnectionManager;->mContinuityConnectionMap:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityBaseConnectionManager;->mContinuityConnectionMap:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 49
    .line 50
    .line 51
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mContinuitySessionHost:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionHost;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionHost;->destroy()V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mAcceptTimerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    const-string v0, "closeServer"

    .line 67
    .line 68
    const-string v1, "ContinuityConnectionManager"

    .line 69
    .line 70
    if-nez p0, :cond_0

    .line 71
    .line 72
    const-string p0, "wifi ap is not supported"

    .line 73
    .line 74
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    const-string p0, "-"

    .line 79
    .line 80
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnection;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnectionManager;->mContinuitySessionGuest:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionGuest;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionGuest;->destroy$1()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const/4 p0, 0x0

    .line 113
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v2, "ContinuityConnection"

    .line 118
    .line 119
    const-string v3, "destroy"

    .line 120
    .line 121
    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    throw p0

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    throw p0
.end method
