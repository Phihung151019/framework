.class public Lorg/apache/commons/math3/special/Beta;
.super Ljava/lang/Object;
.source "Beta.java"


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-14

.field private static final DELTA:[D

.field private static final HALF_LOG_TWO_PI:D = 0.9189385332046727


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const/16 v0, 0xf

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    return-void

    :array_0
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        -0x4102df75a56ed1ceL    # -2.777777777777778E-5
        0x3e754ded3ddad442L    # 7.936507936507937E-8
        -0x41fb8c3af7d1c398L    # -5.952380952380953E-10
        0x3da282a2cf083a98L
        -0x42b5036195bc49f6L    # -1.917526917518546E-13
        0x3cfcde85bfe7ab89L    # 6.410256405103255E-15
        -0x434ab4ddf135a5f4L
        0x3c74b6258b42ee9bL    # 1.7964371635940225E-17
        -0x43c65119190af537L    # -1.3922896466162779E-18
        0x3c03beedcf2f631eL    # 1.338028550140209E-19
        -0x442dca334d9339b1L    # -1.542460098679661E-20
        0x3ba2ac241095f5ffL    # 1.9770199298095743E-21
        -0x448e5082f787f436L
        0x3b34b6f6d66e9efaL    # 1.713480149663986E-23
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deltaMinusDeltaSum(DD)D
    .locals 23
    .param p0, "a"    # D
    .param p2, "b"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 347
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    cmpl-double v0, p0, p2

    if-gtz v0, :cond_3

    .line 350
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v0, p2, v2

    const/4 v4, 0x1

    if-ltz v0, :cond_2

    .line 354
    div-double v5, p0, p2

    .line 355
    .local v5, "h":D
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double v9, v5, v7

    div-double v9, v5, v9

    .line 356
    .local v9, "p":D
    add-double v11, v5, v7

    div-double v11, v7, v11

    .line 357
    .local v11, "q":D
    mul-double v13, v11, v11

    .line 361
    .local v13, "q2":D
    sget-object v0, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 362
    .local v0, "s":[D
    aput-wide v7, v0, v1

    .line 363
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v15, v0

    if-ge v1, v15, :cond_0

    .line 364
    add-int/lit8 v15, v1, -0x1

    aget-wide v15, v0, v15

    mul-double/2addr v15, v13

    add-double/2addr v15, v11

    add-double/2addr v15, v7

    aput-wide v15, v0, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "i":I
    :cond_0
    div-double v2, v2, p2

    .line 370
    .local v2, "sqrtT":D
    mul-double v7, v2, v2

    .line 371
    .local v7, "t":D
    sget-object v1, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    sget-object v15, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    array-length v15, v15

    sub-int/2addr v15, v4

    aget-wide v15, v1, v15

    array-length v1, v0

    sub-int/2addr v1, v4

    aget-wide v17, v0, v1

    mul-double v15, v15, v17

    .line 372
    .local v15, "w":D
    sget-object v1, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 373
    mul-double v17, v7, v15

    sget-object v4, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    aget-wide v19, v4, v1

    aget-wide v21, v0, v1

    mul-double v19, v19, v21

    add-double v15, v17, v19

    .line 372
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 375
    .end local v1    # "i":I
    :cond_1
    mul-double v17, v15, v9

    div-double v17, v17, p2

    return-wide v17

    .line 351
    .end local v0    # "s":[D
    .end local v2    # "sqrtT":D
    .end local v5    # "h":D
    .end local v7    # "t":D
    .end local v9    # "p":D
    .end local v11    # "q":D
    .end local v13    # "q2":D
    .end local v15    # "w":D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 348
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static logBeta(DD)D
    .locals 23
    .param p0, "p"    # D
    .param p2, "q"    # D

    .line 422
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-lez v2, :cond_e

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 426
    :cond_0
    invoke-static/range {p0 .. p3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 427
    .local v0, "a":D
    invoke-static/range {p0 .. p3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 428
    .local v2, "b":D
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v6, v0, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ltz v6, :cond_2

    .line 429
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/special/Beta;->sumDeltaMinusDeltaSum(DD)D

    move-result-wide v4

    .line 430
    .local v4, "w":D
    div-double v9, v0, v2

    .line 431
    .local v9, "h":D
    add-double/2addr v7, v9

    div-double v6, v9, v7

    .line 432
    .local v6, "c":D
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    sub-double v11, v0, v11

    neg-double v11, v11

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    .line 433
    .local v11, "u":D
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v13

    mul-double/2addr v13, v2

    .line 434
    .local v13, "v":D
    cmpg-double v8, v11, v13

    const-wide v15, 0x3fed67f1c864beb4L    # 0.9189385332046727

    const-wide/high16 v17, -0x4020000000000000L    # -0.5

    if-gtz v8, :cond_1

    .line 435
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v19

    mul-double v19, v19, v17

    add-double v19, v19, v15

    add-double v19, v19, v4

    sub-double v19, v19, v11

    sub-double v19, v19, v13

    return-wide v19

    .line 437
    :cond_1
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v19

    mul-double v19, v19, v17

    add-double v19, v19, v15

    add-double v19, v19, v4

    sub-double v19, v19, v13

    sub-double v19, v19, v11

    return-wide v19

    .line 439
    .end local v4    # "w":D
    .end local v6    # "c":D
    .end local v9    # "h":D
    .end local v11    # "u":D
    .end local v13    # "v":D
    :cond_2
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    cmpl-double v6, v0, v9

    if-lez v6, :cond_8

    .line 440
    const-wide v11, 0x408f400000000000L    # 1000.0

    cmpl-double v6, v2, v11

    if-lez v6, :cond_4

    .line 441
    sub-double v4, v0, v7

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 442
    .local v4, "n":I
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 443
    .local v5, "prod":D
    move-wide v9, v0

    .line 444
    .local v9, "ared":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v4, :cond_3

    .line 445
    sub-double/2addr v9, v7

    .line 446
    div-double v12, v9, v2

    add-double/2addr v12, v7

    div-double v12, v9, v12

    mul-double/2addr v5, v12

    .line 444
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 448
    .end local v11    # "i":I
    :cond_3
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v7

    int-to-double v11, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v7, v11

    invoke-static {v9, v10}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v11

    invoke-static {v9, v10, v2, v3}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide v13

    add-double/2addr v11, v13

    add-double/2addr v7, v11

    return-wide v7

    .line 452
    .end local v4    # "n":I
    .end local v5    # "prod":D
    .end local v9    # "ared":D
    :cond_4
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 453
    .local v11, "prod1":D
    move-wide v13, v0

    .line 454
    .local v13, "ared":D
    :goto_1
    cmpl-double v6, v13, v9

    if-lez v6, :cond_5

    .line 455
    sub-double/2addr v13, v7

    .line 456
    div-double v15, v13, v2

    .line 457
    .local v15, "h":D
    add-double v17, v15, v7

    div-double v17, v15, v17

    mul-double v11, v11, v17

    .line 458
    .end local v15    # "h":D
    goto :goto_1

    .line 459
    :cond_5
    cmpg-double v4, v2, v4

    if-gez v4, :cond_7

    .line 460
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 461
    .local v4, "prod2":D
    move-wide v15, v2

    move-wide/from16 v21, v15

    move-wide v15, v7

    move-wide/from16 v7, v21

    .line 462
    .local v7, "bred":D
    :goto_2
    cmpl-double v6, v7, v9

    if-lez v6, :cond_6

    .line 463
    sub-double/2addr v7, v15

    .line 464
    add-double v17, v13, v7

    div-double v17, v7, v17

    mul-double v4, v4, v17

    goto :goto_2

    .line 466
    :cond_6
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v9

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v15

    add-double/2addr v9, v15

    invoke-static {v13, v14}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v15

    invoke-static {v7, v8}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v17

    invoke-static {v13, v14, v7, v8}, Lorg/apache/commons/math3/special/Beta;->logGammaSum(DD)D

    move-result-wide v19

    sub-double v17, v17, v19

    add-double v15, v15, v17

    add-double/2addr v9, v15

    return-wide v9

    .line 472
    .end local v4    # "prod2":D
    .end local v7    # "bred":D
    :cond_7
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    invoke-static {v13, v14}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v13, v14, v2, v3}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    return-wide v4

    .line 477
    .end local v11    # "prod1":D
    .end local v13    # "ared":D
    :cond_8
    move-wide v15, v7

    cmpl-double v6, v0, v15

    if-ltz v6, :cond_c

    .line 478
    cmpl-double v6, v2, v9

    if-lez v6, :cond_b

    .line 479
    cmpg-double v4, v2, v4

    if-gez v4, :cond_a

    .line 480
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 481
    .local v4, "prod":D
    move-wide v6, v2

    .line 482
    .local v6, "bred":D
    :goto_3
    cmpl-double v8, v6, v9

    if-lez v8, :cond_9

    .line 483
    sub-double/2addr v6, v15

    .line 484
    add-double v11, v0, v6

    div-double v11, v6, v11

    mul-double/2addr v4, v11

    goto :goto_3

    .line 486
    :cond_9
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v12

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/special/Beta;->logGammaSum(DD)D

    move-result-wide v14

    sub-double/2addr v12, v14

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    return-wide v8

    .line 491
    .end local v4    # "prod":D
    .end local v6    # "bred":D
    :cond_a
    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    return-wide v4

    .line 495
    :cond_b
    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/special/Beta;->logGammaSum(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    return-wide v4

    .line 500
    :cond_c
    cmpl-double v4, v2, v4

    if-ltz v4, :cond_d

    .line 501
    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    return-wide v4

    .line 508
    :cond_d
    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double v6, v0, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    return-wide v4

    .line 423
    .end local v0    # "a":D
    .end local v2    # "b":D
    :cond_e
    :goto_4
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public static logBeta(DDDI)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "epsilon"    # D
    .param p6, "maxIterations"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/special/Beta;->logBeta(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static logGammaMinusLogGammaSum(DD)D
    .locals 10
    .param p0, "a"    # D
    .param p2, "b"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 307
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    .line 310
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_2

    .line 319
    cmpg-double v0, p0, p2

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-gtz v0, :cond_0

    .line 320
    sub-double v0, p0, v1

    add-double/2addr v0, p2

    .line 321
    .local v0, "d":D
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/special/Beta;->deltaMinusDeltaSum(DD)D

    move-result-wide v2

    .local v2, "w":D
    goto :goto_0

    .line 323
    .end local v0    # "d":D
    .end local v2    # "w":D
    :cond_0
    sub-double v0, p2, v1

    add-double/2addr v0, p0

    .line 324
    .restart local v0    # "d":D
    invoke-static {p2, p3, p0, p1}, Lorg/apache/commons/math3/special/Beta;->deltaMinusDeltaSum(DD)D

    move-result-wide v2

    .line 327
    .restart local v2    # "w":D
    :goto_0
    div-double v4, p0, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    .line 328
    .local v4, "u":D
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    mul-double/2addr v6, p0

    .line 330
    .local v6, "v":D
    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    sub-double v8, v2, v4

    sub-double/2addr v8, v6

    goto :goto_1

    :cond_1
    sub-double v8, v2, v6

    sub-double/2addr v8, v4

    :goto_1
    return-wide v8

    .line 311
    .end local v0    # "d":D
    .end local v2    # "w":D
    .end local v4    # "u":D
    .end local v6    # "v":D
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v4, v0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 308
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v4, v0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method private static logGammaSum(DD)D
    .locals 7
    .param p0, "a"    # D
    .param p2, "b"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 274
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 274
    cmpg-double v3, p0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 275
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 274
    if-ltz v3, :cond_3

    cmpl-double v3, p0, v4

    if-gtz v3, :cond_3

    .line 277
    cmpg-double v3, p2, v0

    if-ltz v3, :cond_2

    cmpl-double v3, p2, v4

    if-gtz v3, :cond_2

    .line 281
    sub-double v2, p0, v0

    sub-double v4, p2, v0

    add-double/2addr v2, v4

    .line 282
    .local v2, "x":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    .line 283
    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide v0

    return-wide v0

    .line 284
    :cond_0
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    .line 285
    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    return-wide v0

    .line 287
    :cond_1
    sub-double v4, v2, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide v4

    add-double/2addr v0, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    add-double/2addr v4, v0

    return-wide v4

    .line 278
    .end local v2    # "x":D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 275
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static regularizedBeta(DDD)D
    .locals 9
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .line 116
    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    const v8, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .end local p0    # "x":D
    .end local p2    # "a":D
    .end local p4    # "b":D
    .local v0, "x":D
    .local v2, "a":D
    .local v4, "b":D
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static regularizedBeta(DDDD)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "epsilon"    # D

    .line 137
    const v8, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide v8

    return-wide v8
.end method

.method public static regularizedBeta(DDDDI)D
    .locals 15
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "epsilon"    # D
    .param p8, "maxIterations"    # I

    .line 186
    move-wide v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v3, 0x0

    cmpg-double v0, v1, v3

    if-ltz v0, :cond_2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v1, v12

    if-gtz v0, :cond_2

    cmpg-double v0, p2, v3

    if-lez v0, :cond_2

    cmpg-double v0, p4, v3

    if-gtz v0, :cond_0

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    goto :goto_0

    .line 194
    :cond_0
    add-double v3, p2, v12

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    add-double v7, p4, v5

    add-double v7, v7, p2

    div-double/2addr v3, v7

    cmpl-double v0, v1, v3

    if-lez v0, :cond_1

    sub-double v3, v12, v1

    add-double v7, p4, v12

    add-double v5, p4, v5

    add-double v5, v5, p2

    div-double/2addr v7, v5

    cmpg-double v0, v3, v7

    if-gtz v0, :cond_1

    .line 196
    sub-double v3, v12, v1

    move-wide/from16 v7, p2

    move-wide/from16 v5, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    invoke-static/range {v3 .. v11}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide v3

    move-wide v9, v5

    sub-double/2addr v12, v3

    .local v12, "ret":D
    goto :goto_1

    .line 194
    .end local v12    # "ret":D
    :cond_1
    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    .line 198
    new-instance v0, Lorg/apache/commons/math3/special/Beta$1;

    invoke-direct {v0, v9, v10, v7, v8}, Lorg/apache/commons/math3/special/Beta$1;-><init>(DD)V

    .line 223
    .local v0, "fraction":Lorg/apache/commons/math3/util/ContinuedFraction;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    neg-double v5, v1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static/range {p2 .. p5}, Lorg/apache/commons/math3/special/Beta;->logBeta(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v3

    mul-double v11, v3, v12

    move-wide/from16 v3, p6

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide v13

    div-double v12, v11, v13

    .restart local v12    # "ret":D
    goto :goto_1

    .line 186
    .end local v0    # "fraction":Lorg/apache/commons/math3/util/ContinuedFraction;
    .end local v12    # "ret":D
    :cond_2
    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    .line 193
    :goto_0
    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    .line 228
    .restart local v12    # "ret":D
    :goto_1
    return-wide v12
.end method

.method public static regularizedBeta(DDDI)D
    .locals 9
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "maxIterations"    # I

    .line 154
    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v8, p6

    .end local p0    # "x":D
    .end local p2    # "a":D
    .end local p4    # "b":D
    .end local p6    # "maxIterations":I
    .local v0, "x":D
    .local v2, "a":D
    .local v4, "b":D
    .local v8, "maxIterations":I
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method private static sumDeltaMinusDeltaSum(DD)D
    .locals 15
    .param p0, "p"    # D
    .param p2, "q"    # D

    .line 393
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 394
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 393
    cmpg-double v3, p0, v0

    const/4 v4, 0x1

    if-ltz v3, :cond_2

    .line 396
    cmpg-double v3, p2, v0

    if-ltz v3, :cond_1

    .line 400
    invoke-static/range {p0 .. p3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    .line 401
    .local v2, "a":D
    invoke-static/range {p0 .. p3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    .line 402
    .local v5, "b":D
    div-double/2addr v0, v2

    .line 403
    .local v0, "sqrtT":D
    mul-double v7, v0, v0

    .line 404
    .local v7, "t":D
    sget-object v9, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    sget-object v10, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    array-length v10, v10

    sub-int/2addr v10, v4

    aget-wide v9, v9, v10

    .line 405
    .local v9, "z":D
    sget-object v4, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 406
    mul-double v11, v7, v9

    sget-object v13, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    aget-wide v13, v13, v4

    add-double v9, v11, v13

    .line 405
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 408
    .end local v4    # "i":I
    :cond_0
    div-double v11, v9, v2

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/special/Beta;->deltaMinusDeltaSum(DD)D

    move-result-wide v13

    add-double/2addr v11, v13

    return-wide v11

    .line 397
    .end local v0    # "sqrtT":D
    .end local v2    # "a":D
    .end local v5    # "b":D
    .end local v7    # "t":D
    .end local v9    # "z":D
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 394
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method
