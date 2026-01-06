.class public abstract Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;
.source "JacobianMultivariateVectorOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private jacobian:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected computeJacobian([D)[[D
    .locals 1
    .param p1, "params"    # [D

    .line 64
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;->jacobian:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;->value([D)[[D

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 103
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 107
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 108
    .local v3, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;

    if-eqz v4, :cond_0

    .line 109
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;->getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;->jacobian:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    .line 112
    goto :goto_1

    .line 107
    .end local v3    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    :goto_1
    return-void
.end method
