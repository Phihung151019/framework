.class public Lorg/apache/commons/math3/stat/interval/WilsonScoreInterval;
.super Ljava/lang/Object;
.source "WilsonScoreInterval.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 29
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "confidenceLevel"    # D

    .line 34
    move/from16 v0, p1

    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->checkParameters(IID)V

    .line 35
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double v3, v1, p3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    .line 36
    .local v3, "alpha":D
    new-instance v5, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-direct {v5}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>()V

    .line 37
    .local v5, "normalDistribution":Lorg/apache/commons/math3/distribution/NormalDistribution;
    sub-double v6, v1, v3

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v6

    .line 38
    .local v6, "z":D
    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v9

    .line 39
    .local v9, "zSquared":D
    move/from16 v11, p2

    int-to-double v12, v11

    int-to-double v14, v0

    div-double/2addr v12, v14

    .line 41
    .local v12, "mean":D
    int-to-double v14, v0

    div-double v14, v1, v14

    mul-double/2addr v14, v9

    add-double/2addr v14, v1

    div-double v14, v1, v14

    .line 42
    .local v14, "factor":D
    move-wide/from16 v16, v1

    mul-int/lit8 v1, v0, 0x2

    int-to-double v1, v1

    div-double v1, v16, v1

    mul-double/2addr v1, v9

    add-double/2addr v1, v12

    .line 43
    .local v1, "modifiedSuccessRatio":D
    move-wide/from16 v18, v9

    .end local v9    # "zSquared":D
    .local v18, "zSquared":D
    int-to-double v8, v0

    div-double v8, v16, v8

    mul-double/2addr v8, v12

    sub-double v20, v16, v12

    mul-double v8, v8, v20

    move-wide/from16 v20, v1

    .end local v1    # "modifiedSuccessRatio":D
    .local v20, "modifiedSuccessRatio":D
    int-to-double v1, v0

    const/4 v10, 0x2

    invoke-static {v1, v2, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v1

    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    mul-double v1, v1, v22

    div-double v1, v16, v1

    mul-double v1, v1, v18

    add-double/2addr v8, v1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    mul-double/2addr v1, v6

    .line 47
    .local v1, "difference":D
    sub-double v8, v20, v1

    mul-double v23, v14, v8

    .line 48
    .local v23, "lowerBound":D
    add-double v8, v20, v1

    mul-double v25, v14, v8

    .line 49
    .local v25, "upperBound":D
    new-instance v22, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-wide/from16 v27, p3

    invoke-direct/range {v22 .. v28}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v22
.end method
