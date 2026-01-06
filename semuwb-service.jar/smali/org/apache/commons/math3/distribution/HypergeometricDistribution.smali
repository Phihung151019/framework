.class public Lorg/apache/commons/math3/distribution/HypergeometricDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "HypergeometricDistribution.java"


# static fields
.field private static final serialVersionUID:J = -0x61048728c601293L


# instance fields
.field private final numberOfSuccesses:I

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z

.field private final populationSize:I

.field private final sampleSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "populationSize"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;III)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;III)V
    .locals 5
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "populationSize"    # I
    .param p3, "numberOfSuccesses"    # I
    .param p4, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 44
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVariance:D

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVarianceIsCalculated:Z

    .line 92
    if-lez p2, :cond_4

    .line 96
    if-ltz p3, :cond_3

    .line 100
    if-ltz p4, :cond_2

    .line 105
    const/4 v0, 0x1

    if-gt p3, p2, :cond_1

    .line 109
    if-gt p4, p2, :cond_0

    .line 114
    iput p3, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    .line 115
    iput p2, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    .line 116
    iput p4, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    .line 117
    return-void

    .line 110
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SAMPLE_SIZE_LARGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 106
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESS_LARGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 101
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 97
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESSES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 93
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method private getDomain(III)[I
    .locals 2
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "k"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getLowerDomain(III)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getUpperDomain(II)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method private getLowerDomain(III)I
    .locals 2
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "k"    # I

    .line 158
    sub-int v0, p1, p3

    sub-int v0, p2, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    return v0
.end method

.method private getUpperDomain(II)I
    .locals 1
    .param p1, "m"    # I
    .param p2, "k"    # I

    .line 197
    invoke-static {p2, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    return v0
.end method

.method private innerCumulativeProbability(III)D
    .locals 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "dx"    # I

    .line 266
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->probability(I)D

    move-result-wide v0

    .line 267
    .local v0, "ret":D
    :goto_0
    if-eq p1, p2, :cond_0

    .line 268
    add-int/2addr p1, p3

    .line 269
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->probability(I)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    .line 271
    :cond_0
    return-wide v0
.end method


# virtual methods
.method protected calculateNumericalVariance()D
    .locals 12

    .line 305
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getPopulationSize()I

    move-result v0

    int-to-double v0, v0

    .line 306
    .local v0, "N":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v2

    int-to-double v2, v2

    .line 307
    .local v2, "m":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result v4

    int-to-double v4, v4

    .line 308
    .local v4, "n":D
    mul-double v6, v4, v2

    sub-double v8, v0, v4

    mul-double/2addr v6, v8

    sub-double v8, v0, v2

    mul-double/2addr v6, v8

    mul-double v8, v0, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v10, v0, v10

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    return-wide v6
.end method

.method public cumulativeProbability(I)D
    .locals 4
    .param p1, "x"    # I

    .line 123
    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    iget v2, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getDomain(III)[I

    move-result-object v0

    .line 124
    .local v0, "domain":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    if-ge p1, v2, :cond_0

    .line 125
    const-wide/16 v1, 0x0

    .local v1, "ret":D
    goto :goto_0

    .line 126
    .end local v1    # "ret":D
    :cond_0
    const/4 v2, 0x1

    aget v3, v0, v2

    if-lt p1, v3, :cond_1

    .line 127
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .restart local v1    # "ret":D
    goto :goto_0

    .line 129
    .end local v1    # "ret":D
    :cond_1
    aget v1, v0, v1

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->innerCumulativeProbability(III)D

    move-result-wide v1

    .line 132
    .restart local v1    # "ret":D
    :goto_0
    return-wide v1
.end method

.method public getNumberOfSuccesses()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    return v0
.end method

.method public getNumericalMean()D
    .locals 6

    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getPopulationSize()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .line 292
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVariance:D

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVarianceIsCalculated:Z

    .line 296
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVariance:D

    return-wide v0
.end method

.method public getPopulationSize()I
    .locals 1

    .line 176
    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    return v0
.end method

.method public getSampleSize()I
    .locals 1

    .line 185
    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    return v0
.end method

.method public getSupportLowerBound()I
    .locals 2

    .line 321
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getPopulationSize()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 2

    .line 334
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 13
    .param p1, "x"    # I

    .line 211
    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    iget v2, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getDomain(III)[I

    move-result-object v0

    .line 212
    .local v0, "domain":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    if-lt p1, v1, :cond_1

    const/4 v1, 0x1

    aget v1, v0, v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget v1, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    int-to-double v1, v1

    iget v3, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    int-to-double v3, v3

    div-double v7, v1, v3

    .line 216
    .local v7, "p":D
    iget v1, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v2, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    iget v3, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    int-to-double v3, v3

    div-double v9, v1, v3

    .line 217
    .local v9, "q":D
    iget v6, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    move v5, p1

    .end local p1    # "x":I
    .local v5, "x":I
    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->logBinomialProbability(IIDD)D

    move-result-wide v1

    .line 219
    .end local v5    # "x":I
    .local v1, "p1":D
    .restart local p1    # "x":I
    iget v3, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    sub-int v5, v3, p1

    iget v3, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v4, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    sub-int v6, v3, v4

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->logBinomialProbability(IIDD)D

    move-result-wide v3

    .line 222
    .local v3, "p2":D
    iget v5, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    iget v6, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->logBinomialProbability(IIDD)D

    move-result-wide v5

    .line 224
    .local v5, "p3":D
    add-double v11, v1, v3

    sub-double/2addr v11, v5

    .local v11, "ret":D
    goto :goto_1

    .line 213
    .end local v1    # "p1":D
    .end local v3    # "p2":D
    .end local v5    # "p3":D
    .end local v7    # "p":D
    .end local v9    # "q":D
    .end local v11    # "ret":D
    :cond_1
    :goto_0
    const-wide/high16 v11, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 227
    .restart local v11    # "ret":D
    :goto_1
    return-wide v11
.end method

.method public probability(I)D
    .locals 4
    .param p1, "x"    # I

    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->logProbability(I)D

    move-result-wide v0

    .line 203
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

.method public upperCumulativeProbability(I)D
    .locals 3
    .param p1, "x"    # I

    .line 240
    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    iget v2, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getDomain(III)[I

    move-result-object v0

    .line 241
    .local v0, "domain":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    if-gt p1, v1, :cond_0

    .line 242
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .local v1, "ret":D
    goto :goto_0

    .line 243
    .end local v1    # "ret":D
    :cond_0
    const/4 v1, 0x1

    aget v2, v0, v1

    if-le p1, v2, :cond_1

    .line 244
    const-wide/16 v1, 0x0

    .restart local v1    # "ret":D
    goto :goto_0

    .line 246
    .end local v1    # "ret":D
    :cond_1
    aget v1, v0, v1

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->innerCumulativeProbability(III)D

    move-result-wide v1

    .line 249
    .restart local v1    # "ret":D
    :goto_0
    return-wide v1
.end method
