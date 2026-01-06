.class public Lorg/apache/commons/math3/distribution/TDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "TDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x5138aaaf891a440eL


# instance fields
.field private final degreesOfFreedom:D

.field private final factor:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(D)V
    .locals 2
    .param p1, "degreesOfFreedom"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 63
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(DD)V

    .line 64
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "degreesOfFreedom"    # D
    .param p3, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 86
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "degreesOfFreedom":D
    .end local p3    # "inverseCumAccuracy":D
    .local v2, "degreesOfFreedom":D
    .local v4, "inverseCumAccuracy":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "degreesOfFreedom"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 99
    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local p2    # "degreesOfFreedom":D
    .local v1, "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .local v2, "degreesOfFreedom":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 17
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "degreesOfFreedom"    # D
    .param p4, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 117
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 119
    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-lez v3, :cond_0

    .line 123
    iput-wide v1, v0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    .line 124
    move-wide/from16 v3, p4

    iput-wide v3, v0, Lorg/apache/commons/math3/distribution/TDistribution;->solverAbsoluteAccuracy:D

    .line 126
    move-wide/from16 v5, p2

    .line 127
    .local v5, "n":D
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    .line 128
    .local v7, "nPlus1Over2":D
    invoke-static {v7, v8}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v11

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v13

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v15

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    div-double v9, v5, v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v9

    sub-double/2addr v11, v9

    iput-wide v11, v0, Lorg/apache/commons/math3/distribution/TDistribution;->factor:D

    .line 131
    return-void

    .line 120
    .end local v5    # "n":D
    .end local v7    # "nPlus1Over2":D
    :cond_0
    move-wide/from16 v3, p4

    new-instance v5, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v5
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 12
    .param p1, "x"    # D

    .line 158
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 159
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .local v0, "ret":D
    goto :goto_0

    .line 161
    .end local v0    # "ret":D
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    mul-double v6, p1, p1

    add-double/2addr v4, v6

    div-double v6, v2, v4

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v8, v2, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v6 .. v11}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v2

    .line 166
    .local v2, "t":D
    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 167
    mul-double v0, v2, v4

    .restart local v0    # "ret":D
    goto :goto_0

    .line 169
    .end local v0    # "ret":D
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    .line 173
    .end local v2    # "t":D
    .restart local v0    # "ret":D
    :goto_0
    return-wide v0
.end method

.method public density(D)D
    .locals 2
    .param p1, "x"    # D

    .line 144
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/TDistribution;->logDensity(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDegreesOfFreedom()D
    .locals 2

    .line 139
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/TDistribution;->getDegreesOfFreedom()D

    move-result-wide v0

    .line 194
    .local v0, "df":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 195
    const-wide/16 v2, 0x0

    return-wide v2

    .line 198
    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 6

    .line 213
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/TDistribution;->getDegreesOfFreedom()D

    move-result-wide v0

    .line 215
    .local v0, "df":D
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 216
    sub-double v2, v0, v2

    div-double v2, v0, v2

    return-wide v2

    .line 219
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1

    .line 220
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v2

    .line 223
    :cond_1
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    return-wide v2
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 179
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 236
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 249
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 10
    .param p1, "x"    # D

    .line 150
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    .line 151
    .local v0, "n":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v4, v0, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 152
    .local v4, "nPlus1Over2":D
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TDistribution;->factor:D

    mul-double v8, p1, p1

    div-double/2addr v8, v0

    add-double/2addr v8, v2

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    sub-double/2addr v6, v2

    return-wide v6
.end method
