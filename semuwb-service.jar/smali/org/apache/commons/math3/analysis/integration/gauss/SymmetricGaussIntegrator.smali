.class public Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
.source "SymmetricGaussIntegrator.java"


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair<",
            "[D[D>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 61
    .local p1, "pointsAndWeights":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[D[D>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;-><init>([D[D)V

    .line 62
    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 0
    .param p1, "points"    # [D
    .param p2, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>([D[D)V

    .line 47
    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)D
    .locals 23
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;->getNumberOfPoints()I

    move-result v2

    .line 71
    .local v2, "ruleLength":I
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;->getWeight(I)D

    move-result-wide v6

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v3

    mul-double/2addr v6, v3

    return-wide v6

    .line 75
    :cond_0
    div-int/lit8 v3, v2, 0x2

    .line 76
    .local v3, "iMax":I
    const-wide/16 v6, 0x0

    .line 77
    .local v6, "s":D
    const-wide/16 v8, 0x0

    .line 78
    .local v8, "c":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_1

    .line 79
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;->getPoint(I)D

    move-result-wide v11

    .line 80
    .local v11, "p":D
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;->getWeight(I)D

    move-result-wide v13

    .line 82
    .local v13, "w":D
    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v15

    .line 83
    .local v15, "f1":D
    neg-double v4, v11

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    .line 85
    .local v4, "f2":D
    add-double v17, v15, v4

    mul-double v17, v17, v13

    sub-double v17, v17, v8

    .line 86
    .local v17, "y":D
    add-double v19, v6, v17

    .line 88
    .local v19, "t":D
    sub-double v21, v19, v6

    sub-double v8, v21, v17

    .line 89
    move-wide/from16 v6, v19

    .line 78
    .end local v4    # "f2":D
    .end local v11    # "p":D
    .end local v13    # "w":D
    .end local v15    # "f1":D
    .end local v17    # "y":D
    .end local v19    # "t":D
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v4, 0x0

    goto :goto_0

    .line 92
    .end local v10    # "i":I
    :cond_1
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_2

    .line 93
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;->getWeight(I)D

    move-result-wide v4

    .line 95
    .local v4, "w":D
    const-wide/16 v10, 0x0

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v10

    mul-double/2addr v10, v4

    sub-double/2addr v10, v8

    .line 96
    .local v10, "y":D
    add-double v12, v6, v10

    .line 98
    .local v12, "t":D
    move-wide v6, v12

    .line 101
    .end local v4    # "w":D
    .end local v10    # "y":D
    .end local v12    # "t":D
    :cond_2
    return-wide v6
.end method
