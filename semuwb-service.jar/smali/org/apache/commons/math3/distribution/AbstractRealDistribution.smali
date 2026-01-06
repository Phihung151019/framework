.class public abstract Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.super Ljava/lang/Object;
.source "AbstractRealDistribution.java"

# interfaces
.implements Lorg/apache/commons/math3/distribution/RealDistribution;
.implements Ljava/io/Serializable;


# static fields
.field public static final SOLVER_DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6

.field private static final serialVersionUID:J = -0x872367e4cbe0c2L


# instance fields
.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field protected randomData:Lorg/apache/commons/math3/random/RandomDataImpl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private solverAbsoluteAccuracy:D


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    .line 59
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->solverAbsoluteAccuracy:D

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 70
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    .line 59
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->solverAbsoluteAccuracy:D

    .line 76
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 77
    return-void
.end method


# virtual methods
.method public cumulativeProbability(DD)D
    .locals 2
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->probability(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 240
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 25
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 156
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v5, :cond_c

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v8

    if-gtz v5, :cond_c

    .line 160
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSupportLowerBound()D

    move-result-wide v10

    .line 161
    .local v10, "lowerBound":D
    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    .line 162
    return-wide v10

    .line 165
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSupportUpperBound()D

    move-result-wide v3

    .line 166
    .local v3, "upperBound":D
    cmpl-double v5, v1, v8

    if-nez v5, :cond_1

    .line 167
    return-wide v3

    .line 170
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getNumericalMean()D

    move-result-wide v12

    .line 171
    .local v12, "mu":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getNumericalVariance()D

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 173
    .local v14, "sig":D
    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    .line 176
    .local v6, "chebyshevApplies":Z
    :goto_0
    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v5, v10, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    if-nez v5, :cond_5

    .line 177
    if-eqz v6, :cond_3

    .line 178
    sub-double v18, v8, v1

    div-double v18, v18, v1

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    mul-double v18, v18, v14

    sub-double v10, v12, v18

    move-wide/from16 v19, v10

    goto :goto_2

    .line 180
    :cond_3
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 181
    :goto_1
    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v18

    cmpl-double v5, v18, v1

    if-ltz v5, :cond_4

    .line 182
    mul-double v10, v10, v16

    goto :goto_1

    .line 181
    :cond_4
    move-wide/from16 v19, v10

    goto :goto_2

    .line 176
    :cond_5
    move-wide/from16 v19, v10

    .line 187
    .end local v10    # "lowerBound":D
    .local v19, "lowerBound":D
    :goto_2
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v5, v3, v10

    if-nez v5, :cond_8

    .line 188
    if-eqz v6, :cond_6

    .line 189
    sub-double/2addr v8, v1

    div-double v7, v1, v8

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v7, v14

    add-double v3, v12, v7

    move-wide/from16 v21, v3

    goto :goto_4

    .line 191
    :cond_6
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 192
    :goto_3
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v7

    cmpg-double v5, v7, v1

    if-gez v5, :cond_7

    .line 193
    mul-double v3, v3, v16

    goto :goto_3

    .line 192
    :cond_7
    move-wide/from16 v21, v3

    goto :goto_4

    .line 187
    :cond_8
    move-wide/from16 v21, v3

    .line 198
    .end local v3    # "upperBound":D
    .local v21, "upperBound":D
    :goto_4
    new-instance v3, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$1;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$1;-><init>(Lorg/apache/commons/math3/distribution/AbstractRealDistribution;D)V

    move-object/from16 v18, v3

    .line 205
    .local v18, "toSolve":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSolverAbsoluteAccuracy()D

    move-result-wide v23

    invoke-static/range {v18 .. v24}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->solve(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v3

    .line 210
    .local v3, "x":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->isSupportConnected()Z

    move-result v5

    if-nez v5, :cond_b

    .line 212
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSolverAbsoluteAccuracy()D

    move-result-wide v7

    .line 213
    .local v7, "dx":D
    sub-double v9, v3, v7

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSupportLowerBound()D

    move-result-wide v16

    cmpl-double v5, v9, v16

    if-ltz v5, :cond_b

    .line 214
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v9

    .line 215
    .local v9, "px":D
    sub-double v1, v3, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v1

    cmpl-double v1, v1, v9

    if-nez v1, :cond_b

    .line 216
    move-wide v1, v3

    .line 217
    .end local v21    # "upperBound":D
    .local v1, "upperBound":D
    :goto_5
    sub-double v16, v1, v19

    cmpl-double v5, v16, v7

    if-lez v5, :cond_a

    .line 218
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v21, v19, v1

    move-wide/from16 v23, v1

    .end local v1    # "upperBound":D
    .local v23, "upperBound":D
    mul-double v1, v21, v16

    .line 219
    .local v1, "midPoint":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v16

    cmpg-double v5, v16, v9

    if-gez v5, :cond_9

    .line 220
    move-wide/from16 v16, v1

    move-wide/from16 v19, v16

    move-wide/from16 v1, v23

    .end local v19    # "lowerBound":D
    .local v16, "lowerBound":D
    goto :goto_6

    .line 222
    .end local v16    # "lowerBound":D
    .restart local v19    # "lowerBound":D
    :cond_9
    move-wide/from16 v16, v1

    .line 224
    .end local v23    # "upperBound":D
    .local v1, "upperBound":D
    :goto_6
    goto :goto_5

    .line 225
    :cond_a
    move-wide/from16 v23, v1

    .end local v1    # "upperBound":D
    .restart local v23    # "upperBound":D
    return-wide v23

    .line 229
    .end local v7    # "dx":D
    .end local v9    # "px":D
    .end local v23    # "upperBound":D
    .restart local v21    # "upperBound":D
    :cond_b
    return-wide v3

    .line 157
    .end local v3    # "x":D
    .end local v6    # "chebyshevApplies":Z
    .end local v12    # "mu":D
    .end local v14    # "sig":D
    .end local v18    # "toSolve":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v19    # "lowerBound":D
    .end local v21    # "upperBound":D
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method

.method public logDensity(D)D
    .locals 2
    .param p1, "x"    # D

    .line 304
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->density(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public probability(D)D
    .locals 2
    .param p1, "x"    # D

    .line 286
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public probability(DD)D
    .locals 5
    .param p1, "x0"    # D
    .param p3, "x1"    # D

    .line 111
    cmpl-double v0, p1, p3

    if-gtz v0, :cond_0

    .line 115
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->cumulativeProbability(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0

    .line 112
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 1
    .param p1, "seed"    # J

    .line 245
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 246
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataImpl;->reSeed(J)V

    .line 247
    return-void
.end method

.method public sample()D
    .locals 2

    .line 258
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public sample(I)[D
    .locals 4
    .param p1, "sampleSize"    # I

    .line 268
    if-lez p1, :cond_1

    .line 272
    new-array v0, p1, [D

    .line 273
    .local v0, "out":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 269
    .end local v0    # "out":[D
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method
