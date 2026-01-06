.class Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;
.super Ljava/lang/Object;
.source "LineSearch.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

.field final synthetic val$direction:[D

.field final synthetic val$n:I

.field final synthetic val$startPoint:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;I[D[D)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    iput p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;->val$n:I

    iput-object p3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;->val$startPoint:[D

    iput-object p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;->val$direction:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 6
    .param p1, "alpha"    # D

    .line 117
    iget v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;->val$n:I

    new-array v0, v0, [D

    .line 118
    .local v0, "x":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;->val$n:I

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;->val$startPoint:[D

    aget-wide v2, v2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;->val$direction:[D

    aget-wide v4, v4, v1

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-static {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;)Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 122
    .local v1, "obj":D
    return-wide v1
.end method
