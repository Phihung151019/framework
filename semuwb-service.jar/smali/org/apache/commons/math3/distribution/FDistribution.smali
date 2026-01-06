.class public Lorg/apache/commons/math3/distribution/FDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "FDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x76302b047020609eL


# instance fields
.field private final denominatorDegreesOfFreedom:D

.field private final numeratorDegreesOfFreedom:D

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7
    .param p1, "numeratorDegreesOfFreedom"    # D
    .param p3, "denominatorDegreesOfFreedom"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 71
    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "numeratorDegreesOfFreedom":D
    .end local p3    # "denominatorDegreesOfFreedom":D
    .local v1, "numeratorDegreesOfFreedom":D
    .local v3, "denominatorDegreesOfFreedom":D
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(DDD)V

    .line 73
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8
    .param p1, "numeratorDegreesOfFreedom"    # D
    .param p3, "denominatorDegreesOfFreedom"    # D
    .param p5, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 99
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "numeratorDegreesOfFreedom":D
    .end local p3    # "denominatorDegreesOfFreedom":D
    .end local p5    # "inverseCumAccuracy":D
    .local v2, "numeratorDegreesOfFreedom":D
    .local v4, "denominatorDegreesOfFreedom":D
    .local v6, "inverseCumAccuracy":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "numeratorDegreesOfFreedom"    # D
    .param p4, "denominatorDegreesOfFreedom"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 117
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local p2    # "numeratorDegreesOfFreedom":D
    .end local p4    # "denominatorDegreesOfFreedom":D
    .local v1, "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .local v2, "numeratorDegreesOfFreedom":D
    .local v4, "denominatorDegreesOfFreedom":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 3
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "numeratorDegreesOfFreedom"    # D
    .param p4, "denominatorDegreesOfFreedom"    # D
    .param p6, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 48
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVariance:D

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVarianceIsCalculated:Z

    .line 139
    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-lez v2, :cond_1

    .line 143
    cmpg-double v0, p4, v0

    if-lez v0, :cond_0

    .line 147
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    .line 148
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    .line 149
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/FDistribution;->solverAbsoluteAccuracy:D

    .line 150
    return-void

    .line 144
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 140
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method protected calculateNumericalVariance()D
    .locals 14

    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->getDenominatorDegreesOfFreedom()D

    move-result-wide v0

    .line 274
    .local v0, "denominatorDF":D
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->getNumeratorDegreesOfFreedom()D

    move-result-wide v4

    .line 276
    .local v4, "numeratorDF":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v8, v0, v6

    .line 278
    .local v8, "denomDFMinusTwo":D
    mul-double v10, v0, v0

    mul-double/2addr v10, v6

    add-double v12, v4, v0

    sub-double/2addr v12, v6

    mul-double/2addr v10, v12

    mul-double v6, v8, v8

    mul-double/2addr v6, v4

    sub-double v2, v0, v2

    mul-double/2addr v6, v2

    div-double/2addr v10, v6

    return-wide v10

    .line 282
    .end local v4    # "numeratorDF":D
    .end local v8    # "denomDFMinusTwo":D
    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    return-wide v2
.end method

.method public cumulativeProbability(D)D
    .locals 14
    .param p1, "x"    # D

    .line 189
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 190
    const-wide/16 v0, 0x0

    .local v0, "ret":D
    goto :goto_0

    .line 192
    .end local v0    # "ret":D
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    .line 193
    .local v0, "n":D
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    .line 195
    .local v2, "m":D
    mul-double v4, v0, p1

    mul-double v6, v0, p1

    add-double/2addr v6, v2

    div-double v8, v4, v6

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v10, v0, v4

    mul-double v12, v2, v4

    invoke-static/range {v8 .. v13}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v4

    move-wide v0, v4

    .line 199
    .end local v2    # "m":D
    .local v0, "ret":D
    :goto_0
    return-wide v0
.end method

.method public density(D)D
    .locals 2
    .param p1, "x"    # D

    .line 158
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/FDistribution;->logDensity(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDenominatorDegreesOfFreedom()D
    .locals 2

    .line 217
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    return-wide v0
.end method

.method public getNumeratorDegreesOfFreedom()D
    .locals 2

    .line 208
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 5

    .line 236
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->getDenominatorDegreesOfFreedom()D

    move-result-wide v0

    .line 238
    .local v0, "denominatorDF":D
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 239
    sub-double v2, v0, v2

    div-double v2, v0, v2

    return-wide v2

    .line 242
    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 2

    .line 259
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVariance:D

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVarianceIsCalculated:Z

    .line 263
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVariance:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 223
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 293
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 305
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 17
    .param p1, "x"    # D

    .line 164
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 165
    .local v1, "nhalf":D
    iget-wide v5, v0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    div-double/2addr v5, v3

    .line 166
    .local v5, "mhalf":D
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    .line 167
    .local v3, "logx":D
    iget-wide v7, v0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v7

    .line 168
    .local v7, "logn":D
    iget-wide v9, v0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v9

    .line 169
    .local v9, "logm":D
    iget-wide v11, v0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    mul-double v11, v11, p1

    iget-wide v13, v0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v11

    .line 171
    .local v11, "lognxm":D
    mul-double v13, v1, v7

    mul-double v15, v1, v3

    add-double/2addr v13, v15

    sub-double/2addr v13, v3

    mul-double v15, v5, v9

    add-double/2addr v13, v15

    mul-double v15, v1, v11

    sub-double/2addr v13, v15

    mul-double v15, v5, v11

    sub-double/2addr v13, v15

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/special/Beta;->logBeta(DD)D

    move-result-wide v15

    sub-double/2addr v13, v15

    return-wide v13
.end method
