.class public Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;
.source "NonLinearConjugateGradientOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;,
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private initialStep:D

.field private point:[D

.field private final preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private final updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;)V
    .locals 1
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>()V

    new-instance v1, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 1
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
    .param p3, "lineSearchSolver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            ")V"
        }
    .end annotation

    .line 103
    .local p2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    new-instance v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V
    .locals 2
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
    .param p3, "lineSearchSolver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    .param p4, "preconditioner"    # Lorg/apache/commons/math3/optimization/general/Preconditioner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            "Lorg/apache/commons/math3/optimization/general/Preconditioner;",
            ")V"
        }
    .end annotation

    .line 121
    .local p2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 123
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    .line 124
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 125
    iput-object p4, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    .line 126
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    .line 127
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;

    .line 44
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    return-object v0
.end method

.method private findUpperBound(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 12
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "a"    # D
    .param p4, "h"    # D

    .line 250
    invoke-interface/range {p1 .. p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    .line 251
    .local v0, "yA":D
    move-wide v2, v0

    .line 252
    .local v2, "yB":D
    move-wide/from16 v4, p4

    .local v4, "step":D
    :goto_0
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1

    .line 253
    add-double v6, p2, v4

    .line 254
    .local v6, "b":D
    invoke-interface {p1, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    .line 255
    mul-double v8, v0, v2

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 256
    return-wide v6

    .line 252
    .end local v6    # "b":D
    :cond_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v8, v0, v2

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    goto :goto_0

    .line 259
    .end local v4    # "step":D
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_BRACKET_OPTIMUM_IN_LINE_SEARCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 31

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v6

    .line 151
    .local v6, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getStartPoint()[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    .line 152
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v7

    .line 153
    .local v7, "goal":Lorg/apache/commons/math3/optimization/GoalType;
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    array-length v8, v1

    .line 154
    .local v8, "n":I
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v1

    .line 155
    .local v1, "r":[D
    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v7, v2, :cond_0

    .line 156
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 157
    aget-wide v3, v1, v2

    neg-double v3, v3

    aput-wide v3, v1, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "i":I
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v2

    .line 163
    .local v2, "steepestDescent":[D
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 165
    .local v3, "searchDirection":[D
    const-wide/16 v4, 0x0

    .line 166
    .local v4, "delta":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_1

    .line 167
    aget-wide v10, v1, v9

    aget-wide v12, v3, v9

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 166
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 170
    .end local v9    # "i":I
    :cond_1
    const/4 v9, 0x0

    .line 171
    .local v9, "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    const/4 v10, 0x0

    .line 172
    .local v10, "iter":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getMaxEvaluations()I

    move-result v11

    move-object v12, v9

    move-object v9, v1

    move-object v1, v12

    move v12, v10

    move-object v10, v2

    move v2, v12

    move-wide v12, v4

    move v15, v11

    move-object v11, v3

    .line 174
    .end local v3    # "searchDirection":[D
    .end local v4    # "delta":D
    .local v1, "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    .local v2, "iter":I
    .local v9, "r":[D
    .local v10, "steepestDescent":[D
    .local v11, "searchDirection":[D
    .local v12, "delta":D
    .local v15, "maxEval":I
    :goto_2
    add-int/lit8 v14, v2, 0x1

    .line 176
    .end local v2    # "iter":I
    .local v14, "iter":I
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveValue([D)D

    move-result-wide v2

    .line 177
    .local v2, "objective":D
    move-object v4, v1

    .line 178
    .local v4, "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    new-instance v5, Lorg/apache/commons/math3/optimization/PointValuePair;

    move-object/from16 v16, v1

    .end local v1    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    .local v16, "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-direct {v5, v1, v2, v3}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    move-object v1, v5

    .line 179
    .end local v16    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    .restart local v1    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    if-eqz v4, :cond_2

    invoke-interface {v6, v14, v4, v1}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 181
    return-object v1

    .line 185
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;

    invoke-direct {v5, v0, v11}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;-><init>(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;[D)V

    move-object/from16 v16, v5

    .line 186
    .local v16, "lsf":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    move-wide/from16 v17, v2

    .end local v2    # "objective":D
    .local v17, "objective":D
    const-wide/16 v2, 0x0

    move-object/from16 v19, v4

    .end local v4    # "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    .local v19, "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    move-object/from16 v26, v1

    move-object/from16 v1, v16

    move-wide/from16 v23, v17

    move-object/from16 v25, v19

    .end local v16    # "lsf":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v17    # "objective":D
    .end local v19    # "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    .local v1, "lsf":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v23, "objective":D
    .local v25, "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    .local v26, "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->findUpperBound(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v19

    .line 190
    .end local v1    # "lsf":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .restart local v16    # "lsf":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v19, "uB":D
    move v2, v14

    .end local v14    # "iter":I
    .local v2, "iter":I
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const-wide/16 v17, 0x0

    const-wide v21, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-interface/range {v14 .. v22}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v3

    .line 191
    .local v3, "step":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v1}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getEvaluations()I

    move-result v1

    sub-int/2addr v15, v1

    .line 194
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 195
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    aget-wide v17, v5, v1

    aget-wide v21, v11, v1

    mul-double v21, v21, v3

    add-double v17, v17, v21

    aput-wide v17, v5, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 198
    .end local v1    # "i":I
    :cond_3
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v9

    .line 199
    sget-object v1, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v7, v1, :cond_5

    .line 200
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v8, :cond_4

    .line 201
    move v14, v1

    move v5, v2

    .end local v1    # "i":I
    .end local v2    # "iter":I
    .local v5, "iter":I
    .local v14, "i":I
    aget-wide v1, v9, v14

    neg-double v1, v1

    aput-wide v1, v9, v14

    .line 200
    add-int/lit8 v1, v14, 0x1

    move v2, v5

    .end local v14    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .end local v5    # "iter":I
    .restart local v2    # "iter":I
    :cond_4
    move v14, v1

    move v5, v2

    .end local v1    # "i":I
    .end local v2    # "iter":I
    .restart local v5    # "iter":I
    .restart local v14    # "i":I
    goto :goto_5

    .line 199
    .end local v5    # "iter":I
    .end local v14    # "i":I
    .restart local v2    # "iter":I
    :cond_5
    move v5, v2

    .line 206
    .end local v2    # "iter":I
    .restart local v5    # "iter":I
    :goto_5
    move-wide v1, v12

    .line 207
    .local v1, "deltaOld":D
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    move-wide/from16 v17, v1

    .end local v1    # "deltaOld":D
    .local v17, "deltaOld":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-interface {v14, v1, v9}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v1

    .line 208
    .local v1, "newSteepestDescent":[D
    const-wide/16 v12, 0x0

    .line 209
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v8, :cond_6

    .line 210
    aget-wide v21, v9, v2

    aget-wide v27, v1, v2

    mul-double v21, v21, v27

    add-double v12, v12, v21

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 214
    .end local v2    # "i":I
    :cond_6
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    sget-object v14, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->FLETCHER_REEVES:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    if-ne v2, v14, :cond_7

    .line 215
    div-double v21, v12, v17

    .local v21, "beta":D
    goto :goto_8

    .line 217
    .end local v21    # "beta":D
    :cond_7
    const-wide/16 v21, 0x0

    .line 218
    .local v21, "deltaMid":D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    array-length v14, v9

    if-ge v2, v14, :cond_8

    .line 219
    aget-wide v27, v9, v2

    aget-wide v29, v10, v2

    mul-double v27, v27, v29

    add-double v21, v21, v27

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 221
    .end local v2    # "i":I
    :cond_8
    sub-double v27, v12, v21

    div-double v27, v27, v17

    move-wide/from16 v21, v27

    .line 223
    .local v21, "beta":D
    :goto_8
    move-object v10, v1

    .line 226
    rem-int v14, v5, v8

    if-eqz v14, :cond_a

    const-wide/16 v27, 0x0

    cmpg-double v2, v21, v27

    if-gez v2, :cond_9

    goto :goto_a

    .line 232
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    if-ge v2, v8, :cond_b

    .line 233
    aget-wide v27, v10, v2

    aget-wide v29, v11, v2

    mul-double v29, v29, v21

    add-double v27, v27, v29

    aput-wide v27, v11, v2

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 229
    .end local v2    # "i":I
    :cond_a
    :goto_a
    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    move-object v11, v2

    .line 236
    .end local v1    # "newSteepestDescent":[D
    .end local v3    # "step":D
    .end local v16    # "lsf":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v17    # "deltaOld":D
    .end local v19    # "uB":D
    .end local v21    # "beta":D
    .end local v23    # "objective":D
    .end local v25    # "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_b
    move v2, v5

    move-object/from16 v1, v26

    goto/16 :goto_2
.end method

.method public setInitialStep(D)V
    .locals 2
    .param p1, "initialStep"    # D

    .line 140
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 141
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    goto :goto_0

    .line 143
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    .line 145
    :goto_0
    return-void
.end method
