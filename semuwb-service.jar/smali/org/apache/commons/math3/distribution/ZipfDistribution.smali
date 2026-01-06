.class public Lorg/apache/commons/math3/distribution/ZipfDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "ZipfDistribution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f39bd99aa65ef4L


# instance fields
.field private final exponent:D

.field private final numberOfElements:I

.field private numericalMean:D

.field private numericalMeanIsCalculated:Z

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z

.field private transient sampler:Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;


# direct methods
.method public constructor <init>(ID)V
    .locals 1
    .param p1, "numberOfElements"    # I
    .param p2, "exponent"    # D

    .line 80
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/ZipfDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V
    .locals 3
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "numberOfElements"    # I
    .param p3, "exponent"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 53
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    .line 55
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    .line 57
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    .line 59
    iput-boolean v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    .line 99
    if-lez p2, :cond_1

    .line 103
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-lez v0, :cond_0

    .line 108
    iput p2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    .line 109
    iput-wide p3, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    .line 110
    return-void

    .line 104
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 100
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method private generalizedHarmonic(ID)D
    .locals 7
    .param p1, "n"    # I
    .param p2, "m"    # D

    .line 238
    const-wide/16 v0, 0x0

    .line 239
    .local v0, "value":D
    move v2, p1

    .local v2, "k":I
    :goto_0
    if-lez v2, :cond_0

    .line 240
    int-to-double v3, v2

    invoke-static {v3, v4, p2, p3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v3

    add-double/2addr v0, v5

    .line 239
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 242
    .end local v2    # "k":I
    :cond_0
    return-wide v0
.end method


# virtual methods
.method protected calculateNumericalMean()D
    .locals 9

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v0

    .line 185
    .local v0, "N":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getExponent()D

    move-result-wide v1

    .line 187
    .local v1, "s":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v3, v1, v3

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v3

    .line 188
    .local v3, "Hs1":D
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v5

    .line 190
    .local v5, "Hs":D
    div-double v7, v3, v5

    return-wide v7
.end method

.method protected calculateNumericalVariance()D
    .locals 15

    .line 218
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v0

    .line 219
    .local v0, "N":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getExponent()D

    move-result-wide v1

    .line 221
    .local v1, "s":D
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-double v3, v1, v3

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v3

    .line 222
    .local v3, "Hs2":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v5, v1, v5

    invoke-direct {p0, v0, v5, v6}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v5

    .line 223
    .local v5, "Hs1":D
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v7

    .line 225
    .local v7, "Hs":D
    div-double v9, v3, v7

    mul-double v11, v5, v5

    mul-double v13, v7, v7

    div-double/2addr v11, v13

    sub-double/2addr v9, v11

    return-wide v9
.end method

.method public cumulativeProbability(I)D
    .locals 5
    .param p1, "x"    # I

    .line 151
    if-gtz p1, :cond_0

    .line 152
    const-wide/16 v0, 0x0

    return-wide v0

    .line 153
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-lt p1, v0, :cond_1

    .line 154
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 157
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v3, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getExponent()D
    .locals 2

    .line 127
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    return-wide v0
.end method

.method public getNumberOfElements()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    return v0
.end method

.method public getNumericalMean()D
    .locals 2

    .line 171
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->calculateNumericalMean()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    .line 175
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .line 205
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    .line 209
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    .line 264
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v0

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 5
    .param p1, "x"    # I

    .line 142
    if-lez p1, :cond_1

    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    int-to-double v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v3, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0

    .line 143
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public probability(I)D
    .locals 6
    .param p1, "x"    # I

    .line 132
    if-lez p1, :cond_1

    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    int-to-double v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, v0, v4, v5}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    div-double/2addr v2, v0

    return-wide v2

    .line 133
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sample()I
    .locals 4

    .line 283
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->sampler:Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;

    iget v1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;-><init>(ID)V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->sampler:Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->sampler:Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->sample(Lorg/apache/commons/math3/random/RandomGenerator;)I

    move-result v0

    return v0
.end method
