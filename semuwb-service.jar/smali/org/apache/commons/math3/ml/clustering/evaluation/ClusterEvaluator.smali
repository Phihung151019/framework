.class public abstract Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;
.super Ljava/lang/Object;
.source "ClusterEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final measure:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;, "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v0}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 52
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;, "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;->measure:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 54
    return-void
.end method


# virtual methods
.method protected centroidOf(Lorg/apache/commons/math3/ml/clustering/Cluster;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ml/clustering/Clusterable;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;, "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator<TT;>;"
    .local p1, "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x0

    return-object v1

    .line 104
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    if-eqz v1, :cond_1

    .line 105
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v1

    return-object v1

    .line 108
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-interface {v1}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v1

    array-length v1, v1

    .line 109
    .local v1, "dimension":I
    new-array v2, v1, [D

    .line 110
    .local v2, "centroid":[D
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 111
    .local v4, "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-interface {v4}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v5

    .line 112
    .local v5, "point":[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_2

    .line 113
    aget-wide v7, v2, v6

    aget-wide v9, v5, v6

    add-double/2addr v7, v9

    aput-wide v7, v2, v6

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 115
    .end local v4    # "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v5    # "point":[D
    .end local v6    # "i":I
    :cond_2
    goto :goto_0

    .line 116
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 117
    aget-wide v4, v2, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 119
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    return-object v3
.end method

.method protected distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D
    .locals 3
    .param p1, "p1"    # Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .param p2, "p2"    # Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 87
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;, "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;->measure:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-interface {p1}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public isBetterScore(DD)Z
    .locals 1
    .param p1, "score1"    # D
    .param p3, "score2"    # D

    .line 75
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;, "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator<TT;>;"
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract score(Ljava/util/List;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;>;)D"
        }
    .end annotation
.end method
