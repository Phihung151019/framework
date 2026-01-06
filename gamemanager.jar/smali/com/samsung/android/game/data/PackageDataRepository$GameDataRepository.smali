.class public Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
.super Ljava/lang/Object;
.source "PackageDataRepository.java"

# interfaces
.implements Lcom/samsung/android/game/data/PackageDataRepository$PackageDataRepositoryInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/data/PackageDataRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameDataRepository"
.end annotation


# static fields
.field private static final gamePkgNameConfigMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/game/SemPackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final gamePkgNameUserIdsMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameConfigMap:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;ILcom/samsung/android/game/SemPackageConfiguration;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "config"    # Lcom/samsung/android/game/SemPackageConfiguration;

    monitor-enter p0

    .line 92
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 93
    .local v0, "userIdSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    move-object v0, v1

    .line 94
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameConfigMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 91
    .end local v0    # "userIdSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "config":Lcom/samsung/android/game/SemPackageConfiguration;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 123
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameConfigMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 121
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    monitor-enter p0

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "ret":Z
    :try_start_0
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeSet;

    .line 58
    .local v1, "userIds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 61
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    :cond_0
    monitor-exit p0

    return v0

    .line 55
    .end local v0    # "ret":Z
    .end local v1    # "userIds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized containsFromAllUserIds(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "ret":Z
    :try_start_0
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .local v1, "userIds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 70
    :cond_0
    monitor-exit p0

    return v0

    .line 64
    .end local v0    # "ret":Z
    .end local v1    # "userIds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getGameConfig(Ljava/lang/String;)Lcom/samsung/android/game/SemPackageConfiguration;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 84
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameConfigMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/SemPackageConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 84
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getGameConfigs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/game/SemPackageConfiguration;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameConfigMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 88
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getPkgNameUserIdsSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 80
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 75
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    monitor-enter p0

    .line 108
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 109
    .local v0, "userIdSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameConfigMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    :cond_0
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    .end local v0    # "userIdSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeFromAllUserIds(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 102
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->gamePkgNameConfigMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 101
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
