.class public Lorg/apache/commons/math3/stat/interval/ClopperPearsonInterval;
.super Ljava/lang/Object;
.source "ClopperPearsonInterval.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 26
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "confidenceLevel"    # D

    .line 34
    move/from16 v0, p2

    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->checkParameters(IID)V

    .line 35
    const-wide/16 v1, 0x0

    .line 36
    .local v1, "lowerBound":D
    const-wide/16 v3, 0x0

    .line 37
    .local v3, "upperBound":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v7, v5, p3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    .line 39
    .local v7, "alpha":D
    new-instance v9, Lorg/apache/commons/math3/distribution/FDistribution;

    sub-int v10, p1, v0

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v10, v10, 0x2

    int-to-double v10, v10

    mul-int/lit8 v12, v0, 0x2

    int-to-double v12, v12

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(DD)V

    .line 41
    .local v9, "distributionLowerBound":Lorg/apache/commons/math3/distribution/FDistribution;
    sub-double v10, v5, v7

    invoke-virtual {v9, v10, v11}, Lorg/apache/commons/math3/distribution/FDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v10

    .line 42
    .local v10, "fValueLowerBound":D
    if-lez v0, :cond_0

    .line 43
    int-to-double v12, v0

    int-to-double v14, v0

    sub-int v16, p1, v0

    move-wide/from16 v17, v5

    add-int/lit8 v5, v16, 0x1

    int-to-double v5, v5

    mul-double/2addr v5, v10

    add-double/2addr v14, v5

    div-double v1, v12, v14

    move-wide/from16 v20, v1

    goto :goto_0

    .line 42
    :cond_0
    move-wide/from16 v17, v5

    move-wide/from16 v20, v1

    .line 47
    .end local v1    # "lowerBound":D
    .local v20, "lowerBound":D
    :goto_0
    new-instance v1, Lorg/apache/commons/math3/distribution/FDistribution;

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    int-to-double v5, v2

    sub-int v2, p1, v0

    mul-int/lit8 v2, v2, 0x2

    int-to-double v12, v2

    invoke-direct {v1, v5, v6, v12, v13}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(DD)V

    .line 49
    .local v1, "distributionUpperBound":Lorg/apache/commons/math3/distribution/FDistribution;
    sub-double v5, v17, v7

    invoke-virtual {v1, v5, v6}, Lorg/apache/commons/math3/distribution/FDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v5

    .line 50
    .local v5, "fValueUpperBound":D
    if-lez v0, :cond_1

    .line 51
    add-int/lit8 v2, v0, 0x1

    int-to-double v12, v2

    mul-double/2addr v12, v5

    sub-int v2, p1, v0

    int-to-double v14, v2

    add-int/lit8 v2, v0, 0x1

    move-object/from16 v16, v1

    .end local v1    # "distributionUpperBound":Lorg/apache/commons/math3/distribution/FDistribution;
    .local v16, "distributionUpperBound":Lorg/apache/commons/math3/distribution/FDistribution;
    int-to-double v0, v2

    mul-double/2addr v0, v5

    add-double/2addr v14, v0

    div-double v3, v12, v14

    move-wide/from16 v22, v3

    goto :goto_1

    .line 50
    .end local v16    # "distributionUpperBound":Lorg/apache/commons/math3/distribution/FDistribution;
    .restart local v1    # "distributionUpperBound":Lorg/apache/commons/math3/distribution/FDistribution;
    :cond_1
    move-object/from16 v16, v1

    .end local v1    # "distributionUpperBound":Lorg/apache/commons/math3/distribution/FDistribution;
    .restart local v16    # "distributionUpperBound":Lorg/apache/commons/math3/distribution/FDistribution;
    move-wide/from16 v22, v3

    .line 55
    .end local v3    # "upperBound":D
    .local v22, "upperBound":D
    :goto_1
    new-instance v19, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-wide/from16 v24, p3

    invoke-direct/range {v19 .. v25}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v19
.end method
