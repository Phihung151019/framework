.class public Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "HarmonicCurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterGuesser"
.end annotation


# instance fields
.field private final a:D

.field private final omega:D

.field private final phi:D


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p1, "observations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->sortObservations(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 267
    .local v0, "sorted":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->guessAOmega([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D

    move-result-object v3

    .line 268
    .local v3, "aOmega":[D
    aget-wide v4, v3, v2

    iput-wide v4, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->a:D

    .line 269
    aget-wide v1, v3, v1

    iput-wide v1, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->omega:D

    .line 271
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->guessPhi([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->phi:D

    .line 272
    return-void

    .line 260
    .end local v0    # "sorted":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .end local v3    # "aOmega":[D
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method private guessAOmega([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D
    .locals 43
    .param p1, "observations"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 334
    move-object/from16 v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [D

    .line 337
    .local v1, "aOmega":[D
    const-wide/16 v2, 0x0

    .line 338
    .local v2, "sx2":D
    const-wide/16 v4, 0x0

    .line 339
    .local v4, "sy2":D
    const-wide/16 v6, 0x0

    .line 340
    .local v6, "sxy":D
    const-wide/16 v8, 0x0

    .line 341
    .local v8, "sxz":D
    const-wide/16 v10, 0x0

    .line 343
    .local v10, "syz":D
    const/4 v12, 0x0

    aget-object v13, v0, v12

    invoke-virtual {v13}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v13

    .line 344
    .local v13, "currentX":D
    aget-object v15, v0, v12

    invoke-virtual {v15}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v15

    .line 345
    .local v15, "currentY":D
    const-wide/16 v17, 0x0

    .line 346
    .local v17, "f2Integral":D
    const-wide/16 v19, 0x0

    .line 347
    .local v19, "fPrime2Integral":D
    move-wide/from16 v21, v13

    .line 348
    .local v21, "startX":D
    const/16 v23, 0x1

    move/from16 v42, v23

    move/from16 v23, v12

    move/from16 v12, v42

    .local v12, "i":I
    :goto_0
    move-object/from16 v24, v1

    .end local v1    # "aOmega":[D
    .local v24, "aOmega":[D
    array-length v1, v0

    if-ge v12, v1, :cond_0

    .line 350
    move-wide/from16 v25, v13

    .line 351
    .local v25, "previousX":D
    move-wide/from16 v27, v15

    .line 352
    .local v27, "previousY":D
    aget-object v1, v0, v12

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v13

    .line 353
    aget-object v1, v0, v12

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v15

    .line 357
    sub-double v29, v13, v25

    .line 358
    .local v29, "dx":D
    sub-double v31, v15, v27

    .line 359
    .local v31, "dy":D
    mul-double v33, v27, v27

    mul-double v35, v27, v15

    add-double v33, v33, v35

    mul-double v35, v15, v15

    add-double v33, v33, v35

    mul-double v33, v33, v29

    const-wide/high16 v35, 0x4008000000000000L    # 3.0

    div-double v33, v33, v35

    .line 361
    .local v33, "f2StepIntegral":D
    mul-double v35, v31, v31

    div-double v35, v35, v29

    .line 363
    .local v35, "fPrime2StepIntegral":D
    sub-double v37, v13, v21

    .line 364
    .local v37, "x":D
    add-double v17, v17, v33

    .line 365
    add-double v19, v19, v35

    .line 367
    mul-double v39, v37, v37

    add-double v2, v2, v39

    .line 368
    mul-double v39, v17, v17

    add-double v4, v4, v39

    .line 369
    mul-double v39, v37, v17

    add-double v6, v6, v39

    .line 370
    mul-double v39, v37, v19

    add-double v8, v8, v39

    .line 371
    mul-double v39, v17, v19

    add-double v10, v10, v39

    .line 348
    .end local v25    # "previousX":D
    .end local v27    # "previousY":D
    .end local v29    # "dx":D
    .end local v31    # "dy":D
    .end local v33    # "f2StepIntegral":D
    .end local v35    # "fPrime2StepIntegral":D
    .end local v37    # "x":D
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v24

    goto :goto_0

    .line 375
    .end local v12    # "i":I
    :cond_0
    mul-double v25, v4, v8

    mul-double v27, v6, v10

    sub-double v25, v25, v27

    .line 376
    .local v25, "c1":D
    mul-double v27, v6, v8

    mul-double v29, v2, v10

    sub-double v27, v27, v29

    .line 377
    .local v27, "c2":D
    mul-double v29, v2, v4

    mul-double v31, v6, v6

    sub-double v29, v29, v31

    .line 378
    .local v29, "c3":D
    div-double v31, v25, v27

    const-wide/16 v33, 0x0

    cmpg-double v1, v31, v33

    const/4 v12, 0x1

    if-ltz v1, :cond_3

    div-double v31, v27, v29

    cmpg-double v1, v31, v33

    if-gez v1, :cond_1

    move-wide/from16 v31, v2

    move/from16 v2, v23

    goto :goto_1

    .line 401
    :cond_1
    cmpl-double v1, v27, v33

    if-eqz v1, :cond_2

    .line 407
    div-double v31, v25, v27

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v31

    aput-wide v31, v24, v23

    .line 408
    div-double v31, v27, v29

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v31

    aput-wide v31, v24, v12

    move-wide/from16 v31, v2

    goto :goto_3

    .line 404
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v12, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    move-wide/from16 v31, v2

    move/from16 v2, v23

    .end local v2    # "sx2":D
    .local v31, "sx2":D
    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, v12, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 378
    .end local v31    # "sx2":D
    .restart local v2    # "sx2":D
    :cond_3
    move-wide/from16 v31, v2

    move/from16 v2, v23

    .line 379
    .end local v2    # "sx2":D
    .restart local v31    # "sx2":D
    :goto_1
    array-length v1, v0

    sub-int/2addr v1, v12

    .line 382
    .local v1, "last":I
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v35

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v2

    sub-double v35, v35, v2

    .line 383
    .local v35, "xRange":D
    cmpl-double v2, v35, v33

    if-eqz v2, :cond_7

    .line 386
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double v2, v2, v35

    aput-wide v2, v24, v12

    .line 388
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 389
    .local v2, "yMin":D
    const-wide/high16 v33, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 390
    .local v33, "yMax":D
    const/4 v12, 0x1

    .restart local v12    # "i":I
    :goto_2
    move/from16 v37, v1

    .end local v1    # "last":I
    .local v37, "last":I
    array-length v1, v0

    if-ge v12, v1, :cond_6

    .line 391
    aget-object v1, v0, v12

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v38

    .line 392
    .local v38, "y":D
    cmpg-double v1, v38, v2

    if-gez v1, :cond_4

    .line 393
    move-wide/from16 v1, v38

    move-wide v2, v1

    .line 395
    :cond_4
    cmpl-double v1, v38, v33

    if-lez v1, :cond_5

    .line 396
    move-wide/from16 v33, v38

    .line 390
    .end local v38    # "y":D
    :cond_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v37

    goto :goto_2

    .line 399
    .end local v12    # "i":I
    :cond_6
    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    sub-double v40, v33, v2

    mul-double v40, v40, v38

    const/16 v23, 0x0

    aput-wide v40, v24, v23

    .line 400
    .end local v2    # "yMin":D
    .end local v33    # "yMax":D
    .end local v35    # "xRange":D
    .end local v37    # "last":I
    nop

    .line 411
    :goto_3
    return-object v24

    .line 384
    .restart local v1    # "last":I
    .restart local v35    # "xRange":D
    :cond_7
    move/from16 v37, v1

    .end local v1    # "last":I
    .restart local v37    # "last":I
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v1
.end method

.method private guessPhi([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)D
    .locals 28
    .param p1, "observations"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    .line 423
    .local v2, "fcMean":D
    const-wide/16 v4, 0x0

    .line 425
    .local v4, "fsMean":D
    const/4 v6, 0x0

    aget-object v7, v1, v6

    invoke-virtual {v7}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v7

    .line 426
    .local v7, "currentX":D
    aget-object v6, v1, v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v9

    .line 427
    .local v9, "currentY":D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    array-length v11, v1

    if-ge v6, v11, :cond_0

    .line 429
    move-wide v11, v7

    .line 430
    .local v11, "previousX":D
    move-wide v13, v9

    .line 431
    .local v13, "previousY":D
    aget-object v15, v1, v6

    invoke-virtual {v15}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v7

    .line 432
    aget-object v15, v1, v6

    invoke-virtual {v15}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v9

    .line 433
    sub-double v15, v9, v13

    sub-double v17, v7, v11

    div-double v15, v15, v17

    .line 435
    .local v15, "currentYPrime":D
    move/from16 v17, v6

    move-wide/from16 v18, v7

    .end local v6    # "i":I
    .end local v7    # "currentX":D
    .local v17, "i":I
    .local v18, "currentX":D
    iget-wide v6, v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->omega:D

    mul-double v6, v6, v18

    .line 436
    .local v6, "omegaX":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v20

    .line 437
    .local v20, "cosine":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v22

    .line 438
    .local v22, "sine":D
    move-wide/from16 v24, v6

    .end local v6    # "omegaX":D
    .local v24, "omegaX":D
    iget-wide v6, v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->omega:D

    mul-double/2addr v6, v9

    mul-double v6, v6, v20

    mul-double v26, v15, v22

    sub-double v6, v6, v26

    add-double/2addr v2, v6

    .line 439
    iget-wide v6, v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->omega:D

    mul-double/2addr v6, v9

    mul-double v6, v6, v22

    mul-double v26, v15, v20

    add-double v6, v6, v26

    add-double/2addr v4, v6

    .line 427
    .end local v11    # "previousX":D
    .end local v13    # "previousY":D
    .end local v15    # "currentYPrime":D
    .end local v20    # "cosine":D
    .end local v22    # "sine":D
    .end local v24    # "omegaX":D
    add-int/lit8 v6, v17, 0x1

    move-wide/from16 v7, v18

    .end local v17    # "i":I
    .local v6, "i":I
    goto :goto_0

    .line 442
    .end local v6    # "i":I
    .end local v18    # "currentX":D
    .restart local v7    # "currentX":D
    :cond_0
    neg-double v11, v4

    invoke-static {v11, v12, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v11

    return-wide v11
.end method

.method private sortObservations(Ljava/util/Collection;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation

    .line 295
    .local p1, "unsorted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    .local v0, "observations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 301
    .local v1, "curr":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 302
    .local v2, "len":I
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 303
    move-object v4, v1

    .line 304
    .local v4, "prec":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 305
    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v5

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 307
    add-int/lit8 v5, v3, -0x1

    .line 308
    .local v5, "i":I
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 309
    .local v6, "mI":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :goto_1
    if-ltz v5, :cond_1

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v7

    invoke-virtual {v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    .line 310
    add-int/lit8 v7, v5, 0x1

    invoke-interface {v0, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 311
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    if-eqz v5, :cond_0

    .line 312
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move v5, v7

    goto :goto_1

    .line 311
    :cond_0
    move v5, v7

    goto :goto_1

    .line 315
    .end local v7    # "i":I
    .restart local v5    # "i":I
    :cond_1
    add-int/lit8 v7, v5, 0x1

    invoke-interface {v0, v7, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 302
    .end local v4    # "prec":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .end local v5    # "i":I
    .end local v6    # "mI":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    .end local v3    # "j":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public guess()[D
    .locals 8

    .line 285
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->a:D

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->omega:D

    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->phi:D

    const/4 v6, 0x3

    new-array v6, v6, [D

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v0, 0x1

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    aput-wide v4, v6, v0

    return-object v6
.end method
