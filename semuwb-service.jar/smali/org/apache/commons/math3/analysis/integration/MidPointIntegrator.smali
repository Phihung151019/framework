.class public Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "MidPointIntegrator.java"


# static fields
.field public static final MIDPOINT_MAX_ITERATIONS_COUNT:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 95
    const/4 v0, 0x3

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 96
    return-void
.end method

.method public constructor <init>(DDII)V
    .locals 4
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "minimalIterationCount"    # I
    .param p6, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 62
    const/16 v0, 0x40

    if-gt p6, v0, :cond_0

    .line 66
    return-void

    .line 63
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "minimalIterationCount"    # I
    .param p2, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 84
    const/16 v0, 0x40

    if-gt p2, v0, :cond_0

    .line 88
    return-void

    .line 85
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method private stage(IDDD)D
    .locals 17
    .param p1, "n"    # I
    .param p2, "previousStageResult"    # D
    .param p4, "min"    # D
    .param p6, "diffMaxMin"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 124
    add-int/lit8 v0, p1, -0x1

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    .line 125
    .local v3, "np":J
    const-wide/16 v5, 0x0

    .line 128
    .local v5, "sum":D
    long-to-double v7, v3

    div-double v7, p6, v7

    .line 131
    .local v7, "spacing":D
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v11, v7, v9

    add-double v11, p4, v11

    .line 132
    .local v11, "x":D
    const-wide/16 v13, 0x0

    .local v13, "i":J
    :goto_0
    cmp-long v0, v13, v3

    if-gez v0, :cond_0

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->computeObjectiveValue(D)D

    move-result-wide v15

    add-double/2addr v5, v15

    .line 134
    add-double/2addr v11, v7

    .line 132
    add-long/2addr v13, v1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 137
    .end local v13    # "i":J
    mul-double v1, v5, v7

    add-double v1, p2, v1

    mul-double/2addr v1, v9

    return-wide v1
.end method


# virtual methods
.method protected doIntegrate()D
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMin()D

    move-result-wide v4

    .line 147
    .local v4, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMax()D

    move-result-wide v0

    sub-double v6, v0, v4

    .line 148
    .local v6, "diff":D
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v0, v6, v8

    add-double v10, v4, v0

    .line 150
    .local v10, "midPoint":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->computeObjectiveValue(D)D

    move-result-wide v1

    mul-double/2addr v1, v6

    move-wide v2, v1

    .line 153
    .local v2, "oldt":D
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->incrementCount()V

    .line 154
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getIterations()I

    move-result v1

    .line 155
    .local v1, "i":I
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->stage(IDDD)D

    move-result-wide v12

    .line 156
    .local v12, "t":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMinimalIterationCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 157
    sub-double v14, v12, v2

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    .line 158
    .local v14, "delta":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getRelativeAccuracy()D

    move-result-wide v16

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v18, v18, v20

    mul-double v16, v16, v18

    mul-double v16, v16, v8

    .line 160
    .local v16, "rLimit":D
    cmpg-double v0, v14, v16

    if-lez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v18

    cmpg-double v0, v14, v18

    if-gtz v0, :cond_1

    .line 161
    :cond_0
    return-wide v12

    .line 164
    .end local v14    # "delta":D
    .end local v16    # "rLimit":D
    :cond_1
    move-wide v2, v12

    .line 165
    .end local v1    # "i":I
    .end local v12    # "t":D
    move-object/from16 v0, p0

    goto :goto_0
.end method
