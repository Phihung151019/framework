.class public Lorg/apache/commons/math3/distribution/GeometricDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "GeometricDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1332acbL


# instance fields
.field private final log1mProbabilityOfSuccess:D

.field private final logProbabilityOfSuccess:D

.field private final probabilityOfSuccess:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "p"    # D

    .line 57
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/GeometricDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V
    .locals 5
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "p"    # D

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 70
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_0

    .line 74
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    .line 75
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->logProbabilityOfSuccess:D

    .line 76
    neg-double v0, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->log1mProbabilityOfSuccess:D

    .line 77
    return-void

    .line 71
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_LEFT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 4
    .param p1, "x"    # I

    .line 109
    if-gez p1, :cond_0

    .line 110
    const-wide/16 v0, 0x0

    return-wide v0

    .line 112
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->log1mProbabilityOfSuccess:D

    add-int/lit8 v2, p1, 0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    .line 122
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 6

    .line 132
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getProbabilityOfSuccess()D
    .locals 2

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    .line 155
    const v0, 0x7fffffff

    return v0
.end method

.method public inverseCumulativeProbability(D)I
    .locals 8
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 174
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v4

    if-gtz v2, :cond_2

    .line 177
    cmpl-double v2, p1, v4

    if-nez v2, :cond_0

    .line 178
    const v0, 0x7fffffff

    return v0

    .line 180
    :cond_0
    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 181
    return v3

    .line 183
    :cond_1
    neg-double v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v0

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->log1mProbabilityOfSuccess:D

    div-double/2addr v0, v6

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 175
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 4
    .param p1, "x"    # I

    .line 100
    if-gez p1, :cond_0

    .line 101
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    .line 103
    :cond_0
    int-to-double v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->log1mProbabilityOfSuccess:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->logProbabilityOfSuccess:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public probability(I)D
    .locals 4
    .param p1, "x"    # I

    .line 90
    if-gez p1, :cond_0

    .line 91
    const-wide/16 v0, 0x0

    return-wide v0

    .line 93
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->log1mProbabilityOfSuccess:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    mul-double/2addr v0, v2

    return-wide v0
.end method
