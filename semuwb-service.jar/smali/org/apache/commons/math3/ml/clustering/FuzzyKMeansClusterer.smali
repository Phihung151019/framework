.class public Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "FuzzyKMeansClusterer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Lorg/apache/commons/math3/ml/clustering/Clusterer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EPSILON:D = 0.001


# instance fields
.field private clusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final epsilon:D

.field private final fuzziness:D

.field private final k:I

.field private final maxIterations:I

.field private membershipMatrix:[[D

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final random:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(ID)V
    .locals 6
    .param p1, "k"    # I
    .param p2, "fuzziness"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    new-instance v5, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v5}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .end local p1    # "k":I
    .end local p2    # "fuzziness":D
    .local v1, "k":I
    .local v2, "fuzziness":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;-><init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 108
    return-void
.end method

.method public constructor <init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 9
    .param p1, "k"    # I
    .param p2, "fuzziness"    # D
    .param p4, "maxIterations"    # I
    .param p5, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    new-instance v8, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    invoke-direct {v8}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>()V

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    .end local p1    # "k":I
    .end local p2    # "fuzziness":D
    .end local p4    # "maxIterations":I
    .end local p5    # "measure":Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .local v1, "k":I
    .local v2, "fuzziness":D
    .local v4, "maxIterations":I
    .local v5, "measure":Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;-><init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;DLorg/apache/commons/math3/random/RandomGenerator;)V

    .line 124
    return-void
.end method

.method public constructor <init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;DLorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 4
    .param p1, "k"    # I
    .param p2, "fuzziness"    # D
    .param p4, "maxIterations"    # I
    .param p5, "measure"    # Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .param p6, "epsilon"    # D
    .param p8, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 145
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p2, v0

    if-lez v2, :cond_0

    .line 148
    iput p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    .line 149
    iput-wide p2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    .line 150
    iput p4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    .line 151
    iput-wide p6, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->epsilon:D

    .line 152
    iput-object p8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 154
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    .line 155
    iput-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    .line 156
    iput-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    .line 157
    return-void

    .line 146
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method private calculateMaxMembershipChange([[D)D
    .locals 8
    .param p1, "matrix"    # [[D

    .line 405
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const-wide/16 v0, 0x0

    .line 406
    .local v0, "maxMembership":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 407
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 408
    iget-object v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v3

    aget-object v6, p1, v2

    aget-wide v6, v6, v3

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 409
    .local v4, "v":D
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 407
    .end local v4    # "v":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 406
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method private initializeMembershipMatrix()V
    .locals 5

    .line 389
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 390
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    if-ge v1, v2, :cond_0

    .line 391
    iget-object v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 393
    .end local v1    # "j":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v2, v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->normalizeArray([DD)[D

    move-result-object v2

    aput-object v2, v1, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private saveMembershipMatrix([[D)V
    .locals 5
    .param p1, "matrix"    # [[D

    .line 421
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 422
    iget-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iget-object v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateClusterCenters()V
    .locals 21

    .line 318
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 319
    .local v1, "j":I
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .local v2, "newClusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;>;"
    iget-object v3, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 321
    .local v4, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v5

    .line 322
    .local v5, "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    const/4 v6, 0x0

    .line 323
    .local v6, "i":I
    invoke-interface {v5}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [D

    .line 324
    .local v7, "arr":[D
    const-wide/16 v8, 0x0

    .line 325
    .local v8, "sum":D
    iget-object v10, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 326
    .local v11, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    iget-object v12, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v12, v12, v6

    aget-wide v12, v12, v1

    iget-wide v14, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    invoke-static {v12, v13, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v12

    .line 327
    .local v12, "u":D
    invoke-interface {v11}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v14

    .line 328
    .local v14, "pointArr":[D
    const/4 v15, 0x0

    .local v15, "idx":I
    :goto_2
    move/from16 v16, v1

    .end local v1    # "j":I
    .local v16, "j":I
    array-length v1, v7

    if-ge v15, v1, :cond_0

    .line 329
    aget-wide v17, v7, v15

    aget-wide v19, v14, v15

    mul-double v19, v19, v12

    add-double v17, v17, v19

    aput-wide v17, v7, v15

    .line 328
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    goto :goto_2

    .line 331
    .end local v15    # "idx":I
    :cond_0
    add-double/2addr v8, v12

    .line 332
    nop

    .end local v11    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v12    # "u":D
    .end local v14    # "pointArr":[D
    add-int/lit8 v6, v6, 0x1

    .line 333
    move/from16 v1, v16

    goto :goto_1

    .line 325
    .end local v16    # "j":I
    .restart local v1    # "j":I
    :cond_1
    move/from16 v16, v1

    .line 334
    .end local v1    # "j":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v16    # "j":I
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v8

    invoke-static {v10, v11, v7}, Lorg/apache/commons/math3/util/MathArrays;->scaleInPlace(D[D)V

    .line 335
    new-instance v1, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    new-instance v10, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    invoke-direct {v10, v7}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    invoke-direct {v1, v10}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    nop

    .end local v4    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v5    # "center":Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .end local v6    # "i":I
    .end local v7    # "arr":[D
    .end local v8    # "sum":D
    add-int/lit8 v1, v16, 0x1

    .line 337
    .end local v16    # "j":I
    .restart local v1    # "j":I
    goto :goto_0

    .line 320
    :cond_2
    move/from16 v16, v1

    .line 338
    .end local v1    # "j":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v16    # "j":I
    iget-object v1, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 339
    iput-object v2, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    .line 340
    return-void
.end method

.method private updateMembershipMatrix()V
    .locals 25

    .line 347
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 348
    iget-object v2, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 349
    .local v2, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    const-wide/16 v3, 0x1

    .line 350
    .local v3, "maxMembership":D
    const/4 v5, -0x1

    .line 351
    .local v5, "newCluster":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget-object v7, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 352
    const-wide/16 v7, 0x0

    .line 353
    .local v7, "sum":D
    iget-object v9, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v9}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    .line 355
    .local v9, "distA":D
    const-wide/16 v11, 0x0

    cmpl-double v13, v9, v11

    if-eqz v13, :cond_2

    .line 356
    iget-object v13, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 357
    .local v16, "c":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    move-wide/from16 v17, v11

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    .line 358
    .local v11, "distB":D
    cmpl-double v19, v11, v17

    if-nez v19, :cond_0

    .line 359
    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 360
    move-wide/from16 v21, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    .line 362
    :cond_0
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    div-double v14, v9, v11

    move-wide/from16 v21, v3

    .end local v3    # "maxMembership":D
    .local v21, "maxMembership":D
    iget-wide v3, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    sub-double v3, v3, v19

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v3, v23, v3

    invoke-static {v14, v15, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    add-double/2addr v7, v3

    .line 363
    .end local v11    # "distB":D
    .end local v16    # "c":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    move-wide/from16 v11, v17

    move-wide/from16 v3, v21

    goto :goto_2

    .line 356
    .end local v21    # "maxMembership":D
    .restart local v3    # "maxMembership":D
    :cond_1
    move-wide/from16 v21, v3

    move-wide/from16 v17, v11

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .end local v3    # "maxMembership":D
    .restart local v21    # "maxMembership":D
    goto :goto_3

    .line 355
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v21    # "maxMembership":D
    .restart local v3    # "maxMembership":D
    :cond_2
    move-wide/from16 v21, v3

    move-wide/from16 v17, v11

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 367
    .end local v3    # "maxMembership":D
    .restart local v21    # "maxMembership":D
    :goto_3
    cmpl-double v3, v7, v17

    if-nez v3, :cond_3

    .line 368
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .local v3, "membership":D
    goto :goto_4

    .line 369
    .end local v3    # "membership":D
    :cond_3
    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v3, v7, v3

    if-nez v3, :cond_4

    .line 370
    const-wide/16 v3, 0x0

    .restart local v3    # "membership":D
    goto :goto_4

    .line 372
    .end local v3    # "membership":D
    :cond_4
    div-double v3, v19, v7

    .line 374
    .restart local v3    # "membership":D
    :goto_4
    iget-object v11, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v11, v11, v1

    aput-wide v3, v11, v6

    .line 376
    iget-object v11, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v11, v11, v1

    aget-wide v11, v11, v6

    cmpl-double v11, v11, v21

    if-lez v11, :cond_5

    .line 377
    iget-object v11, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v11, v11, v1

    aget-wide v11, v11, v6

    .line 378
    .end local v21    # "maxMembership":D
    .local v11, "maxMembership":D
    move v5, v6

    move-wide v3, v11

    goto :goto_5

    .line 376
    .end local v11    # "maxMembership":D
    .restart local v21    # "maxMembership":D
    :cond_5
    move-wide/from16 v3, v21

    .line 351
    .end local v7    # "sum":D
    .end local v9    # "distA":D
    .end local v21    # "maxMembership":D
    .local v3, "maxMembership":D
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_6
    move-wide/from16 v21, v3

    .line 381
    .end local v3    # "maxMembership":D
    .end local v6    # "j":I
    .restart local v21    # "maxMembership":D
    iget-object v3, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    .line 347
    .end local v2    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v5    # "newCluster":I
    .end local v21    # "maxMembership":D
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 383
    .end local v1    # "i":I
    :cond_7
    return-void
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
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
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 272
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    .local p1, "dataPoints":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 277
    .local v0, "size":I
    iget v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    .line 284
    iget v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    aput v0, v4, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    .line 285
    iget v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    new-array v3, v3, [I

    aput v1, v3, v5

    aput v0, v3, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 288
    .local v1, "oldMatrix":[[D
    if-nez v0, :cond_0

    .line 289
    iget-object v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    return-object v2

    .line 292
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->initializeMembershipMatrix()V

    .line 295
    iget-object v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-interface {v2}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v2

    array-length v2, v2

    .line 296
    .local v2, "pointDimension":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    if-ge v3, v4, :cond_1

    .line 297
    iget-object v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    new-instance v5, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    new-instance v6, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    new-array v7, v2, [D

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .line 301
    .local v3, "iteration":I
    iget v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    if-gez v4, :cond_2

    const v4, 0x7fffffff

    goto :goto_1

    :cond_2
    iget v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    .line 302
    .local v4, "max":I
    :goto_1
    const-wide/16 v5, 0x0

    .line 305
    .local v5, "difference":D
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->saveMembershipMatrix([[D)V

    .line 306
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->updateClusterCenters()V

    .line 307
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->updateMembershipMatrix()V

    .line 308
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->calculateMaxMembershipChange([[D)D

    move-result-wide v5

    .line 309
    iget-wide v7, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->epsilon:D

    cmpl-double v7, v5, v7

    if-lez v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v4, :cond_3

    .line 311
    :cond_4
    iget-object v7, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    return-object v7

    .line 278
    .end local v1    # "oldMatrix":[[D
    .end local v2    # "pointDimension":I
    .end local v3    # "iteration":I
    .end local v4    # "max":I
    .end local v5    # "difference":D
    :cond_5
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method public getClusters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    return-object v0
.end method

.method public getDataPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 223
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    return-object v0
.end method

.method public getEpsilon()D
    .locals 2

    .line 188
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->epsilon:D

    return-wide v0
.end method

.method public getFuzziness()D
    .locals 2

    .line 172
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    return-wide v0
.end method

.method public getK()I
    .locals 1

    .line 164
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    return v0
.end method

.method public getMaxIterations()I
    .locals 1

    .line 180
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    return v0
.end method

.method public getMembershipMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 210
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0
.end method

.method public getObjectiveFunctionValue()D
    .locals 18

    .line 241
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "i":I
    const-wide/16 v2, 0x0

    .line 247
    .local v2, "objFunction":D
    iget-object v4, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 248
    .local v5, "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    const/4 v6, 0x0

    .line 249
    .local v6, "j":I
    iget-object v7, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    .line 250
    .local v8, "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v9

    .line 251
    .local v9, "dist":D
    mul-double v11, v9, v9

    iget-object v13, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v13, v13, v1

    aget-wide v13, v13, v6

    move v15, v1

    move-wide/from16 v16, v2

    .end local v1    # "i":I
    .end local v2    # "objFunction":D
    .local v15, "i":I
    .local v16, "objFunction":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v11, v1

    add-double v2, v16, v11

    .line 252
    .end local v16    # "objFunction":D
    .restart local v2    # "objFunction":D
    nop

    .end local v8    # "cluster":Lorg/apache/commons/math3/ml/clustering/CentroidCluster;, "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<TT;>;"
    .end local v9    # "dist":D
    add-int/lit8 v6, v6, 0x1

    .line 253
    move v1, v15

    goto :goto_1

    .line 249
    .end local v15    # "i":I
    .restart local v1    # "i":I
    :cond_0
    move v15, v1

    move-wide/from16 v16, v2

    .line 254
    .end local v1    # "i":I
    .end local v2    # "objFunction":D
    .end local v7    # "i$":Ljava/util/Iterator;
    .restart local v15    # "i":I
    .restart local v16    # "objFunction":D
    nop

    .end local v5    # "point":Lorg/apache/commons/math3/ml/clustering/Clusterable;, "TT;"
    .end local v6    # "j":I
    add-int/lit8 v1, v15, 0x1

    .line 255
    .end local v15    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 256
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v16    # "objFunction":D
    .restart local v2    # "objFunction":D
    :cond_1
    return-wide v2

    .line 242
    .end local v1    # "i":I
    .end local v2    # "objFunction":D
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v1
.end method

.method public getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 1

    .line 196
    .local p0, "this":Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;, "Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-object v0
.end method
