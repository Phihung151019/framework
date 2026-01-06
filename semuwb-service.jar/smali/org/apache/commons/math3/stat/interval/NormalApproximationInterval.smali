.class public Lorg/apache/commons/math3/stat/interval/NormalApproximationInterval;
.super Ljava/lang/Object;
.source "NormalApproximationInterval.java"

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
    .locals 18
    .param p1, "numberOfTrials"    # I
    .param p2, "numberOfSuccesses"    # I
    .param p3, "confidenceLevel"    # D

    .line 35
    move/from16 v0, p1

    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->checkParameters(IID)V

    .line 36
    move/from16 v1, p2

    int-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 37
    .local v2, "mean":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, p3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 38
    .local v6, "alpha":D
    new-instance v8, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-direct {v8}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>()V

    .line 39
    .local v8, "normalDistribution":Lorg/apache/commons/math3/distribution/NormalDistribution;
    sub-double v9, v4, v6

    invoke-virtual {v8, v9, v10}, Lorg/apache/commons/math3/distribution/NormalDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v9

    int-to-double v11, v0

    div-double v11, v4, v11

    mul-double/2addr v11, v2

    sub-double/2addr v4, v2

    mul-double/2addr v11, v4

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v9, v4

    .line 41
    .local v9, "difference":D
    new-instance v11, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    sub-double v12, v2, v9

    add-double v14, v2, v9

    move-wide/from16 v16, p3

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v11
.end method
