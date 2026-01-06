.class public Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "SimplexOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 103
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .line 117
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>(DD)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 110
    return-void
.end method

.method private varargs parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 171
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optimization/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 172
    .local v3, "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    if-eqz v4, :cond_0

    .line 173
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    .line 174
    nop

    .line 171
    .end local v3    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optimization/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 12

    .line 182
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    if-eqz v0, :cond_4

    .line 188
    new-instance v0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;)V

    .line 196
    .local v0, "evalFunc":Lorg/apache/commons/math3/analysis/MultivariateFunction;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 197
    .local v1, "isMinim":Z
    :goto_0
    new-instance v2, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;-><init>(Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;Z)V

    .line 209
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->getStartPoint()[D

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->build([D)V

    .line 210
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v5, v0, v2}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 212
    const/4 v5, 0x0

    .line 213
    .local v5, "previous":[Lorg/apache/commons/math3/optimization/PointValuePair;
    const/4 v6, 0x0

    .line 214
    .local v6, "iteration":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v7

    .line 216
    .local v7, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    :goto_1
    if-lez v6, :cond_3

    .line 217
    const/4 v8, 0x1

    .line 218
    .local v8, "converged":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    iget-object v10, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v10}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getSize()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 219
    aget-object v10, v5, v9

    .line 220
    .local v10, "prev":Lorg/apache/commons/math3/optimization/PointValuePair;
    if-eqz v8, :cond_1

    iget-object v11, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v11

    invoke-interface {v7, v6, v10, v11}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v4

    goto :goto_3

    :cond_1
    move v11, v3

    :goto_3
    move v8, v11

    .line 218
    .end local v10    # "prev":Lorg/apache/commons/math3/optimization/PointValuePair;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 223
    .end local v9    # "i":I
    :cond_2
    if-eqz v8, :cond_3

    .line 225
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v3

    return-object v3

    .line 230
    .end local v8    # "converged":Z
    :cond_3
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v8}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoints()[Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v5

    .line 231
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v8, v0, v2}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 183
    .end local v0    # "evalFunc":Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .end local v1    # "isMinim":Z
    .end local v2    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    .end local v5    # "previous":[Lorg/apache/commons/math3/optimization/PointValuePair;
    .end local v6    # "iteration":I
    .end local v7    # "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 152
    invoke-direct {p0, p4}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public setSimplex(Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;)V
    .locals 2
    .param p1, "simplex"    # Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 131
    return-void
.end method
