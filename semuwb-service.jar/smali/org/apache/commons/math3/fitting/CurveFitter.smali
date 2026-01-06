.class public Lorg/apache/commons/math3/fitting/CurveFitter;
.super Ljava/lang/Object;
.source "CurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final observations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V
    .locals 1
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    .line 65
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/fitting/CurveFitter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/fitting/CurveFitter;

    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addObservedPoint(DD)V
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 81
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "x":D
    .end local p3    # "y":D
    .local v3, "x":D
    .local v5, "y":D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/fitting/CurveFitter;->addObservedPoint(DDD)V

    .line 82
    return-void
.end method

.method public addObservedPoint(DDD)V
    .locals 8
    .param p1, "weight"    # D
    .param p3, "x"    # D
    .param p5, "y"    # D

    .line 94
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "weight":D
    .end local p3    # "x":D
    .end local p5    # "y":D
    .local v2, "weight":D
    .local v4, "x":D
    .local v6, "y":D
    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;-><init>(DDD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public addObservedPoint(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V
    .locals 1
    .param p1, "observed"    # Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 104
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public clearObservations()V
    .locals 1

    .line 121
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    return-void
.end method

.method public fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D
    .locals 8
    .param p1, "maxEval"    # I
    .param p3, "initialGuess"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;[D)[D"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 162
    .local v0, "target":[D
    iget-object v1, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    .line 163
    .local v1, "weights":[D
    const/4 v2, 0x0

    .line 164
    .local v2, "i":I
    iget-object v3, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 165
    .local v4, "point":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    aput-wide v5, v0, v2

    .line 166
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v5

    aput-wide v5, v1, v2

    .line 167
    nop

    .end local v4    # "point":Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    add-int/lit8 v2, v2, 0x1

    .line 168
    goto :goto_0

    .line 171
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;

    invoke-direct {v3, p0, p2}, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V

    .line 174
    .local v3, "model":Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>.TheoreticalValuesFunction;"
    iget-object v4, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    const/4 v5, 0x6

    new-array v5, v5, [Lorg/apache/commons/math3/optim/OptimizationData;

    new-instance v6, Lorg/apache/commons/math3/optim/MaxEval;

    invoke-direct {v6, p1}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->getModelFunctionJacobian()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;

    move-result-object v7

    aput-object v7, v5, v6

    new-instance v6, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;

    invoke-direct {v6, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;-><init>([D)V

    const/4 v7, 0x3

    aput-object v6, v5, v7

    new-instance v6, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    invoke-direct {v6, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;-><init>([D)V

    const/4 v7, 0x4

    aput-object v6, v5, v7

    new-instance v6, Lorg/apache/commons/math3/optim/InitialGuess;

    invoke-direct {v6, p3}, Lorg/apache/commons/math3/optim/InitialGuess;-><init>([D)V

    const/4 v7, 0x5

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v4

    .line 182
    .local v4, "optimum":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getPointRef()[D

    move-result-object v5

    return-object v5
.end method

.method public fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D
    .locals 1
    .param p2, "initialGuess"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[D)[D"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    .local p1, "f":Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;, "TT;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/fitting/CurveFitter;->fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v0

    return-object v0
.end method

.method public getObservations()[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .locals 2

    .line 114
    .local p0, "this":Lorg/apache/commons/math3/fitting/CurveFitter;, "Lorg/apache/commons/math3/fitting/CurveFitter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->observations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    return-object v0
.end method
