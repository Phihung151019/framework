.class public Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "RombergIntegrator.java"


# static fields
.field public static final ROMBERG_MAX_ITERATIONS_COUNT:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    const/4 v0, 0x3

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 97
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

    .line 62
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 63
    const/16 v0, 0x20

    if-gt p6, v0, :cond_0

    .line 67
    return-void

    .line 64
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

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    .line 85
    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    .line 89
    return-void

    .line 86
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
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 104
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getMaximalIterationCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 105
    .local v1, "m":I
    new-array v2, v1, [D

    .line 106
    .local v2, "previousRow":[D
    new-array v3, v1, [D

    .line 108
    .local v3, "currentRow":[D
    new-instance v4, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;

    invoke-direct {v4}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;-><init>()V

    .line 109
    .local v4, "qtrap":Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v6

    aput-wide v6, v3, v5

    .line 110
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->incrementCount()V

    .line 111
    aget-wide v6, v3, v5

    .line 114
    .local v6, "olds":D
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getIterations()I

    move-result v8

    .line 117
    .local v8, "i":I
    move-object v9, v2

    .line 118
    .local v9, "tmpRow":[D
    move-object v2, v3

    .line 119
    move-object v3, v9

    .line 121
    invoke-virtual {v4, v0, v8}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v10

    aput-wide v10, v3, v5

    .line 122
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->incrementCount()V

    .line 123
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_1
    if-gt v10, v8, :cond_0

    .line 125
    mul-int/lit8 v11, v10, 0x2

    const-wide/16 v12, 0x1

    shl-long v14, v12, v11

    sub-long/2addr v14, v12

    long-to-double v11, v14

    .line 126
    .local v11, "r":D
    add-int/lit8 v13, v10, -0x1

    aget-wide v13, v3, v13

    .line 127
    .local v13, "tIJm1":D
    add-int/lit8 v15, v10, -0x1

    aget-wide v15, v2, v15

    sub-double v15, v13, v15

    div-double/2addr v15, v11

    add-double/2addr v15, v13

    aput-wide v15, v3, v10

    .line 123
    .end local v11    # "r":D
    .end local v13    # "tIJm1":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 129
    .end local v10    # "j":I
    :cond_0
    aget-wide v10, v3, v8

    .line 130
    .local v10, "s":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getMinimalIterationCount()I

    move-result v12

    if-lt v8, v12, :cond_2

    .line 131
    sub-double v12, v10, v6

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    .line 132
    .local v12, "delta":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getRelativeAccuracy()D

    move-result-wide v14

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    add-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    .line 133
    .local v14, "rLimit":D
    cmpg-double v16, v12, v14

    if-lez v16, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v16

    cmpg-double v16, v12, v16

    if-gtz v16, :cond_2

    .line 134
    :cond_1
    return-wide v10

    .line 137
    .end local v12    # "delta":D
    .end local v14    # "rLimit":D
    :cond_2
    move-wide v6, v10

    .line 138
    .end local v8    # "i":I
    .end local v9    # "tmpRow":[D
    .end local v10    # "s":D
    goto :goto_0
.end method
