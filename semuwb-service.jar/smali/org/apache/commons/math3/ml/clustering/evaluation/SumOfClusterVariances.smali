.class public Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;
.super Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;
.source "SumOfClusterVariances.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0
    .param p1, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 45
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;, "Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 46
    return-void
.end method


# virtual methods
.method public score(Ljava/util/List;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;>;)D"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;, "Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances<TT;>;"
    .local p1, "clusters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;>;"
    const-wide/16 v0, 0x0

    .line 52
    .local v0, "varianceSum":D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/Cluster;

    .line 53
    .local v3, "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 55
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;->centroidOf(Lorg/apache/commons/math3/ml/clustering/Cluster;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v4

    .line 58
    .local v4, "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    new-instance v5, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 59
    .local v5, "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-virtual {v3}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 60
    .local v7, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-virtual {p0, v7, v4}, Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    .line 61
    .end local v7    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    goto :goto_1

    .line 62
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 65
    .end local v3    # "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    .end local v4    # "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .end local v5    # "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    :cond_1
    goto :goto_0

    .line 66
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-wide v0
.end method
