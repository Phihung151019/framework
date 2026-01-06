.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "SimplexOptimizer.java"


# instance fields
.field private simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .line 104
    new-instance v0, Lorg/apache/commons/math3/optim/SimpleValueChecker;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/SimpleValueChecker;-><init>(DD)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 97
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 219
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 215
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 12

    .line 127
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->checkParameters()V

    .line 131
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$1;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;)V

    .line 139
    .local v0, "evalFunc":Lorg/apache/commons/math3/analysis/MultivariateFunction;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 140
    .local v1, "isMinim":Z
    :goto_0
    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$2;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$2;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;Z)V

    .line 152
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getStartPoint()[D

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->build([D)V

    .line 153
    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v5, v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 155
    const/4 v5, 0x0

    .line 156
    .local v5, "previous":[Lorg/apache/commons/math3/optim/PointValuePair;
    const/4 v6, 0x0

    .line 157
    .local v6, "iteration":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v7

    .line 159
    .local v7, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getIterations()I

    move-result v8

    if-lez v8, :cond_3

    .line 160
    const/4 v8, 0x1

    .line 161
    .local v8, "converged":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    iget-object v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getSize()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 162
    aget-object v10, v5, v9

    .line 163
    .local v10, "prev":Lorg/apache/commons/math3/optim/PointValuePair;
    if-eqz v8, :cond_1

    iget-object v11, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v11

    invoke-interface {v7, v6, v10, v11}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v3

    goto :goto_3

    :cond_1
    move v11, v4

    :goto_3
    move v8, v11

    .line 161
    .end local v10    # "prev":Lorg/apache/commons/math3/optim/PointValuePair;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 166
    .end local v9    # "i":I
    :cond_2
    if-eqz v8, :cond_3

    .line 168
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v3

    return-object v3

    .line 173
    .end local v8    # "converged":Z
    :cond_3
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v5

    .line 174
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v8, v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->incrementIterationCount()V

    goto :goto_1
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 121
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 193
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 197
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 198
    .local v3, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    if-eqz v4, :cond_0

    .line 199
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    .line 202
    goto :goto_1

    .line 197
    .end local v3    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    :goto_1
    return-void
.end method
