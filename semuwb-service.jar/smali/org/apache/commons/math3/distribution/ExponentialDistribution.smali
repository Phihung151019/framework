.class public Lorg/apache/commons/math3/distribution/ExponentialDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "ExponentialDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final EXPONENTIAL_SA_QI:[D

.field private static final serialVersionUID:J = 0x21531e610042563cL


# instance fields
.field private final logMean:D

.field private final mean:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 71
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    .line 72
    .local v0, "LN2":D
    const-wide/16 v2, 0x0

    .line 73
    .local v2, "qi":D
    const/4 v4, 0x1

    .line 81
    .local v4, "i":I
    new-instance v5, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(I)V

    .line 83
    .local v5, "ra":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_0

    .line 84
    invoke-static {v0, v1, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v6

    invoke-static {v4}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 85
    invoke-virtual {v5, v2, v3}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElement(D)V

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v5}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getElements()[D

    move-result-object v6

    sput-object v6, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->EXPONENTIAL_SA_QI:[D

    .line 90
    .end local v0    # "LN2":D
    .end local v2    # "qi":D
    .end local v4    # "i":I
    .end local v5    # "ra":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "mean"    # D

    .line 105
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(DD)V

    .line 106
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "mean"    # D
    .param p3, "inverseCumAccuracy"    # D

    .line 126
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "mean":D
    .end local p3    # "inverseCumAccuracy":D
    .local v2, "mean":D
    .local v4, "inverseCumAccuracy":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V
    .locals 6
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mean"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 139
    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local p2    # "mean":D
    .local v1, "rng":Lorg/apache/commons/math3/random/RandomGenerator;
    .local v2, "mean":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 3
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "mean"    # D
    .param p4, "inverseCumAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 159
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    .line 162
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    .line 163
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->logMean:D

    .line 164
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->solverAbsoluteAccuracy:D

    .line 165
    return-void

    .line 160
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MEAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 4
    .param p1, "x"    # D

    .line 203
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 204
    const-wide/16 v0, 0x0

    .local v0, "ret":D
    goto :goto_0

    .line 206
    .end local v0    # "ret":D
    :cond_0
    neg-double v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 208
    .restart local v0    # "ret":D
    :goto_0
    return-wide v0
.end method

.method public density(D)D
    .locals 4
    .param p1, "x"    # D

    .line 178
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->logDensity(D)D

    move-result-wide v0

    .line 179
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

.method public getMean()D
    .locals 2

    .line 173
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .line 295
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    .line 304
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->getMean()D

    move-result-wide v0

    .line 305
    .local v0, "m":D
    mul-double v2, v0, v0

    return-wide v2
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 286
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 316
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 328
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

    .line 221
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ltz v2, :cond_1

    cmpl-double v2, p1, v3

    if-gtz v2, :cond_1

    .line 223
    cmpl-double v0, p1, v3

    if-nez v0, :cond_0

    .line 224
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .local v0, "ret":D
    goto :goto_0

    .line 226
    .end local v0    # "ret":D
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    neg-double v0, v0

    sub-double/2addr v3, p1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 229
    .restart local v0    # "ret":D
    :goto_0
    return-wide v0

    .line 222
    .end local v0    # "ret":D
    :cond_1
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

    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 4
    .param p1, "x"    # D

    .line 185
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 186
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    .line 188
    :cond_0
    neg-double v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    div-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->logMean:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public sample()D
    .locals 14

    .line 246
    const-wide/16 v0, 0x0

    .line 247
    .local v0, "a":D
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    .line 250
    .local v2, "u":D
    :goto_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v2, v4

    const/4 v5, 0x0

    if-gez v4, :cond_0

    .line 251
    sget-object v4, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->EXPONENTIAL_SA_QI:[D

    aget-wide v4, v4, v5

    add-double/2addr v0, v4

    .line 252
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    goto :goto_0

    .line 256
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v2, v6

    add-double/2addr v2, v6

    .line 259
    sget-object v4, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->EXPONENTIAL_SA_QI:[D

    aget-wide v6, v4, v5

    cmpg-double v4, v2, v6

    if-gtz v4, :cond_1

    .line 260
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    add-double v6, v0, v2

    mul-double/2addr v4, v6

    return-wide v4

    .line 264
    :cond_1
    const/4 v4, 0x0

    .line 265
    .local v4, "i":I
    iget-object v6, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v6}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v6

    .line 266
    .local v6, "u2":D
    move-wide v8, v6

    .line 270
    .local v8, "umin":D
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 271
    iget-object v10, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v10}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v6

    .line 273
    cmpg-double v10, v6, v8

    if-gez v10, :cond_3

    .line 274
    move-wide v8, v6

    .line 278
    :cond_3
    sget-object v10, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->EXPONENTIAL_SA_QI:[D

    aget-wide v10, v10, v4

    cmpl-double v10, v2, v10

    if-gtz v10, :cond_2

    .line 280
    iget-wide v10, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    sget-object v12, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->EXPONENTIAL_SA_QI:[D

    aget-wide v12, v12, v5

    mul-double/2addr v12, v8

    add-double/2addr v12, v0

    mul-double/2addr v10, v12

    return-wide v10
.end method
