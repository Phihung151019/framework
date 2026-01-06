.class public abstract Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseOptimizer;
.source "UnivariateOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/BaseOptimizer<",
        "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field private goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

.field private max:D

.field private min:D

.field private start:D


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected computeObjectiveValue(D)D
    .locals 2
    .param p1, "x"    # D

    .line 148
    invoke-super {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementEvaluationCount()V

    .line 149
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    return-object v0
.end method

.method public getMax()D
    .locals 2

    .line 134
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->max:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .line 128
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->min:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    .line 122
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->start:D

    return-wide v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 70
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 7
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 95
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 99
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 100
    .local v3, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    if-eqz v4, :cond_0

    .line 101
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    .line 102
    .local v4, "interval":Lorg/apache/commons/math3/optim/univariate/SearchInterval;
    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->getMin()D

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->min:D

    .line 103
    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->getMax()D

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->max:D

    .line 104
    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->getStartValue()D

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->start:D

    .line 105
    goto :goto_1

    .line 107
    .end local v4    # "interval":Lorg/apache/commons/math3/optim/univariate/SearchInterval;
    :cond_0
    instance-of v4, v3, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;

    if-eqz v4, :cond_1

    .line 108
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;->getObjectiveFunction()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 109
    goto :goto_1

    .line 111
    :cond_1
    instance-of v4, v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-eqz v4, :cond_2

    .line 112
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    iput-object v4, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    .line 113
    nop

    .line 99
    .end local v3    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_3
    return-void
.end method
