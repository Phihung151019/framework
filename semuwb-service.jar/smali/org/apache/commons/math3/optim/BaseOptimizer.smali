.class public abstract Lorg/apache/commons/math3/optim/BaseOptimizer;
.super Ljava/lang/Object;
.source "BaseOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/BaseOptimizer$MaxIterCallback;,
        Lorg/apache/commons/math3/optim/BaseOptimizer$MaxEvalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;"
        }
    .end annotation
.end field

.field protected final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field protected final iterations:Lorg/apache/commons/math3/util/Incrementor;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<TPAIR;>;"
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optim/BaseOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;II)V

    .line 48
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;II)V
    .locals 3
    .param p2, "maxEval"    # I
    .param p3, "maxIter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;II)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<TPAIR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    .line 60
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    new-instance v1, Lorg/apache/commons/math3/optim/BaseOptimizer$MaxEvalCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/optim/BaseOptimizer$MaxEvalCallback;-><init>(Lorg/apache/commons/math3/optim/BaseOptimizer$1;)V

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 61
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    new-instance v1, Lorg/apache/commons/math3/optim/BaseOptimizer$MaxIterCallback;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/optim/BaseOptimizer$MaxIterCallback;-><init>(Lorg/apache/commons/math3/optim/BaseOptimizer$1;)V

    invoke-direct {v0, p3, v1}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    .line 62
    return-void
.end method


# virtual methods
.method protected abstract doOptimize()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPAIR;"
        }
    .end annotation
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 82
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getIterations()I
    .locals 1

    .line 103
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 70
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMaxIterations()I
    .locals 1

    .line 91
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method protected incrementEvaluationCount()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 192
    return-void
.end method

.method protected incrementIterationCount()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 203
    return-void
.end method

.method public optimize()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPAIR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->doOptimize()Ljava/lang/Object;

    move-result-object v0

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 151
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->doOptimize()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 6
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 219
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseOptimizer;, "Lorg/apache/commons/math3/optim/BaseOptimizer<TPAIR;>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 220
    .local v3, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optim/MaxEval;

    if-eqz v4, :cond_0

    .line 221
    iget-object v4, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    move-object v5, v3

    check-cast v5, Lorg/apache/commons/math3/optim/MaxEval;

    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/MaxEval;->getMaxEval()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 222
    goto :goto_1

    .line 224
    :cond_0
    instance-of v4, v3, Lorg/apache/commons/math3/optim/MaxIter;

    if-eqz v4, :cond_1

    .line 225
    iget-object v4, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    move-object v5, v3

    check-cast v5, Lorg/apache/commons/math3/optim/MaxIter;

    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/MaxIter;->getMaxIter()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 226
    nop

    .line 219
    .end local v3    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method
