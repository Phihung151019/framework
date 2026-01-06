.class final Lorg/apache/commons/math3/analysis/FunctionUtils$19;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 1
    .param p1, "x"    # [D

    .line 746
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;->value([D)[D

    move-result-object v0

    return-object v0
.end method

.method public value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 24
    .param p1, "t"    # [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 757
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v3

    .line 758
    .local v3, "parameters":I
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v4

    .line 759
    .local v4, "order":I
    array-length v5, v1

    .line 760
    .local v5, "n":I
    const/4 v6, 0x1

    if-gt v4, v6, :cond_7

    .line 765
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_2

    .line 766
    aget-object v8, v1, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v8

    if-ne v8, v3, :cond_1

    .line 770
    aget-object v8, v1, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v8

    if-ne v8, v4, :cond_0

    .line 765
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 771
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v6, v1, v7

    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v6

    invoke-direct {v2, v6, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 767
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v6, v1, v7

    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v6

    invoke-direct {v2, v6, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 776
    .end local v7    # "i":I
    :cond_2
    new-array v7, v5, [D

    .line 777
    .local v7, "point":[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v5, :cond_3

    .line 778
    aget-object v9, v1, v8

    invoke-virtual {v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 777
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 780
    .end local v8    # "i":I
    :cond_3
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v8, v7}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;->value([D)[D

    move-result-object v8

    .line 781
    .local v8, "value":[D
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v9}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;->jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v9

    invoke-interface {v9, v7}, Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;->value([D)[[D

    move-result-object v9

    .line 784
    .local v9, "jacobian":[[D
    array-length v10, v8

    new-array v10, v10, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 785
    .local v10, "merged":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_2
    array-length v12, v10

    if-ge v11, v12, :cond_6

    .line 786
    add-int/lit8 v12, v3, 0x1

    new-array v12, v12, [D

    .line 787
    .local v12, "derivatives":[D
    aget-wide v13, v8, v11

    aput-wide v13, v12, v2

    .line 788
    new-array v13, v3, [I

    .line 789
    .local v13, "orders":[I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v3, :cond_5

    .line 790
    aput v6, v13, v14

    .line 791
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    if-ge v15, v5, :cond_4

    .line 792
    add-int/lit8 v16, v14, 0x1

    aget-wide v17, v12, v16

    aget-object v19, v9, v11

    aget-wide v19, v19, v15

    move/from16 v21, v2

    aget-object v2, v1, v15

    invoke-virtual {v2, v13}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v22

    mul-double v19, v19, v22

    add-double v17, v17, v19

    aput-wide v17, v12, v16

    .line 791
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v21

    goto :goto_4

    :cond_4
    move/from16 v21, v2

    .line 794
    .end local v15    # "j":I
    aput v21, v13, v14

    .line 789
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    move/from16 v21, v2

    .line 796
    .end local v14    # "i":I
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v2, v3, v4, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    aput-object v2, v10, v11

    .line 785
    .end local v12    # "derivatives":[D
    .end local v13    # "orders":[I
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v21

    goto :goto_2

    .line 799
    .end local v11    # "k":I
    :cond_6
    return-object v10

    .line 761
    .end local v7    # "point":[D
    .end local v8    # "value":[D
    .end local v9    # "jacobian":[[D
    .end local v10    # "merged":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    :cond_7
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v7, v8, v6}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method
