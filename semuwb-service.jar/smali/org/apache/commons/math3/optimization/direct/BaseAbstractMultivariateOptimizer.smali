.class public abstract Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.super Ljava/lang/Object;
.source "BaseAbstractMultivariateOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private function:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field private goal:Lorg/apache/commons/math3/optimization/GoalType;

.field private lowerBound:[D

.field private start:[D

.field private upperBound:[D


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 72
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 77
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    .line 78
    return-void
.end method

.method private checkParameters()V
    .locals 10

    .line 275
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->start:[D

    if-eqz v0, :cond_7

    .line 276
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->start:[D

    array-length v0, v0

    .line 277
    .local v0, "dim":I
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->lowerBound:[D

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->lowerBound:[D

    array-length v1, v1

    if-ne v1, v0, :cond_1

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 282
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->start:[D

    aget-wide v3, v3, v1

    .line 283
    .local v3, "v":D
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->lowerBound:[D

    aget-wide v5, v5, v1

    .line 284
    .local v5, "lo":D
    cmpg-double v7, v3, v5

    if-ltz v7, :cond_0

    .line 281
    .end local v3    # "v":D
    .end local v5    # "lo":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .restart local v3    # "v":D
    .restart local v5    # "lo":D
    :cond_0
    new-instance v7, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-direct {v7, v8, v9, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v7

    .line 279
    .end local v1    # "i":I
    .end local v3    # "v":D
    .end local v5    # "lo":D
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->lowerBound:[D

    array-length v2, v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 289
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->upperBound:[D

    if-eqz v1, :cond_5

    .line 290
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->upperBound:[D

    array-length v1, v1

    if-ne v1, v0, :cond_4

    .line 293
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 294
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->start:[D

    aget-wide v3, v3, v1

    .line 295
    .restart local v3    # "v":D
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->upperBound:[D

    aget-wide v5, v5, v1

    .line 296
    .local v5, "hi":D
    cmpl-double v7, v3, v5

    if-gtz v7, :cond_3

    .line 293
    .end local v3    # "v":D
    .end local v5    # "hi":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    .restart local v3    # "v":D
    .restart local v5    # "hi":D
    :cond_3
    new-instance v7, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-direct {v7, v8, v9, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v7

    .line 291
    .end local v1    # "i":I
    .end local v3    # "v":D
    .end local v5    # "hi":D
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->upperBound:[D

    array-length v2, v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 304
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->lowerBound:[D

    if-nez v1, :cond_6

    .line 305
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->lowerBound:[D

    .line 306
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 307
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->lowerBound:[D

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    aput-wide v3, v2, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 310
    .end local v1    # "i":I
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->upperBound:[D

    if-nez v1, :cond_7

    .line 311
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->upperBound:[D

    .line 312
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_7

    .line 313
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->upperBound:[D

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v3, v2, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 317
    .end local v0    # "dim":I
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method private varargs parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 6
    .param p1, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 221
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optimization/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 222
    .local v3, "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optimization/InitialGuess;

    if-eqz v4, :cond_0

    .line 223
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/InitialGuess;->getInitialGuess()[D

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->start:[D

    .line 224
    goto :goto_1

    .line 226
    :cond_0
    instance-of v4, v3, Lorg/apache/commons/math3/optimization/SimpleBounds;

    if-eqz v4, :cond_1

    .line 227
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optimization/SimpleBounds;

    .line 228
    .local v4, "bounds":Lorg/apache/commons/math3/optimization/SimpleBounds;
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/SimpleBounds;->getLower()[D

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->lowerBound:[D

    .line 229
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/SimpleBounds;->getUpper()[D

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->upperBound:[D

    .line 230
    nop

    .line 221
    .end local v3    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    .end local v4    # "bounds":Lorg/apache/commons/math3/optimization/SimpleBounds;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optimization/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected computeObjectiveValue([D)D
    .locals 3
    .param p1, "point"    # [D

    .line 105
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    nop

    .line 109
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v0

    return-wide v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method protected abstract doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 87
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optimization/GoalType;
    .locals 1

    .line 239
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->goal:Lorg/apache/commons/math3/optimization/GoalType;

    return-object v0
.end method

.method public getLowerBound()[D
    .locals 1

    .line 253
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->lowerBound:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->lowerBound:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 82
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getStartPoint()[D
    .locals 1

    .line 246
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->start:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->start:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    return-object v0
.end method

.method public getUpperBound()[D
    .locals 1

    .line 260
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->upperBound:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->upperBound:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 3
    .param p1, "maxEval"    # I
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "startPoint"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[D)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateFunction;, "TFUNC;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    new-instance v1, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v1, p4}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public varargs optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[",
            "Lorg/apache/commons/math3/optimization/OptimizationData;",
            ")",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateFunction;, "TFUNC;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 3
    .param p1, "maxEval"    # I
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "startPoint"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[D)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateFunction;, "TFUNC;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    new-instance v1, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v1, p4}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[",
            "Lorg/apache/commons/math3/optimization/OptimizationData;",
            ")",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;, "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateFunction;, "TFUNC;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 197
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 198
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    .line 199
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->goal:Lorg/apache/commons/math3/optimization/GoalType;

    .line 201
    invoke-direct {p0, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 203
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->checkParameters()V

    .line 205
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method
