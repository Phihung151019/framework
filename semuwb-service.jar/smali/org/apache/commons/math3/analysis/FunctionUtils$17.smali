.class final Lorg/apache/commons/math3/analysis/FunctionUtils$17;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 2
    .param p1, "x"    # [D

    .line 619
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->value([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 23
    .param p1, "t"    # [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v3

    .line 631
    .local v3, "parameters":I
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v4

    .line 632
    .local v4, "order":I
    array-length v5, v1

    .line 633
    .local v5, "n":I
    const/4 v6, 0x1

    if-gt v4, v6, :cond_6

    .line 638
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_2

    .line 639
    aget-object v8, v1, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v8

    if-ne v8, v3, :cond_1

    .line 643
    aget-object v8, v1, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v8

    if-ne v8, v4, :cond_0

    .line 638
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 644
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v6, v1, v7

    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v6

    invoke-direct {v2, v6, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 640
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v6, v1, v7

    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v6

    invoke-direct {v2, v6, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 649
    .end local v7    # "i":I
    :cond_2
    new-array v7, v5, [D

    .line 650
    .local v7, "point":[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v5, :cond_3

    .line 651
    aget-object v9, v1, v8

    invoke-virtual {v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 650
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 653
    .end local v8    # "i":I
    :cond_3
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-interface {v8, v7}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->value([D)D

    move-result-wide v8

    .line 654
    .local v8, "value":D
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-interface {v10}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v10

    invoke-interface {v10, v7}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v10

    .line 657
    .local v10, "gradient":[D
    add-int/lit8 v11, v3, 0x1

    new-array v11, v11, [D

    .line 658
    .local v11, "derivatives":[D
    aput-wide v8, v11, v2

    .line 659
    new-array v12, v3, [I

    .line 660
    .local v12, "orders":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v3, :cond_5

    .line 661
    aput v6, v12, v13

    .line 662
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    if-ge v14, v5, :cond_4

    .line 663
    add-int/lit8 v15, v13, 0x1

    aget-wide v16, v11, v15

    aget-wide v18, v10, v14

    move/from16 v20, v2

    aget-object v2, v1, v14

    invoke-virtual {v2, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v21

    mul-double v18, v18, v21

    add-double v16, v16, v18

    aput-wide v16, v11, v15

    .line 662
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v20

    goto :goto_3

    :cond_4
    move/from16 v20, v2

    .line 665
    .end local v14    # "j":I
    aput v20, v12, v13

    .line 660
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 668
    .end local v13    # "i":I
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v2, v3, v4, v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v2

    .line 634
    .end local v7    # "point":[D
    .end local v8    # "value":D
    .end local v10    # "gradient":[D
    .end local v11    # "derivatives":[D
    .end local v12    # "orders":[I
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v7, v8, v6}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method
