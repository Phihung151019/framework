.class public abstract Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.super Ljava/lang/Object;
.source "AbstractIntegerDistribution.java"

# interfaces
.implements Lorg/apache/commons/math3/distribution/IntegerDistribution;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xfe88ba81dead5b5L


# instance fields
.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field protected final randomData:Lorg/apache/commons/math3/random/RandomDataImpl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 64
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    .line 71
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 72
    return-void
.end method

.method private checkedCumulativeProbability(I)D
    .locals 5
    .param p1, "argument"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathInternalError;
        }
    .end annotation

    .line 226
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 227
    .local v0, "result":D
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->cumulativeProbability(I)D

    move-result-wide v0

    .line 228
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    return-wide v0

    .line 229
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DISCRETE_CUMULATIVE_PROBABILITY_RETURNED_NAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method public cumulativeProbability(II)D
    .locals 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 81
    if-lt p2, p1, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->cumulativeProbability(I)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->cumulativeProbability(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0

    .line 82
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public inverseCumulativeProbability(D)I
    .locals 20
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 100
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    const/4 v6, 0x0

    if-ltz v5, :cond_7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v8

    if-gtz v5, :cond_7

    .line 104
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getSupportLowerBound()I

    move-result v5

    .line 105
    .local v5, "lower":I
    cmpl-double v10, v1, v3

    if-nez v10, :cond_0

    .line 106
    return v5

    .line 108
    :cond_0
    const/high16 v10, -0x80000000

    if-ne v5, v10, :cond_1

    .line 109
    invoke-direct {v0, v5}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->checkedCumulativeProbability(I)D

    move-result-wide v10

    cmpl-double v10, v10, v1

    if-ltz v10, :cond_2

    .line 110
    return v5

    .line 113
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 117
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getSupportUpperBound()I

    move-result v10

    .line 118
    .local v10, "upper":I
    cmpl-double v11, v1, v8

    if-nez v11, :cond_3

    .line 119
    return v10

    .line 124
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getNumericalMean()D

    move-result-wide v11

    .line 125
    .local v11, "mu":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getNumericalVariance()D

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 126
    .local v13, "sigma":D
    invoke-static {v11, v12}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_4

    cmpl-double v3, v13, v3

    if-eqz v3, :cond_4

    const/4 v6, 0x1

    .line 128
    .local v6, "chebyshevApplies":Z
    :cond_4
    if-eqz v6, :cond_6

    .line 129
    sub-double v3, v8, v1

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 130
    .local v3, "k":D
    mul-double v15, v3, v13

    sub-double v15, v11, v15

    .line 131
    .local v15, "tmp":D
    move-wide/from16 v18, v8

    const/16 v17, 0x1

    int-to-double v7, v5

    cmpl-double v7, v15, v7

    if-lez v7, :cond_5

    .line 132
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/lit8 v5, v7, -0x1

    .line 134
    :cond_5
    div-double v8, v18, v3

    .line 135
    .end local v3    # "k":D
    .local v8, "k":D
    mul-double v3, v8, v13

    add-double/2addr v3, v11

    .line 136
    .end local v15    # "tmp":D
    .local v3, "tmp":D
    move-wide v15, v3

    .end local v3    # "tmp":D
    .restart local v15    # "tmp":D
    int-to-double v3, v10

    cmpg-double v3, v15, v3

    if-gez v3, :cond_6

    .line 137
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v10, v3, -0x1

    .line 141
    .end local v8    # "k":D
    .end local v15    # "tmp":D
    :cond_6
    invoke-virtual {v0, v1, v2, v5, v10}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->solveInverseCumulativeProbability(DII)I

    move-result v3

    return v3

    .line 100
    .end local v5    # "lower":I
    .end local v6    # "chebyshevApplies":Z
    .end local v10    # "upper":I
    .end local v11    # "mu":D
    .end local v13    # "sigma":D
    :cond_7
    const/16 v17, 0x1

    .line 101
    new-instance v3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3
.end method

.method public logProbability(I)D
    .locals 2
    .param p1, "x"    # I

    .line 251
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->probability(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 1
    .param p1, "seed"    # J

    .line 180
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 181
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataImpl;->reSeed(J)V

    .line 182
    return-void
.end method

.method public sample()I
    .locals 2

    .line 192
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->inverseCumulativeProbability(D)I

    move-result v0

    return v0
.end method

.method public sample(I)[I
    .locals 3
    .param p1, "sampleSize"    # I

    .line 202
    if-lez p1, :cond_1

    .line 206
    new-array v0, p1, [I

    .line 207
    .local v0, "out":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->sample()I

    move-result v2

    aput v2, v0, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 203
    .end local v0    # "out":[I
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method protected solveInverseCumulativeProbability(DII)I
    .locals 4
    .param p1, "p"    # D
    .param p3, "lower"    # I
    .param p4, "upper"    # I

    .line 157
    nop

    :goto_0
    add-int/lit8 v0, p3, 0x1

    if-ge v0, p4, :cond_3

    .line 158
    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    .line 159
    .local v0, "xm":I
    if-lt v0, p3, :cond_0

    if-le v0, p4, :cond_1

    .line 165
    :cond_0
    sub-int v1, p4, p3

    div-int/lit8 v1, v1, 0x2

    add-int v0, p3, v1

    .line 168
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->checkedCumulativeProbability(I)D

    move-result-wide v1

    .line 169
    .local v1, "pm":D
    cmpl-double v3, v1, p1

    if-ltz v3, :cond_2

    .line 170
    move p4, v0

    goto :goto_1

    .line 172
    :cond_2
    move p3, v0

    .line 174
    .end local v0    # "xm":I
    .end local v1    # "pm":D
    :goto_1
    goto :goto_0

    .line 175
    :cond_3
    return p4
.end method
