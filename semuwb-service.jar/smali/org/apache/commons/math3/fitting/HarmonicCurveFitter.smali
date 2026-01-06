.class public Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
.super Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.source "HarmonicCurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;
    }
.end annotation


# static fields
.field private static final FUNCTION:Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;


# instance fields
.field private final initialGuess:[D

.field private final maxIter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0
    .param p1, "initialGuess"    # [D
    .param p2, "maxIter"    # I

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    .line 67
    iput p2, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->maxIter:I

    .line 68
    return-void
.end method

.method public static create()Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
    .locals 3

    .line 82
    new-instance v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;-><init>([DI)V

    return-object v0
.end method


# virtual methods
.method protected getProblem(Ljava/util/Collection;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    .line 109
    .local p1, "observations":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/fitting/WeightedObservedPoint;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 110
    .local v0, "len":I
    new-array v1, v0, [D

    .line 111
    .local v1, "target":[D
    new-array v2, v0, [D

    .line 113
    .local v2, "weights":[D
    const/4 v3, 0x0

    .line 114
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

    .line 115
    .local v5, "obs":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    aput-wide v6, v1, v3

    .line 116
    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v6

    aput-wide v6, v2, v3

    .line 117
    nop

    .end local v5    # "obs":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    add-int/lit8 v3, v3, 0x1

    .line 118
    goto :goto_0

    .line 120
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    sget-object v5, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    invoke-direct {v4, v5, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V

    .line 124
    .local v4, "model":Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;
    iget-object v5, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    goto :goto_1

    :cond_1
    new-instance v5, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;

    invoke-direct {v5, p1}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->guess()[D

    move-result-object v5

    .line 131
    .local v5, "startPoint":[D
    :goto_1
    new-instance v6, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    invoke-direct {v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;-><init>()V

    const v7, 0x7fffffff

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v6

    iget v7, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->maxIter:I

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v6

    new-instance v7, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v7, v2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->weight(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->build()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v6

    return-object v6
.end method

.method public withMaxIterations(I)Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
    .locals 2
    .param p1, "newMaxIter"    # I

    .line 101
    new-instance v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;-><init>([DI)V

    return-object v0
.end method

.method public withStartPoint([D)Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
    .locals 3
    .param p1, "newStart"    # [D

    .line 91
    new-instance v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iget v2, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->maxIter:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;-><init>([DI)V

    return-object v0
.end method
