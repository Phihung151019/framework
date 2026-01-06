.class public Lorg/apache/commons/math3/distribution/GumbelDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "GumbelDistribution.java"


# static fields
.field private static final EULER:D = 0.5778636748954609

.field private static final serialVersionUID:J = 0x13353cbL


# instance fields
.field private final beta:D

.field private final mu:D


# direct methods
.method public constructor <init>(DD)V
    .locals 6
    .param p1, "mu"    # D
    .param p3, "beta"    # D

    .line 66
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "mu":D
    .end local p3    # "beta":D
    .local v2, "mu":D
    .local v4, "beta":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/GumbelDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 3
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mu"    # D
    .param p4, "beta"    # D

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 80
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-lez v0, :cond_0

    .line 84
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    .line 85
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    .line 86
    return-void

    .line 81
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 4
    .param p1, "x"    # D

    .line 115
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    div-double/2addr v0, v2

    .line 116
    .local v0, "z":D
    neg-double v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public density(D)D
    .locals 8
    .param p1, "x"    # D

    .line 108
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    div-double/2addr v0, v2

    .line 109
    .local v0, "z":D
    neg-double v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    .line 110
    .local v2, "t":D
    neg-double v4, v0

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public getLocation()D
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 6

    .line 134
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    const-wide v2, 0x3fe27ddbf6271dbeL    # 0.5778636748954609

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    .line 139
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    mul-double/2addr v0, v2

    const-wide v2, 0x3ffa51a6625307d3L    # 1.6449340668482264

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .line 103
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 144
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 149
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

    .line 122
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ltz v2, :cond_2

    cmpl-double v2, p1, v3

    if-gtz v2, :cond_2

    .line 124
    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 125
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    .line 126
    :cond_0
    cmpl-double v0, p1, v3

    if-nez v0, :cond_1

    .line 127
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 129
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0

    .line 123
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

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method
