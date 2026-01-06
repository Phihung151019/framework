.class Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer$1;
.super Ljava/lang/Object;
.source "MultiStartMultivariateOptimizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->getPairComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/optim/PointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer$1;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 95
    check-cast p1, Lorg/apache/commons/math3/optim/PointValuePair;

    check-cast p2, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer$1;->compare(Lorg/apache/commons/math3/optim/PointValuePair;Lorg/apache/commons/math3/optim/PointValuePair;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/optim/PointValuePair;Lorg/apache/commons/math3/optim/PointValuePair;)I
    .locals 6
    .param p1, "o1"    # Lorg/apache/commons/math3/optim/PointValuePair;
    .param p2, "o2"    # Lorg/apache/commons/math3/optim/PointValuePair;

    .line 99
    if-nez p1, :cond_1

    .line 100
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 101
    :cond_1
    if-nez p2, :cond_2

    .line 102
    const/4 v0, -0x1

    return v0

    .line 104
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 105
    .local v0, "v1":D
    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 106
    .local v2, "v2":D
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer$1;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;)Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v4, v5, :cond_3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    :goto_1
    return v4
.end method
