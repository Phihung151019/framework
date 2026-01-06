.class public Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;
.super Ljava/lang/Object;
.source "LoessInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_ACCURACY:D = 1.0E-12

.field public static final DEFAULT_BANDWIDTH:D = 0.3

.field public static final DEFAULT_ROBUSTNESS_ITERS:I = 0x2

.field private static final serialVersionUID:J = 0x483b9da904604c5dL


# instance fields
.field private final accuracy:D

.field private final bandwidth:D

.field private final robustnessIters:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    .line 97
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    .line 98
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6
    .param p1, "bandwidth"    # D
    .param p3, "robustnessIters"    # I

    .line 123
    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .end local p1    # "bandwidth":D
    .end local p3    # "robustnessIters":I
    .local v1, "bandwidth":D
    .local v3, "robustnessIters":I
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;-><init>(DID)V

    .line 124
    return-void
.end method

.method public constructor <init>(DID)V
    .locals 5
    .param p1, "bandwidth"    # D
    .param p3, "robustnessIters"    # I
    .param p4, "accuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_1

    .line 154
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    .line 155
    if-ltz p3, :cond_0

    .line 158
    iput p3, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    .line 159
    iput-wide p4, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    .line 160
    return-void

    .line 156
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROBUSTNESS_ITERATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 152
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method private static checkAllFiniteReal([D)V
    .locals 3
    .param p0, "values"    # [D

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 470
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkFinite(D)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static nextNonzero([DI)I
    .locals 5
    .param p0, "weights"    # [D
    .param p1, "i"    # I

    .line 437
    add-int/lit8 v0, p1, 0x1

    .line 438
    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    return v0
.end method

.method private static tricube(D)D
    .locals 6
    .param p0, "x"    # D

    .line 453
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 454
    .local v0, "absX":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 455
    const-wide/16 v2, 0x0

    return-wide v2

    .line 457
    :cond_0
    mul-double v4, v0, v0

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    .line 458
    .local v2, "tmp":D
    mul-double v4, v2, v2

    mul-double/2addr v4, v2

    return-wide v4
.end method

.method private static updateBandwidthInterval([D[DI[I)V
    .locals 11
    .param p0, "xval"    # [D
    .param p1, "weights"    # [D
    .param p2, "i"    # I
    .param p3, "bandwidthInterval"    # [I

    .line 415
    const/4 v0, 0x0

    aget v1, p3, v0

    .line 416
    .local v1, "left":I
    const/4 v2, 0x1

    aget v3, p3, v2

    .line 420
    .local v3, "right":I
    invoke-static {p1, v3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result v4

    .line 421
    .local v4, "nextRight":I
    array-length v5, p0

    if-ge v4, v5, :cond_0

    aget-wide v5, p0, v4

    aget-wide v7, p0, p2

    sub-double/2addr v5, v7

    aget-wide v7, p0, p2

    aget-wide v9, p0, v1

    sub-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 422
    aget v5, p3, v0

    invoke-static {p1, v5}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result v5

    .line 423
    .local v5, "nextLeft":I
    aput v5, p3, v0

    .line 424
    aput v4, p3, v2

    .line 426
    .end local v5    # "nextLeft":I
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public final interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 2
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 190
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D)[D

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    return-object v0
.end method

.method public final smooth([D[D)[D
    .locals 3
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 387
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 391
    array-length v0, p1

    new-array v0, v0, [D

    .line 392
    .local v0, "unitWeights":[D
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 394
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D[D)[D

    move-result-object v1

    return-object v1

    .line 388
    .end local v0    # "unitWeights":[D
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public final smooth([D[D[D)[D
    .locals 50
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_f

    .line 224
    array-length v4, v1

    .line 226
    .local v4, "n":I
    if-eqz v4, :cond_e

    .line 230
    invoke-static {v1}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 231
    invoke-static {v2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 232
    invoke-static {v3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 234
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 236
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 237
    aget-wide v7, v2, v5

    new-array v6, v6, [D

    aput-wide v7, v6, v5

    return-object v6

    .line 240
    :cond_0
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    .line 241
    aget-wide v8, v2, v5

    aget-wide v10, v2, v6

    new-array v7, v7, [D

    aput-wide v8, v7, v5

    aput-wide v10, v7, v6

    return-object v7

    .line 244
    :cond_1
    iget-wide v8, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    int-to-double v10, v4

    mul-double/2addr v8, v10

    double-to-int v8, v8

    .line 246
    .local v8, "bandwidthInPoints":I
    if-lt v8, v7, :cond_d

    .line 251
    new-array v7, v4, [D

    .line 253
    .local v7, "res":[D
    new-array v9, v4, [D

    .line 254
    .local v9, "residuals":[D
    new-array v10, v4, [D

    .line 256
    .local v10, "sortedResiduals":[D
    new-array v11, v4, [D

    .line 261
    .local v11, "robustnessWeights":[D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v13}, Ljava/util/Arrays;->fill([DD)V

    .line 263
    const/4 v14, 0x0

    .local v14, "iter":I
    :goto_0
    iget v15, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    if-gt v14, v15, :cond_c

    .line 264
    add-int/lit8 v15, v8, -0x1

    filled-new-array {v5, v15}, [I

    move-result-object v15

    .line 266
    .local v15, "bandwidthInterval":[I
    const/16 v16, 0x0

    move-wide/from16 v17, v12

    move/from16 v12, v16

    .local v12, "i":I
    :goto_1
    if-ge v12, v4, :cond_7

    .line 267
    aget-wide v19, v1, v12

    .line 271
    .local v19, "x":D
    if-lez v12, :cond_2

    .line 272
    invoke-static {v1, v3, v12, v15}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->updateBandwidthInterval([D[DI[I)V

    .line 275
    :cond_2
    aget v13, v15, v5

    .line 276
    .local v13, "ileft":I
    move/from16 v16, v6

    aget v6, v15, v16

    .line 281
    .local v6, "iright":I
    aget-wide v21, v1, v12

    aget-wide v23, v1, v13

    sub-double v21, v21, v23

    aget-wide v23, v1, v6

    aget-wide v25, v1, v12

    sub-double v23, v23, v25

    cmpl-double v21, v21, v23

    if-lez v21, :cond_3

    .line 282
    move/from16 v21, v13

    .local v21, "edge":I
    goto :goto_2

    .line 284
    .end local v21    # "edge":I
    :cond_3
    move/from16 v21, v6

    .line 294
    .restart local v21    # "edge":I
    :goto_2
    const-wide/16 v22, 0x0

    .line 295
    .local v22, "sumWeights":D
    const-wide/16 v24, 0x0

    .line 296
    .local v24, "sumX":D
    const-wide/16 v26, 0x0

    .line 297
    .local v26, "sumXSquared":D
    const-wide/16 v28, 0x0

    .line 298
    .local v28, "sumY":D
    const-wide/16 v30, 0x0

    .line 299
    .local v30, "sumXY":D
    aget-wide v32, v1, v21

    sub-double v32, v32, v19

    div-double v32, v17, v32

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    .line 300
    .local v32, "denom":D
    move/from16 v34, v13

    move/from16 v5, v34

    .local v5, "k":I
    :goto_3
    if-gt v5, v6, :cond_5

    .line 301
    aget-wide v35, v1, v5

    .line 302
    .local v35, "xk":D
    aget-wide v37, v2, v5

    .line 303
    .local v37, "yk":D
    if-ge v5, v12, :cond_4

    sub-double v39, v19, v35

    goto :goto_4

    :cond_4
    sub-double v39, v35, v19

    .line 304
    .local v39, "dist":D
    :goto_4
    mul-double v41, v39, v32

    invoke-static/range {v41 .. v42}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->tricube(D)D

    move-result-wide v41

    aget-wide v43, v11, v5

    mul-double v41, v41, v43

    aget-wide v43, v3, v5

    mul-double v41, v41, v43

    .line 305
    .local v41, "w":D
    mul-double v43, v35, v41

    .line 306
    .local v43, "xkw":D
    add-double v22, v22, v41

    .line 307
    add-double v24, v24, v43

    .line 308
    mul-double v45, v35, v43

    add-double v26, v26, v45

    .line 309
    mul-double v45, v37, v41

    add-double v28, v28, v45

    .line 310
    mul-double v45, v37, v43

    add-double v30, v30, v45

    .line 300
    .end local v35    # "xk":D
    .end local v37    # "yk":D
    .end local v39    # "dist":D
    .end local v41    # "w":D
    .end local v43    # "xkw":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 313
    .end local v5    # "k":I
    :cond_5
    div-double v35, v24, v22

    .line 314
    .local v35, "meanX":D
    div-double v37, v28, v22

    .line 315
    .local v37, "meanY":D
    div-double v39, v30, v22

    .line 316
    .local v39, "meanXY":D
    div-double v41, v26, v22

    .line 319
    .local v41, "meanXSquared":D
    mul-double v43, v35, v35

    sub-double v43, v41, v43

    invoke-static/range {v43 .. v44}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v43

    invoke-static/range {v43 .. v44}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v43

    move/from16 v45, v6

    .end local v6    # "iright":I
    .local v45, "iright":I
    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    cmpg-double v5, v43, v5

    if-gez v5, :cond_6

    .line 320
    const-wide/16 v5, 0x0

    .local v5, "beta":D
    goto :goto_5

    .line 322
    .end local v5    # "beta":D
    :cond_6
    mul-double v5, v35, v37

    sub-double v5, v39, v5

    mul-double v43, v35, v35

    sub-double v43, v41, v43

    div-double v5, v5, v43

    .line 325
    .restart local v5    # "beta":D
    :goto_5
    mul-double v43, v5, v35

    sub-double v43, v37, v43

    .line 327
    .local v43, "alpha":D
    mul-double v46, v5, v19

    add-double v46, v46, v43

    aput-wide v46, v7, v12

    .line 328
    aget-wide v46, v2, v12

    aget-wide v48, v7, v12

    sub-double v46, v46, v48

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    aput-wide v46, v9, v12

    .line 266
    .end local v5    # "beta":D
    .end local v13    # "ileft":I
    .end local v19    # "x":D
    .end local v21    # "edge":I
    .end local v22    # "sumWeights":D
    .end local v24    # "sumX":D
    .end local v26    # "sumXSquared":D
    .end local v28    # "sumY":D
    .end local v30    # "sumXY":D
    .end local v32    # "denom":D
    .end local v35    # "meanX":D
    .end local v37    # "meanY":D
    .end local v39    # "meanXY":D
    .end local v41    # "meanXSquared":D
    .end local v43    # "alpha":D
    .end local v45    # "iright":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v16

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7
    move/from16 v16, v6

    .line 333
    .end local v12    # "i":I
    iget v5, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    if-ne v14, v5, :cond_8

    .line 334
    goto :goto_8

    .line 342
    :cond_8
    const/4 v5, 0x0

    invoke-static {v9, v5, v10, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    invoke-static {v10}, Ljava/util/Arrays;->sort([D)V

    .line 344
    div-int/lit8 v6, v4, 0x2

    aget-wide v12, v10, v6

    .line 346
    .local v12, "medianResidual":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v19

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    cmpg-double v5, v19, v5

    if-gez v5, :cond_9

    .line 347
    goto :goto_8

    .line 350
    :cond_9
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    if-ge v5, v4, :cond_b

    .line 351
    aget-wide v19, v9, v5

    const-wide/high16 v21, 0x4018000000000000L    # 6.0

    mul-double v21, v21, v12

    div-double v19, v19, v21

    .line 352
    .local v19, "arg":D
    cmpl-double v6, v19, v17

    if-ltz v6, :cond_a

    .line 353
    const-wide/16 v21, 0x0

    aput-wide v21, v11, v5

    goto :goto_7

    .line 355
    :cond_a
    mul-double v21, v19, v19

    sub-double v21, v17, v21

    .line 356
    .local v21, "w":D
    mul-double v23, v21, v21

    aput-wide v23, v11, v5

    .line 350
    .end local v19    # "arg":D
    .end local v21    # "w":D
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 263
    .end local v5    # "i":I
    .end local v12    # "medianResidual":D
    .end local v15    # "bandwidthInterval":[I
    :cond_b
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v16

    move-wide/from16 v12, v17

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 361
    .end local v14    # "iter":I
    :cond_c
    :goto_8
    return-object v7

    .line 247
    .end local v7    # "res":[D
    .end local v9    # "residuals":[D
    .end local v10    # "sortedResiduals":[D
    .end local v11    # "robustnessWeights":[D
    :cond_d
    move/from16 v16, v6

    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v10, v16

    invoke-direct {v5, v6, v9, v7, v10}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 227
    .end local v8    # "bandwidthInPoints":I
    :cond_e
    new-instance v5, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v5

    .line 221
    .end local v4    # "n":I
    :cond_f
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v5, v1

    array-length v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4
.end method
