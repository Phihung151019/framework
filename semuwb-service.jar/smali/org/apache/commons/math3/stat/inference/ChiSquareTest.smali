.class public Lorg/apache/commons/math3/stat/inference/ChiSquareTest;
.super Ljava/lang/Object;
.source "ChiSquareTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private checkArray([[J)V
    .locals 3
    .param p1, "in"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 589
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 593
    const/4 v0, 0x0

    aget-object v2, p1, v0

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 597
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkRectangular([[J)V

    .line 598
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([[J)V

    .line 600
    return-void

    .line 594
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v0, p1, v0

    array-length v0, v0

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 590
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public chiSquare([D[J)D
    .locals 18
    .param p1, "expected"    # [D
    .param p2, "observed"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 84
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 87
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_4

    .line 90
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->checkPositive([D)V

    .line 91
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 93
    const-wide/16 v2, 0x0

    .line 94
    .local v2, "sumExpected":D
    const-wide/16 v4, 0x0

    .line 95
    .local v4, "sumObserved":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_0

    .line 96
    aget-wide v7, v0, v6

    add-double/2addr v2, v7

    .line 97
    aget-wide v7, v1, v6

    long-to-double v7, v7

    add-double/2addr v4, v7

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 99
    .end local v6    # "i":I
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 100
    .local v6, "ratio":D
    const/4 v8, 0x0

    .line 101
    .local v8, "rescale":Z
    sub-double v9, v2, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v9, v9, v11

    if-lez v9, :cond_1

    .line 102
    div-double v6, v4, v2

    .line 103
    const/4 v8, 0x1

    .line 105
    :cond_1
    const-wide/16 v9, 0x0

    .line 106
    .local v9, "sumSq":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v12, v1

    if-ge v11, v12, :cond_3

    .line 107
    if-eqz v8, :cond_2

    .line 108
    aget-wide v12, v1, v11

    long-to-double v12, v12

    aget-wide v14, v0, v11

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    .line 109
    .local v12, "dev":D
    mul-double v14, v12, v12

    aget-wide v16, v0, v11

    mul-double v16, v16, v6

    div-double v14, v14, v16

    add-double/2addr v9, v14

    .line 110
    .end local v12    # "dev":D
    goto :goto_2

    .line 111
    :cond_2
    aget-wide v12, v1, v11

    long-to-double v12, v12

    aget-wide v14, v0, v11

    sub-double/2addr v12, v14

    .line 112
    .restart local v12    # "dev":D
    mul-double v14, v12, v12

    aget-wide v16, v0, v11

    div-double v14, v14, v16

    add-double/2addr v9, v14

    .line 106
    .end local v12    # "dev":D
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 115
    .end local v11    # "i":I
    :cond_3
    return-wide v9

    .line 88
    .end local v2    # "sumExpected":D
    .end local v4    # "sumObserved":D
    .end local v6    # "ratio":D
    .end local v8    # "rescale":Z
    .end local v9    # "sumSq":D
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v0

    array-length v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 85
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, v0

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public chiSquare([[J)D
    .locals 17
    .param p1, "counts"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 248
    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->checkArray([[J)V

    .line 249
    array-length v1, v0

    .line 250
    .local v1, "nRows":I
    const/4 v2, 0x0

    aget-object v2, v0, v2

    array-length v2, v2

    .line 253
    .local v2, "nCols":I
    new-array v3, v1, [D

    .line 254
    .local v3, "rowSum":[D
    new-array v4, v2, [D

    .line 255
    .local v4, "colSum":[D
    const-wide/16 v5, 0x0

    .line 256
    .local v5, "total":D
    const/4 v7, 0x0

    .local v7, "row":I
    :goto_0
    if-ge v7, v1, :cond_1

    .line 257
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_1
    if-ge v8, v2, :cond_0

    .line 258
    aget-wide v9, v3, v7

    aget-object v11, v0, v7

    aget-wide v11, v11, v8

    long-to-double v11, v11

    add-double/2addr v9, v11

    aput-wide v9, v3, v7

    .line 259
    aget-wide v9, v4, v8

    aget-object v11, v0, v7

    aget-wide v11, v11, v8

    long-to-double v11, v11

    add-double/2addr v9, v11

    aput-wide v9, v4, v8

    .line 260
    aget-object v9, v0, v7

    aget-wide v9, v9, v8

    long-to-double v9, v9

    add-double/2addr v5, v9

    .line 257
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 256
    .end local v8    # "col":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 265
    .end local v7    # "row":I
    :cond_1
    const-wide/16 v7, 0x0

    .line 266
    .local v7, "sumSq":D
    const-wide/16 v9, 0x0

    .line 267
    .local v9, "expected":D
    const/4 v11, 0x0

    .local v11, "row":I
    :goto_2
    if-ge v11, v1, :cond_3

    .line 268
    const/4 v12, 0x0

    .local v12, "col":I
    :goto_3
    if-ge v12, v2, :cond_2

    .line 269
    aget-wide v13, v3, v11

    aget-wide v15, v4, v12

    mul-double/2addr v13, v15

    div-double v9, v13, v5

    .line 270
    aget-object v13, v0, v11

    aget-wide v13, v13, v12

    long-to-double v13, v13

    sub-double/2addr v13, v9

    aget-object v15, v0, v11

    move/from16 v16, v1

    .end local v1    # "nRows":I
    .local v16, "nRows":I
    aget-wide v0, v15, v12

    long-to-double v0, v0

    sub-double/2addr v0, v9

    mul-double/2addr v13, v0

    div-double/2addr v13, v9

    add-double/2addr v7, v13

    .line 268
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    goto :goto_3

    .end local v16    # "nRows":I
    .restart local v1    # "nRows":I
    :cond_2
    move/from16 v16, v1

    .line 267
    .end local v1    # "nRows":I
    .end local v12    # "col":I
    .restart local v16    # "nRows":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    goto :goto_2

    .line 274
    .end local v11    # "row":I
    .end local v16    # "nRows":I
    .restart local v1    # "nRows":I
    :cond_3
    return-wide v7
.end method

.method public chiSquareDataSetsComparison([J[J)D
    .locals 24
    .param p1, "observed1"    # [J
    .param p2, "observed2"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 414
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_9

    .line 417
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_8

    .line 422
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 423
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 426
    const-wide/16 v2, 0x0

    .line 427
    .local v2, "countSum1":J
    const-wide/16 v4, 0x0

    .line 428
    .local v4, "countSum2":J
    const/4 v6, 0x0

    .line 429
    .local v6, "unequalCounts":Z
    const-wide/16 v7, 0x0

    .line 430
    .local v7, "weight":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v0

    if-ge v9, v10, :cond_0

    .line 431
    aget-wide v10, v0, v9

    add-long/2addr v2, v10

    .line 432
    aget-wide v10, v1, v9

    add-long/2addr v4, v10

    .line 430
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 435
    .end local v9    # "i":I
    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v11, v2, v9

    if-eqz v11, :cond_7

    cmp-long v11, v4, v9

    if-eqz v11, :cond_7

    .line 439
    cmp-long v11, v2, v4

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 440
    .end local v6    # "unequalCounts":Z
    .local v11, "unequalCounts":Z
    :goto_1
    if-eqz v11, :cond_2

    .line 441
    long-to-double v12, v2

    long-to-double v14, v4

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 444
    :cond_2
    const-wide/16 v12, 0x0

    .line 445
    .local v12, "sumSq":D
    const-wide/16 v14, 0x0

    .line 446
    .local v14, "dev":D
    const-wide/16 v16, 0x0

    .line 447
    .local v16, "obs1":D
    const-wide/16 v18, 0x0

    .line 448
    .local v18, "obs2":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-wide/from16 v20, v9

    array-length v9, v0

    if-ge v6, v9, :cond_6

    .line 449
    aget-wide v9, v0, v6

    cmp-long v9, v9, v20

    if-nez v9, :cond_4

    aget-wide v9, v1, v6

    cmp-long v9, v9, v20

    if-eqz v9, :cond_3

    move-wide/from16 v22, v2

    goto :goto_3

    .line 450
    :cond_3
    new-instance v9, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v10, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-wide/from16 v22, v2

    .end local v2    # "countSum1":J
    .local v22, "countSum1":J
    filled-new-array/range {v20 .. v20}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v9, v10, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v9

    .line 449
    .end local v22    # "countSum1":J
    .restart local v2    # "countSum1":J
    :cond_4
    move-wide/from16 v22, v2

    .line 452
    .end local v2    # "countSum1":J
    .restart local v22    # "countSum1":J
    :goto_3
    aget-wide v2, v0, v6

    long-to-double v2, v2

    .line 453
    .end local v16    # "obs1":D
    .local v2, "obs1":D
    aget-wide v9, v1, v6

    long-to-double v9, v9

    .line 454
    .end local v18    # "obs2":D
    .local v9, "obs2":D
    if-eqz v11, :cond_5

    .line 455
    div-double v16, v2, v7

    mul-double v18, v9, v7

    sub-double v16, v16, v18

    move-wide/from16 v14, v16

    .end local v14    # "dev":D
    .local v16, "dev":D
    goto :goto_4

    .line 457
    .end local v16    # "dev":D
    .restart local v14    # "dev":D
    :cond_5
    sub-double v14, v2, v9

    .line 459
    :goto_4
    mul-double v16, v14, v14

    add-double v18, v2, v9

    div-double v16, v16, v18

    add-double v12, v12, v16

    .line 448
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v9

    move-wide/from16 v9, v20

    move-wide/from16 v2, v22

    goto :goto_2

    .line 462
    .end local v6    # "i":I
    .end local v9    # "obs2":D
    .end local v22    # "countSum1":J
    .local v2, "countSum1":J
    .local v16, "obs1":D
    .restart local v18    # "obs2":D
    :cond_6
    return-wide v12

    .line 435
    .end local v11    # "unequalCounts":Z
    .end local v12    # "sumSq":D
    .end local v14    # "dev":D
    .end local v16    # "obs1":D
    .end local v18    # "obs2":D
    .local v6, "unequalCounts":Z
    :cond_7
    move-wide/from16 v22, v2

    .line 436
    .end local v2    # "countSum1":J
    .restart local v22    # "countSum1":J
    new-instance v2, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v2

    .line 418
    .end local v4    # "countSum2":J
    .end local v6    # "unequalCounts":Z
    .end local v7    # "weight":D
    .end local v22    # "countSum1":J
    :cond_8
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v0

    array-length v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 415
    :cond_9
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, v0

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public chiSquareTest([D[J)D
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

    .line 159
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 161
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquare([D[J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v1

    sub-double/2addr v3, v1

    return-wide v3
.end method

.method public chiSquareTest([[J)D
    .locals 7
    .param p1, "counts"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 313
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->checkArray([[J)V

    .line 314
    array-length v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v4, v4

    int-to-double v4, v4

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    .line 316
    .local v0, "df":D
    new-instance v4, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(D)V

    .line 317
    .local v4, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquare([[J)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v5

    sub-double/2addr v2, v5

    return-wide v2
.end method

.method public chiSquareTest([D[JD)Z
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

    .line 208
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p3, v1

    if-gtz v0, :cond_1

    .line 212
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([D[J)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 209
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

.method public chiSquareTest([[JD)Z
    .locals 6
    .param p1, "counts"    # [[J
    .param p2, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 363
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p2, v1

    if-gtz v0, :cond_1

    .line 367
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([[J)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-gez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 364
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v4, v5, v3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public chiSquareTestDataSetsComparison([J[J)D
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

    .line 512
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 514
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareDataSetsComparison([J[J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v1

    sub-double/2addr v3, v1

    return-wide v3
.end method

.method public chiSquareTestDataSetsComparison([J[JD)Z
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

    .line 567
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p3, v1

    if-gtz v0, :cond_1

    .line 572
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTestDataSetsComparison([J[J)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 569
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
