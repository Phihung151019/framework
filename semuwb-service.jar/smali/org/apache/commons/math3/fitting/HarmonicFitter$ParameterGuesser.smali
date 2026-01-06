.class public Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "HarmonicFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/HarmonicFitter;
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
.method public constructor <init>([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V
    .locals 5
    .param p1, "observations"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 203
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-result-object v0

    .line 205
    .local v0, "sorted":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->guessAOmega([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D

    move-result-object v2

    .line 206
    .local v2, "aOmega":[D
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    iput-wide v3, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->a:D

    .line 207
    aget-wide v3, v2, v1

    iput-wide v3, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    .line 209
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->guessPhi([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->phi:D

    .line 210
    return-void

    .line 199
    .end local v0    # "sorted":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .end local v2    # "aOmega":[D
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v4, p1

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

    .line 273
    move-object/from16 v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [D

    .line 276
    .local v1, "aOmega":[D
    const-wide/16 v2, 0x0

    .line 277
    .local v2, "sx2":D
    const-wide/16 v4, 0x0

    .line 278
    .local v4, "sy2":D
    const-wide/16 v6, 0x0

    .line 279
    .local v6, "sxy":D
    const-wide/16 v8, 0x0

    .line 280
    .local v8, "sxz":D
    const-wide/16 v10, 0x0

    .line 282
    .local v10, "syz":D
    const/4 v12, 0x0

    aget-object v13, v0, v12

    invoke-virtual {v13}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v13

    .line 283
    .local v13, "currentX":D
    aget-object v15, v0, v12

    invoke-virtual {v15}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v15

    .line 284
    .local v15, "currentY":D
    const-wide/16 v17, 0x0

    .line 285
    .local v17, "f2Integral":D
    const-wide/16 v19, 0x0

    .line 286
    .local v19, "fPrime2Integral":D
    move-wide/from16 v21, v13

    .line 287
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

    .line 289
    move-wide/from16 v25, v13

    .line 290
    .local v25, "previousX":D
    move-wide/from16 v27, v15

    .line 291
    .local v27, "previousY":D
    aget-object v1, v0, v12

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v13

    .line 292
    aget-object v1, v0, v12

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v15

    .line 296
    sub-double v29, v13, v25

    .line 297
    .local v29, "dx":D
    sub-double v31, v15, v27

    .line 298
    .local v31, "dy":D
    mul-double v33, v27, v27

    mul-double v35, v27, v15

    add-double v33, v33, v35

    mul-double v35, v15, v15

    add-double v33, v33, v35

    mul-double v33, v33, v29

    const-wide/high16 v35, 0x4008000000000000L    # 3.0

    div-double v33, v33, v35

    .line 300
    .local v33, "f2StepIntegral":D
    mul-double v35, v31, v31

    div-double v35, v35, v29

    .line 302
    .local v35, "fPrime2StepIntegral":D
    sub-double v37, v13, v21

    .line 303
    .local v37, "x":D
    add-double v17, v17, v33

    .line 304
    add-double v19, v19, v35

    .line 306
    mul-double v39, v37, v37

    add-double v2, v2, v39

    .line 307
    mul-double v39, v17, v17

    add-double v4, v4, v39

    .line 308
    mul-double v39, v37, v17

    add-double v6, v6, v39

    .line 309
    mul-double v39, v37, v19

    add-double v8, v8, v39

    .line 310
    mul-double v39, v17, v19

    add-double v10, v10, v39

    .line 287
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

    .line 314
    .end local v12    # "i":I
    :cond_0
    mul-double v25, v4, v8

    mul-double v27, v6, v10

    sub-double v25, v25, v27

    .line 315
    .local v25, "c1":D
    mul-double v27, v6, v8

    mul-double v29, v2, v10

    sub-double v27, v27, v29

    .line 316
    .local v27, "c2":D
    mul-double v29, v2, v4

    mul-double v31, v6, v6

    sub-double v29, v29, v31

    .line 317
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

    .line 340
    :cond_1
    cmpl-double v1, v27, v33

    if-eqz v1, :cond_2

    .line 346
    div-double v31, v25, v27

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v31

    aput-wide v31, v24, v23

    .line 347
    div-double v31, v27, v29

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v31

    aput-wide v31, v24, v12

    move-wide/from16 v31, v2

    goto :goto_3

    .line 343
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

    .line 317
    .end local v31    # "sx2":D
    .restart local v2    # "sx2":D
    :cond_3
    move-wide/from16 v31, v2

    move/from16 v2, v23

    .line 318
    .end local v2    # "sx2":D
    .restart local v31    # "sx2":D
    :goto_1
    array-length v1, v0

    sub-int/2addr v1, v12

    .line 321
    .local v1, "last":I
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v35

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v2

    sub-double v35, v35, v2

    .line 322
    .local v35, "xRange":D
    cmpl-double v2, v35, v33

    if-eqz v2, :cond_7

    .line 325
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double v2, v2, v35

    aput-wide v2, v24, v12

    .line 327
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 328
    .local v2, "yMin":D
    const-wide/high16 v33, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 329
    .local v33, "yMax":D
    const/4 v12, 0x1

    .restart local v12    # "i":I
    :goto_2
    move/from16 v37, v1

    .end local v1    # "last":I
    .local v37, "last":I
    array-length v1, v0

    if-ge v12, v1, :cond_6

    .line 330
    aget-object v1, v0, v12

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v38

    .line 331
    .local v38, "y":D
    cmpg-double v1, v38, v2

    if-gez v1, :cond_4

    .line 332
    move-wide/from16 v1, v38

    move-wide v2, v1

    .line 334
    :cond_4
    cmpl-double v1, v38, v33

    if-lez v1, :cond_5

    .line 335
    move-wide/from16 v33, v38

    .line 329
    .end local v38    # "y":D
    :cond_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v37

    goto :goto_2

    .line 338
    .end local v12    # "i":I
    :cond_6
    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    sub-double v40, v33, v2

    mul-double v40, v40, v38

    const/16 v23, 0x0

    aput-wide v40, v24, v23

    .line 339
    .end local v2    # "yMin":D
    .end local v33    # "yMax":D
    .end local v35    # "xRange":D
    .end local v37    # "last":I
    nop

    .line 350
    :goto_3
    return-object v24

    .line 323
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

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    .line 362
    .local v2, "fcMean":D
    const-wide/16 v4, 0x0

    .line 364
    .local v4, "fsMean":D
    const/4 v6, 0x0

    aget-object v7, v1, v6

    invoke-virtual {v7}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v7

    .line 365
    .local v7, "currentX":D
    aget-object v6, v1, v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v9

    .line 366
    .local v9, "currentY":D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    array-length v11, v1

    if-ge v6, v11, :cond_0

    .line 368
    move-wide v11, v7

    .line 369
    .local v11, "previousX":D
    move-wide v13, v9

    .line 370
    .local v13, "previousY":D
    aget-object v15, v1, v6

    invoke-virtual {v15}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v7

    .line 371
    aget-object v15, v1, v6

    invoke-virtual {v15}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v9

    .line 372
    sub-double v15, v9, v13

    sub-double v17, v7, v11

    div-double v15, v15, v17

    .line 374
    .local v15, "currentYPrime":D
    move/from16 v17, v6

    move-wide/from16 v18, v7

    .end local v6    # "i":I
    .end local v7    # "currentX":D
    .local v17, "i":I
    .local v18, "currentX":D
    iget-wide v6, v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    mul-double v6, v6, v18

    .line 375
    .local v6, "omegaX":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v20

    .line 376
    .local v20, "cosine":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v22

    .line 377
    .local v22, "sine":D
    move-wide/from16 v24, v6

    .end local v6    # "omegaX":D
    .local v24, "omegaX":D
    iget-wide v6, v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    mul-double/2addr v6, v9

    mul-double v6, v6, v20

    mul-double v26, v15, v22

    sub-double v6, v6, v26

    add-double/2addr v2, v6

    .line 378
    iget-wide v6, v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    mul-double/2addr v6, v9

    mul-double v6, v6, v22

    mul-double v26, v15, v20

    add-double v6, v6, v26

    add-double/2addr v4, v6

    .line 366
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

    .line 381
    .end local v6    # "i":I
    .end local v18    # "currentX":D
    .restart local v7    # "currentX":D
    :cond_0
    neg-double v11, v4

    invoke-static {v11, v12, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v11

    return-wide v11
.end method

.method private sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .locals 10
    .param p1, "unsorted"    # [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 233
    invoke-virtual {p1}, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 238
    .local v0, "observations":[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 239
    .local v1, "curr":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 240
    move-object v3, v1

    .line 241
    .local v3, "prec":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    aget-object v1, v0, v2

    .line 242
    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 244
    add-int/lit8 v4, v2, -0x1

    .line 245
    .local v4, "i":I
    aget-object v5, v0, v4

    .line 246
    .local v5, "mI":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :goto_1
    if-ltz v4, :cond_1

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 247
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v0, v6

    .line 248
    add-int/lit8 v6, v4, -0x1

    .end local v4    # "i":I
    .local v6, "i":I
    if-eqz v4, :cond_0

    .line 249
    aget-object v5, v0, v6

    move v4, v6

    goto :goto_1

    .line 248
    :cond_0
    move v4, v6

    goto :goto_1

    .line 252
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :cond_1
    add-int/lit8 v6, v4, 0x1

    aput-object v1, v0, v6

    .line 253
    aget-object v1, v0, v2

    .line 239
    .end local v3    # "prec":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .end local v4    # "i":I
    .end local v5    # "mI":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "j":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public guess()[D
    .locals 8

    .line 223
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->a:D

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->omega:D

    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->phi:D

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
