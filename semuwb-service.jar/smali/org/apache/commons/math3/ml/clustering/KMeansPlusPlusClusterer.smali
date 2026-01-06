.class public Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "KMeansPlusPlusClusterer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
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
.field private final emptyStrategy:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

.field private final k:I

.field private final maxIterations:I

.field private final random:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "k"    # I

    .line 83
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(II)V

    .line 84
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "k"    # I
    .param p2, "maxIterations"    # I

    .line 98
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v0}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 99
    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 1
    .param p1, "k"    # I
    .param p2, "maxIterations"    # I
    .param p3, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 112
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 113
    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 6
    .param p1, "k"    # I
    .param p2, "maxIterations"    # I
    .param p3, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .param p4, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 129
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    sget-object v5, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->LARGEST_VARIANCE:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "k":I
    .end local p2    # "maxIterations":I
    .end local p3    # "measure":Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .end local p4    # "random":Lorg/apache/commons/math3/random/RandomGenerator;
    .local v1, "k":I
    .local v2, "maxIterations":I
    .local v3, "measure":Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .local v4, "random":Lorg/apache/commons/math3/random/RandomGenerator;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V

    .line 130
    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V
    .locals 0
    .param p1, "k"    # I
    .param p2, "maxIterations"    # I
    .param p3, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .param p4, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p5, "emptyStrategy"    # Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .line 146
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 147
    iput p1, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    .line 148
    iput p2, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->maxIterations:I

    .line 149
    iput-object p4, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 150
    iput-object p5, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .line 151
    return-void
.end method

.method private assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I
    .locals 7
    .param p3, "assignments"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;",
            "Ljava/util/Collection<",
            "TT;>;[I)I"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .local p2, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 266
    .local v0, "assignedDifferently":I
    const/4 v1, 0x0

    .line 267
    .local v1, "pointIndex":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 268
    .local v3, "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->getNearestCluster(Ljava/util/Collection;Lorg/apache/commons/math3/ml/clustering/Clusterable;)I

    move-result v4

    .line 269
    .local v4, "clusterIndex":I
    aget v5, p3, v1

    if-eq v4, v5, :cond_0

    .line 270
    add-int/lit8 v0, v0, 0x1

    .line 273
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 274
    .local v5, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    .line 275
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pointIndex":I
    .local v6, "pointIndex":I
    aput v4, p3, v1

    .line 276
    .end local v3    # "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v4    # "clusterIndex":I
    .end local v5    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    move v1, v6

    goto :goto_0

    .line 278
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "pointIndex":I
    .restart local v1    # "pointIndex":I
    :cond_1
    return v0
.end method

.method private centroidOf(Ljava/util/Collection;I)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 9
    .param p2, "dimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;I)",
            "Lorg/apache/commons/math3/ml/clustering/Clusterable;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-array v0, p2, [D

    .line 553
    .local v0, "centroid":[D
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 554
    .local v2, "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-interface {v2}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v3

    .line 555
    .local v3, "point":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 556
    aget-wide v5, v0, v4

    aget-wide v7, v3, v4

    add-double/2addr v5, v7

    aput-wide v5, v0, v4

    .line 555
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 558
    .end local v2    # "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v3    # "point":[D
    .end local v4    # "i":I
    :cond_0
    goto :goto_0

    .line 559
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 560
    aget-wide v2, v0, v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 562
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    return-object v1
.end method

.method private chooseInitialCenters(Ljava/util/Collection;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 294
    .local v1, "pointList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 298
    .local v3, "numPoints":I
    new-array v4, v3, [Z

    .line 301
    .local v4, "taken":[Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v5, "resultSet":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    iget-object v6, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v6

    .line 306
    .local v6, "firstPointIndex":I
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 308
    .local v7, "firstPoint":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    new-instance v8, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-direct {v8, v7}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    const/4 v8, 0x1

    aput-boolean v8, v4, v6

    .line 315
    new-array v9, v3, [D

    .line 319
    .local v9, "minDistSquared":[D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_1

    .line 320
    if-eq v10, v6, :cond_0

    .line 321
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-virtual {v0, v7, v11}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v11

    .line 322
    .local v11, "d":D
    mul-double v13, v11, v11

    aput-wide v13, v9, v10

    .line 319
    .end local v11    # "d":D
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 326
    .end local v10    # "i":I
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    iget v11, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    if-ge v10, v11, :cond_b

    .line 330
    const-wide/16 v10, 0x0

    .line 332
    .local v10, "distSqSum":D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v3, :cond_3

    .line 333
    aget-boolean v13, v4, v12

    if-nez v13, :cond_2

    .line 334
    aget-wide v13, v9, v12

    add-double/2addr v10, v13

    .line 332
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 340
    .end local v12    # "i":I
    :cond_3
    iget-object v12, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v12}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v12

    mul-double/2addr v12, v10

    .line 343
    .local v12, "r":D
    const/4 v14, -0x1

    .line 347
    .local v14, "nextPointIndex":I
    const-wide/16 v15, 0x0

    .line 348
    .local v15, "sum":D
    const/16 v17, 0x0

    move/from16 v25, v17

    move/from16 v17, v8

    move/from16 v8, v25

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_5

    .line 349
    aget-boolean v18, v4, v8

    if-nez v18, :cond_4

    .line 350
    aget-wide v18, v9, v8

    add-double v15, v15, v18

    .line 351
    cmpl-double v18, v15, v12

    if-ltz v18, :cond_4

    .line 352
    move v14, v8

    .line 353
    goto :goto_4

    .line 348
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 361
    .end local v8    # "i":I
    :cond_5
    :goto_4
    const/4 v8, -0x1

    if-ne v14, v8, :cond_7

    .line 362
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_5
    if-ltz v8, :cond_7

    .line 363
    aget-boolean v18, v4, v8

    if-nez v18, :cond_6

    .line 364
    move v14, v8

    .line 365
    goto :goto_6

    .line 362
    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 371
    .end local v8    # "i":I
    :cond_7
    :goto_6
    if-ltz v14, :cond_a

    .line 373
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 375
    .local v8, "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    new-instance v2, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    aput-boolean v17, v4, v14

    .line 380
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v18, v4

    .end local v4    # "taken":[Z
    .local v18, "taken":[Z
    iget v4, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    if-ge v2, v4, :cond_9

    .line 383
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    if-ge v2, v3, :cond_9

    .line 385
    aget-boolean v4, v18, v2

    if-nez v4, :cond_8

    .line 386
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-virtual {v0, v8, v4}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v19

    .line 387
    .local v19, "d":D
    mul-double v21, v19, v19

    .line 388
    .local v21, "d2":D
    aget-wide v23, v9, v2

    cmpg-double v4, v21, v23

    if-gez v4, :cond_8

    .line 389
    aput-wide v21, v9, v2

    .line 383
    .end local v19    # "d":D
    .end local v21    # "d2":D
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 401
    .end local v2    # "j":I
    .end local v8    # "p":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v10    # "distSqSum":D
    .end local v12    # "r":D
    .end local v14    # "nextPointIndex":I
    .end local v15    # "sum":D
    :cond_9
    move-object/from16 v2, p1

    move/from16 v8, v17

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 371
    .end local v18    # "taken":[Z
    .restart local v4    # "taken":[Z
    .restart local v10    # "distSqSum":D
    .restart local v12    # "r":D
    .restart local v14    # "nextPointIndex":I
    .restart local v15    # "sum":D
    :cond_a
    move-object/from16 v18, v4

    .end local v4    # "taken":[Z
    .restart local v18    # "taken":[Z
    goto :goto_8

    .line 326
    .end local v10    # "distSqSum":D
    .end local v12    # "r":D
    .end local v14    # "nextPointIndex":I
    .end local v15    # "sum":D
    .end local v18    # "taken":[Z
    .restart local v4    # "taken":[Z
    :cond_b
    move-object/from16 v18, v4

    .line 403
    .end local v4    # "taken":[Z
    .restart local v18    # "taken":[Z
    :goto_8
    return-object v5
.end method

.method private getFarthestPoint(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 494
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 495
    .local v0, "maxDistance":D
    const/4 v2, 0x0

    .line 496
    .local v2, "selectedCluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    const/4 v3, -0x1

    .line 497
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

    check-cast v5, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 500
    .local v5, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v6

    .line 501
    .local v6, "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getPoints()Ljava/util/List;

    move-result-object v7

    .line 502
    .local v7, "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 503
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-virtual {p0, v9, v6}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v9

    .line 504
    .local v9, "distance":D
    cmpl-double v11, v9, v0

    if-lez v11, :cond_0

    .line 505
    move-wide v0, v9

    .line 506
    move-object v2, v5

    .line 507
    move v3, v8

    .line 502
    .end local v9    # "distance":D
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 511
    .end local v5    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v6    # "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .end local v7    # "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v8    # "i":I
    :cond_1
    goto :goto_0

    .line 514
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v2, :cond_3

    .line 518
    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object v4

    .line 515
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
.end method

.method private getNearestCluster(Ljava/util/Collection;Lorg/apache/commons/math3/ml/clustering/Clusterable;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;TT;)I"
        }
    .end annotation

    .line 530
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .local p2, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 531
    .local v0, "minDistance":D
    const/4 v2, 0x0

    .line 532
    .local v2, "clusterIndex":I
    const/4 v3, 0x0

    .line 533
    .local v3, "minCluster":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 534
    .local v5, "c":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v6

    invoke-virtual {p0, p2, v6}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v6

    .line 535
    .local v6, "distance":D
    cmpg-double v8, v6, v0

    if-gez v8, :cond_0

    .line 536
    move-wide v0, v6

    .line 537
    move v3, v2

    .line 539
    :cond_0
    nop

    .end local v5    # "c":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v6    # "distance":D
    add-int/lit8 v2, v2, 0x1

    .line 540
    goto :goto_0

    .line 541
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method private getPointFromLargestNumberCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 459
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;>;"
    const/4 v0, 0x0

    .line 460
    .local v0, "maxNumber":I
    const/4 v1, 0x0

    .line 461
    .local v1, "selected":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/Cluster;

    .line 464
    .local v3, "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 467
    .local v4, "number":I
    if-le v4, v0, :cond_0

    .line 468
    move v0, v4

    .line 469
    move-object v1, v3

    .line 472
    .end local v3    # "cluster":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    .end local v4    # "number":I
    :cond_0
    goto :goto_0

    .line 475
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    .line 480
    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v2

    .line 481
    .local v2, "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object v3

    .line 476
    .end local v2    # "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method private getPointFromLargestVarianceCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 416
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "clusters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 417
    .local v0, "maxVariance":D
    const/4 v2, 0x0

    .line 418
    .local v2, "selected":Lorg/apache/commons/math3/ml/clustering/Cluster;, "Lorg/apache/commons/math3/ml/clustering/Cluster<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 419
    .local v4, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 422
    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v5

    .line 423
    .local v5, "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v6}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 424
    .local v6, "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getPoints()Ljava/util/List;

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

    check-cast v8, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 425
    .local v8, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    invoke-virtual {p0, v8, v5}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    .line 426
    .end local v8    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    goto :goto_1

    .line 427
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v7

    .line 430
    .local v7, "variance":D
    cmpl-double v9, v7, v0

    if-lez v9, :cond_1

    .line 431
    move-wide v0, v7

    .line 432
    move-object v2, v4

    .line 436
    .end local v4    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v5    # "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .end local v6    # "stat":Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .end local v7    # "variance":D
    :cond_1
    goto :goto_0

    .line 439
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v2, :cond_3

    .line 444
    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v3

    .line 445
    .local v3, "selectedPoints":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object v4

    .line 440
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
.method public cluster(Ljava/util/Collection;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 200
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 203
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    .line 208
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->chooseInitialCenters(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 213
    .local v1, "assignments":[I
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I

    .line 216
    iget v3, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->maxIterations:I

    if-gez v3, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    iget v3, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->maxIterations:I

    .line 217
    .local v3, "max":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "count":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 218
    const/4 v5, 0x0

    .line 219
    .local v5, "emptyCluster":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v6, "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 222
    .local v8, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getPoints()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 223
    sget-object v9, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$1;->$SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy:[I

    iget-object v10, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-virtual {v10}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 234
    new-instance v9, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v10, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v9, v10, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v9

    .line 231
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->getFarthestPoint(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v9

    .line 232
    .local v9, "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    goto :goto_3

    .line 228
    .end local v9    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->getPointFromLargestNumberCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v9

    .line 229
    .restart local v9    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    goto :goto_3

    .line 225
    .end local v9    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    :pswitch_2
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->getPointFromLargestVarianceCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v9

    .line 226
    .restart local v9    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    nop

    .line 236
    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    .line 238
    .end local v9    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    :cond_1
    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getPoints()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v10

    array-length v10, v10

    invoke-direct {p0, v9, v10}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->centroidOf(Ljava/util/Collection;I)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v9

    .line 240
    .restart local v9    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    :goto_4
    new-instance v10, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-direct {v10, v9}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v8    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v9    # "newCenter":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    goto :goto_2

    .line 242
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, v6, p1, v1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I

    move-result v7

    .line 243
    .local v7, "changes":I
    move-object v0, v6

    .line 247
    if-nez v7, :cond_3

    if-nez v5, :cond_3

    .line 248
    return-object v0

    .line 217
    .end local v5    # "emptyCluster":Z
    .end local v6    # "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .end local v7    # "changes":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 251
    .end local v4    # "count":I
    :cond_4
    return-object v0

    .line 204
    .end local v0    # "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    .end local v1    # "assignments":[I
    .end local v3    # "max":I
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEmptyClusterStrategy()Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
    .locals 1

    .line 182
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    return-object v0
.end method

.method public getK()I
    .locals 1

    .line 158
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->k:I

    return v0
.end method

.method public getMaxIterations()I
    .locals 1

    .line 166
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->maxIterations:I

    return v0
.end method

.method public getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 1

    .line 174
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;, "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-object v0
.end method
