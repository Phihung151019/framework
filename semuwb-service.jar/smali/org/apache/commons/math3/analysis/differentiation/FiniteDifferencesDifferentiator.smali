.class public Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;
.super Ljava/lang/Object;
.source "FiniteDifferencesDifferentiator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateFunctionDifferentiator;
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateVectorFunctionDifferentiator;
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateMatrixFunctionDifferentiator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1330555L


# instance fields
.field private final halfSampleSpan:D

.field private final nbPoints:I

.field private final stepSize:D

.field private final tMax:D

.field private final tMin:D


# direct methods
.method public constructor <init>(ID)V
    .locals 8
    .param p1, "nbPoints"    # I
    .param p2, "stepSize"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 109
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .end local p1    # "nbPoints":I
    .end local p2    # "stepSize":D
    .local v1, "nbPoints":I
    .local v2, "stepSize":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;-><init>(IDDD)V

    .line 110
    return-void
.end method

.method public constructor <init>(IDDD)V
    .locals 7
    .param p1, "nbPoints"    # I
    .param p2, "stepSize"    # D
    .param p4, "tLower"    # D
    .param p6, "tUpper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 148
    iput p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    .line 150
    const-wide/16 v1, 0x0

    cmpg-double v1, p2, v1

    if-lez v1, :cond_1

    .line 153
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    .line 155
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, p2

    add-int/lit8 v3, p1, -0x1

    int-to-double v3, v3

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    .line 156
    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    sub-double v5, p6, p4

    cmpl-double v1, v1, v5

    if-gez v1, :cond_0

    .line 159
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    .line 160
    .local v0, "safety":D
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    add-double/2addr v2, p4

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D

    .line 161
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    sub-double v2, p6, v2

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D

    .line 163
    return-void

    .line 157
    .end local v0    # "safety":D
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sub-double v3, p6, p4

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 151
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 146
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    .line 71
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    return-wide v0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    return-wide v0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;
    .param p1, "x1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p2, "x2"    # D
    .param p4, "x3"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method private evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 16
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p2, "t0"    # D
    .param p4, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 198
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    new-array v1, v1, [D

    .line 199
    .local v1, "top":[D
    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    new-array v2, v2, [D

    .line 201
    .local v2, "bottom":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 204
    aget-wide v6, p4, v3

    aput-wide v6, v2, v3

    .line 205
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    if-gt v4, v3, :cond_0

    .line 206
    sub-int v6, v3, v4

    sub-int v7, v3, v4

    add-int/lit8 v7, v7, 0x1

    aget-wide v7, v2, v7

    sub-int v9, v3, v4

    aget-wide v9, v2, v9

    sub-double/2addr v7, v9

    int-to-double v9, v4

    iget-wide v11, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    mul-double/2addr v9, v11

    div-double/2addr v7, v9

    aput-wide v7, v2, v6

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 210
    .end local v4    # "j":I
    :cond_0
    aget-wide v4, v2, v5

    aput-wide v4, v1, v3

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    .line 216
    .local v3, "order":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v4

    .line 217
    .local v4, "parameters":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v6

    .line 218
    .local v6, "derivatives":[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v7

    sub-double v7, v7, p2

    .line 219
    .local v7, "dt0":D
    new-instance v9, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v4, v3, v10, v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    .line 220
    .local v9, "interpolation":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v10, 0x0

    .line 221
    .local v10, "monomial":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    iget v12, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    if-ge v11, v12, :cond_3

    .line 222
    if-nez v11, :cond_2

    .line 224
    new-instance v12, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-direct {v12, v4, v3, v13, v14}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    move-object v10, v12

    .end local v10    # "monomial":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .local v12, "monomial":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    goto :goto_3

    .line 227
    .end local v12    # "monomial":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .restart local v10    # "monomial":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    :cond_2
    add-int/lit8 v12, v11, -0x1

    int-to-double v12, v12

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    mul-double/2addr v12, v14

    sub-double v12, v7, v12

    aput-wide v12, v6, v5

    .line 228
    new-instance v12, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v12, v4, v3, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    .line 229
    .local v12, "deltaX":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v10, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v10

    .line 231
    .end local v12    # "deltaX":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    :goto_3
    aget-wide v12, v1, v11

    invoke-virtual {v10, v12, v13}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v9

    .line 221
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 234
    .end local v11    # "i":I
    :cond_3
    return-object v9
.end method


# virtual methods
.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 245
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableMatrixFunction;
    .locals 1
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    .line 336
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)V

    return-object v0
.end method

.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;
    .locals 1
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    .line 285
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)V

    return-object v0
.end method

.method public getNbPoints()I
    .locals 1

    .line 170
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    return v0
.end method

.method public getStepSize()D
    .locals 2

    .line 178
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    return-wide v0
.end method
