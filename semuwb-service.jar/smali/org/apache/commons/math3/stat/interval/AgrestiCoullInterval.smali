.class public Lorg/apache/commons/math3/stat/interval/AgrestiCoullInterval;
.super Ljava/lang/Object;
.source "AgrestiCoullInterval.java"

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
    .locals 22
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "confidenceLevel"    # D

    .line 34
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->checkParameters(IID)V

    .line 35
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 36
    .local v2, "alpha":D
    new-instance v4, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-direct {v4}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>()V

    .line 37
    .local v4, "normalDistribution":Lorg/apache/commons/math3/distribution/NormalDistribution;
    sub-double v5, v0, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/distribution/NormalDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v5

    .line 38
    .local v5, "z":D
    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v7

    .line 39
    .local v7, "zSquared":D
    move/from16 v9, p1

    int-to-double v10, v9

    add-double/2addr v10, v7

    .line 40
    .local v10, "modifiedNumberOfTrials":D
    div-double v12, v0, v10

    move/from16 v14, p2

    move-wide v15, v0

    int-to-double v0, v14

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v17, v17, v7

    add-double v0, v0, v17

    mul-double/2addr v12, v0

    .line 41
    .local v12, "modifiedSuccessesRatio":D
    div-double v0, v15, v10

    mul-double/2addr v0, v12

    sub-double/2addr v15, v12

    mul-double/2addr v0, v15

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    .line 44
    .local v0, "difference":D
    new-instance v15, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    sub-double v16, v12, v0

    add-double v18, v12, v0

    move-wide/from16 v20, p3

    invoke-direct/range {v15 .. v21}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v15
.end method
