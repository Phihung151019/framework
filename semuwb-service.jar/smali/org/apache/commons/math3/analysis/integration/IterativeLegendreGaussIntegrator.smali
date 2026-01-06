.class public Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "IterativeLegendreGaussIntegrator.java"


# static fields
.field private static final FACTORY:Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;


# instance fields
.field private final numberOfPoints:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->FACTORY:Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "relativeAccuracy"    # D
    .param p4, "absoluteAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 93
    const/4 v6, 0x3

    const v7, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "n":I
    .end local p2    # "relativeAccuracy":D
    .end local p4    # "absoluteAccuracy":D
    .local v1, "n":I
    .local v2, "relativeAccuracy":D
    .local v4, "absoluteAccuracy":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;-><init>(IDDII)V

    .line 95
    return-void
.end method

.method public constructor <init>(IDDII)V
    .locals 7
    .param p1, "n"    # I
    .param p2, "relativeAccuracy"    # D
    .param p4, "absoluteAccuracy"    # D
    .param p6, "minimalIterationCount"    # I
    .param p7, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 74
    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move v5, p6

    move v6, p7

    .end local p2    # "relativeAccuracy":D
    .end local p4    # "absoluteAccuracy":D
    .end local p6    # "minimalIterationCount":I
    .end local p7    # "maximalIterationCount":I
    .local v1, "relativeAccuracy":D
    .local v3, "absoluteAccuracy":D
    .local v5, "minimalIterationCount":I
    .local v6, "maximalIterationCount":I
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 75
    if-lez p1, :cond_0

    .line 78
    iput p1, v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->numberOfPoints:I

    .line 79
    return-void

    .line 76
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p2
.end method

.method public constructor <init>(III)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "minimalIterationCount"    # I
    .param p3, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 113
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v4, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v7, p3

    .end local p1    # "n":I
    .end local p2    # "minimalIterationCount":I
    .end local p3    # "maximalIterationCount":I
    .local v1, "n":I
    .local v6, "minimalIterationCount":I
    .local v7, "maximalIterationCount":I
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;-><init>(IDDII)V

    .line 115
    return-void
.end method

.method private stage(I)D
    .locals 20
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 160
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$1;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$1;-><init>(Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;)V

    .line 168
    .local v2, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getMin()D

    move-result-wide v3

    .line 169
    .local v3, "min":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getMax()D

    move-result-wide v5

    .line 170
    .local v5, "max":D
    sub-double v7, v5, v3

    int-to-double v9, v1

    div-double/2addr v7, v9

    .line 172
    .local v7, "step":D
    const-wide/16 v9, 0x0

    .line 173
    .local v9, "sum":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v1, :cond_0

    .line 175
    int-to-double v12, v11

    mul-double/2addr v12, v7

    add-double v16, v3, v12

    .line 176
    .local v16, "a":D
    add-double v18, v16, v7

    .line 177
    .local v18, "b":D
    sget-object v14, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->FACTORY:Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;

    iget v15, v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->numberOfPoints:I

    invoke-virtual/range {v14 .. v19}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->legendreHighPrecision(IDD)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    move-result-object v12

    .line 178
    .local v12, "g":Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->integrate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)D

    move-result-wide v13

    add-double/2addr v9, v13

    .line 173
    .end local v12    # "g":Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    .end local v16    # "a":D
    .end local v18    # "b":D
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 181
    .end local v11    # "i":I
    :cond_0
    return-wide v9
.end method


# virtual methods
.method protected doIntegrate()D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 122
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->stage(I)D

    move-result-wide v2

    .line 124
    .local v2, "oldt":D
    const/4 v4, 0x2

    .line 127
    .local v4, "n":I
    :goto_0
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->stage(I)D

    move-result-wide v5

    .line 130
    .local v5, "t":D
    sub-double v7, v5, v2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    .line 131
    .local v7, "delta":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getRelativeAccuracy()D

    move-result-wide v11

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v13, v15

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    .line 136
    .local v9, "limit":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getIterations()I

    move-result v11

    add-int/2addr v11, v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->getMinimalIterationCount()I

    move-result v12

    if-lt v11, v12, :cond_0

    cmpg-double v11, v7, v9

    if-gtz v11, :cond_0

    .line 138
    return-wide v5

    .line 142
    :cond_0
    div-double v11, v7, v9

    iget v15, v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->numberOfPoints:I

    move-wide/from16 v17, v2

    .end local v2    # "oldt":D
    .local v17, "oldt":D
    int-to-double v1, v15

    div-double/2addr v13, v1

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    invoke-static {v11, v12, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    .line 143
    .local v1, "ratio":D
    int-to-double v11, v4

    mul-double/2addr v11, v1

    double-to-int v3, v11

    add-int/lit8 v11, v4, 0x1

    invoke-static {v3, v11}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    .line 144
    move-wide v11, v5

    .line 145
    .end local v17    # "oldt":D
    .local v11, "oldt":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->incrementCount()V

    .line 146
    .end local v1    # "ratio":D
    .end local v5    # "t":D
    .end local v7    # "delta":D
    .end local v9    # "limit":D
    move-wide v2, v11

    const/4 v1, 0x1

    goto :goto_0
.end method
