.class public Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
.super Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.source "PolynomialCurveFitter.java"


# static fields
.field private static final FUNCTION:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;


# instance fields
.field private final initialGuess:[D

.field private final maxIter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0
    .param p1, "initialGuess"    # [D
    .param p2, "maxIter"    # I

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

    .line 57
    iput p2, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->maxIter:I

    .line 58
    return-void
.end method

.method public static create(I)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
    .locals 3
    .param p0, "degree"    # I

    .line 73
    new-instance v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    add-int/lit8 v1, p0, 0x1

    new-array v1, v1, [D

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;-><init>([DI)V

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
    .local v3, "i":I
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

    sget-object v5, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v4, v5, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V

    .line 114
    .local v4, "model":Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;
    iget-object v5, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

    if-eqz v5, :cond_1

    .line 120
    new-instance v5, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    invoke-direct {v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;-><init>()V

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->maxIter:I

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

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

    .line 115
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v5
.end method

.method public withMaxIterations(I)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
    .locals 2
    .param p1, "newMaxIter"    # I

    .line 92
    new-instance v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;-><init>([DI)V

    return-object v0
.end method

.method public withStartPoint([D)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
    .locals 3
    .param p1, "newStart"    # [D

    .line 82
    new-instance v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iget v2, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->maxIter:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;-><init>([DI)V

    return-object v0
.end method
