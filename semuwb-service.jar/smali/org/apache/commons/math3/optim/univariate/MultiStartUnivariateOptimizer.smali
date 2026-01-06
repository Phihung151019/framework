.class public Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;
.super Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.source "MultiStartUnivariateOptimizer.java"


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomGenerator;

.field private maxEvalIndex:I

.field private optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

.field private optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

.field private searchIntervalIndex:I

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 78
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    .line 63
    iput v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    .line 80
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    .line 85
    iput p2, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->starts:I

    .line 86
    iput-object p3, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 87
    return-void

    .line 81
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method private sortPairs(Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V
    .locals 2
    .param p1, "goal"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;-><init>(Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 227
    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 18

    .line 146
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 147
    iget-object v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aget-object v2, v2, v0

    instance-of v2, v2, Lorg/apache/commons/math3/optim/MaxEval;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aput-object v3, v2, v0

    .line 149
    iput v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    .line 150
    goto :goto_1

    .line 152
    :cond_0
    iget-object v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aget-object v2, v2, v0

    instance-of v2, v2, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aput-object v3, v2, v0

    .line 154
    iput v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    .line 146
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_2
    iget v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 161
    iget v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    if-eq v0, v2, :cond_6

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "lastException":Ljava/lang/RuntimeException;
    iget v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->starts:I

    new-array v2, v2, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    iput-object v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    .line 167
    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    .line 169
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getMaxEvaluations()I

    move-result v4

    .line 170
    .local v4, "maxEval":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getMin()D

    move-result-wide v6

    .line 171
    .local v6, "min":D
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getMax()D

    move-result-wide v8

    .line 172
    .local v8, "max":D
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getStartValue()D

    move-result-wide v12

    .line 175
    .local v12, "startValue":D
    const/4 v5, 0x0

    move-object v14, v0

    move v15, v5

    .end local v0    # "lastException":Ljava/lang/RuntimeException;
    .local v14, "lastException":Ljava/lang/RuntimeException;
    .local v15, "i":I
    :goto_2
    iget v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->starts:I

    if-ge v15, v0, :cond_4

    .line 179
    :try_start_0
    iget-object v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    iget v5, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    new-instance v10, Lorg/apache/commons/math3/optim/MaxEval;

    iget v11, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    sub-int v11, v4, v11

    invoke-direct {v10, v11}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    aput-object v10, v0, v5

    .line 181
    if-nez v15, :cond_3

    move-wide v10, v12

    goto :goto_3

    :cond_3
    iget-object v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v10

    sub-double v16, v8, v6

    mul-double v10, v10, v16

    add-double/2addr v10, v6

    .line 184
    .local v10, "s":D
    :goto_3
    iget-object v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    iget v5, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    move/from16 v16, v5

    new-instance v5, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;-><init>(DDD)V

    aput-object v5, v0, v16

    .line 186
    iget-object v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    iget-object v5, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v16, v2

    :try_start_1
    iget-object v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v2

    aput-object v2, v0, v15
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    .end local v10    # "s":D
    goto :goto_5

    .line 187
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v16, v2

    .line 188
    .local v0, "mue":Ljava/lang/RuntimeException;
    :goto_4
    move-object v2, v0

    .line 189
    .end local v14    # "lastException":Ljava/lang/RuntimeException;
    .local v2, "lastException":Ljava/lang/RuntimeException;
    iget-object v5, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    aput-object v3, v5, v15

    move-object v14, v2

    .line 193
    .end local v0    # "mue":Ljava/lang/RuntimeException;
    .end local v2    # "lastException":Ljava/lang/RuntimeException;
    .restart local v14    # "lastException":Ljava/lang/RuntimeException;
    :goto_5
    iget v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    iget-object v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->getEvaluations()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    .line 175
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v16

    goto :goto_2

    :cond_4
    move/from16 v16, v2

    .line 196
    .end local v15    # "i":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->sortPairs(Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V

    .line 198
    iget-object v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    aget-object v0, v0, v16

    if-eqz v0, :cond_5

    .line 203
    iget-object v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    aget-object v0, v0, v16

    return-object v0

    .line 199
    :cond_5
    throw v14

    .line 162
    .end local v4    # "maxEval":I
    .end local v6    # "min":D
    .end local v8    # "max":D
    .end local v12    # "startValue":D
    .end local v14    # "lastException":Ljava/lang/RuntimeException;
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0

    .line 159
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 133
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    .line 135
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method
