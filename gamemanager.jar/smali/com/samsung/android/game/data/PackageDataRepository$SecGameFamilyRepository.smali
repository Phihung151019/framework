.class public Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;
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
    name = "SecGameFamilyRepository"
.end annotation


# static fields
.field private static final secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;
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

    .line 129
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    monitor-enter p0

    .line 152
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 153
    .local v0, "userIdSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    move-object v0, v1

    .line 154
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 151
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

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 178
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 177
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;
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

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "ret":Z
    :try_start_0
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeSet;

    .line 145
    .local v1, "userIds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 148
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;
    :cond_0
    monitor-exit p0

    return v0

    .line 142
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

    .line 138
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 138
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;
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

    .line 133
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 133
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;
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

    .line 165
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 166
    .local v0, "userIdSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;
    :cond_0
    sget-object v1, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 164
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

    .line 160
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->secGameFamilyPkgNameUserIdsMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 159
    .end local p0    # "this":Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
