.class public Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;
.super Ljava/lang/Object;
.source "MultivariateNormalMixtureExpectationMaximization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ITERATIONS:I = 0x3e8

.field private static final DEFAULT_THRESHOLD:D = 1.0E-5


# instance fields
.field private final data:[[D

.field private fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

.field private logLikelihood:D


# direct methods
.method public constructor <init>([[D)V
    .locals 7
    .param p1, "data"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 90
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 94
    array-length v0, p1

    const/4 v2, 0x0

    aget-object v3, p1, v2

    array-length v3, v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v1

    aput v0, v5, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 97
    aget-object v3, p1, v0

    array-length v3, v3

    aget-object v5, p1, v2

    array-length v5, v5

    if-ne v3, v5, :cond_1

    .line 102
    aget-object v3, p1, v0

    array-length v3, v3

    if-lt v3, v4, :cond_0

    .line 106
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v5, p1, v0

    aget-object v6, p1, v0

    array-length v6, v6

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v5

    aput-object v5, v3, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object v5, p1, v0

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v5, v4, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 99
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v3, p1, v0

    array-length v3, v3

    aget-object v2, p1, v2

    array-length v2, v2

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 108
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 91
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public static estimate([[DI)Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .locals 26
    .param p0, "data"    # [[D
    .param p1, "numComponents"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 306
    move-object/from16 v0, p0

    move/from16 v1, p1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_6

    .line 309
    const/4 v2, 0x1

    if-lt v1, v3, :cond_5

    .line 312
    array-length v4, v0

    if-gt v1, v4, :cond_4

    .line 316
    array-length v4, v0

    .line 317
    .local v4, "numRows":I
    const/4 v5, 0x0

    aget-object v6, v0, v5

    array-length v6, v6

    .line 320
    .local v6, "numCols":I
    new-array v7, v4, [Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    .line 321
    .local v7, "sortedData":[Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 322
    new-instance v9, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    aget-object v10, v0, v8

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;-><init>([D)V

    aput-object v9, v7, v8

    .line 321
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 324
    .end local v8    # "i":I
    :cond_0
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 327
    int-to-double v8, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v8, v10, v8

    .line 330
    .local v8, "weight":D
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v12, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    const/4 v13, 0x0

    .local v13, "binIndex":I
    :goto_1
    if-ge v13, v1, :cond_3

    .line 336
    mul-int v14, v13, v4

    div-int/2addr v14, v1

    .line 339
    .local v14, "minIndex":I
    add-int/lit8 v15, v13, 0x1

    mul-int/2addr v15, v4

    div-int/2addr v15, v1

    .line 342
    .local v15, "maxIndex":I
    move/from16 v16, v5

    sub-int v5, v15, v14

    .line 345
    .local v5, "numBinRows":I
    move-wide/from16 v17, v10

    new-array v10, v3, [I

    aput v6, v10, v2

    aput v5, v10, v16

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    .line 348
    .local v10, "binData":[[D
    new-array v11, v6, [D

    .line 351
    .local v11, "columnMeans":[D
    move/from16 v19, v14

    .local v19, "i":I
    const/16 v20, 0x0

    move/from16 v21, v3

    move/from16 v3, v19

    .end local v19    # "i":I
    .local v3, "i":I
    .local v20, "iBin":I
    :goto_2
    if-ge v3, v15, :cond_2

    .line 352
    const/16 v19, 0x0

    move/from16 v2, v19

    .local v2, "j":I
    :goto_3
    if-ge v2, v6, :cond_1

    .line 353
    aget-object v19, v7, v3

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->getRow()[D

    move-result-object v19

    aget-wide v22, v19, v2

    .line 354
    .local v22, "val":D
    aget-wide v24, v11, v2

    add-double v24, v24, v22

    aput-wide v24, v11, v2

    .line 355
    aget-object v19, v10, v20

    aput-wide v22, v19, v2

    .line 352
    .end local v22    # "val":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 351
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v20, v20, 0x1

    const/4 v2, 0x1

    goto :goto_2

    .line 359
    .end local v3    # "i":I
    .end local v20    # "iBin":I
    :cond_2
    int-to-double v2, v5

    div-double v2, v17, v2

    invoke-static {v2, v3, v11}, Lorg/apache/commons/math3/util/MathArrays;->scaleInPlace(D[D)V

    .line 362
    new-instance v2, Lorg/apache/commons/math3/stat/correlation/Covariance;

    invoke-direct {v2, v10}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>([[D)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/correlation/Covariance;->getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    .line 364
    .local v2, "covMat":[[D
    new-instance v3, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    invoke-direct {v3, v11, v2}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;-><init>([D[[D)V

    .line 367
    .local v3, "mvn":Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
    new-instance v1, Lorg/apache/commons/math3/util/Pair;

    move-object/from16 v19, v2

    .end local v2    # "covMat":[[D
    .local v19, "covMat":[[D
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v3    # "mvn":Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
    .end local v5    # "numBinRows":I
    .end local v10    # "binData":[[D
    .end local v11    # "columnMeans":[D
    .end local v14    # "minIndex":I
    .end local v15    # "maxIndex":I
    .end local v19    # "covMat":[[D
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    move/from16 v5, v16

    move-wide/from16 v10, v17

    move/from16 v3, v21

    const/4 v2, 0x1

    goto :goto_1

    .line 370
    .end local v13    # "binIndex":I
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-direct {v1, v12}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    return-object v1

    .line 313
    .end local v4    # "numRows":I
    .end local v6    # "numCols":I
    .end local v7    # "sortedData":[Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;
    .end local v8    # "weight":D
    .end local v12    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 310
    :cond_5
    move v4, v2

    move/from16 v21, v3

    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 307
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method


# virtual methods
.method public fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;)V
    .locals 3
    .param p1, "initialMixture"    # Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 281
    const/16 v0, 0x3e8

    const-wide v1, 0x3ee4f8b588e368f1L    # 1.0E-5

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;ID)V

    .line 282
    return-void
.end method

.method public fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;ID)V
    .locals 32
    .param p1, "initialMixture"    # Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .param p2, "maxIterations"    # I
    .param p3, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 138
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    if-lt v1, v2, :cond_e

    .line 142
    const-wide/16 v3, 0x1

    cmpg-double v3, p3, v3

    if-ltz v3, :cond_d

    .line 146
    iget-object v3, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    array-length v3, v3

    .line 150
    .local v3, "n":I
    iget-object v4, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    .line 151
    .local v4, "numCols":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 153
    .local v6, "k":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    invoke-virtual {v7}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getMeans()[D

    move-result-object v7

    array-length v7, v7

    .line 156
    .local v7, "numMeanColumns":I
    if-ne v7, v4, :cond_c

    .line 160
    const/4 v8, 0x0

    .line 161
    .local v8, "numIterations":I
    const-wide/16 v9, 0x0

    .line 163
    .local v9, "previousLogLikelihood":D
    const-wide/high16 v11, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v11, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 166
    new-instance v11, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    iput-object v11, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    .line 168
    :goto_0
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "numIterations":I
    .local v11, "numIterations":I
    if-gt v8, v1, :cond_a

    iget-wide v12, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    sub-double v12, v9, v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    cmpl-double v8, v12, p3

    if-lez v8, :cond_a

    .line 170
    iget-wide v9, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 171
    const-wide/16 v12, 0x0

    .line 174
    .local v12, "sumLogLikelihood":D
    iget-object v8, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual {v8}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v8

    .line 178
    .local v8, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    new-array v14, v6, [D

    .line 180
    .local v14, "weights":[D
    new-array v15, v6, [Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    .line 182
    .local v15, "mvns":[Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
    const/16 v16, 0x0

    move/from16 v17, v2

    move/from16 v2, v16

    .local v2, "j":I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 183
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    aput-wide v18, v14, v2

    .line 184
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    aput-object v16, v15, v2

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    .end local v2    # "j":I
    :cond_0
    const/4 v2, 0x2

    move/from16 v16, v5

    new-array v5, v2, [I

    aput v6, v5, v17

    aput v3, v5, v16

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 194
    .local v2, "gamma":[[D
    new-array v5, v6, [D

    .line 197
    .local v5, "gammaSums":[D
    move-object/from16 v19, v2

    const/4 v1, 0x2

    .end local v2    # "gamma":[[D
    .local v19, "gamma":[[D
    new-array v2, v1, [I

    aput v4, v2, v17

    aput v6, v2, v16

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 199
    .local v1, "gammaDataProdSums":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 200
    move-object/from16 v20, v1

    .end local v1    # "gammaDataProdSums":[[D
    .local v20, "gammaDataProdSums":[[D
    iget-object v1, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    move/from16 v21, v2

    .end local v2    # "i":I
    .local v21, "i":I
    iget-object v2, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v2, v2, v21

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->density([D)D

    move-result-wide v1

    .line 201
    .local v1, "rowDensity":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v22

    add-double v12, v12, v22

    .line 203
    const/16 v22, 0x0

    move-wide/from16 v23, v1

    move/from16 v1, v22

    .local v1, "j":I
    .local v23, "rowDensity":D
    :goto_3
    if-ge v1, v6, :cond_2

    .line 204
    aget-object v2, v19, v21

    aget-wide v25, v14, v1

    move/from16 v22, v1

    .end local v1    # "j":I
    .local v22, "j":I
    aget-object v1, v15, v22

    move-object/from16 v27, v2

    iget-object v2, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v2, v2, v21

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->density([D)D

    move-result-wide v1

    mul-double v25, v25, v1

    div-double v25, v25, v23

    aput-wide v25, v27, v22

    .line 205
    aget-wide v1, v5, v22

    aget-object v25, v19, v21

    aget-wide v25, v25, v22

    add-double v1, v1, v25

    aput-wide v1, v5, v22

    .line 207
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_4
    if-ge v1, v4, :cond_1

    .line 208
    aget-object v2, v20, v22

    aget-wide v25, v2, v1

    aget-object v27, v19, v21

    aget-wide v27, v27, v22

    move/from16 v29, v1

    .end local v1    # "col":I
    .local v29, "col":I
    iget-object v1, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v1, v1, v21

    aget-wide v30, v1, v29

    mul-double v27, v27, v30

    add-double v25, v25, v27

    aput-wide v25, v2, v29

    .line 207
    add-int/lit8 v1, v29, 0x1

    .end local v29    # "col":I
    .restart local v1    # "col":I
    goto :goto_4

    :cond_1
    move/from16 v29, v1

    .line 203
    .end local v1    # "col":I
    add-int/lit8 v1, v22, 0x1

    .end local v22    # "j":I
    .local v1, "j":I
    goto :goto_3

    :cond_2
    move/from16 v22, v1

    .line 199
    .end local v1    # "j":I
    .end local v23    # "rowDensity":D
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v1, v20

    .end local v21    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .end local v20    # "gammaDataProdSums":[[D
    .local v1, "gammaDataProdSums":[[D
    :cond_3
    move-object/from16 v20, v1

    move/from16 v21, v2

    .line 213
    .end local v1    # "gammaDataProdSums":[[D
    .end local v2    # "i":I
    .restart local v20    # "gammaDataProdSums":[[D
    int-to-double v1, v3

    div-double v1, v12, v1

    iput-wide v1, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 217
    new-array v1, v6, [D

    .line 218
    .local v1, "newWeights":[D
    move-object/from16 v21, v5

    const/4 v2, 0x2

    .end local v5    # "gammaSums":[D
    .local v21, "gammaSums":[D
    new-array v5, v2, [I

    aput v4, v5, v17

    aput v6, v5, v16

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 220
    .local v2, "newMeans":[[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    if-ge v5, v6, :cond_5

    .line 221
    aget-wide v22, v21, v5

    move-wide/from16 v24, v9

    move-object v10, v8

    .end local v8    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    .end local v9    # "previousLogLikelihood":D
    .local v10, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    .local v24, "previousLogLikelihood":D
    int-to-double v8, v3

    div-double v22, v22, v8

    aput-wide v22, v1, v5

    .line 222
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_6
    if-ge v8, v4, :cond_4

    .line 223
    aget-object v9, v2, v5

    aget-object v22, v20, v5

    aget-wide v22, v22, v8

    aget-wide v26, v21, v5

    div-double v22, v22, v26

    aput-wide v22, v9, v8

    .line 222
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 220
    .end local v8    # "col":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    move-object v8, v10

    move-wide/from16 v9, v24

    goto :goto_5

    .end local v10    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    .end local v24    # "previousLogLikelihood":D
    .local v8, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    .restart local v9    # "previousLogLikelihood":D
    :cond_5
    move-wide/from16 v24, v9

    move-object v10, v8

    .line 228
    .end local v5    # "j":I
    .end local v8    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    .end local v9    # "previousLogLikelihood":D
    .restart local v10    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    .restart local v24    # "previousLogLikelihood":D
    new-array v5, v6, [Lorg/apache/commons/math3/linear/RealMatrix;

    .line 229
    .local v5, "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_7
    if-ge v8, v6, :cond_6

    .line 230
    new-instance v9, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v9, v4, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    aput-object v9, v5, v8

    .line 229
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 232
    .end local v8    # "j":I
    :cond_6
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    if-ge v8, v3, :cond_8

    .line 233
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_9
    if-ge v9, v6, :cond_7

    .line 234
    move/from16 v22, v3

    .end local v3    # "n":I
    .local v22, "n":I
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v23, v5

    .end local v5    # "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    .local v23, "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v5, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v5, v5, v8

    move/from16 v26, v8

    .end local v8    # "i":I
    .local v26, "i":I
    aget-object v8, v2, v9

    invoke-static {v5, v8}, Lorg/apache/commons/math3/util/MathArrays;->ebeSubtract([D[D)[D

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([D)V

    .line 236
    .local v3, "vec":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    aget-object v8, v19, v26

    move/from16 v27, v9

    .end local v9    # "j":I
    .local v27, "j":I
    aget-wide v8, v8, v27

    invoke-interface {v5, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 238
    .local v5, "dataCov":Lorg/apache/commons/math3/linear/RealMatrix;
    aget-object v8, v23, v27

    invoke-interface {v8, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    aput-object v8, v23, v27

    .line 233
    .end local v3    # "vec":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v5    # "dataCov":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v9, v27, 0x1

    move/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v8, v26

    .end local v27    # "j":I
    .restart local v9    # "j":I
    goto :goto_9

    .end local v22    # "n":I
    .end local v23    # "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v26    # "i":I
    .local v3, "n":I
    .local v5, "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v8    # "i":I
    :cond_7
    move/from16 v22, v3

    move-object/from16 v23, v5

    move/from16 v26, v8

    move/from16 v27, v9

    .line 232
    .end local v3    # "n":I
    .end local v5    # "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v8    # "i":I
    .end local v9    # "j":I
    .restart local v22    # "n":I
    .restart local v23    # "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v26    # "i":I
    add-int/lit8 v8, v26, 0x1

    .end local v26    # "i":I
    .restart local v8    # "i":I
    goto :goto_8

    .end local v22    # "n":I
    .end local v23    # "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v3    # "n":I
    .restart local v5    # "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_8
    move/from16 v22, v3

    move-object/from16 v23, v5

    move/from16 v26, v8

    .line 243
    .end local v3    # "n":I
    .end local v5    # "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v8    # "i":I
    .restart local v22    # "n":I
    .restart local v23    # "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/16 v18, 0x2

    aput v4, v3, v18

    aput v4, v3, v17

    aput v6, v3, v16

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[D

    .line 244
    .local v3, "newCovMatArrays":[[[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_a
    if-ge v5, v6, :cond_9

    .line 245
    aget-object v8, v23, v5

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    aget-wide v28, v21, v5

    move v9, v5

    move/from16 v18, v6

    .end local v5    # "j":I
    .end local v6    # "k":I
    .restart local v9    # "j":I
    .local v18, "k":I
    div-double v5, v26, v28

    invoke-interface {v8, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    aput-object v5, v23, v9

    .line 246
    aget-object v5, v23, v9

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v5

    aput-object v5, v3, v9

    .line 244
    add-int/lit8 v5, v9, 0x1

    move/from16 v6, v18

    .end local v9    # "j":I
    .restart local v5    # "j":I
    goto :goto_a

    .end local v18    # "k":I
    .restart local v6    # "k":I
    :cond_9
    move v9, v5

    move/from16 v18, v6

    .line 250
    .end local v5    # "j":I
    .end local v6    # "k":I
    .restart local v18    # "k":I
    new-instance v5, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-direct {v5, v1, v2, v3}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>([D[[D[[[D)V

    iput-object v5, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    .line 253
    .end local v1    # "newWeights":[D
    .end local v2    # "newMeans":[[D
    .end local v3    # "newCovMatArrays":[[[D
    .end local v10    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;>;>;"
    .end local v12    # "sumLogLikelihood":D
    .end local v14    # "weights":[D
    .end local v15    # "mvns":[Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
    .end local v19    # "gamma":[[D
    .end local v20    # "gammaDataProdSums":[[D
    .end local v21    # "gammaSums":[D
    .end local v23    # "newCovMats":[Lorg/apache/commons/math3/linear/RealMatrix;
    move/from16 v1, p2

    move v8, v11

    move/from16 v5, v16

    move/from16 v2, v17

    move/from16 v3, v22

    move-wide/from16 v9, v24

    goto/16 :goto_0

    .line 168
    .end local v18    # "k":I
    .end local v22    # "n":I
    .end local v24    # "previousLogLikelihood":D
    .local v3, "n":I
    .restart local v6    # "k":I
    .local v9, "previousLogLikelihood":D
    :cond_a
    move/from16 v22, v3

    move/from16 v18, v6

    .line 255
    .end local v3    # "n":I
    .end local v6    # "k":I
    .restart local v18    # "k":I
    .restart local v22    # "n":I
    iget-wide v1, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    sub-double v1, v9, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    cmpl-double v1, v1, p3

    if-gtz v1, :cond_b

    .line 259
    return-void

    .line 257
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>()V

    throw v1

    .line 157
    .end local v9    # "previousLogLikelihood":D
    .end local v11    # "numIterations":I
    .end local v18    # "k":I
    .end local v22    # "n":I
    .restart local v3    # "n":I
    .restart local v6    # "k":I
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v1, v7, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 143
    .end local v3    # "n":I
    .end local v4    # "numCols":I
    .end local v6    # "k":I
    .end local v7    # "numMeanColumns":I
    :cond_d
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 139
    :cond_e
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method public getFittedModel()Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .locals 2

    .line 388
    new-instance v0, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getLogLikelihood()D
    .locals 2

    .line 379
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    return-wide v0
.end method
