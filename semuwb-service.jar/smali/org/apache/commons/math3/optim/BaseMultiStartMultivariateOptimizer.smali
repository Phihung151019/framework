.class public abstract Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.source "BaseMultiStartMultivariateOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<",
        "TPAIR;>;"
    }
.end annotation


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

.field private initialGuessIndex:I

.field private maxEvalIndex:I

.field private optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

.field private final optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<",
            "TPAIR;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 2
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomVectorGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<",
            "TPAIR;>;I",
            "Lorg/apache/commons/math3/random/RandomVectorGenerator;",
            ")V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<TPAIR;>;"
    .local p1, "optimizer":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    .line 83
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 87
    iput-object p1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;

    .line 88
    iput p2, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->starts:I

    .line 89
    iput-object p3, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    .line 90
    return-void

    .line 84
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method protected abstract clear()V
.end method

.method protected doOptimize()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPAIR;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<TPAIR;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 146
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/apache/commons/math3/optim/MaxEval;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aput-object v2, v1, v0

    .line 148
    iput v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    .line 150
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/apache/commons/math3/optim/InitialGuess;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aput-object v2, v1, v0

    .line 152
    iput v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    .line 145
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 159
    iget v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    if-eq v0, v1, :cond_c

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "lastException":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->clear()V

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getMaxEvaluations()I

    move-result v2

    .line 168
    .local v2, "maxEval":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getLowerBound()[D

    move-result-object v3

    .line 169
    .local v3, "min":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getUpperBound()[D

    move-result-object v4

    .line 170
    .local v4, "max":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getStartPoint()[D

    move-result-object v5

    .line 173
    .local v5, "startPoint":[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v7, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->starts:I

    if-ge v6, v7, :cond_a

    .line 177
    :try_start_0
    iget-object v7, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    iget v8, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    new-instance v9, Lorg/apache/commons/math3/optim/MaxEval;

    iget v10, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    sub-int v10, v2, v10

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    aput-object v9, v7, v8

    .line 179
    const/4 v7, 0x0

    .line 180
    .local v7, "s":[D
    if-nez v6, :cond_3

    .line 181
    move-object v7, v5

    goto :goto_4

    .line 183
    :cond_3
    const/4 v8, 0x0

    .line 184
    .local v8, "attempts":I
    :goto_2
    if-nez v7, :cond_9

    .line 185
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "attempts":I
    .local v9, "attempts":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getMaxEvaluations()I

    move-result v10

    if-ge v8, v10, :cond_8

    .line 188
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    invoke-interface {v8}, Lorg/apache/commons/math3/random/RandomVectorGenerator;->nextVector()[D

    move-result-object v8

    .line 189
    .end local v7    # "s":[D
    .local v8, "s":[D
    const/4 v7, 0x0

    move-object v14, v8

    move v8, v7

    move-object v7, v14

    .restart local v7    # "s":[D
    .local v8, "k":I
    :goto_3
    if-eqz v7, :cond_7

    array-length v10, v7

    if-ge v8, v10, :cond_7

    .line 190
    if-eqz v3, :cond_4

    aget-wide v10, v7, v8

    aget-wide v12, v3, v8

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    aget-wide v10, v7, v8

    aget-wide v12, v4, v8

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    .line 192
    :cond_5
    const/4 v7, 0x0

    .line 189
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v8    # "k":I
    :cond_7
    move v8, v9

    goto :goto_2

    .line 186
    :cond_8
    new-instance v8, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getMaxEvaluations()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    .end local v0    # "lastException":Ljava/lang/RuntimeException;
    .end local v2    # "maxEval":I
    .end local v3    # "min":[D
    .end local v4    # "max":[D
    .end local v5    # "startPoint":[D
    .end local v6    # "i":I
    .end local p0    # "this":Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<TPAIR;>;"
    throw v8

    .line 197
    .end local v9    # "attempts":I
    .restart local v0    # "lastException":Ljava/lang/RuntimeException;
    .restart local v2    # "maxEval":I
    .restart local v3    # "min":[D
    .restart local v4    # "max":[D
    .restart local v5    # "startPoint":[D
    .restart local v6    # "i":I
    .restart local p0    # "this":Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<TPAIR;>;"
    :cond_9
    :goto_4
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    iget v9, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    new-instance v10, Lorg/apache/commons/math3/optim/InitialGuess;

    invoke-direct {v10, v7}, Lorg/apache/commons/math3/optim/InitialGuess;-><init>([D)V

    aput-object v10, v8, v9

    .line 199
    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;

    iget-object v9, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object v8

    .line 200
    .local v8, "result":Ljava/lang/Object;, "TPAIR;"
    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->store(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v7    # "s":[D
    .end local v8    # "result":Ljava/lang/Object;, "TPAIR;"
    goto :goto_5

    .line 201
    :catch_0
    move-exception v7

    .line 202
    .local v7, "mue":Ljava/lang/RuntimeException;
    move-object v0, v7

    .line 206
    .end local v7    # "mue":Ljava/lang/RuntimeException;
    :goto_5
    iget v7, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    iget-object v8, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;

    invoke-virtual {v8}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getEvaluations()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    .line 173
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 209
    .end local v6    # "i":I
    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getOptima()[Ljava/lang/Object;

    move-result-object v6

    .line 210
    .local v6, "optima":[Ljava/lang/Object;, "[TPAIR;"
    array-length v7, v6

    if-eqz v7, :cond_b

    .line 216
    aget-object v1, v6, v1

    return-object v1

    .line 212
    :cond_b
    throw v0

    .line 160
    .end local v0    # "lastException":Ljava/lang/RuntimeException;
    .end local v2    # "maxEval":I
    .end local v3    # "min":[D
    .end local v4    # "max":[D
    .end local v5    # "startPoint":[D
    .end local v6    # "optima":[Ljava/lang/Object;, "[TPAIR;"
    :cond_c
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0

    .line 157
    :cond_d
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 95
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<TPAIR;>;"
    iget v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    return v0
.end method

.method public abstract getOptima()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TPAIR;"
        }
    .end annotation
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

    .line 132
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<TPAIR;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    .line 134
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract store(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPAIR;)V"
        }
    .end annotation
.end method
