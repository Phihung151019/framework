.class final Lorg/apache/commons/math3/analysis/FunctionUtils$15;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toUnivariateDifferential(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 2
    .param p1, "x"    # D

    .line 492
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 11
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 500
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 517
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 504
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v0

    .line 505
    .local v0, "parameters":I
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [D

    .line 506
    .local v3, "derivatives":[D
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 507
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    .line 508
    .local v4, "fPrime":D
    new-array v6, v0, [I

    .line 509
    .local v6, "orders":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_0

    .line 510
    aput v2, v6, v7

    .line 511
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v9

    mul-double/2addr v9, v4

    aput-wide v9, v3, v8

    .line 512
    aput v1, v6, v7

    .line 509
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 514
    .end local v7    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v1

    .line 502
    .end local v0    # "parameters":I
    .end local v3    # "derivatives":[D
    .end local v4    # "fPrime":D
    .end local v6    # "orders":[I
    :pswitch_1
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
