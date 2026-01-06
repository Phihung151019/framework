.class public Lorg/apache/commons/math3/distribution/BetaDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "BetaDistribution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/distribution/BetaDistribution$ChengBetaSampler;
    }
.end annotation


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x10f54b9581f4e2a4L


# instance fields
.field private final alpha:D

.field private final beta:D

.field private final solverAbsoluteAccuracy:D

.field private z:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7
    .param p1, "alpha"    # D
    .param p3, "beta"    # D

    .line 67
    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "alpha":D
    .end local p3    # "beta":D
    .local v1, "alpha":D
    .local v3, "beta":D
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(DDD)V

    .line 68
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "inverseCumAccuracy"    # D

    .line 88
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "alpha":D
    .end local p3    # "beta":D
    .end local p5    # "inverseCumAccuracy":D
    .local v2, "alpha":D
    .local v4, "beta":D
    .local v6, "inverseCumAccuracy":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D

    .line 100
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local p2    # "alpha":D
    .end local p4    # "beta":D
    .local v1, "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .local v2, "alpha":D
    .local v4, "beta":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 2
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "inverseCumAccuracy"    # D

    .line 118
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 120
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    .line 121
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    .line 122
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    .line 123
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->solverAbsoluteAccuracy:D

    .line 124
    return-void
.end method

.method private recomputeZ()V
    .locals 6

    .line 146
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 9
    .param p1, "x"    # D

    .line 182
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 183
    return-wide v0

    .line 184
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_1

    .line 185
    return-wide v0

    .line 187
    :cond_1
    iget-wide v5, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    move-wide v3, p1

    .end local p1    # "x":D
    .local v3, "x":D
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public density(D)D
    .locals 4
    .param p1, "x"    # D

    .line 153
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/BetaDistribution;->logDensity(D)D

    move-result-wide v0

    .line 154
    .local v0, "logDensity":D
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

.method public getAlpha()D
    .locals 2

    .line 132
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    return-wide v0
.end method

.method public getBeta()D
    .locals 2

    .line 141
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getAlpha()D

    move-result-wide v0

    .line 211
    .local v0, "a":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getBeta()D

    move-result-wide v2

    add-double/2addr v2, v0

    div-double v2, v0, v2

    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 12

    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getAlpha()D

    move-result-wide v0

    .line 223
    .local v0, "a":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getBeta()D

    move-result-wide v2

    .line 224
    .local v2, "b":D
    add-double v4, v0, v2

    .line 225
    .local v4, "alphabetasum":D
    mul-double v6, v0, v2

    mul-double v8, v4, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v4

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    return-wide v6
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 200
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 236
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 247
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 11
    .param p1, "x"    # D

    .line 160
    invoke-direct {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->recomputeZ()V

    .line 161
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-ltz v2, :cond_5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v5

    if-lez v2, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    cmpl-double v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 164
    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    cmpg-double v0, v7, v5

    if-ltz v0, :cond_1

    .line 167
    return-wide v3

    .line 165
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_BETA_DENSITY_AT_0_FOR_SOME_ALPHA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 168
    :cond_2
    cmpl-double v0, p1, v5

    if-nez v0, :cond_4

    .line 169
    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    cmpg-double v0, v7, v5

    if-ltz v0, :cond_3

    .line 172
    return-wide v3

    .line 170
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_BETA_DENSITY_AT_1_FOR_SOME_BETA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 174
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    .line 175
    .local v0, "logX":D
    neg-double v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v2

    .line 176
    .local v2, "log1mX":D
    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    sub-double/2addr v7, v5

    mul-double/2addr v7, v0

    iget-wide v9, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    sub-double/2addr v9, v5

    mul-double/2addr v9, v2

    add-double/2addr v7, v9

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    sub-double/2addr v7, v4

    return-wide v7

    .line 162
    .end local v0    # "logX":D
    .end local v2    # "log1mX":D
    :cond_5
    :goto_0
    return-wide v3
.end method

.method public sample()D
    .locals 5

    .line 283
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    iget-wide v1, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v3, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/distribution/BetaDistribution$ChengBetaSampler;->sample(Lorg/apache/commons/math3/random/RandomGenerator;DD)D

    move-result-wide v0

    return-wide v0
.end method
