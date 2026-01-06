.class public Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;
.super Ljava/lang/Object;
.source "UnivariateMultiStartOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomGenerator;

.field private maxEvaluations:I

.field private optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<",
            "TFUNC;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<",
            "TFUNC;>;I",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            ")V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    .local p1, "optimizer":Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<TFUNC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 80
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    .line 85
    iput p2, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->starts:I

    .line 86
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 87
    return-void

    .line 81
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 78
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method private sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V
    .locals 2
    .param p1, "goal"    # Lorg/apache/commons/math3/optimization/GoalType;

    .line 187
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;Lorg/apache/commons/math3/optimization/GoalType;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 202
    return-void
.end method


# virtual methods
.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    invoke-interface {v0}, Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 103
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    iget v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 98
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    iget v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->maxEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 3

    .line 134
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 14
    .param p1, "maxEval"    # I
    .param p3, "goal"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "min"    # D
    .param p6, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "DD)",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;, "TFUNC;"
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p6, p4

    mul-double/2addr v2, v0

    add-double v12, p4, v2

    move-object v4, p0

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v13}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 17
    .param p1, "maxEval"    # I
    .param p3, "goal"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "min"    # D
    .param p6, "max"    # D
    .param p8, "startValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "DDD)",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;, "TFUNC;"
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 153
    .local v0, "lastException":Ljava/lang/RuntimeException;
    iget v2, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->starts:I

    new-array v2, v2, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    iput-object v2, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    .line 154
    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    .line 157
    const/4 v3, 0x0

    move v4, v3

    move-object v3, v0

    .end local v0    # "lastException":Ljava/lang/RuntimeException;
    .local v3, "lastException":Ljava/lang/RuntimeException;
    .local v4, "i":I
    :goto_0
    iget v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->starts:I

    if-ge v4, v0, :cond_1

    .line 160
    if-nez v4, :cond_0

    move-wide/from16 v5, p8

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v5

    sub-double v7, p6, p4

    mul-double/2addr v5, v7

    add-double v5, p4, v5

    :goto_1
    move-wide v15, v5

    .line 161
    .local v15, "s":D
    iget-object v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    iget-object v7, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    iget v5, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    sub-int v8, p1, v5

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    invoke-interface/range {v7 .. v16}, Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v5

    aput-object v5, v0, v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v15    # "s":D
    goto :goto_2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "mue":Ljava/lang/RuntimeException;
    move-object v3, v0

    .line 164
    iget-object v5, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    const/4 v6, 0x0

    aput-object v6, v5, v4

    .line 168
    .end local v0    # "mue":Ljava/lang/RuntimeException;
    :goto_2
    iget v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    iget-object v5, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    invoke-interface {v5}, Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;->getEvaluations()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    .end local v4    # "i":I
    :cond_1
    move-object/from16 v10, p3

    invoke-direct {v1, v10}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V

    .line 173
    iget-object v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    aget-object v0, v0, v2

    return-object v0

    .line 174
    :cond_2
    throw v3
.end method
