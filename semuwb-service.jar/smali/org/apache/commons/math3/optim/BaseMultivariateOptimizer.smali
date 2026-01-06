.class public abstract Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseOptimizer;
.source "BaseMultivariateOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/optim/BaseOptimizer<",
        "TPAIR;>;"
    }
.end annotation


# instance fields
.field private lowerBound:[D

.field private start:[D

.field private upperBound:[D


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<TPAIR;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 48
    return-void
.end method

.method private checkParameters()V
    .locals 10

    .line 127
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    array-length v0, v0

    .line 129
    .local v0, "dim":I
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    array-length v1, v1

    if-ne v1, v0, :cond_1

    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 134
    iget-object v3, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    aget-wide v3, v3, v1

    .line 135
    .local v3, "v":D
    iget-object v5, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    aget-wide v5, v5, v1

    .line 136
    .local v5, "lo":D
    cmpg-double v7, v3, v5

    if-ltz v7, :cond_0

    .line 133
    .end local v3    # "v":D
    .end local v5    # "lo":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
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

    .line 131
    .end local v1    # "i":I
    .end local v3    # "v":D
    .end local v5    # "lo":D
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v2, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    array-length v2, v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 141
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    if-eqz v1, :cond_5

    .line 142
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    array-length v1, v1

    if-ne v1, v0, :cond_4

    .line 145
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 146
    iget-object v3, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    aget-wide v3, v3, v1

    .line 147
    .restart local v3    # "v":D
    iget-object v5, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    aget-wide v5, v5, v1

    .line 148
    .local v5, "hi":D
    cmpl-double v7, v3, v5

    if-gtz v7, :cond_3

    .line 145
    .end local v3    # "v":D
    .end local v5    # "hi":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
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

    .line 143
    .end local v1    # "i":I
    .end local v3    # "v":D
    .end local v5    # "hi":D
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v2, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    array-length v2, v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 154
    .end local v0    # "dim":I
    :cond_5
    return-void
.end method


# virtual methods
.method public getLowerBound()[D
    .locals 1

    .line 114
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    return-object v0
.end method

.method public getStartPoint()[D
    .locals 1

    .line 108
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    return-object v0
.end method

.method public getUpperBound()[D
    .locals 1

    .line 120
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    return-object v0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/optim/OptimizationData;",
            ")TPAIR;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 6
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 81
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 85
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 86
    .local v3, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optim/InitialGuess;

    if-eqz v4, :cond_0

    .line 87
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/InitialGuess;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/InitialGuess;->getInitialGuess()[D

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    .line 88
    goto :goto_1

    .line 90
    :cond_0
    instance-of v4, v3, Lorg/apache/commons/math3/optim/SimpleBounds;

    if-eqz v4, :cond_1

    .line 91
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/SimpleBounds;

    .line 92
    .local v4, "bounds":Lorg/apache/commons/math3/optim/SimpleBounds;
    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/SimpleBounds;->getLower()[D

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    .line 93
    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/SimpleBounds;->getUpper()[D

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    .line 94
    nop

    .line 85
    .end local v3    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    .end local v4    # "bounds":Lorg/apache/commons/math3/optim/SimpleBounds;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->checkParameters()V

    .line 100
    return-void
.end method
