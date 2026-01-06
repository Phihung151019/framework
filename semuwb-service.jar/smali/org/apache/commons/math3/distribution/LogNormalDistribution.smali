.class public Lorg/apache/commons/math3/distribution/LogNormalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "LogNormalDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final SQRT2:D

.field private static final SQRT2PI:D

.field private static final serialVersionUID:J = 0x1330230L


# instance fields
.field private final logShapePlusHalfLog2Pi:D

.field private final scale:D

.field private final shape:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2PI:D

    .line 66
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 94
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(DD)V

    .line 95
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .param p1, "scale"    # D
    .param p3, "shape"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 113
    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "scale":D
    .end local p3    # "shape":D
    .local v1, "scale":D
    .local v3, "shape":D
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(DDD)V

    .line 114
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8
    .param p1, "scale"    # D
    .param p3, "shape"    # D
    .param p5, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 134
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "scale":D
    .end local p3    # "shape":D
    .end local p5    # "inverseCumAccuracy":D
    .local v2, "scale":D
    .local v4, "shape":D
    .local v6, "inverseCumAccuracy":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "scale"    # D
    .param p4, "shape"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 148
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local p2    # "scale":D
    .end local p4    # "shape":D
    .local v1, "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .local v2, "scale":D
    .local v4, "shape":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "scale"    # D
    .param p4, "shape"    # D
    .param p6, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 168
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-lez v0, :cond_0

    .line 172
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    .line 173
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    .line 174
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->logShapePlusHalfLog2Pi:D

    .line 175
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->solverAbsoluteAccuracy:D

    .line 176
    return-void

    .line 169
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 10
    .param p1, "x"    # D

    .line 247
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 248
    return-wide v0

    .line 250
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double/2addr v2, v4

    .line 251
    .local v2, "dev":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    mul-double/2addr v8, v6

    cmpl-double v4, v4, v8

    if-lez v4, :cond_2

    .line 252
    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    .line 254
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    sget-wide v4, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2:D

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Erf;->erf(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public cumulativeProbability(DD)D
    .locals 2
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->probability(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public density(D)D
    .locals 10
    .param p1, "x"    # D

    .line 208
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 209
    return-wide v0

    .line 211
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double/2addr v0, v2

    .line 212
    .local v0, "x0":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    div-double v2, v0, v2

    .line 213
    .local v2, "x1":D
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    sget-wide v8, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2PI:D

    mul-double/2addr v6, v8

    mul-double/2addr v6, p1

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public getNumericalMean()D
    .locals 8

    .line 299
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    .line 300
    .local v0, "s":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    mul-double v4, v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 10

    .line 310
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    .line 311
    .local v0, "s":D
    mul-double v2, v0, v0

    .line 312
    .local v2, "ss":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    mul-double/2addr v8, v6

    add-double/2addr v8, v2

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method public getScale()D
    .locals 2

    .line 184
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .line 193
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 289
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 323
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 336
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 10
    .param p1, "x"    # D

    .line 222
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 223
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    .line 225
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    .line 226
    .local v0, "logX":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double v2, v0, v2

    .line 227
    .local v2, "x0":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    div-double v4, v2, v4

    .line 228
    .local v4, "x1":D
    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    mul-double/2addr v6, v4

    mul-double/2addr v6, v4

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->logShapePlusHalfLog2Pi:D

    add-double/2addr v8, v0

    sub-double/2addr v6, v8

    return-wide v6
.end method

.method public probability(DD)D
    .locals 10
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 273
    cmpl-double v0, p1, p3

    if-gtz v0, :cond_2

    .line 277
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_1

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    sget-wide v2, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2:D

    mul-double/2addr v0, v2

    .line 281
    .local v0, "denom":D
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    .line 282
    .local v2, "v0":D
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double/2addr v4, v6

    div-double/2addr v4, v0

    .line 283
    .local v4, "v1":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/special/Erf;->erf(DD)D

    move-result-wide v8

    mul-double/2addr v8, v6

    return-wide v8

    .line 278
    .end local v0    # "denom":D
    .end local v2    # "v0":D
    .end local v4    # "v1":D
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->probability(DD)D

    move-result-wide v0

    return-wide v0

    .line 274
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public sample()D
    .locals 6

    .line 363
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v0

    .line 364
    .local v0, "n":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    return-wide v2
.end method
