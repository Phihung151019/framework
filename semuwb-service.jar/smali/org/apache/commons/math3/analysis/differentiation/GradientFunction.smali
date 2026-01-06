.class public Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;
.super Ljava/lang/Object;
.source "GradientFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V
    .locals 0
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    .line 38
    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 8
    .param p1, "point"    # [D

    .line 44
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 45
    .local v0, "dsX":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x0

    move v5, v1

    .local v5, "i":I
    :goto_0
    array-length v1, p1

    if-ge v5, v1, :cond_0

    .line 46
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v3, p1

    const/4 v4, 0x1

    aget-wide v6, p1, v5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v2, v0, v5

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 50
    .end local v5    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    .line 53
    .local v1, "dsY":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    array-length v2, p1

    new-array v2, v2, [D

    .line 54
    .local v2, "y":[D
    array-length v3, p1

    new-array v3, v3, [I

    .line 55
    .local v3, "orders":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 56
    const/4 v5, 0x1

    aput v5, v3, v4

    .line 57
    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 58
    const/4 v5, 0x0

    aput v5, v3, v4

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61
    .end local v4    # "i":I
    :cond_1
    return-object v2
.end method
