.class public Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "DBSCANClusterer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Lorg/apache/commons/math3/ml/clustering/Clusterer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final eps:D

.field private final minPts:I


# direct methods
.method public constructor <init>(DI)V
    .locals 1
    .param p1, "eps"    # D
    .param p3, "minPts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v0}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;-><init>(DILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 86
    return-void
.end method

.method public constructor <init>(DILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 2
    .param p1, "eps"    # D
    .param p3, "minPts"    # I
    .param p4, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    invoke-direct {p0, p4}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 100
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 103
    if-ltz p3, :cond_0

    .line 106
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->eps:D

    .line 107
    iput p3, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    .line 108
    return-void

    .line 104
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 101
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method private expandCluster(Lorg/apache/commons/math3/ml/clustering/Cluster;Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/List;Ljava/util/Collection;Ljava/util/Map;)Lorg/apache/commons/math3/ml/clustering/Cluster;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;TT;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
            "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;",
            ">;)",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    .local p1, "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    .local p2, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .local p3, "neighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p4, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p5, "visited":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;>;"
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/ml/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    .line 175
    sget-object v0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->PART_OF_CLUSTER:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    invoke-interface {p5, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v0, "seeds":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 179
    .local v1, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 181
    .local v2, "current":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    .line 183
    .local v3, "pStatus":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;
    if-nez v3, :cond_0

    .line 184
    invoke-direct {p0, v2, p4}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->getNeighbors(Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 185
    .local v4, "currentNeighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    if-lt v5, v6, :cond_0

    .line 186
    invoke-direct {p0, v0, v4}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 190
    .end local v4    # "currentNeighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    sget-object v4, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->PART_OF_CLUSTER:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    if-eq v3, v4, :cond_1

    .line 191
    sget-object v4, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->PART_OF_CLUSTER:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    invoke-interface {p5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/ml/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    .line 195
    :cond_1
    nop

    .end local v2    # "current":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v3    # "pStatus":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;
    add-int/lit8 v1, v1, 0x1

    .line 196
    goto :goto_0

    .line 197
    :cond_2
    return-object p1
.end method

.method private getNeighbors(Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    .local p1, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .local p2, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "neighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 210
    .local v2, "neighbor":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    if-eq p1, v2, :cond_0

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->eps:D

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    .line 211
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v2    # "neighbor":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    :cond_0
    goto :goto_0

    .line 214
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method private merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    .local p1, "one":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "two":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 226
    .local v0, "oneSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 227
    .local v2, "item":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v2    # "item":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    :cond_0
    goto :goto_0

    .line 231
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object p1
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v7, v1

    .line 142
    .local v7, "visited":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 143
    .local v4, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 144
    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0, v4, p1}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->getNeighbors(Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    .line 147
    .local v5, "neighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    if-lt v2, v3, :cond_1

    .line 149
    new-instance v3, Lorg/apache/commons/math3/ml/clustering/Cluster;

    invoke-direct {v3}, Lorg/apache/commons/math3/ml/clustering/Cluster;-><init>()V

    .line 150
    .local v3, "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    move-object v2, p0

    move-object v6, p1

    .end local p1    # "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local v6, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->expandCluster(Lorg/apache/commons/math3/ml/clustering/Cluster;Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/List;Ljava/util/Collection;Ljava/util/Map;)Lorg/apache/commons/math3/ml/clustering/Cluster;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v3    # "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    goto :goto_1

    .line 152
    .end local v6    # "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .restart local p1    # "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_1
    move-object v6, p1

    .end local p1    # "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .restart local v6    # "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    sget-object p1, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->NOISE:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    invoke-interface {v7, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v4    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v5    # "neighbors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    move-object p1, v6

    goto :goto_0

    .line 156
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .restart local p1    # "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_2
    return-object v0
.end method

.method public getEps()D
    .locals 2

    .line 115
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->eps:D

    return-wide v0
.end method

.method public getMinPts()I
    .locals 1

    .line 123
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;, "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    return v0
.end method
