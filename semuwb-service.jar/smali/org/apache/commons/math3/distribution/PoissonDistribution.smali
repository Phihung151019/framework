.class public Lorg/apache/commons/math3/distribution/PoissonDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "PoissonDistribution.java"


# static fields
.field public static final DEFAULT_EPSILON:D = 1.0E-12

.field public static final DEFAULT_MAX_ITERATIONS:I = 0x989680

.field private static final serialVersionUID:J = -0x2e7d5c3e7619058dL


# instance fields
.field private final epsilon:D

.field private final exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

.field private final maxIterations:I

.field private final mean:D

.field private final normal:Lorg/apache/commons/math3/distribution/NormalDistribution;


# direct methods
.method public constructor <init>(D)V
    .locals 6
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 80
    const-wide v3, 0x3d719799812dea11L    # 1.0E-12

    const v5, 0x989680

    move-object v0, p0

    move-wide v1, p1

    .end local p1    # "p":D
    .local v1, "p":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    .line 81
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "p"    # D
    .param p3, "epsilon"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 150
    const v5, 0x989680

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "p":D
    .end local p3    # "epsilon":D
    .local v1, "p":D
    .local v3, "epsilon":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    .line 151
    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 7
    .param p1, "p"    # D
    .param p3, "epsilon"    # D
    .param p5, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 103
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .end local p1    # "p":D
    .end local p3    # "epsilon":D
    .end local p5    # "maxIterations":I
    .local v2, "p":D
    .local v4, "epsilon":D
    .local v6, "maxIterations":I
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDI)V

    .line 104
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6
    .param p1, "p"    # D
    .param p3, "maxIterations"    # I

    .line 163
    const-wide v3, 0x3d719799812dea11L    # 1.0E-12

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .end local p1    # "p":D
    .end local p3    # "maxIterations":I
    .local v1, "p":D
    .local v5, "maxIterations":I
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDI)V
    .locals 18
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "p"    # D
    .param p4, "epsilon"    # D
    .param p6, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 123
    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 125
    const-wide/16 v1, 0x0

    cmpg-double v1, v3, v1

    if-lez v1, :cond_0

    .line 128
    iput-wide v3, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    .line 129
    move-wide/from16 v9, p4

    iput-wide v9, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->epsilon:D

    .line 130
    move/from16 v11, p6

    iput v11, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->maxIterations:I

    .line 133
    new-instance v1, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    const-wide v7, 0x3e112e0be826d695L    # 1.0E-9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    iput-object v1, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->normal:Lorg/apache/commons/math3/distribution/NormalDistribution;

    .line 135
    new-instance v12, Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v17}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    iput-object v12, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    .line 137
    return-void

    .line 126
    :cond_0
    move-wide/from16 v9, p4

    move/from16 v11, p6

    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MEAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v1
.end method

.method private nextPoisson(D)J
    .locals 63
    .param p1, "meanPoisson"    # D

    .line 311
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    .line 312
    .local v3, "pivot":D
    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    cmpg-double v5, v1, v5

    if-gez v5, :cond_2

    .line 313
    neg-double v5, v1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v5

    .line 314
    .local v5, "p":D
    const-wide/16 v7, 0x0

    .line 315
    .local v7, "n":J
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 316
    .local v9, "r":D
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 318
    .local v11, "rnd":D
    :goto_0
    long-to-double v13, v7

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v15, v1

    cmpg-double v13, v13, v15

    if-gez v13, :cond_1

    .line 319
    iget-object v13, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v13}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v11

    .line 320
    mul-double/2addr v9, v11

    .line 321
    cmpl-double v13, v9, v5

    if-ltz v13, :cond_0

    .line 322
    const-wide/16 v13, 0x1

    add-long/2addr v7, v13

    goto :goto_0

    .line 324
    :cond_0
    return-wide v7

    .line 327
    :cond_1
    return-wide v7

    .line 329
    .end local v5    # "p":D
    .end local v7    # "n":J
    .end local v9    # "r":D
    .end local v11    # "rnd":D
    :cond_2
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v5

    .line 330
    .local v5, "lambda":D
    sub-double v7, v1, v5

    .line 331
    .local v7, "lambdaFractional":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v9

    .line 332
    .local v9, "logLambda":D
    double-to-int v11, v5

    invoke-static {v11}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v11

    .line 333
    .local v11, "logLambdaFactorial":D
    const-wide/16 v13, 0x1

    cmpg-double v13, v7, v13

    if-gez v13, :cond_3

    const-wide/16 v13, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {v0, v7, v8}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->nextPoisson(D)J

    move-result-wide v13

    .line 334
    .local v13, "y2":J
    :goto_1
    const-wide/high16 v15, 0x4040000000000000L    # 32.0

    mul-double/2addr v15, v5

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    div-double v15, v15, v17

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v15, v15, v19

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 335
    .local v1, "delta":D
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v21, v1, v15

    .line 336
    .local v21, "halfDelta":D
    mul-double v23, v5, v15

    add-double v23, v23, v1

    .line 337
    .local v23, "twolpd":D
    mul-double v17, v17, v23

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    const-wide/high16 v25, 0x4020000000000000L    # 8.0

    mul-double v27, v5, v25

    div-double v27, v19, v27

    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v27

    mul-double v17, v17, v27

    .line 338
    .local v17, "a1":D
    div-double v27, v23, v1

    move-wide/from16 v29, v3

    .end local v3    # "pivot":D
    .local v29, "pivot":D
    neg-double v3, v1

    add-double v31, v1, v19

    mul-double v3, v3, v31

    div-double v3, v3, v23

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v3

    mul-double v27, v27, v3

    .line 339
    .local v27, "a2":D
    add-double v3, v17, v27

    add-double v3, v3, v19

    .line 340
    .local v3, "aSum":D
    div-double v31, v17, v3

    .line 341
    .local v31, "p1":D
    div-double v33, v27, v3

    .line 342
    .local v33, "p2":D
    mul-double v25, v25, v5

    div-double v25, v19, v25

    .line 344
    .local v25, "c1":D
    const-wide/16 v35, 0x0

    .line 345
    .local v35, "x":D
    const-wide/16 v37, 0x0

    .line 346
    .local v37, "y":D
    const-wide/16 v39, 0x0

    .line 347
    .local v39, "v":D
    const/16 v41, 0x0

    .line 348
    .local v41, "a":I
    const-wide/16 v42, 0x0

    .line 349
    .local v42, "t":D
    const-wide/16 v44, 0x0

    .line 350
    .local v44, "qr":D
    const-wide/16 v46, 0x0

    .line 352
    .local v46, "qa":D
    :goto_2
    move-wide/from16 v48, v15

    iget-object v15, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v15}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v15

    .line 353
    .local v15, "u":D
    cmpg-double v50, v15, v31

    const-wide/16 v51, 0x0

    if-gtz v50, :cond_7

    .line 354
    move-wide/from16 v53, v1

    .end local v1    # "delta":D
    .local v53, "delta":D
    iget-object v1, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v1

    .line 355
    .local v1, "n":D
    add-double v55, v5, v21

    invoke-static/range {v55 .. v56}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v55

    mul-double v55, v55, v1

    const-wide/high16 v57, 0x3fe0000000000000L    # 0.5

    sub-double v35, v55, v57

    .line 356
    cmpl-double v50, v35, v53

    if-gtz v50, :cond_6

    move-wide/from16 v55, v1

    .end local v1    # "n":D
    .local v55, "n":D
    neg-double v1, v5

    cmpg-double v1, v35, v1

    if-gez v1, :cond_4

    .line 357
    move-wide/from16 v57, v3

    goto :goto_4

    .line 359
    :cond_4
    cmpg-double v1, v35, v51

    if-gez v1, :cond_5

    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v1

    goto :goto_3

    :cond_5
    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v1

    .line 360
    .end local v37    # "y":D
    .local v1, "y":D
    :goto_3
    move-wide/from16 v37, v1

    .end local v1    # "y":D
    .restart local v37    # "y":D
    iget-object v1, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v1

    .line 361
    .local v1, "e":D
    move-wide/from16 v57, v3

    .end local v3    # "aSum":D
    .local v57, "aSum":D
    neg-double v3, v1

    mul-double v59, v55, v55

    div-double v59, v59, v48

    sub-double v3, v3, v59

    add-double v3, v3, v25

    .line 362
    .end local v1    # "e":D
    .end local v39    # "v":D
    .end local v55    # "n":D
    .local v3, "v":D
    move-wide/from16 v39, v3

    goto :goto_5

    .line 356
    .end local v57    # "aSum":D
    .local v1, "n":D
    .local v3, "aSum":D
    .restart local v39    # "v":D
    :cond_6
    move-wide/from16 v55, v1

    move-wide/from16 v57, v3

    .line 352
    .end local v1    # "n":D
    .end local v3    # "aSum":D
    .end local v15    # "u":D
    .restart local v57    # "aSum":D
    :goto_4
    move-wide/from16 v15, v48

    move-wide/from16 v1, v53

    move-wide/from16 v3, v57

    goto :goto_2

    .line 363
    .end local v53    # "delta":D
    .end local v57    # "aSum":D
    .local v1, "delta":D
    .restart local v3    # "aSum":D
    .restart local v15    # "u":D
    :cond_7
    move-wide/from16 v53, v1

    move-wide/from16 v57, v3

    .end local v1    # "delta":D
    .end local v3    # "aSum":D
    .restart local v53    # "delta":D
    .restart local v57    # "aSum":D
    add-double v1, v31, v33

    cmpl-double v1, v15, v1

    if-lez v1, :cond_8

    .line 364
    move-wide v1, v5

    .line 365
    .end local v37    # "y":D
    .local v1, "y":D
    move/from16 v3, v41

    move-wide/from16 v50, v42

    move-wide/from16 v41, v5

    goto/16 :goto_7

    .line 367
    .end local v1    # "y":D
    .restart local v37    # "y":D
    :cond_8
    div-double v1, v23, v53

    iget-object v3, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {v3}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v3

    mul-double/2addr v1, v3

    add-double v1, v53, v1

    .line 368
    .end local v35    # "x":D
    .local v1, "x":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v3

    .line 369
    .end local v37    # "y":D
    .local v3, "y":D
    move-wide/from16 v35, v1

    .end local v1    # "x":D
    .restart local v35    # "x":D
    iget-object v1, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v1

    neg-double v1, v1

    add-double v37, v35, v19

    mul-double v37, v37, v53

    div-double v37, v37, v23

    sub-double v1, v1, v37

    move-wide/from16 v39, v1

    move-wide/from16 v37, v3

    .line 372
    .end local v3    # "y":D
    .restart local v37    # "y":D
    :goto_5
    cmpg-double v1, v35, v51

    if-gez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    .line 373
    .end local v41    # "a":I
    .local v1, "a":I
    :goto_6
    add-double v2, v37, v19

    mul-double v2, v2, v37

    mul-double v50, v5, v48

    div-double v2, v2, v50

    .line 374
    .end local v42    # "t":D
    .local v2, "t":D
    move-wide/from16 v41, v5

    .end local v5    # "lambda":D
    .local v41, "lambda":D
    neg-double v4, v2

    cmpg-double v4, v39, v4

    if-gez v4, :cond_a

    if-nez v1, :cond_a

    .line 375
    add-double v4, v41, v37

    .line 376
    .end local v37    # "y":D
    .local v4, "y":D
    move-wide/from16 v50, v2

    move v3, v1

    move-wide v1, v4

    goto :goto_7

    .line 378
    .end local v4    # "y":D
    .restart local v37    # "y":D
    :cond_a
    mul-double v4, v37, v48

    add-double v4, v4, v19

    const-wide/high16 v50, 0x4018000000000000L    # 6.0

    mul-double v50, v50, v41

    div-double v4, v4, v50

    sub-double v4, v4, v19

    mul-double v44, v2, v4

    .line 379
    mul-double v4, v2, v2

    move-wide/from16 v50, v2

    .end local v2    # "t":D
    .local v50, "t":D
    int-to-double v2, v1

    add-double v55, v37, v19

    mul-double v2, v2, v55

    add-double v2, v41, v2

    const-wide/high16 v55, 0x4008000000000000L    # 3.0

    mul-double v2, v2, v55

    div-double/2addr v4, v2

    sub-double v46, v44, v4

    .line 380
    cmpg-double v2, v39, v46

    if-gez v2, :cond_b

    .line 381
    add-double v2, v41, v37

    .line 382
    .end local v37    # "y":D
    .local v2, "y":D
    move-wide/from16 v61, v2

    move v3, v1

    move-wide/from16 v1, v61

    goto :goto_7

    .line 384
    .end local v2    # "y":D
    .restart local v37    # "y":D
    :cond_b
    cmpl-double v2, v39, v44

    if-lez v2, :cond_c

    .line 385
    goto :goto_8

    .line 387
    :cond_c
    mul-double v2, v37, v9

    add-double v5, v37, v41

    double-to-int v4, v5

    invoke-static {v4}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    add-double/2addr v2, v11

    cmpg-double v2, v39, v2

    if-gez v2, :cond_d

    .line 388
    add-double v2, v41, v37

    .line 389
    .end local v37    # "y":D
    .restart local v2    # "y":D
    move-wide/from16 v61, v2

    move v3, v1

    move-wide/from16 v1, v61

    .line 392
    .end local v2    # "y":D
    .end local v15    # "u":D
    .local v1, "y":D
    .local v3, "a":I
    :goto_7
    double-to-long v4, v1

    add-long/2addr v4, v13

    return-wide v4

    .line 391
    .end local v3    # "a":I
    .local v1, "a":I
    .restart local v37    # "y":D
    :cond_d
    nop

    .line 352
    :goto_8
    move-wide/from16 v5, v41

    move-wide/from16 v15, v48

    move-wide/from16 v42, v50

    move-wide/from16 v3, v57

    move/from16 v41, v1

    move-wide/from16 v1, v53

    goto/16 :goto_2
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 12
    .param p1, "x"    # I

    .line 199
    if-gez p1, :cond_0

    .line 200
    const-wide/16 v0, 0x0

    return-wide v0

    .line 202
    :cond_0
    const v0, 0x7fffffff

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ne p1, v0, :cond_1

    .line 203
    return-wide v1

    .line 205
    :cond_1
    int-to-double v3, p1

    add-double v5, v3, v1

    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    iget-wide v9, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->epsilon:D

    iget v11, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->maxIterations:I

    invoke-static/range {v5 .. v11}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMean()D
    .locals 2

    .line 172
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .line 231
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    .line 265
    const v0, 0x7fffffff

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 6
    .param p1, "x"    # I

    .line 185
    if-ltz p1, :cond_2

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    if-nez p1, :cond_1

    .line 188
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    neg-double v0, v0

    .local v0, "ret":D
    goto :goto_1

    .line 190
    .end local v0    # "ret":D
    :cond_1
    int-to-double v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->getStirlingError(D)D

    move-result-wide v0

    neg-double v0, v0

    int-to-double v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->getDeviancePart(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    int-to-double v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .restart local v0    # "ret":D
    goto :goto_1

    .line 186
    .end local v0    # "ret":D
    :cond_2
    :goto_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 194
    .restart local v0    # "ret":D
    :goto_1
    return-wide v0
.end method

.method public normalApproximateProbability(I)D
    .locals 5
    .param p1, "x"    # I

    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->normal:Lorg/apache/commons/math3/distribution/NormalDistribution;

    int-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public probability(I)D
    .locals 4
    .param p1, "x"    # I

    .line 177
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->logProbability(I)D

    move-result-wide v0

    .line 178
    .local v0, "logProbability":D
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method public sample()I
    .locals 4

    .line 303
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->nextPoisson(D)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
