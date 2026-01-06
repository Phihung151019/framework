.class Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$18;->jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$18;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$18;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 12
    .param p1, "x"    # [D

    .line 698
    array-length v1, p1

    .line 701
    .local v1, "n":I
    new-array v6, v1, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 702
    .local v6, "dsX":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 703
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v2, 0x1

    aget-wide v4, p1, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v0, v6, v3

    .line 702
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 705
    .end local v3    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$18;

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$18;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    .line 708
    .local v0, "y":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    array-length v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v5, 0x0

    aput v2, v3, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 709
    .local v2, "jacobian":[[D
    new-array v3, v1, [I

    .line 710
    .local v3, "orders":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_2

    .line 711
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v1, :cond_1

    .line 712
    aput v4, v3, v8

    .line 713
    aget-object v9, v2, v7

    aget-object v10, v0, v7

    invoke-virtual {v10, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 714
    aput v5, v3, v8

    .line 711
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 710
    .end local v8    # "j":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 718
    .end local v7    # "i":I
    :cond_2
    return-object v2
.end method
