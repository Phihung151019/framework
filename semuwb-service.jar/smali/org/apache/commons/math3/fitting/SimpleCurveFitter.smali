.class public Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
.super Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.source "SimpleCurveFitter.java"


# instance fields
.field private final function:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field private final initialGuess:[D

.field private final maxIter:I


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V
    .locals 0
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .param p2, "initialGuess"    # [D
    .param p3, "maxIter"    # I

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->function:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    .line 51
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->initialGuess:[D

    .line 52
    iput p3, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->maxIter:I

    .line 53
    return-void
.end method

.method public static create(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
    .locals 2
    .param p0, "f"    # Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .param p1, "start"    # [D

    .line 71
    new-instance v0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;

    const v1, 0x7fffffff

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V

    return-object v0
.end method


# virtual methods
.method protected getProblem(Ljava/util/Collection;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    .line 100
    .local p1, "observations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 101
    .local v0, "len":I
    new-array v1, v0, [D

    .line 102
    .local v1, "target":[D
    new-array v2, v0, [D

    .line 104
    .local v2, "weights":[D
    const/4 v3, 0x0

    .line 105
    .local v3, "count":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 106
    .local v5, "obs":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    aput-wide v6, v1, v3

    .line 107
    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v6

    aput-wide v6, v2, v3

    .line 108
    nop

    .end local v5    # "obs":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    add-int/lit8 v3, v3, 0x1

    .line 109
    goto :goto_0

    .line 111
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    iget-object v5, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->function:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-direct {v4, v5, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V

    .line 116
    .local v4, "model":Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;
    new-instance v5, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    invoke-direct {v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;-><init>()V

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->maxIter:I

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->initialGuess:[D

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v5

    new-instance v6, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v6, v2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->weight(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->build()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v5

    return-object v5
.end method

.method public withMaxIterations(I)Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
    .locals 3
    .param p1, "newMaxIter"    # I

    .line 91
    new-instance v0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->function:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    iget-object v2, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->initialGuess:[D

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V

    return-object v0
.end method

.method public withStartPoint([D)Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
    .locals 4
    .param p1, "newStart"    # [D

    .line 80
    new-instance v0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->function:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iget v3, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->maxIter:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V

    return-object v0
.end method
