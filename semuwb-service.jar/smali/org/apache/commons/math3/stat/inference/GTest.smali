.class public Lorg/apache/commons/math3/stat/inference/GTest;
.super Ljava/lang/Object;
.source "GTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private entropy([J)D
    .locals 9
    .param p1, "k"    # [J

    .line 291
    const-wide/16 v0, 0x0

    .line 292
    .local v0, "h":D
    const-wide/16 v2, 0x0

    .line 293
    .local v2, "sum_k":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 294
    aget-wide v5, p1, v4

    long-to-double v5, v5

    add-double/2addr v2, v5

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 297
    aget-wide v5, p1, v4

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 298
    aget-wide v5, p1, v4

    long-to-double v5, v5

    div-double/2addr v5, v2

    .line 299
    .local v5, "p_i":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v0, v7

    .line 296
    .end local v5    # "p_i":D
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 302
    .end local v4    # "i":I
    :cond_2
    neg-double v4, v0

    return-wide v4
.end method

.method private entropy([[J)D
    .locals 10
    .param p1, "k"    # [[J

    .line 261
    const-wide/16 v0, 0x0

    .line 262
    .local v0, "h":D
    const-wide/16 v2, 0x0

    .line 263
    .local v2, "sum_k":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 264
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    aget-object v6, p1, v4

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 265
    aget-object v6, p1, v4

    aget-wide v6, v6, v5

    long-to-double v6, v6

    add-double/2addr v2, v6

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 263
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 269
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    aget-object v6, p1, v4

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 270
    aget-object v6, p1, v4

    aget-wide v6, v6, v5

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 271
    aget-object v6, p1, v4

    aget-wide v6, v6, v5

    long-to-double v6, v6

    div-double/2addr v6, v2

    .line 272
    .local v6, "p_ij":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v0, v8

    .line 269
    .end local v6    # "p_ij":D
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 268
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 276
    .end local v4    # "i":I
    :cond_4
    neg-double v4, v0

    return-wide v4
.end method


# virtual methods
.method public g([D[J)D
    .locals 16
    .param p1, "expected"    # [D
    .param p2, "observed"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 80
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 83
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_4

    .line 86
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->checkPositive([D)V

    .line 87
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 89
    const-wide/16 v2, 0x0

    .line 90
    .local v2, "sumExpected":D
    const-wide/16 v4, 0x0

    .line 91
    .local v4, "sumObserved":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_0

    .line 92
    aget-wide v7, v0, v6

    add-double/2addr v2, v7

    .line 93
    aget-wide v7, v1, v6

    long-to-double v7, v7

    add-double/2addr v4, v7

    .line 91
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    .end local v6    # "i":I
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 96
    .local v6, "ratio":D
    const/4 v8, 0x0

    .line 97
    .local v8, "rescale":Z
    sub-double v9, v2, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v9, v9, v11

    if-lez v9, :cond_1

    .line 98
    div-double v6, v4, v2

    .line 99
    const/4 v8, 0x1

    .line 101
    :cond_1
    const-wide/16 v9, 0x0

    .line 102
    .local v9, "sum":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v12, v1

    if-ge v11, v12, :cond_3

    .line 103
    if-eqz v8, :cond_2

    aget-wide v12, v1, v11

    long-to-double v12, v12

    aget-wide v14, v0, v11

    mul-double/2addr v14, v6

    goto :goto_2

    :cond_2
    aget-wide v12, v1, v11

    long-to-double v12, v12

    aget-wide v14, v0, v11

    :goto_2
    div-double/2addr v12, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    .line 106
    .local v12, "dev":D
    aget-wide v14, v1, v11

    long-to-double v14, v14

    mul-double/2addr v14, v12

    add-double/2addr v9, v14

    .line 102
    .end local v12    # "dev":D
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 108
    .end local v11    # "i":I
    :cond_3
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v9

    return-wide v11

    .line 84
    .end local v2    # "sumExpected":D
    .end local v4    # "sumObserved":D
    .end local v6    # "ratio":D
    .end local v8    # "rescale":Z
    .end local v9    # "sum":D
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v0

    array-length v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 81
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, v0

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public gDataSetsComparison([J[J)D
    .locals 19
    .param p1, "observed1"    # [J
    .param p2, "observed2"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    .line 354
    array-length v3, v1

    array-length v5, v2

    if-ne v3, v5, :cond_4

    .line 359
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 360
    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 363
    const-wide/16 v5, 0x0

    .line 364
    .local v5, "countSum1":J
    const-wide/16 v7, 0x0

    .line 367
    .local v7, "countSum2":J
    array-length v3, v1

    new-array v3, v3, [J

    .line 368
    .local v3, "collSums":[J
    array-length v9, v1

    new-array v10, v4, [I

    const/4 v11, 0x1

    aput v9, v10, v11

    const/4 v9, 0x0

    aput v4, v10, v9

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[J

    .line 370
    .local v10, "k":[[J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v1

    const-wide/16 v14, 0x0

    if-ge v12, v13, :cond_2

    .line 371
    aget-wide v16, v1, v12

    cmp-long v13, v16, v14

    if-nez v13, :cond_1

    aget-wide v16, v2, v12

    cmp-long v13, v16, v14

    if-eqz v13, :cond_0

    goto :goto_1

    .line 372
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v4, v9, v11}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 374
    :cond_1
    :goto_1
    aget-wide v13, v1, v12

    add-long/2addr v5, v13

    .line 375
    aget-wide v13, v2, v12

    add-long/2addr v7, v13

    .line 376
    aget-wide v13, v1, v12

    aget-wide v15, v2, v12

    add-long/2addr v13, v15

    aput-wide v13, v3, v12

    .line 377
    aget-object v13, v10, v9

    aget-wide v14, v1, v12

    aput-wide v14, v13, v12

    .line 378
    aget-object v13, v10, v11

    aget-wide v14, v2, v12

    aput-wide v14, v13, v12

    .line 370
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 382
    .end local v12    # "i":I
    :cond_2
    cmp-long v12, v5, v14

    if-eqz v12, :cond_3

    cmp-long v12, v7, v14

    if-eqz v12, :cond_3

    .line 385
    new-array v4, v4, [J

    aput-wide v5, v4, v9

    aput-wide v7, v4, v11

    .line 386
    .local v4, "rowSums":[J
    long-to-double v11, v5

    long-to-double v13, v7

    add-double/2addr v11, v13

    .line 387
    .local v11, "sum":D
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v11

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([J)D

    move-result-wide v15

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([J)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-direct {v0, v10}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([[J)D

    move-result-wide v17

    sub-double v15, v15, v17

    mul-double/2addr v13, v15

    return-wide v13

    .line 383
    .end local v4    # "rowSums":[J
    .end local v11    # "sum":D
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v4

    .line 355
    .end local v3    # "collSums":[J
    .end local v5    # "countSum1":J
    .end local v7    # "countSum2":J
    .end local v10    # "k":[[J
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, v1

    array-length v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 352
    :cond_5
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v5, v1

    invoke-direct {v3, v5, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3
.end method

.method public gTest([D[J)D
    .locals 6
    .param p1, "expected"    # [D
    .param p2, "observed"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 158
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v1

    sub-double/2addr v3, v1

    return-wide v3
.end method

.method public gTest([D[JD)Z
    .locals 6
    .param p1, "expected"    # [D
    .param p2, "observed"    # [J
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 241
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p3, v1

    if-gtz v0, :cond_1

    .line 245
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gTest([D[J)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 242
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v4, v5, v3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public gTestDataSetsComparison([J[J)D
    .locals 6
    .param p1, "observed1"    # [J
    .param p2, "observed2"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 477
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 479
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v1

    sub-double/2addr v3, v1

    return-wide v3
.end method

.method public gTestDataSetsComparison([J[JD)Z
    .locals 6
    .param p1, "observed1"    # [J
    .param p2, "observed2"    # [J
    .param p3, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 532
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p3, v1

    if-gtz v0, :cond_1

    .line 536
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gTestDataSetsComparison([J[J)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 533
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v4, v5, v3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public gTestIntrinsic([D[J)D
    .locals 5
    .param p1, "expected"    # [D
    .param p2, "observed"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-double/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 189
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    return-wide v3
.end method

.method public rootLogLikelihoodRatio(JJJJ)D
    .locals 14
    .param p1, "k11"    # J
    .param p3, "k12"    # J
    .param p5, "k21"    # J
    .param p7, "k22"    # J

    .line 422
    move-wide v0, p1

    move-wide/from16 v2, p5

    const/4 v4, 0x2

    new-array v5, v4, [J

    const/4 v6, 0x0

    aput-wide v0, v5, v6

    const/4 v7, 0x1

    aput-wide p3, v5, v7

    new-array v4, v4, [J

    aput-wide v2, v4, v6

    aput-wide p7, v4, v7

    invoke-virtual {p0, v5, v4}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide v4

    .line 424
    .local v4, "llr":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 425
    .local v6, "sqrt":D
    long-to-double v8, v0

    add-long v10, v0, p3

    long-to-double v10, v10

    div-double/2addr v8, v10

    long-to-double v10, v2

    add-long v12, v2, p7

    long-to-double v12, v12

    div-double/2addr v10, v12

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 426
    neg-double v6, v6

    .line 428
    :cond_0
    return-wide v6
.end method
