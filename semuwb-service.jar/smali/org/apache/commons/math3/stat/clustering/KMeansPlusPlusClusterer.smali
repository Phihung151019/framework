.class public Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;
.super Ljava/lang/Object;
.source "KMeansPlusPlusClusterer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final emptyStrategy:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 1
    .param p1, "random"    # Ljava/util/Random;

    .line 75
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->LARGEST_VARIANCE:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;-><init>(Ljava/util/Random;Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V
    .locals 0
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "emptyStrategy"    # Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .line 84
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    .line 86
    iput-object p2, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .line 87
    return-void
.end method

.method private static assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I
    .locals 7
    .param p2, "assignments"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
            "TT;>;>(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;",
            "Ljava/util/Collection<",
            "TT;>;[I)I"
        }
    .end annotation

    .line 230
    .local p0, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 231
    .local v0, "assignedDifferently":I
    const/4 v1, 0x0

    .line 232
    .local v1, "pointIndex":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 233
    .local v3, "p":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    invoke-static {p0, v3}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getNearestCluster(Ljava/util/Collection;Lorg/apache/commons/math3/stat/clustering/Clusterable;)I

    move-result v4

    .line 234
    .local v4, "clusterIndex":I
    aget v5, p2, v1

    if-eq v4, v5, :cond_0

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 238
    :cond_0
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 239
    .local v5, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/stat/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    .line 240
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pointIndex":I
    .local v6, "pointIndex":I
    aput v4, p2, v1

    .line 241
    .end local v3    # "p":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    .end local v4    # "clusterIndex":I
    .end local v5    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    move v1, v6

    goto :goto_0

    .line 243
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "pointIndex":I
    .restart local v1    # "pointIndex":I
    :cond_1
    return v0
.end method

.method private static chooseInitialCenters(Ljava/util/Collection;ILjava/util/Random;)Ljava/util/List;
    .locals 26
    .param p1, "k"    # I
    .param p2, "random"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
            "TT;>;>(",
            "Ljava/util/Collection<",
            "TT;>;I",
            "Ljava/util/Random;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .line 260
    .local p0, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 263
    .local v1, "pointList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 267
    .local v3, "numPoints":I
    new-array v4, v3, [Z

    .line 270
    .local v4, "taken":[Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v5, "resultSet":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    move-object/from16 v6, p2

    invoke-virtual {v6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 275
    .local v7, "firstPointIndex":I
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 277
    .local v8, "firstPoint":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    new-instance v9, Lorg/apache/commons/math3/stat/clustering/Cluster;

    invoke-direct {v9, v8}, Lorg/apache/commons/math3/stat/clustering/Cluster;-><init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const/4 v9, 0x1

    aput-boolean v9, v4, v7

    .line 284
    new-array v10, v3, [D

    .line 288
    .local v10, "minDistSquared":[D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v3, :cond_1

    .line 289
    if-eq v11, v7, :cond_0

    .line 290
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v12

    .line 291
    .local v12, "d":D
    mul-double v14, v12, v12

    aput-wide v14, v10, v11

    .line 288
    .end local v12    # "d":D
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 295
    .end local v11    # "i":I
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v11, v0, :cond_a

    .line 299
    const-wide/16 v11, 0x0

    .line 301
    .local v11, "distSqSum":D
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v3, :cond_3

    .line 302
    aget-boolean v14, v4, v13

    if-nez v14, :cond_2

    .line 303
    aget-wide v14, v10, v13

    add-double/2addr v11, v14

    .line 301
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 309
    .end local v13    # "i":I
    :cond_3
    invoke-virtual {v6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v13

    mul-double/2addr v13, v11

    .line 312
    .local v13, "r":D
    const/4 v15, -0x1

    .line 316
    .local v15, "nextPointIndex":I
    const-wide/16 v16, 0x0

    .line 317
    .local v16, "sum":D
    const/16 v18, 0x0

    move/from16 v25, v18

    move/from16 v18, v9

    move/from16 v9, v25

    .local v9, "i":I
    :goto_3
    if-ge v9, v3, :cond_5

    .line 318
    aget-boolean v19, v4, v9

    if-nez v19, :cond_4

    .line 319
    aget-wide v19, v10, v9

    add-double v16, v16, v19

    .line 320
    cmpl-double v19, v16, v13

    if-ltz v19, :cond_4

    .line 321
    move v15, v9

    .line 322
    goto :goto_4

    .line 317
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 330
    .end local v9    # "i":I
    :cond_5
    :goto_4
    const/4 v9, -0x1

    if-ne v15, v9, :cond_7

    .line 331
    add-int/lit8 v9, v3, -0x1

    .restart local v9    # "i":I
    :goto_5
    if-ltz v9, :cond_7

    .line 332
    aget-boolean v19, v4, v9

    if-nez v19, :cond_6

    .line 333
    move v15, v9

    .line 334
    goto :goto_6

    .line 331
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 340
    .end local v9    # "i":I
    :cond_7
    :goto_6
    if-ltz v15, :cond_a

    .line 342
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 344
    .local v9, "p":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    new-instance v2, Lorg/apache/commons/math3/stat/clustering/Cluster;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/stat/clustering/Cluster;-><init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    aput-boolean v18, v4, v15

    .line 349
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_9

    .line 352
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    if-ge v2, v3, :cond_9

    .line 354
    aget-boolean v19, v4, v2

    if-nez v19, :cond_8

    .line 355
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v0}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v19

    .line 356
    .local v19, "d":D
    mul-double v21, v19, v19

    .line 357
    .local v21, "d2":D
    aget-wide v23, v10, v2

    cmpg-double v0, v21, v23

    if-gez v0, :cond_8

    .line 358
    aput-wide v21, v10, v2

    .line 352
    .end local v19    # "d":D
    .end local v21    # "d2":D
    :cond_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p1

    goto :goto_7

    .line 370
    .end local v2    # "j":I
    .end local v9    # "p":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    .end local v11    # "distSqSum":D
    .end local v13    # "r":D
    .end local v15    # "nextPointIndex":I
    .end local v16    # "sum":D
    :cond_9
    move-object/from16 v2, p0

    move/from16 v0, p1

    move/from16 v9, v18

    goto/16 :goto_1

    .line 372
    :cond_a
    return-object v5
.end method

.method private getFarthestPoint(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 463
    .local v0, "maxDistance":D
    const/4 v2, 0x0

    .line 464
    .local v2, "selectedCluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    const/4 v3, -0x1

    .line 465
    .local v3, "selectedPoint":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 468
    .local v5, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v6

    .line 469
    .local v6, "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v7

    .line 470
    .local v7, "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 471
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    invoke-interface {v9, v6}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v9

    .line 472
    .local v9, "distance":D
    cmpl-double v11, v9, v0

    if-lez v11, :cond_0

    .line 473
    move-wide v0, v9

    .line 474
    move-object v2, v5

    .line 475
    move v3, v8

    .line 470
    .end local v9    # "distance":D
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 479
    .end local v5    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v6    # "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    .end local v7    # "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v8    # "i":I
    :cond_1
    goto :goto_0

    .line 482
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v2, :cond_3

    .line 486
    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object v4

    .line 483
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
.end method

.method private static getNearestCluster(Ljava/util/Collection;Lorg/apache/commons/math3/stat/clustering/Clusterable;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
            "TT;>;>(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;TT;)I"
        }
    .end annotation

    .line 500
    .local p0, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .local p1, "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 501
    .local v0, "minDistance":D
    const/4 v2, 0x0

    .line 502
    .local v2, "clusterIndex":I
    const/4 v3, 0x0

    .line 503
    .local v3, "minCluster":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 504
    .local v5, "c":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v6

    .line 505
    .local v6, "distance":D
    cmpg-double v8, v6, v0

    if-gez v8, :cond_0

    .line 506
    move-wide v0, v6

    .line 507
    move v3, v2

    .line 509
    :cond_0
    nop

    .end local v5    # "c":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v6    # "distance":D
    add-int/lit8 v2, v2, 0x1

    .line 510
    goto :goto_0

    .line 511
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method private getPointFromLargestNumberCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 427
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    const/4 v0, 0x0

    .line 428
    .local v0, "maxNumber":I
    const/4 v1, 0x0

    .line 429
    .local v1, "selected":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 432
    .local v3, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 435
    .local v4, "number":I
    if-le v4, v0, :cond_0

    .line 436
    move v0, v4

    .line 437
    move-object v1, v3

    .line 440
    .end local v3    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v4    # "number":I
    :cond_0
    goto :goto_0

    .line 443
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    .line 448
    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v2

    .line 449
    .local v2, "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object v3

    .line 444
    .end local v2    # "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method private getPointFromLargestVarianceCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 385
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 386
    .local v0, "maxVariance":D
    const/4 v2, 0x0

    .line 387
    .local v2, "selected":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 388
    .local v4, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 391
    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v5

    .line 392
    .local v5, "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v6}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 393
    .local v6, "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 394
    .local v8, "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    invoke-interface {v8, v5}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    .line 395
    .end local v8    # "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    goto :goto_1

    .line 396
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v7

    .line 399
    .local v7, "variance":D
    cmpl-double v9, v7, v0

    if-lez v9, :cond_1

    .line 400
    move-wide v0, v7

    .line 401
    move-object v2, v4

    .line 405
    .end local v4    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v5    # "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    .end local v6    # "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .end local v7    # "variance":D
    :cond_1
    goto :goto_0

    .line 408
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v2, :cond_3

    .line 413
    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v3

    .line 414
    .local v3, "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object v4

    .line 409
    .end local v3    # "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;II)Ljava/util/List;
    .locals 11
    .param p2, "k"    # I
    .param p3, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;II)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_5

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    invoke-static {p1, p2, v0}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->chooseInitialCenters(Ljava/util/Collection;ILjava/util/Random;)Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 177
    .local v2, "assignments":[I
    invoke-static {v0, p1, v2}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I

    .line 180
    if-gez p3, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    move v3, p3

    .line 181
    .local v3, "max":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "count":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 182
    const/4 v5, 0x0

    .line 183
    .local v5, "emptyCluster":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v6, "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 186
    .local v8, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 187
    sget-object v9, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$1;->$SwitchMap$org$apache$commons$math3$stat$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy:[I

    iget-object v10, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-virtual {v10}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 198
    new-instance v9, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v10, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v9, v10, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v9

    .line 195
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getFarthestPoint(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v9

    .line 196
    .local v9, "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    goto :goto_3

    .line 192
    .end local v9    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getPointFromLargestNumberCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v9

    .line 193
    .restart local v9    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    goto :goto_3

    .line 189
    .end local v9    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :pswitch_2
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getPointFromLargestVarianceCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v9

    .line 190
    .restart local v9    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    nop

    .line 200
    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    .line 202
    .end local v9    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :cond_1
    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v9

    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->centroidOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 204
    .restart local v9    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    :goto_4
    new-instance v10, Lorg/apache/commons/math3/stat/clustering/Cluster;

    invoke-direct {v10, v9}, Lorg/apache/commons/math3/stat/clustering/Cluster;-><init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v8    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .end local v9    # "newCenter":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    goto :goto_2

    .line 206
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {v6, p1, v2}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I

    move-result v7

    .line 207
    .local v7, "changes":I
    move-object v0, v6

    .line 211
    if-nez v7, :cond_3

    if-nez v5, :cond_3

    .line 212
    return-object v0

    .line 181
    .end local v5    # "emptyCluster":Z
    .end local v6    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v7    # "changes":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 215
    .end local v4    # "count":I
    :cond_4
    return-object v0

    .line 168
    .end local v0    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v2    # "assignments":[I
    .end local v3    # "max":I
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cluster(Ljava/util/Collection;III)Ljava/util/List;
    .locals 21
    .param p2, "k"    # I
    .param p3, "numTrials"    # I
    .param p4, "maxIterationsPerTrial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;III)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 109
    .local v0, "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 112
    .local v1, "bestVarianceSum":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move/from16 v4, p3

    if-ge v3, v4, :cond_4

    .line 115
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p4

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->cluster(Ljava/util/Collection;II)Ljava/util/List;

    move-result-object v9

    .line 118
    .local v9, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    const-wide/16 v10, 0x0

    .line 119
    .local v10, "varianceSum":D
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 120
    .local v13, "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    invoke-virtual {v13}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 123
    invoke-virtual {v13}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v14

    .line 124
    .local v14, "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    new-instance v15, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v15}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 125
    .local v15, "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-virtual {v13}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    .end local v0    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .local v18, "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    move-object/from16 v0, v17

    check-cast v0, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 126
    .local v0, "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    move-wide/from16 v19, v1

    .end local v1    # "bestVarianceSum":D
    .local v19, "bestVarianceSum":D
    invoke-interface {v0, v14}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    .line 127
    .end local v0    # "point":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    goto :goto_2

    .line 125
    .end local v18    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v19    # "bestVarianceSum":D
    .local v0, "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v1    # "bestVarianceSum":D
    :cond_0
    move-object/from16 v18, v0

    move-wide/from16 v19, v1

    .line 128
    .end local v0    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v1    # "bestVarianceSum":D
    .end local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v19    # "bestVarianceSum":D
    invoke-virtual {v15}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v0

    add-double/2addr v10, v0

    goto :goto_3

    .line 120
    .end local v14    # "center":Lorg/apache/commons/math3/stat/clustering/Clusterable;, "TT;"
    .end local v15    # "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .end local v18    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v19    # "bestVarianceSum":D
    .restart local v0    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v1    # "bestVarianceSum":D
    :cond_1
    move-object/from16 v18, v0

    move-wide/from16 v19, v1

    .line 131
    .end local v0    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v1    # "bestVarianceSum":D
    .end local v13    # "cluster":Lorg/apache/commons/math3/stat/clustering/Cluster;, "Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;"
    .restart local v18    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v19    # "bestVarianceSum":D
    :goto_3
    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    goto :goto_1

    .line 119
    .end local v18    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v19    # "bestVarianceSum":D
    .restart local v0    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v1    # "bestVarianceSum":D
    :cond_2
    move-object/from16 v18, v0

    move-wide/from16 v19, v1

    .line 133
    .end local v0    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v1    # "bestVarianceSum":D
    .end local v12    # "i$":Ljava/util/Iterator;
    .restart local v18    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v19    # "bestVarianceSum":D
    cmpg-double v0, v10, v19

    if-gtz v0, :cond_3

    .line 135
    move-object v0, v9

    .line 136
    .end local v18    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v0    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    move-wide v1, v10

    .end local v19    # "bestVarianceSum":D
    .restart local v1    # "bestVarianceSum":D
    goto :goto_4

    .line 133
    .end local v0    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v1    # "bestVarianceSum":D
    .restart local v18    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v19    # "bestVarianceSum":D
    :cond_3
    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    .line 112
    .end local v9    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v10    # "varianceSum":D
    .end local v18    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v19    # "bestVarianceSum":D
    .restart local v0    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .restart local v1    # "bestVarianceSum":D
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v18, v0

    .line 142
    .end local v0    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    .end local v3    # "i":I
    .restart local v18    # "best":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/stat/clustering/Cluster<TT;>;>;"
    return-object v18
.end method
