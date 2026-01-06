.class public abstract Lorg/apache/commons/math3/optim/linear/LinearOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "LinearOptimizer.java"


# instance fields
.field private function:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

.field private linearConstraints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private nonNegative:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected getConstraints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->linearConstraints:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getFunction()Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->function:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    return-object v0
.end method

.method protected isRestrictedToNonNegative()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->nonNegative:Z

    return v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 94
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 112
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 116
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 117
    .local v3, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    if-eqz v4, :cond_0

    .line 118
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    iput-object v4, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->function:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    .line 119
    goto :goto_1

    .line 121
    :cond_0
    instance-of v4, v3, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;

    if-eqz v4, :cond_1

    .line 122
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;->getConstraints()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->linearConstraints:Ljava/util/Collection;

    .line 123
    goto :goto_1

    .line 125
    :cond_1
    instance-of v4, v3, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;

    if-eqz v4, :cond_2

    .line 126
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;->isRestrictedToNonNegative()Z

    move-result v4

    iput-boolean v4, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->nonNegative:Z

    .line 127
    nop

    .line 116
    .end local v3    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_3
    return-void
.end method
