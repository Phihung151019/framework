.class public Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;
.super Ljava/lang/Object;
.source "MillerUpdatingRegression.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/regression/UpdatingMultipleLinearRegression;


# instance fields
.field private final d:[D

.field private final epsilon:D

.field private hasIntercept:Z

.field private final lindep:[Z

.field private nobs:J

.field private final nvars:I

.field private final r:[D

.field private final rhs:[D

.field private final rss:[D

.field private rss_set:Z

.field private sserr:D

.field private sumsqy:D

.field private sumy:D

.field private final tol:[D

.field private tol_set:Z

.field private final vorder:[I

.field private final work_sing:[D

.field private final work_tolset:[D

.field private final x_sing:[D


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 88
    const/4 v0, 0x0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, -0x1

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;-><init>(IZD)V

    .line 89
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "numberOfVariables"    # I
    .param p2, "includeConstant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 140
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;-><init>(IZD)V

    .line 141
    return-void
.end method

.method public constructor <init>(IZD)V
    .locals 6
    .param p1, "numberOfVariables"    # I
    .param p2, "includeConstant"    # Z
    .param p3, "errorTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 63
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 65
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 67
    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    .line 75
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 77
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    .line 101
    const/4 v5, 0x1

    if-lt p1, v5, :cond_3

    .line 104
    if-eqz p2, :cond_0

    .line 105
    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    goto :goto_0

    .line 107
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    .line 109
    :goto_0
    iput-boolean p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    .line 110
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 111
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    .line 112
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    .line 113
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v1, v5

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    .line 114
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    .line 115
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    .line 116
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    .line 117
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    .line 118
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    .line 119
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    .line 120
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aput v0, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "i":I
    :cond_1
    cmpl-double v0, p3, v2

    if-lez v0, :cond_2

    .line 125
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    goto :goto_2

    .line 127
    :cond_2
    neg-double v0, p3

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    .line 129
    :goto_2
    return-void

    .line 102
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private cov(I)[D
    .locals 22
    .param p1, "nreq"    # I

    .line 492
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 493
    const/4 v2, 0x0

    return-object v2

    .line 495
    :cond_0
    const-wide/16 v2, 0x0

    .line 496
    .local v2, "rnk":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-ge v4, v1, :cond_2

    .line 497
    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    .line 498
    add-double/2addr v2, v5

    .line 496
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 501
    .end local v4    # "i":I
    :cond_2
    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    add-int/lit8 v7, v1, -0x1

    aget-wide v7, v4, v7

    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    long-to-double v9, v9

    sub-double/2addr v9, v2

    div-double/2addr v7, v9

    .line 502
    .local v7, "var":D
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [D

    .line 503
    .local v4, "rinv":[D
    invoke-direct {v0, v4, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->inverse([DI)V

    .line 504
    add-int/lit8 v9, v1, 0x1

    mul-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [D

    .line 505
    .local v9, "covmat":[D
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->fill([DD)V

    .line 508
    const/4 v10, 0x0

    .line 509
    .local v10, "start":I
    const-wide/16 v11, 0x0

    .line 510
    .local v11, "total":D
    const/4 v13, 0x0

    .local v13, "row":I
    :goto_1
    if-ge v13, v1, :cond_9

    .line 511
    move v14, v10

    .line 512
    .local v14, "pos2":I
    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v15, v15, v13

    if-nez v15, :cond_8

    .line 513
    move v15, v13

    .local v15, "col":I
    :goto_2
    if-ge v15, v1, :cond_7

    .line 514
    move-wide/from16 v16, v5

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v5, v5, v15

    if-nez v5, :cond_6

    .line 515
    add-int v5, v10, v15

    sub-int/2addr v5, v13

    .line 516
    .local v5, "pos1":I
    if-ne v13, v15, :cond_3

    .line 517
    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v18, v6, v15

    div-double v11, v16, v18

    goto :goto_3

    .line 519
    :cond_3
    add-int/lit8 v6, v5, -0x1

    aget-wide v18, v4, v6

    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v20, v6, v15

    div-double v11, v18, v20

    .line 521
    :goto_3
    add-int/lit8 v6, v15, 0x1

    .local v6, "k":I
    :goto_4
    if-ge v6, v1, :cond_5

    .line 522
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v1, v1, v6

    if-nez v1, :cond_4

    .line 523
    aget-wide v18, v4, v5

    aget-wide v20, v4, v14

    mul-double v18, v18, v20

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v20, v1, v6

    div-double v18, v18, v20

    add-double v11, v11, v18

    .line 525
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 526
    add-int/lit8 v14, v14, 0x1

    .line 521
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p1

    goto :goto_4

    .line 528
    .end local v6    # "k":I
    :cond_5
    add-int/lit8 v1, v15, 0x1

    mul-int/2addr v1, v15

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v13

    mul-double v18, v11, v7

    aput-wide v18, v9, v1

    goto :goto_5

    .line 530
    .end local v5    # "pos1":I
    :cond_6
    sub-int v1, p1, v15

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v14, v1

    .line 513
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move-wide/from16 v5, v16

    goto :goto_2

    :cond_7
    move-wide/from16 v16, v5

    goto :goto_6

    .line 512
    .end local v15    # "col":I
    :cond_8
    move-wide/from16 v16, v5

    .line 534
    :goto_6
    sub-int v1, p1, v13

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v10, v1

    .line 510
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    move-wide/from16 v5, v16

    goto :goto_1

    .line 536
    .end local v13    # "row":I
    .end local v14    # "pos2":I
    :cond_9
    return-object v9
.end method

.method private include([DDD)V
    .locals 29
    .param p1, "x"    # [D
    .param p2, "wi"    # D
    .param p4, "yi"    # D

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    const/4 v4, 0x0

    .line 230
    .local v4, "nextr":I
    move-wide/from16 v5, p2

    .line 231
    .local v5, "w":D
    move-wide/from16 v7, p4

    .line 238
    .local v7, "y":D
    const/4 v9, 0x0

    iput-boolean v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 239
    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    invoke-direct {v0, v2, v3, v9, v10}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v9

    iput-wide v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 240
    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    mul-double v11, v2, v2

    invoke-direct {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v9

    iput-wide v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    .line 241
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v1

    if-ge v9, v10, :cond_7

    .line 242
    const-wide/16 v10, 0x0

    cmpl-double v12, v5, v10

    if-nez v12, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    aget-wide v12, v1, v9

    .line 247
    .local v12, "xi":D
    cmpl-double v14, v12, v10

    if-nez v14, :cond_1

    .line 248
    iget v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v4, v10

    .line 249
    goto/16 :goto_5

    .line 251
    :cond_1
    iget-object v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v14, v14, v9

    .line 252
    .local v14, "di":D
    mul-double v16, v5, v12

    .line 253
    .local v16, "wxi":D
    move-wide/from16 v18, v5

    .line 254
    .local v18, "_w":D
    cmpl-double v20, v14, v10

    if-eqz v20, :cond_3

    .line 255
    move-wide/from16 v20, v10

    mul-double v10, v16, v12

    invoke-direct {v0, v14, v15, v10, v11}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v10

    .line 256
    .local v10, "dpi":D
    mul-double v22, v16, v12

    div-double v22, v22, v14

    .line 257
    .local v22, "tmp":D
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    sget-wide v26, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    cmpl-double v24, v24, v26

    if-lez v24, :cond_2

    .line 258
    mul-double v24, v14, v5

    div-double v5, v24, v10

    .line 260
    .end local v22    # "tmp":D
    :cond_2
    goto :goto_1

    .line 261
    .end local v10    # "dpi":D
    :cond_3
    move-wide/from16 v20, v10

    mul-double v10, v16, v12

    .line 262
    .restart local v10    # "dpi":D
    const-wide/16 v5, 0x0

    .line 264
    :goto_1
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v10, v1, v9

    .line 265
    add-int/lit8 v1, v9, 0x1

    .local v1, "k":I
    :goto_2
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v1, v2, :cond_5

    .line 266
    aget-wide v2, p1, v1

    .line 267
    .local v2, "xk":D
    move-wide/from16 v22, v5

    move v6, v4

    .end local v4    # "nextr":I
    .end local v5    # "w":D
    .local v6, "nextr":I
    .local v22, "w":D
    neg-double v4, v12

    move/from16 v24, v1

    .end local v1    # "k":I
    .local v24, "k":I
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v25, v1, v6

    mul-double v4, v4, v25

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v4

    aput-wide v4, p1, v24

    .line 268
    cmpl-double v1, v14, v20

    if-eqz v1, :cond_4

    .line 269
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v4, v4, v6

    mul-double/2addr v4, v14

    mul-double v25, v18, v12

    move-wide/from16 v27, v2

    move-object v3, v1

    .end local v2    # "xk":D
    .local v27, "xk":D
    mul-double v1, v25, v27

    invoke-direct {v0, v4, v5, v1, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v1

    div-double/2addr v1, v10

    aput-wide v1, v3, v6

    goto :goto_3

    .line 271
    .end local v27    # "xk":D
    .restart local v2    # "xk":D
    :cond_4
    move-wide/from16 v27, v2

    .end local v2    # "xk":D
    .restart local v27    # "xk":D
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    div-double v2, v27, v12

    aput-wide v2, v1, v6

    .line 273
    :goto_3
    add-int/lit8 v4, v6, 0x1

    .line 265
    .end local v6    # "nextr":I
    .restart local v4    # "nextr":I
    add-int/lit8 v1, v24, 0x1

    move-wide/from16 v2, p4

    move-wide/from16 v5, v22

    .end local v24    # "k":I
    .restart local v1    # "k":I
    goto :goto_2

    .end local v22    # "w":D
    .end local v27    # "xk":D
    .restart local v5    # "w":D
    :cond_5
    move/from16 v24, v1

    move-wide/from16 v22, v5

    move v6, v4

    .line 275
    .end local v1    # "k":I
    .end local v4    # "nextr":I
    .end local v5    # "w":D
    .restart local v6    # "nextr":I
    .restart local v22    # "w":D
    move-wide v1, v7

    .line 276
    .local v1, "xk":D
    neg-double v3, v12

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v24, v5, v9

    mul-double v3, v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v3

    .line 277
    .end local v7    # "y":D
    .local v3, "y":D
    cmpl-double v5, v14, v20

    if-eqz v5, :cond_6

    .line 278
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v7, v7, v9

    mul-double/2addr v7, v14

    move-wide/from16 v20, v1

    .end local v1    # "xk":D
    .local v20, "xk":D
    mul-double v1, v16, v20

    invoke-direct {v0, v7, v8, v1, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v1

    div-double/2addr v1, v10

    aput-wide v1, v5, v9

    goto :goto_4

    .line 280
    .end local v20    # "xk":D
    .restart local v1    # "xk":D
    :cond_6
    move-wide/from16 v20, v1

    .end local v1    # "xk":D
    .restart local v20    # "xk":D
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    div-double v7, v20, v12

    aput-wide v7, v1, v9

    .line 241
    .end local v10    # "dpi":D
    .end local v14    # "di":D
    .end local v16    # "wxi":D
    .end local v18    # "_w":D
    .end local v20    # "xk":D
    :goto_4
    move-wide v7, v3

    move v4, v6

    move-wide/from16 v5, v22

    .end local v3    # "y":D
    .end local v6    # "nextr":I
    .end local v22    # "w":D
    .restart local v4    # "nextr":I
    .restart local v5    # "w":D
    .restart local v7    # "y":D
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    goto/16 :goto_0

    .line 283
    .end local v9    # "i":I
    .end local v12    # "xi":D
    :cond_7
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    mul-double v9, v5, v7

    mul-double/2addr v9, v7

    invoke-direct {v0, v1, v2, v9, v10}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 284
    return-void
.end method

.method private inverse([DI)V
    .locals 13
    .param p1, "rinv"    # [D
    .param p2, "nreq"    # I

    .line 547
    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 548
    .local v0, "pos":I
    const/4 v1, -0x1

    .line 549
    .local v1, "pos1":I
    const/4 v2, -0x1

    .line 550
    .local v2, "pos2":I
    const-wide/16 v3, 0x0

    .line 551
    .local v3, "total":D
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    .line 552
    add-int/lit8 v5, p2, -0x1

    .local v5, "row":I
    :goto_0
    if-lez v5, :cond_4

    .line 553
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_3

    .line 554
    add-int/lit8 v6, v5, -0x1

    iget v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    iget v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v5

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 555
    .local v6, "start":I
    move v7, p2

    .local v7, "col":I
    :goto_1
    if-le v7, v5, :cond_2

    .line 556
    move v1, v6

    .line 557
    move v2, v0

    .line 558
    const-wide/16 v3, 0x0

    .line 559
    move v8, v5

    .local v8, "k":I
    :goto_2
    add-int/lit8 v9, v7, -0x1

    if-ge v8, v9, :cond_1

    .line 560
    sub-int v9, p2, v8

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v2, v9

    .line 561
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v9, v9, v8

    if-nez v9, :cond_0

    .line 562
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v9, v9, v1

    neg-double v9, v9

    aget-wide v11, p1, v2

    mul-double/2addr v9, v11

    add-double/2addr v3, v9

    .line 564
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 559
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 566
    .end local v8    # "k":I
    :cond_1
    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v8, v8, v1

    sub-double v8, v3, v8

    aput-wide v8, p1, v0

    .line 567
    add-int/lit8 v0, v0, -0x1

    .line 555
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 569
    .end local v6    # "start":I
    .end local v7    # "col":I
    :cond_2
    goto :goto_3

    .line 570
    :cond_3
    sub-int v6, p2, v5

    sub-int/2addr v0, v6

    .line 552
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 573
    .end local v5    # "row":I
    :cond_4
    return-void
.end method

.method private regcf(I)[D
    .locals 12
    .param p1, "nreq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 372
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    .line 375
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-gt p1, v1, :cond_6

    .line 379
    iget-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    if-nez v1, :cond_0

    .line 380
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 382
    :cond_0
    new-array v1, p1, [D

    .line 383
    .local v1, "ret":[D
    const/4 v2, 0x0

    .line 384
    .local v2, "rankProblem":Z
    add-int/lit8 v3, p1, -0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 385
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v6, v6, v3

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 386
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    .line 387
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v4, v6, v3

    .line 388
    const/4 v2, 0x1

    goto :goto_2

    .line 390
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v4, v4, v3

    aput-wide v4, v1, v3

    .line 391
    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    sub-int/2addr v4, v0

    mul-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 392
    .local v4, "nextr":I
    add-int/lit8 v5, v3, 0x1

    .local v5, "j":I
    :goto_1
    if-ge v5, p1, :cond_2

    .line 393
    aget-wide v6, v1, v3

    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v8, v8, v4

    neg-double v8, v8

    aget-wide v10, v1, v5

    mul-double/2addr v8, v10

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v6

    aput-wide v6, v1, v3

    .line 394
    add-int/lit8 v4, v4, 0x1

    .line 392
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 384
    .end local v4    # "nextr":I
    .end local v5    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 398
    .end local v3    # "i":I
    :cond_3
    if-eqz v2, :cond_5

    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p1, :cond_5

    .line 400
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_4

    .line 401
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    aput-wide v3, v1, v0

    .line 399
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 405
    .end local v0    # "i":I
    :cond_5
    return-object v1

    .line 376
    .end local v1    # "ret":[D
    .end local v2    # "rankProblem":Z
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 373
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private reorderRegressors([II)I
    .locals 6
    .param p1, "list"    # [I
    .param p2, "pos1"    # I

    .line 823
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    array-length v0, p1

    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p2

    if-le v0, v2, :cond_0

    goto :goto_2

    .line 826
    :cond_0
    move v0, p2

    .line 827
    .local v0, "next":I
    move v1, p2

    .line 828
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 829
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v2, v2, v1

    .line 830
    .local v2, "l":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 831
    aget v5, p1, v4

    if-ne v2, v5, :cond_1

    if-le v1, v0, :cond_1

    .line 832
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vmove(II)V

    .line 833
    add-int/lit8 v0, v0, 0x1

    .line 834
    array-length v5, p1

    add-int/2addr v5, p2

    if-lt v0, v5, :cond_2

    .line 835
    return v3

    .line 830
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 841
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    .end local v2    # "l":I
    :cond_3
    return v3

    .line 824
    .end local v0    # "next":I
    .end local v1    # "i":I
    :cond_4
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method private singcheck()V
    .locals 14

    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v0, v1, :cond_0

    .line 415
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v0, v1, :cond_6

    .line 421
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v1, v1, v0

    .line 422
    .local v1, "temp":D
    add-int/lit8 v3, v0, -0x1

    .line 423
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_2
    add-int/lit8 v5, v0, -0x1

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_2

    .line 424
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v8, v5, v3

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    aget-wide v10, v5, v4

    mul-double/2addr v8, v10

    cmpg-double v5, v8, v1

    if-gez v5, :cond_1

    .line 425
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aput-wide v6, v5, v3

    .line 427
    :cond_1
    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x2

    add-int/2addr v3, v5

    .line 423
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 432
    .end local v4    # "row":I
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v0

    .line 433
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    aget-wide v4, v4, v0

    cmpg-double v4, v4, v1

    if-gez v4, :cond_5

    .line 434
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v0

    .line 435
    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_4

    .line 436
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    invoke-static {v4, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    .line 437
    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    iget v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v4, v8

    sub-int/2addr v4, v0

    sub-int/2addr v4, v5

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 438
    .local v4, "_pi":I
    add-int/lit8 v5, v0, 0x1

    .local v5, "_xi":I
    :goto_3
    iget v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v5, v8, :cond_3

    .line 439
    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v9, v9, v4

    aput-wide v9, v8, v5

    .line 440
    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aput-wide v6, v8, v4

    .line 438
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 442
    .end local v5    # "_xi":I
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v12, v5, v0

    .line 443
    .local v12, "y":D
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v10, v5, v0

    .line 444
    .local v10, "weight":D
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v6, v5, v0

    .line 445
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aput-wide v6, v5, v0

    .line 446
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    .line 447
    .end local v4    # "_pi":I
    .end local v10    # "weight":D
    .end local v12    # "y":D
    goto :goto_4

    .line 448
    :cond_4
    move-object v8, p0

    iget-wide v4, v8, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-object v6, v8, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v6, v6, v0

    iget-object v9, v8, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v9, v9, v0

    mul-double/2addr v6, v9

    iget-object v9, v8, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v9, v9, v0

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    iput-wide v4, v8, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    goto :goto_4

    .line 433
    :cond_5
    move-object v8, p0

    .line 417
    .end local v1    # "temp":D
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .end local v3    # "pos":I
    :cond_6
    move-object v8, p0

    .line 452
    .end local v0    # "col":I
    return-void
.end method

.method private smartAdd(DD)D
    .locals 8
    .param p1, "a"    # D
    .param p3, "b"    # D

    .line 294
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 295
    .local v0, "_a":D
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 296
    .local v2, "_b":D
    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 297
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v4, v0

    .line 298
    .local v4, "eps":D
    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 299
    add-double v6, p1, p3

    return-wide v6

    .line 301
    :cond_0
    return-wide p1

    .line 303
    .end local v4    # "eps":D
    :cond_1
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v4, v2

    .line 304
    .restart local v4    # "eps":D
    cmpl-double v6, v0, v4

    if-lez v6, :cond_2

    .line 305
    add-double v6, p1, p3

    return-wide v6

    .line 307
    :cond_2
    return-wide p3
.end method

.method private ss()V
    .locals 9

    .line 464
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 465
    .local v0, "total":D
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    aput-wide v5, v2, v3

    .line 466
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 467
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v5, v3, v2

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v7, v3, v2

    mul-double/2addr v5, v7

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v7, v3, v2

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    .line 468
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    add-int/lit8 v5, v2, -0x1

    aput-wide v0, v3, v5

    .line 466
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 470
    .end local v2    # "i":I
    :cond_0
    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 471
    return-void
.end method

.method private tolset()V
    .locals 11

    .line 342
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    .line 343
    .local v0, "eps":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v3, :cond_0

    .line 344
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    mul-double/2addr v5, v0

    aput-wide v5, v2, v4

    .line 347
    const/4 v2, 0x1

    .local v2, "col":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v3, :cond_2

    .line 348
    add-int/lit8 v3, v2, -0x1

    .line 349
    .local v3, "pos":I
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v4, v4, v2

    .line 350
    .local v4, "total":D
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_2
    if-ge v6, v2, :cond_1

    .line 351
    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v7, v7, v3

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v9, v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 352
    iget v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v3, v7

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 354
    .end local v6    # "row":I
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    mul-double v7, v0, v4

    aput-wide v7, v6, v2

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 356
    .end local v2    # "col":I
    .end local v3    # "pos":I
    .end local v4    # "total":D
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    .line 357
    return-void
.end method

.method private vmove(II)V
    .locals 33
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 701
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 702
    .local v3, "bSkipTo40":Z
    if-ne v1, v2, :cond_0

    .line 703
    return-void

    .line 705
    :cond_0
    iget-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    if-nez v4, :cond_1

    .line 706
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    .line 708
    :cond_1
    const/4 v4, 0x0

    .line 709
    .local v4, "count":I
    if-ge v1, v2, :cond_2

    .line 710
    move/from16 v5, p1

    .line 711
    .local v5, "first":I
    const/4 v6, 0x1

    .line 712
    .local v6, "inc":I
    sub-int v4, v2, v1

    goto :goto_0

    .line 714
    .end local v5    # "first":I
    .end local v6    # "inc":I
    :cond_2
    add-int/lit8 v5, v1, -0x1

    .line 715
    .restart local v5    # "first":I
    const/4 v6, -0x1

    .line 716
    .restart local v6    # "inc":I
    sub-int v4, v1, v2

    .line 719
    :goto_0
    move v7, v5

    .line 720
    .local v7, "m":I
    const/4 v8, 0x0

    .line 721
    .local v8, "idx":I
    :goto_1
    if-ge v8, v4, :cond_f

    .line 722
    iget v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    iget v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v7

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x2

    .line 723
    .local v9, "m1":I
    iget v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v10, v9

    sub-int/2addr v10, v7

    add-int/lit8 v10, v10, -0x1

    .line 724
    .local v10, "m2":I
    add-int/lit8 v11, v7, 0x1

    .line 726
    .local v11, "mp1":I
    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v12, v12, v7

    .line 727
    .local v12, "d1":D
    iget-object v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v14, v14, v11

    .line 729
    .local v14, "d2":D
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpl-double v1, v12, v1

    if-gtz v1, :cond_3

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpl-double v1, v14, v1

    if-lez v1, :cond_c

    .line 730
    :cond_3
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v1, v1, v9

    .line 731
    .local v1, "X":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v18, v1

    .end local v1    # "X":D
    .local v18, "X":D
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v1, v1, v11

    cmpg-double v1, v16, v1

    if-gez v1, :cond_4

    .line 732
    const-wide/16 v1, 0x0

    .end local v18    # "X":D
    .restart local v1    # "X":D
    goto :goto_2

    .line 731
    .end local v1    # "X":D
    .restart local v18    # "X":D
    :cond_4
    move-wide/from16 v1, v18

    .line 734
    .end local v18    # "X":D
    .restart local v1    # "X":D
    :goto_2
    move-wide/from16 v16, v1

    .end local v1    # "X":D
    .local v16, "X":D
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpg-double v1, v12, v1

    if-ltz v1, :cond_8

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpg-double v1, v18, v1

    if-gez v1, :cond_5

    goto :goto_4

    .line 750
    :cond_5
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpg-double v1, v14, v1

    if-gez v1, :cond_7

    .line 751
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    mul-double v18, v12, v16

    mul-double v18, v18, v16

    aput-wide v18, v1, v7

    .line 752
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v18, v18, v16

    aput-wide v18, v1, v9

    .line 753
    add-int/lit8 v1, v9, 0x1

    .local v1, "_i":I
    :goto_3
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v2, v9

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    .line 754
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v18, v2, v1

    div-double v18, v18, v16

    aput-wide v18, v2, v1

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 756
    .end local v1    # "_i":I
    :cond_6
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v18, v1, v7

    div-double v18, v18, v16

    aput-wide v18, v1, v7

    .line 757
    const/4 v3, 0x1

    move-wide/from16 v1, v16

    goto :goto_6

    .line 750
    :cond_7
    move-wide/from16 v1, v16

    goto :goto_6

    .line 735
    :cond_8
    :goto_4
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v14, v1, v7

    .line 736
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v12, v1, v11

    .line 737
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    const-wide/16 v18, 0x0

    aput-wide v18, v1, v9

    .line 738
    add-int/lit8 v1, v7, 0x2

    .local v1, "col":I
    :goto_5
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v1, v2, :cond_9

    .line 739
    add-int/lit8 v9, v9, 0x1

    .line 740
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v16, v2, v9

    .line 741
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move/from16 v18, v1

    .end local v1    # "col":I
    .local v18, "col":I
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v19, v1, v10

    aput-wide v19, v2, v9

    .line 742
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aput-wide v16, v1, v10

    .line 743
    add-int/lit8 v10, v10, 0x1

    .line 738
    add-int/lit8 v1, v18, 0x1

    .end local v18    # "col":I
    .restart local v1    # "col":I
    goto :goto_5

    :cond_9
    move/from16 v18, v1

    .line 745
    .end local v1    # "col":I
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v1, v1, v7

    .line 746
    .end local v16    # "X":D
    .local v1, "X":D
    move-wide/from16 v16, v1

    .end local v1    # "X":D
    .restart local v16    # "X":D
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v18, v2, v11

    aput-wide v18, v1, v7

    .line 747
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aput-wide v16, v1, v11

    .line 748
    const/4 v3, 0x1

    move-wide/from16 v1, v16

    .line 760
    .end local v16    # "X":D
    .restart local v1    # "X":D
    :goto_6
    if-nez v3, :cond_b

    .line 761
    mul-double v16, v12, v1

    mul-double v16, v16, v1

    add-double v16, v14, v16

    .line 762
    .local v16, "d1new":D
    div-double v18, v14, v16

    .line 763
    .local v18, "cbar":D
    mul-double v20, v1, v12

    div-double v20, v20, v16

    .line 764
    .local v20, "sbar":D
    mul-double v22, v12, v18

    .line 765
    .local v22, "d2new":D
    move-wide/from16 v24, v1

    .end local v1    # "X":D
    .local v24, "X":D
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v16, v1, v7

    .line 766
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v22, v1, v11

    .line 767
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aput-wide v20, v1, v9

    .line 768
    add-int/lit8 v1, v7, 0x2

    .local v1, "col":I
    :goto_7
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v1, v2, :cond_a

    .line 769
    add-int/lit8 v9, v9, 0x1

    .line 770
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v26, v2, v9

    .line 771
    .local v26, "Y":D
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move/from16 v28, v1

    .end local v1    # "col":I
    .local v28, "col":I
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v29, v1, v10

    mul-double v29, v29, v18

    mul-double v31, v20, v26

    add-double v29, v29, v31

    aput-wide v29, v2, v9

    .line 772
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v29, v2, v10

    mul-double v29, v29, v24

    sub-double v29, v26, v29

    aput-wide v29, v1, v10

    .line 773
    add-int/lit8 v10, v10, 0x1

    .line 768
    add-int/lit8 v1, v28, 0x1

    .end local v28    # "col":I
    .restart local v1    # "col":I
    goto :goto_7

    .end local v26    # "Y":D
    :cond_a
    move/from16 v28, v1

    .line 775
    .end local v1    # "col":I
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v1, v1, v7

    .line 776
    .local v1, "Y":D
    move-wide/from16 v26, v1

    .end local v1    # "Y":D
    .restart local v26    # "Y":D
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v28, v2, v11

    mul-double v28, v28, v18

    mul-double v30, v20, v26

    add-double v28, v28, v30

    aput-wide v28, v1, v7

    .line 777
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v28, v2, v11

    mul-double v28, v28, v24

    sub-double v28, v26, v28

    aput-wide v28, v1, v11

    goto :goto_8

    .line 760
    .end local v16    # "d1new":D
    .end local v18    # "cbar":D
    .end local v20    # "sbar":D
    .end local v22    # "d2new":D
    .end local v24    # "X":D
    .end local v26    # "Y":D
    .local v1, "X":D
    :cond_b
    move-wide/from16 v24, v1

    .line 780
    .end local v1    # "X":D
    :cond_c
    :goto_8
    if-lez v7, :cond_e

    .line 781
    move v1, v7

    .line 782
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_9
    if-ge v2, v7, :cond_d

    .line 783
    move/from16 v16, v1

    .end local v1    # "pos":I
    .local v16, "pos":I
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v17, v1, v16

    .line 784
    .local v17, "X":D
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object/from16 v19, v1

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    add-int/lit8 v20, v16, -0x1

    aget-wide v20, v1, v20

    aput-wide v20, v19, v16

    .line 785
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    add-int/lit8 v19, v16, -0x1

    aput-wide v17, v1, v19

    .line 786
    iget v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    add-int v1, v16, v1

    .line 782
    .end local v16    # "pos":I
    .restart local v1    # "pos":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .end local v17    # "X":D
    :cond_d
    move/from16 v16, v1

    .line 791
    .end local v1    # "pos":I
    .end local v2    # "row":I
    :cond_e
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v1, v1, v7

    .line 792
    .end local v9    # "m1":I
    .local v1, "m1":I
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v9, v9, v11

    aput v9, v2, v7

    .line 793
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aput v1, v2, v11

    .line 794
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v16, v2, v7

    .line 795
    .local v16, "X":D
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v18, v9, v11

    aput-wide v18, v2, v7

    .line 796
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aput-wide v16, v2, v11

    .line 797
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    aget-wide v18, v9, v11

    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v20, v9, v11

    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v22, v9, v11

    mul-double v20, v20, v22

    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v22, v9, v11

    mul-double v20, v20, v22

    add-double v18, v18, v20

    aput-wide v18, v2, v7

    .line 799
    add-int/2addr v7, v6

    .line 800
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_1

    .line 802
    .end local v1    # "m1":I
    .end local v10    # "m2":I
    .end local v11    # "mp1":I
    .end local v12    # "d1":D
    .end local v14    # "d2":D
    .end local v16    # "X":D
    :cond_f
    return-void
.end method


# virtual methods
.method public addObservation([DD)V
    .locals 11
    .param p1, "x"    # [D
    .param p2, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    if-nez v0, :cond_0

    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    array-length v0, p1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 174
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    if-nez v0, :cond_3

    .line 175
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-wide v5, p2

    .end local p2    # "y":D
    .local v5, "y":D
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    goto :goto_1

    .line 177
    .end local v5    # "y":D
    .restart local p2    # "y":D
    :cond_3
    move-wide v5, p2

    .end local p2    # "y":D
    .restart local v5    # "y":D
    array-length p2, p1

    add-int/2addr p2, v1

    new-array p2, p2, [D

    .line 178
    .local p2, "tmp":[D
    array-length p3, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, p2, v0

    .line 180
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-wide v9, v5

    move-object v5, p0

    move-object v6, p2

    .end local v5    # "y":D
    .end local p2    # "tmp":[D
    .local v6, "tmp":[D
    .local v9, "y":D
    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    move-object v1, v5

    move-wide v5, v9

    .line 182
    .end local v6    # "tmp":[D
    .end local v9    # "y":D
    .restart local v5    # "y":D
    :goto_1
    iget-wide p2, v1, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    iput-wide p2, v1, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 184
    return-void
.end method

.method public addObservations([[D[D)V
    .locals 4
    .param p1, "x"    # [[D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    array-length v1, p1

    if-eqz v1, :cond_3

    .line 204
    aget-object v1, p1, v0

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    if-gt v1, v2, :cond_2

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 210
    aget-object v1, p1, v0

    aget-wide v2, p2, v0

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->addObservation([DD)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 205
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v0, p1, v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 201
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 195
    :cond_4
    :goto_1
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    if-nez p1, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    array-length v3, p1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    array-length v0, p2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public clear()V
    .locals 6

    .line 316
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 317
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 318
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 319
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 320
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 321
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 322
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 323
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 324
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v0, v4, :cond_0

    .line 326
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aput v0, v4, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "i":I
    :cond_0
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 329
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 330
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 331
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    .line 332
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 333
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    .line 334
    return-void
.end method

.method public getDiagonalOfHatMatrix([D)D
    .locals 13
    .param p1, "row_data"    # [D

    .line 853
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v0, v0, [D

    .line 857
    .local v0, "wk":[D
    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-le v1, v2, :cond_0

    .line 858
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1

    .line 861
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    if-eqz v1, :cond_1

    .line 862
    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [D

    .line 863
    .local v1, "xrow":[D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    aput-wide v3, v1, v5

    .line 864
    array-length v3, p1

    invoke-static {p1, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 866
    .end local v1    # "xrow":[D
    :cond_1
    move-object v1, p1

    .line 868
    .restart local v1    # "xrow":[D
    :goto_0
    const-wide/16 v2, 0x0

    .line 869
    .local v2, "hii":D
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 870
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v5, v5, v4

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v7, v7, v4

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 871
    const-wide/16 v5, 0x0

    aput-wide v5, v0, v4

    goto :goto_3

    .line 873
    :cond_2
    add-int/lit8 v5, v4, -0x1

    .line 874
    .local v5, "pos":I
    aget-wide v6, v1, v4

    .line 875
    .local v6, "total":D
    const/4 v8, 0x0

    .local v8, "row":I
    :goto_2
    if-ge v8, v4, :cond_3

    .line 876
    aget-wide v9, v0, v8

    neg-double v9, v9

    iget-object v11, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v11, v11, v5

    mul-double/2addr v9, v11

    invoke-direct {p0, v6, v7, v9, v10}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v6

    .line 877
    iget v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x2

    add-int/2addr v5, v9

    .line 875
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 879
    .end local v8    # "row":I
    :cond_3
    aput-wide v6, v0, v4

    .line 880
    mul-double v8, v6, v6

    iget-object v10, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v10, v10, v4

    div-double/2addr v8, v10

    invoke-direct {p0, v2, v3, v8, v9}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v2

    .line 869
    .end local v5    # "pos":I
    .end local v6    # "total":D
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 883
    .end local v4    # "col":I
    :cond_4
    return-wide v2
.end method

.method public getN()J
    .locals 2

    .line 156
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    return-wide v0
.end method

.method public getOrderOfRegressors()[I
    .locals 1

    .line 894
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPartialCorrelations(I)[D
    .locals 31
    .param p1, "in"    # I

    .line 609
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v3, v1

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [D

    .line 613
    .local v2, "output":[D
    neg-int v3, v1

    .line 614
    .local v3, "rms_off":I
    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    .line 615
    .local v4, "wrk_off":I
    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v5, v1

    new-array v5, v5, [D

    .line 616
    .local v5, "rms":[D
    iget v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [D

    .line 620
    .local v6, "work":[D
    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v7, v1

    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    .line 621
    .local v7, "offXX":I
    const/4 v8, -0x1

    if-lt v1, v8, :cond_b

    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-lt v1, v8, :cond_0

    move-object/from16 v16, v2

    goto/16 :goto_8

    .line 624
    :cond_0
    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/lit8 v8, v8, -0x1

    .line 625
    .local v8, "nvm":I
    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    array-length v9, v9

    sub-int v10, v8, v1

    sub-int v11, v8, v1

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    .line 626
    .local v9, "base_pos":I
    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v10, v10, v1

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-lez v10, :cond_1

    .line 627
    add-int v10, v1, v3

    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v16, v11, v1

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    div-double v16, v14, v16

    aput-wide v16, v5, v10

    .line 629
    :cond_1
    add-int/lit8 v10, v1, 0x1

    .local v10, "col":I
    :goto_0
    iget v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v10, v11, :cond_4

    .line 630
    add-int v11, v9, v10

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v1

    .line 631
    .local v11, "pos":I
    move-wide/from16 v16, v14

    iget-object v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v14, v14, v10

    .line 632
    .local v14, "sumxx":D
    move/from16 v18, p1

    move-wide/from16 v29, v12

    move/from16 v12, v18

    move-wide/from16 v18, v29

    .local v12, "row":I
    :goto_1
    if-ge v12, v10, :cond_2

    .line 633
    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v20, v13, v12

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v22, v13, v11

    mul-double v20, v20, v22

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v22, v13, v11

    mul-double v20, v20, v22

    add-double v14, v14, v20

    .line 634
    iget v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, -0x2

    add-int/2addr v11, v13

    .line 632
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 636
    .end local v12    # "row":I
    :cond_2
    cmpl-double v12, v14, v18

    if-lez v12, :cond_3

    .line 637
    add-int v12, v10, v3

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v20

    div-double v20, v16, v20

    aput-wide v20, v5, v12

    goto :goto_2

    .line 639
    :cond_3
    add-int v12, v10, v3

    aput-wide v18, v5, v12

    .line 629
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v14, v16

    move-wide/from16 v12, v18

    goto :goto_0

    .end local v11    # "pos":I
    .end local v14    # "sumxx":D
    :cond_4
    move-wide/from16 v18, v12

    move-wide/from16 v16, v14

    .line 642
    .end local v10    # "col":I
    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 643
    .local v10, "sumyy":D
    move/from16 v12, p1

    .restart local v12    # "row":I
    :goto_3
    iget v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v12, v13, :cond_5

    .line 644
    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v13, v13, v12

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v20, v15, v12

    mul-double v13, v13, v20

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v20, v15, v12

    mul-double v13, v13, v20

    add-double/2addr v10, v13

    .line 643
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 646
    .end local v12    # "row":I
    :cond_5
    cmpl-double v12, v10, v18

    if-lez v12, :cond_6

    .line 647
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    div-double v10, v16, v12

    .line 649
    :cond_6
    const/4 v12, 0x0

    .line 650
    .local v12, "pos":I
    move/from16 v13, p1

    .local v13, "col1":I
    :goto_4
    iget v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v13, v14, :cond_a

    .line 651
    const-wide/16 v14, 0x0

    .line 652
    .local v14, "sumxy":D
    move-object/from16 v16, v2

    move-wide/from16 v1, v18

    .end local v2    # "output":[D
    .local v16, "output":[D
    invoke-static {v6, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 653
    add-int v17, v9, v13

    sub-int v17, v17, p1

    add-int/lit8 v17, v17, -0x1

    .line 654
    .local v17, "pos1":I
    move/from16 v18, p1

    move/from16 v1, v18

    .local v1, "row":I
    :goto_5
    if-ge v1, v13, :cond_8

    .line 655
    add-int/lit8 v2, v17, 0x1

    .line 656
    .local v2, "pos2":I
    add-int/lit8 v20, v13, 0x1

    move/from16 v29, v20

    move/from16 v20, v1

    move/from16 v1, v29

    .local v1, "col2":I
    .local v20, "row":I
    :goto_6
    move/from16 v21, v2

    .end local v2    # "pos2":I
    .local v21, "pos2":I
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v1, v2, :cond_7

    .line 657
    add-int v2, v1, v4

    aget-wide v22, v6, v2

    move/from16 v24, v1

    .end local v1    # "col2":I
    .local v24, "col2":I
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v25, v1, v20

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v27, v1, v17

    mul-double v25, v25, v27

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v27, v1, v21

    mul-double v25, v25, v27

    add-double v22, v22, v25

    aput-wide v22, v6, v2

    .line 658
    add-int/lit8 v2, v21, 0x1

    .line 656
    .end local v21    # "pos2":I
    .restart local v2    # "pos2":I
    add-int/lit8 v1, v24, 0x1

    .end local v24    # "col2":I
    .restart local v1    # "col2":I
    goto :goto_6

    .end local v2    # "pos2":I
    .restart local v21    # "pos2":I
    :cond_7
    move/from16 v24, v1

    .line 660
    .end local v1    # "col2":I
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v1, v1, v20

    move-wide/from16 v22, v1

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v1, v1, v17

    mul-double v1, v1, v22

    move-wide/from16 v22, v1

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v1, v1, v20

    mul-double v1, v1, v22

    add-double/2addr v14, v1

    .line 661
    iget v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int v1, v1, v20

    add-int/lit8 v1, v1, -0x2

    add-int v17, v17, v1

    .line 654
    add-int/lit8 v1, v20, 0x1

    .end local v20    # "row":I
    .local v1, "row":I
    goto :goto_5

    .end local v21    # "pos2":I
    :cond_8
    move/from16 v20, v1

    .line 663
    .end local v1    # "row":I
    add-int/lit8 v1, v17, 0x1

    .line 664
    .local v1, "pos2":I
    add-int/lit8 v2, v13, 0x1

    .local v2, "col2":I
    :goto_7
    move/from16 v20, v1

    .end local v1    # "pos2":I
    .local v20, "pos2":I
    iget v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v1, :cond_9

    .line 665
    add-int v1, v2, v4

    aget-wide v21, v6, v1

    move/from16 v23, v1

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v24, v1, v13

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v26, v1, v20

    mul-double v24, v24, v26

    add-double v21, v21, v24

    aput-wide v21, v6, v23

    .line 666
    add-int/lit8 v1, v20, 0x1

    .line 667
    .end local v20    # "pos2":I
    .restart local v1    # "pos2":I
    add-int/lit8 v20, v2, -0x1

    sub-int v20, v20, p1

    sub-int v21, v2, p1

    mul-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v13

    sub-int v20, v20, p1

    add-int v21, v2, v4

    aget-wide v21, v6, v21

    add-int v23, v13, v3

    aget-wide v23, v5, v23

    mul-double v21, v21, v23

    add-int v23, v2, v3

    aget-wide v23, v5, v23

    mul-double v21, v21, v23

    aput-wide v21, v16, v20

    .line 669
    add-int/lit8 v12, v12, 0x1

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 671
    .end local v1    # "pos2":I
    .end local v2    # "col2":I
    .restart local v20    # "pos2":I
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v1, v1, v13

    move-wide/from16 v21, v1

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v1, v1, v13

    mul-double v1, v1, v21

    add-double/2addr v14, v1

    .line 672
    add-int v1, v13, v3

    add-int/2addr v1, v7

    add-int v2, v13, v3

    aget-wide v21, v5, v2

    mul-double v21, v21, v14

    mul-double v21, v21, v10

    aput-wide v21, v16, v1

    .line 650
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    move-object/from16 v2, v16

    const-wide/16 v18, 0x0

    goto/16 :goto_4

    .end local v14    # "sumxy":D
    .end local v16    # "output":[D
    .end local v17    # "pos1":I
    .end local v20    # "pos2":I
    .local v2, "output":[D
    :cond_a
    move-object/from16 v16, v2

    .line 675
    .end local v2    # "output":[D
    .end local v13    # "col1":I
    .restart local v16    # "output":[D
    return-object v16

    .line 621
    .end local v8    # "nvm":I
    .end local v9    # "base_pos":I
    .end local v10    # "sumyy":D
    .end local v12    # "pos":I
    .end local v16    # "output":[D
    .restart local v2    # "output":[D
    :cond_b
    move-object/from16 v16, v2

    .line 622
    .end local v2    # "output":[D
    .restart local v16    # "output":[D
    :goto_8
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasIntercept()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    return v0
.end method

.method public regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 905
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regress(I)Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v0

    return-object v0
.end method

.method public regress(I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 24
    .param p1, "numberOfRegressors"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 919
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    .line 924
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-gt v1, v2, :cond_b

    .line 929
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 930
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->singcheck()V

    .line 932
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regcf(I)[D

    move-result-object v4

    .line 934
    .local v4, "beta":[D
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    .line 936
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->cov(I)[D

    move-result-object v2

    .line 938
    .local v2, "cov":[D
    const/4 v3, 0x0

    .line 939
    .local v3, "rnk":I
    const/4 v5, 0x0

    move v9, v3

    .end local v3    # "rnk":I
    .local v5, "i":I
    .local v9, "rnk":I
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    array-length v3, v3

    if-ge v5, v3, :cond_1

    .line 940
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v3, v3, v5

    if-nez v3, :cond_0

    .line 941
    add-int/lit8 v9, v9, 0x1

    .line 939
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 945
    .end local v5    # "i":I
    :cond_1
    const/4 v3, 0x0

    .line 946
    .local v3, "needsReorder":Z
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 947
    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v6, v6, v5

    if-eq v6, v5, :cond_2

    .line 948
    const/4 v3, 0x1

    .line 949
    move/from16 v21, v3

    goto :goto_2

    .line 946
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move/from16 v21, v3

    .line 952
    .end local v3    # "needsReorder":Z
    .end local v5    # "i":I
    .local v21, "needsReorder":Z
    :goto_2
    if-nez v21, :cond_4

    .line 953
    new-instance v3, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v2}, [[D

    move-result-object v5

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-boolean v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v17, 0x0

    move/from16 v16, v6

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v17}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v3

    .line 957
    :cond_4
    array-length v3, v4

    new-array v7, v3, [D

    .line 958
    .local v7, "betaNew":[D
    array-length v3, v2

    new-array v3, v3, [D

    .line 960
    .local v3, "covNew":[D
    array-length v5, v4

    new-array v5, v5, [I

    .line 961
    .local v5, "newIndices":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v6, v8, :cond_7

    .line 962
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v1, :cond_6

    .line 963
    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v10, v10, v8

    if-ne v10, v6, :cond_5

    .line 964
    aget-wide v10, v4, v8

    aput-wide v10, v7, v6

    .line 965
    aput v8, v5, v6

    .line 962
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 961
    .end local v8    # "j":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 970
    .end local v6    # "i":I
    :cond_7
    const/4 v6, 0x0

    .line 974
    .local v6, "idx1":I
    const/4 v8, 0x0

    move/from16 v22, v6

    .end local v6    # "idx1":I
    .local v8, "i":I
    .local v22, "idx1":I
    :goto_5
    array-length v6, v4

    if-ge v8, v6, :cond_a

    .line 975
    aget v6, v5, v8

    .line 976
    .local v6, "_i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    if-gt v10, v8, :cond_9

    .line 977
    aget v11, v5, v10

    .line 978
    .local v11, "_j":I
    if-le v6, v11, :cond_8

    .line 979
    add-int/lit8 v12, v6, 0x1

    mul-int/2addr v12, v6

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v11

    .local v12, "idx2":I
    goto :goto_7

    .line 981
    .end local v12    # "idx2":I
    :cond_8
    add-int/lit8 v12, v11, 0x1

    mul-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v6

    .line 983
    .restart local v12    # "idx2":I
    :goto_7
    aget-wide v13, v2, v12

    aput-wide v13, v3, v22

    .line 976
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 974
    .end local v10    # "j":I
    .end local v11    # "_j":I
    .end local v12    # "idx2":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 986
    .end local v6    # "_i":I
    .end local v8    # "i":I
    :cond_a
    new-instance v6, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v3}, [[D

    move-result-object v8

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    move-object/from16 v23, v2

    .end local v2    # "cov":[D
    .local v23, "cov":[D
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    move-wide v15, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-boolean v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v20, 0x0

    move/from16 v19, v12

    move v12, v9

    .end local v9    # "rnk":I
    .local v12, "rnk":I
    const/4 v9, 0x1

    move-wide/from16 v17, v1

    invoke-direct/range {v6 .. v20}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    move v9, v12

    .end local v12    # "rnk":I
    .restart local v9    # "rnk":I
    return-object v6

    .line 925
    .end local v3    # "covNew":[D
    .end local v4    # "beta":[D
    .end local v5    # "newIndices":[I
    .end local v7    # "betaNew":[D
    .end local v9    # "rnk":I
    .end local v21    # "needsReorder":Z
    .end local v22    # "idx1":I
    .end local v23    # "cov":[D
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 920
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public regress([I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 29
    .param p1, "variablesToInclude"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 1005
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-gt v2, v3, :cond_12

    .line 1009
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_11

    .line 1014
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 1015
    const/4 v2, 0x0

    .line 1016
    .local v2, "iExclude":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, -0x1

    if-ge v3, v4, :cond_2

    .line 1017
    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v3, v4, :cond_1

    .line 1021
    if-lez v3, :cond_0

    aget v4, v1, v3

    add-int/lit8 v6, v3, -0x1

    aget v6, v1, v6

    if-ne v4, v6, :cond_0

    .line 1022
    aput v5, v1, v3

    .line 1023
    add-int/lit8 v2, v2, 0x1

    .line 1016
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1018
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX_LARGER_THAN_MAX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 1027
    .end local v3    # "i":I
    :cond_2
    if-lez v2, :cond_5

    .line 1028
    const/4 v3, 0x0

    .line 1029
    .local v3, "j":I
    array-length v4, v1

    sub-int/2addr v4, v2

    new-array v4, v4, [I

    .line 1030
    .local v4, "series":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_4

    .line 1031
    aget v7, v1, v6

    if-le v7, v5, :cond_3

    .line 1032
    aget v7, v1, v6

    aput v7, v4, v3

    .line 1033
    add-int/lit8 v3, v3, 0x1

    .line 1030
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1036
    .end local v3    # "j":I
    .end local v6    # "i":I
    :cond_4
    goto :goto_2

    .line 1037
    .end local v4    # "series":[I
    :cond_5
    move-object/from16 v4, p1

    .line 1040
    .restart local v4    # "series":[I
    :goto_2
    const/4 v3, 0x0

    invoke-direct {v0, v4, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->reorderRegressors([II)I

    .line 1041
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 1042
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->singcheck()V

    .line 1044
    array-length v3, v4

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regcf(I)[D

    move-result-object v6

    .line 1046
    .local v6, "beta":[D
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    .line 1048
    array-length v3, v4

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->cov(I)[D

    move-result-object v3

    .line 1050
    .local v3, "cov":[D
    const/4 v5, 0x0

    .line 1051
    .local v5, "rnk":I
    const/4 v7, 0x0

    move v14, v5

    .end local v5    # "rnk":I
    .local v7, "i":I
    .local v14, "rnk":I
    :goto_3
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    array-length v5, v5

    if-ge v7, v5, :cond_7

    .line 1052
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v5, v5, v7

    if-nez v5, :cond_6

    .line 1053
    add-int/lit8 v14, v14, 0x1

    .line 1051
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1057
    .end local v7    # "i":I
    :cond_7
    const/4 v5, 0x0

    .line 1058
    .local v5, "needsReorder":Z
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v7, v8, :cond_9

    .line 1059
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v8, v8, v7

    aget v9, v4, v7

    if-eq v8, v9, :cond_8

    .line 1060
    const/4 v5, 0x1

    .line 1061
    move/from16 v23, v5

    goto :goto_5

    .line 1058
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    move/from16 v23, v5

    .line 1064
    .end local v5    # "needsReorder":Z
    .end local v7    # "i":I
    .local v23, "needsReorder":Z
    :goto_5
    if-nez v23, :cond_a

    .line 1065
    new-instance v5, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v3}, [[D

    move-result-object v7

    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    move v11, v14

    .end local v14    # "rnk":I
    .local v11, "rnk":I
    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    move-object/from16 v16, v5

    move-object v8, v6

    .end local v6    # "beta":[D
    .local v8, "beta":[D
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move/from16 v24, v2

    .end local v2    # "iExclude":I
    .local v24, "iExclude":I
    iget-boolean v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v19, 0x0

    move-wide/from16 v27, v5

    move-object/from16 v5, v16

    move-wide/from16 v16, v27

    move-object v6, v8

    .end local v8    # "beta":[D
    .restart local v6    # "beta":[D
    const/4 v8, 0x1

    move/from16 v18, v2

    invoke-direct/range {v5 .. v19}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v5

    .line 1069
    .end local v11    # "rnk":I
    .end local v24    # "iExclude":I
    .restart local v2    # "iExclude":I
    .restart local v14    # "rnk":I
    :cond_a
    move/from16 v24, v2

    move v11, v14

    .end local v2    # "iExclude":I
    .end local v14    # "rnk":I
    .restart local v11    # "rnk":I
    .restart local v24    # "iExclude":I
    array-length v2, v6

    new-array v9, v2, [D

    .line 1070
    .local v9, "betaNew":[D
    array-length v2, v6

    new-array v2, v2, [I

    .line 1071
    .local v2, "newIndices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    array-length v7, v4

    if-ge v5, v7, :cond_d

    .line 1072
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    array-length v8, v8

    if-ge v7, v8, :cond_c

    .line 1073
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v8, v8, v7

    aget v10, v4, v5

    if-ne v8, v10, :cond_b

    .line 1074
    aget-wide v12, v6, v7

    aput-wide v12, v9, v5

    .line 1075
    aput v7, v2, v5

    .line 1072
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1071
    .end local v7    # "j":I
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1079
    .end local v5    # "i":I
    :cond_d
    array-length v5, v3

    new-array v5, v5, [D

    .line 1080
    .local v5, "covNew":[D
    const/4 v7, 0x0

    .line 1084
    .local v7, "idx1":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    array-length v10, v6

    if-ge v8, v10, :cond_10

    .line 1085
    aget v10, v2, v8

    .line 1086
    .local v10, "_i":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_9
    if-gt v12, v8, :cond_f

    .line 1087
    aget v13, v2, v12

    .line 1088
    .local v13, "_j":I
    if-le v10, v13, :cond_e

    .line 1089
    add-int/lit8 v14, v10, 0x1

    mul-int/2addr v14, v10

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v13

    .local v14, "idx2":I
    goto :goto_a

    .line 1091
    .end local v14    # "idx2":I
    :cond_e
    add-int/lit8 v14, v13, 0x1

    mul-int/2addr v14, v13

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v10

    .line 1093
    .restart local v14    # "idx2":I
    :goto_a
    aget-wide v15, v3, v14

    aput-wide v15, v5, v7

    .line 1086
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1084
    .end local v12    # "j":I
    .end local v13    # "_j":I
    .end local v14    # "idx2":I
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1096
    .end local v8    # "i":I
    .end local v10    # "_i":I
    :cond_10
    new-instance v8, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v5}, [[D

    move-result-object v10

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .end local v2    # "newIndices":[I
    .end local v3    # "cov":[D
    .local v25, "cov":[D
    .local v26, "newIndices":[I
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    move-wide/from16 v17, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move-wide/from16 v19, v2

    iget-boolean v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v22, 0x0

    move-wide v15, v14

    move v14, v11

    .end local v11    # "rnk":I
    .local v14, "rnk":I
    const/4 v11, 0x1

    move/from16 v21, v2

    invoke-direct/range {v8 .. v22}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    move v11, v14

    .end local v14    # "rnk":I
    .restart local v11    # "rnk":I
    return-object v8

    .line 1010
    .end local v4    # "series":[I
    .end local v5    # "covNew":[D
    .end local v6    # "beta":[D
    .end local v7    # "idx1":I
    .end local v9    # "betaNew":[D
    .end local v11    # "rnk":I
    .end local v23    # "needsReorder":Z
    .end local v24    # "iExclude":I
    .end local v25    # "cov":[D
    .end local v26    # "newIndices":[I
    :cond_11
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 1006
    :cond_12
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method
