.class public Lorg/apache/commons/math3/distribution/LogisticDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "LogisticDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x13353cbL


# instance fields
.field private final mu:D

.field private final s:D


# direct methods
.method public constructor <init>(DD)V
    .locals 6
    .param p1, "mu"    # D
    .param p3, "s"    # D

    .line 60
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "mu":D
    .end local p3    # "s":D
    .local v2, "mu":D
    .local v4, "s":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/LogisticDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 3
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mu"    # D
    .param p4, "s"    # D

    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 74
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-lez v0, :cond_0

    .line 78
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    .line 79
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    .line 80
    return-void

    .line 75
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 6
    .param p1, "x"    # D

    .line 109
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    sub-double v4, p1, v4

    mul-double/2addr v0, v4

    .line 110
    .local v0, "z":D
    neg-double v4, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    add-double/2addr v4, v2

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public density(D)D
    .locals 10
    .param p1, "x"    # D

    .line 102
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    div-double/2addr v0, v2

    .line 103
    .local v0, "z":D
    neg-double v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    .line 104
    .local v2, "v":D
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v4

    mul-double/2addr v4, v2

    add-double v8, v2, v6

    add-double/2addr v6, v2

    mul-double/2addr v8, v6

    div-double/2addr v4, v8

    return-wide v4
.end method

.method public getLocation()D
    .locals 2

    .line 88
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .line 128
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    .line 133
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    const-wide v0, 0x400a51a6625307d3L    # 3.289868133696453

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getScale()D
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 138
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 143
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 6
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 116
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ltz v2, :cond_2

    cmpl-double v2, p1, v3

    if-gtz v2, :cond_2

    .line 118
    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 119
    return-wide v0

    .line 120
    :cond_0
    cmpl-double v0, p1, v3

    if-nez v0, :cond_1

    .line 121
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 123
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->s:D

    sub-double/2addr v3, p1

    div-double v2, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogisticDistribution;->mu:D

    add-double/2addr v0, v2

    return-wide v0

    .line 117
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v5, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method
