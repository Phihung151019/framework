.class public Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "SimpsonIntegrator.java"


# static fields
.field public static final SIMPSON_MAX_ITERATIONS_COUNT:I = 0x40


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


# virtual methods
.method protected doIntegrate()D
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 103
    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;-><init>()V

    .line 104
    .local v1, "qtrap":Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getMinimalIterationCount()I

    move-result v2

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    .line 105
    invoke-virtual {v1, v0, v8}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v8

    mul-double/2addr v8, v5

    invoke-virtual {v1, v0, v7}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v5

    sub-double/2addr v8, v5

    div-double/2addr v8, v3

    return-wide v8

    .line 109
    :cond_0
    const-wide/16 v8, 0x0

    .line 110
    .local v8, "olds":D
    invoke-virtual {v1, v0, v7}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v10

    .line 112
    .local v10, "oldt":D
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getIterations()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v12

    .line 113
    .local v12, "t":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->incrementCount()V

    .line 114
    mul-double v14, v12, v5

    sub-double/2addr v14, v10

    div-double/2addr v14, v3

    .line 115
    .local v14, "s":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getIterations()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getMinimalIterationCount()I

    move-result v7

    if-lt v2, v7, :cond_2

    .line 116
    sub-double v16, v14, v8

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    .line 117
    .local v16, "delta":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getRelativeAccuracy()D

    move-result-wide v18

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    add-double v20, v20, v22

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v20

    .line 119
    .local v18, "rLimit":D
    cmpg-double v2, v16, v18

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v20

    cmpg-double v2, v16, v20

    if-gtz v2, :cond_2

    .line 120
    :cond_1
    return-wide v14

    .line 123
    .end local v16    # "delta":D
    .end local v18    # "rLimit":D
    :cond_2
    move-wide v8, v14

    .line 124
    move-wide v10, v12

    .line 125
    .end local v12    # "t":D
    .end local v14    # "s":D
    goto :goto_0
.end method
