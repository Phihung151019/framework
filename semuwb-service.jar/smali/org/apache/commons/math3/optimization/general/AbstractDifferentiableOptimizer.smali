.class public abstract Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "AbstractDifferentiableOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<",
        "Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected computeObjectiveGradient([D)[D
    .locals 1
    .param p1, "evaluationPoint"    # [D

    .line 60
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;->gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 38
    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 3
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "startPoint"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    new-instance v1, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v1, p4}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 85
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;-><init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;->gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method
