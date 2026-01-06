.class public Lorg/apache/commons/math3/distribution/GammaDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "GammaDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x13303ccL


# instance fields
.field private final densityPrefactor1:D

.field private final densityPrefactor2:D

.field private final logDensityPrefactor1:D

.field private final logDensityPrefactor2:D

.field private final maxLogY:D

.field private final minY:D

.field private final scale:D

.field private final shape:D

.field private final shiftedShape:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7
    .param p1, "shape"    # D
    .param p3, "scale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 117
    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "shape":D
    .end local p3    # "scale":D
    .local v1, "shape":D
    .local v3, "scale":D
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(DDD)V

    .line 118
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8
    .param p1, "shape"    # D
    .param p3, "scale"    # D
    .param p5, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 142
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "shape":D
    .end local p3    # "scale":D
    .end local p5    # "inverseCumAccuracy":D
    .local v2, "shape":D
    .local v4, "scale":D
    .local v6, "inverseCumAccuracy":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "shape"    # D
    .param p4, "scale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 157
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local p2    # "shape":D
    .end local p4    # "scale":D
    .local v1, "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .local v2, "shape":D
    .local v4, "scale":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 17
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "shape"    # D
    .param p4, "scale"    # D
    .param p6, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 178
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 180
    const-wide/16 v5, 0x0

    cmpg-double v7, v1, v5

    if-lez v7, :cond_1

    .line 183
    cmpg-double v5, v3, v5

    if-lez v5, :cond_0

    .line 187
    iput-wide v1, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    .line 188
    iput-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    .line 189
    move-wide/from16 v5, p6

    iput-wide v5, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->solverAbsoluteAccuracy:D

    .line 190
    const-wide v7, 0x4012f80000000000L    # 4.7421875

    add-double v9, v1, v7

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    iput-wide v9, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    .line 191
    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    iget-wide v13, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    mul-double/2addr v13, v9

    const-wide v9, 0x4005bf0a8b145769L    # Math.E

    div-double/2addr v9, v13

    .line 192
    .local v9, "aux":D
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    mul-double/2addr v13, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/special/Gamma;->lanczos(D)D

    move-result-wide v15

    div-double/2addr v13, v15

    iput-wide v13, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor2:D

    .line 193
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v13

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v15

    mul-double/2addr v15, v11

    add-double/2addr v13, v15

    invoke-static {v1, v2}, Lorg/apache/commons/math3/special/Gamma;->lanczos(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v11

    sub-double/2addr v13, v11

    iput-wide v13, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor2:D

    .line 195
    iget-wide v11, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor2:D

    div-double/2addr v11, v3

    iget-wide v13, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    move-wide v15, v7

    neg-double v7, v1

    invoke-static {v13, v14, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v11, v7

    add-double v7, v1, v15

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v7

    mul-double/2addr v11, v7

    iput-wide v11, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor1:D

    .line 198
    iget-wide v7, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor2:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v11

    sub-double/2addr v7, v11

    iget-wide v11, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v11

    mul-double/2addr v11, v1

    sub-double/2addr v7, v11

    add-double/2addr v7, v1

    add-double/2addr v7, v15

    iput-wide v7, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor1:D

    .line 201
    add-double v7, v1, v15

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v13

    sub-double/2addr v7, v13

    iput-wide v7, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->minY:D

    .line 202
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v7

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v11, v1, v11

    div-double/2addr v7, v11

    iput-wide v7, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->maxLogY:D

    .line 203
    return-void

    .line 184
    .end local v9    # "aux":D
    :cond_0
    move-wide/from16 v5, p6

    new-instance v7, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v7

    .line 181
    :cond_1
    move-wide/from16 v5, p6

    new-instance v7, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v7
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 4
    .param p1, "x"    # D

    .line 352
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 353
    const-wide/16 v0, 0x0

    .local v0, "ret":D
    goto :goto_0

    .line 355
    .end local v0    # "ret":D
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    div-double v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaP(DD)D

    move-result-wide v0

    .line 358
    .restart local v0    # "ret":D
    :goto_0
    return-wide v0
.end method

.method public density(D)D
    .locals 12
    .param p1, "x"    # D

    .line 289
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 290
    return-wide v0

    .line 292
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    div-double v0, p1, v0

    .line 293
    .local v0, "y":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->minY:D

    cmpg-double v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->maxLogY:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor1:D

    neg-double v4, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    return-wide v2

    .line 297
    :cond_2
    :goto_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    sub-double v2, v0, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    div-double/2addr v2, v4

    .line 298
    .local v2, "aux1":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v6

    sub-double/2addr v6, v2

    mul-double/2addr v4, v6

    .line 299
    .local v4, "aux2":D
    neg-double v6, v0

    const-wide v8, 0x4014f80000000000L    # 5.2421875

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    div-double/2addr v6, v8

    const-wide v8, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v6, v8

    add-double/2addr v6, v4

    .line 301
    .local v6, "aux3":D
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor2:D

    div-double/2addr v8, p1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    return-wide v8
.end method

.method public getAlpha()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    return-wide v0
.end method

.method public getBeta()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    .line 374
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    .line 386
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .line 246
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .line 224
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 364
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 397
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 409
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 12
    .param p1, "x"    # D

    .line 315
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 316
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    .line 318
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    div-double v0, p1, v0

    .line 319
    .local v0, "y":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->minY:D

    cmpg-double v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->maxLogY:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor1:D

    sub-double/2addr v2, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    return-wide v2

    .line 323
    :cond_2
    :goto_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    sub-double v2, v0, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    div-double/2addr v2, v4

    .line 324
    .local v2, "aux1":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v6

    sub-double/2addr v6, v2

    mul-double/2addr v4, v6

    .line 325
    .local v4, "aux2":D
    neg-double v6, v0

    const-wide v8, 0x4014f80000000000L    # 5.2421875

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    div-double/2addr v6, v8

    const-wide v8, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v6, v8

    add-double/2addr v6, v4

    .line 327
    .local v6, "aux3":D
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor2:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    add-double/2addr v8, v6

    return-wide v8
.end method

.method public sample()D
    .locals 23

    .line 450
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    .line 455
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v1

    .line 456
    .local v1, "u":D
    iget-wide v5, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide v7, 0x4005bf0a8b145769L    # Math.E

    div-double/2addr v5, v7

    add-double/2addr v5, v3

    .line 457
    .local v5, "bGS":D
    mul-double v7, v5, v1

    .line 459
    .local v7, "p":D
    cmpg-double v9, v7, v3

    if-gtz v9, :cond_1

    .line 462
    iget-wide v9, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    div-double v9, v3, v9

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v9

    .line 463
    .local v9, "x":D
    iget-object v11, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v11}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v11

    .line 465
    .local v11, "u2":D
    neg-double v13, v9

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v13

    cmpl-double v13, v11, v13

    if-lez v13, :cond_0

    .line 467
    goto :goto_0

    .line 469
    :cond_0
    iget-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v3, v9

    return-wide v3

    .line 474
    .end local v9    # "x":D
    .end local v11    # "u2":D
    :cond_1
    sub-double v9, v5, v7

    iget-wide v11, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v9

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    mul-double/2addr v9, v11

    .line 475
    .restart local v9    # "x":D
    iget-object v11, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v11}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v11

    .line 477
    .restart local v11    # "u2":D
    iget-wide v13, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    sub-double/2addr v13, v3

    invoke-static {v9, v10, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v13

    cmpl-double v13, v11, v13

    if-lez v13, :cond_2

    .line 479
    goto :goto_0

    .line 481
    :cond_2
    iget-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v3, v9

    return-wide v3

    .line 489
    .end local v1    # "u":D
    .end local v5    # "bGS":D
    .end local v7    # "p":D
    .end local v9    # "x":D
    .end local v11    # "u2":D
    :cond_3
    iget-wide v1, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide v5, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double/2addr v1, v5

    .line 490
    .local v1, "d":D
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    div-double v5, v3, v7

    .line 493
    .local v5, "c":D
    :goto_1
    iget-object v7, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v7}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v7

    .line 494
    .local v7, "x":D
    mul-double v9, v5, v7

    add-double/2addr v9, v3

    mul-double v11, v5, v7

    add-double/2addr v11, v3

    mul-double/2addr v9, v11

    mul-double v11, v5, v7

    add-double/2addr v11, v3

    mul-double/2addr v9, v11

    .line 496
    .local v9, "v":D
    const-wide/16 v11, 0x0

    cmpg-double v11, v9, v11

    if-gtz v11, :cond_4

    .line 497
    goto :goto_1

    .line 500
    :cond_4
    mul-double v11, v7, v7

    .line 501
    .local v11, "x2":D
    iget-object v13, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v13}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v13

    .line 504
    .local v13, "u":D
    const-wide v15, 0x3fa0f27bb2fec56dL    # 0.0331

    mul-double/2addr v15, v11

    mul-double/2addr v15, v11

    sub-double v15, v3, v15

    cmpg-double v15, v13, v15

    if-gez v15, :cond_5

    .line 505
    iget-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v3, v1

    mul-double/2addr v3, v9

    return-wide v3

    .line 508
    :cond_5
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v17, v17, v11

    sub-double v19, v3, v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v21

    add-double v19, v19, v21

    mul-double v19, v19, v1

    add-double v17, v17, v19

    cmpg-double v15, v15, v17

    if-gez v15, :cond_6

    .line 509
    iget-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v3, v1

    mul-double/2addr v3, v9

    return-wide v3

    .line 511
    .end local v7    # "x":D
    .end local v9    # "v":D
    .end local v11    # "x2":D
    .end local v13    # "u":D
    :cond_6
    goto :goto_1
.end method
