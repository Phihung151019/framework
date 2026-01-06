.class public Lorg/apache/commons/math3/distribution/ParetoDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "ParetoDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x1332a78L


# instance fields
.field private final scale:D

.field private final shape:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v0, v1}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(DD)V

    .line 71
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

    .line 89
    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "scale":D
    .end local p3    # "shape":D
    .local v1, "scale":D
    .local v3, "shape":D
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(DDD)V

    .line 90
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

    .line 110
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
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 111
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

    .line 123
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
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 3
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "scale"    # D
    .param p4, "shape"    # D
    .param p6, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 142
    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-lez v2, :cond_1

    .line 146
    cmpg-double v0, p4, v0

    if-lez v0, :cond_0

    .line 150
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    .line 151
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    .line 152
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->solverAbsoluteAccuracy:D

    .line 153
    return-void

    .line 147
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 143
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 4
    .param p1, "x"    # D

    .line 212
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 213
    const-wide/16 v0, 0x0

    return-wide v0

    .line 215
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    div-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    return-wide v2
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

    .line 227
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/ParetoDistribution;->probability(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public density(D)D
    .locals 6
    .param p1, "x"    # D

    .line 184
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 185
    const-wide/16 v0, 0x0

    return-wide v0

    .line 187
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 6

    .line 246
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 247
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 249
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    sub-double/2addr v4, v2

    div-double/2addr v0, v4

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 8

    .line 262
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 263
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 265
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    .line 266
    .local v0, "s":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    mul-double/2addr v4, v6

    mul-double v6, v0, v0

    div-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    sub-double/2addr v6, v2

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public getScale()D
    .locals 2

    .line 161
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .line 170
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 233
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 277
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 288
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 8
    .param p1, "x"    # D

    .line 196
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 197
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    .line 199
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public sample()D
    .locals 8

    .line 315
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    .line 316
    .local v0, "n":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    div-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    return-wide v2
.end method
