.class public Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "TrapezoidIntegrator.java"


# static fields
.field public static final TRAPEZOID_MAX_ITERATIONS_COUNT:I = 0x40


# instance fields
.field private s:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    const/4 v0, 0x3

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 99
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

    .line 64
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 65
    const/16 v0, 0x40

    if-gt p6, v0, :cond_0

    .line 69
    return-void

    .line 66
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

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 87
    const/16 v0, 0x40

    if-gt p2, v0, :cond_0

    .line 91
    return-void

    .line 88
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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v0

    .line 150
    .local v0, "oldt":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->incrementCount()V

    .line 152
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->getIterations()I

    move-result v2

    .line 153
    .local v2, "i":I
    invoke-virtual {p0, p0, v2}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v3

    .line 154
    .local v3, "t":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->getMinimalIterationCount()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 155
    sub-double v5, v3, v0

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    .line 156
    .local v5, "delta":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->getRelativeAccuracy()D

    move-result-wide v7

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    .line 158
    .local v7, "rLimit":D
    cmpg-double v9, v5, v7

    if-lez v9, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v9

    cmpg-double v9, v5, v9

    if-gtz v9, :cond_1

    .line 159
    :cond_0
    return-wide v3

    .line 162
    .end local v5    # "delta":D
    .end local v7    # "rLimit":D
    :cond_1
    move-wide v0, v3

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->incrementCount()V

    .line 164
    .end local v2    # "i":I
    .end local v3    # "t":D
    goto :goto_0
.end method

.method stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D
    .locals 23
    .param p1, "baseIntegrator"    # Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-nez p2, :cond_0

    .line 120
    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMax()D

    move-result-wide v4

    .line 121
    .local v4, "max":D
    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMin()D

    move-result-wide v6

    .line 122
    .local v6, "min":D
    sub-double v8, v4, v6

    mul-double/2addr v8, v2

    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v2

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v10

    add-double/2addr v2, v10

    mul-double/2addr v8, v2

    iput-wide v8, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->s:D

    .line 125
    iget-wide v2, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->s:D

    return-wide v2

    .line 127
    .end local v4    # "max":D
    .end local v6    # "min":D
    :cond_0
    add-int/lit8 v4, p2, -0x1

    const-wide/16 v5, 0x1

    shl-long v7, v5, v4

    .line 128
    .local v7, "np":J
    const-wide/16 v9, 0x0

    .line 129
    .local v9, "sum":D
    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMax()D

    move-result-wide v11

    .line 130
    .local v11, "max":D
    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMin()D

    move-result-wide v13

    .line 132
    .local v13, "min":D
    sub-double v15, v11, v13

    move-wide/from16 v17, v2

    long-to-double v2, v7

    div-double/2addr v15, v2

    .line 133
    .local v15, "spacing":D
    mul-double v2, v15, v17

    add-double/2addr v2, v13

    .line 134
    .local v2, "x":D
    const-wide/16 v19, 0x0

    .local v19, "i":J
    :goto_0
    cmp-long v4, v19, v7

    if-gez v4, :cond_1

    .line 135
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v21

    add-double v9, v9, v21

    .line 136
    add-double/2addr v2, v15

    .line 134
    add-long v19, v19, v5

    goto :goto_0

    .line 139
    .end local v19    # "i":J
    :cond_1
    iget-wide v4, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->s:D

    mul-double v19, v9, v15

    add-double v4, v4, v19

    mul-double v4, v4, v17

    iput-wide v4, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->s:D

    .line 140
    iget-wide v4, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->s:D

    return-wide v4
.end method
