.class Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$16;->gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$16;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 9
    .param p1, "x"    # [D

    .line 573
    array-length v1, p1

    .line 576
    .local v1, "n":I
    new-array v6, v1, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 577
    .local v6, "dsX":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 578
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v2, 0x1

    aget-wide v4, p1, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v0, v6, v3

    .line 577
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 580
    .end local v3    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$16;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    .line 583
    .local v0, "y":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    new-array v2, v1, [D

    .line 584
    .local v2, "gradient":[D
    new-array v3, v1, [I

    .line 585
    .local v3, "orders":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 586
    const/4 v5, 0x1

    aput v5, v3, v4

    .line 587
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v7

    aput-wide v7, v2, v4

    .line 588
    const/4 v5, 0x0

    aput v5, v3, v4

    .line 585
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 591
    .end local v4    # "i":I
    :cond_1
    return-object v2
.end method
