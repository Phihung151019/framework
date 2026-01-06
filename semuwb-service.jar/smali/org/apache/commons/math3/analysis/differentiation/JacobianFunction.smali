.class public Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;
.super Ljava/lang/Object;
.source "JacobianFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)V
    .locals 0
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    .line 40
    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 11
    .param p1, "point"    # [D

    .line 46
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 47
    .local v0, "dsX":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x0

    move v5, v1

    .local v5, "i":I
    :goto_0
    array-length v1, p1

    if-ge v5, v1, :cond_0

    .line 48
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v3, p1

    const/4 v4, 0x1

    aget-wide v6, p1, v5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v2, v0, v5

    .line 47
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 52
    .end local v5    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    .line 55
    .local v1, "dsY":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    array-length v2, v1

    array-length v3, p1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v2, v4, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 56
    .local v2, "y":[[D
    array-length v4, p1

    new-array v4, v4, [I

    .line 57
    .local v4, "orders":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 58
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    array-length v8, p1

    if-ge v7, v8, :cond_1

    .line 59
    aput v5, v4, v7

    .line 60
    aget-object v8, v2, v6

    aget-object v9, v1, v6

    invoke-virtual {v9, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v9

    aput-wide v9, v8, v7

    .line 61
    aput v3, v4, v7

    .line 58
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 57
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 65
    .end local v6    # "i":I
    :cond_2
    return-object v2
.end method
