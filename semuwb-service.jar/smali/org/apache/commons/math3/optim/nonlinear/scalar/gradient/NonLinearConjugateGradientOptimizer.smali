.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;
.source "NonLinearConjugateGradientOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$BracketingStep;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    }
.end annotation


# instance fields
.field private final line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

.field private final preconditioner:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

.field private final updateFormula:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 10
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    new-instance v9, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v5, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v7, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "updateFormula":Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .end local p2    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    .local v1, "updateFormula":Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .local v2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDD)V
    .locals 10
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .param p3, "relativeTolerance"    # D
    .param p5, "absoluteTolerance"    # D
    .param p7, "initialBracketingRange"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;DDD)V"
        }
    .end annotation

    .line 175
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    new-instance v9, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V
    .locals 9
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .param p3, "relativeTolerance"    # D
    .param p5, "absoluteTolerance"    # D
    .param p7, "initialBracketingRange"    # D
    .param p9, "preconditioner"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;DDD",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;",
            ")V"
        }
    .end annotation

    .line 227
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 229
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;

    .line 230
    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

    .line 231
    new-instance v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    .line 235
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 1
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .param p3, "lineSearchSolver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V
    .locals 10
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .param p3, "lineSearchSolver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    .param p4, "preconditioner"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-interface {p3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v3

    invoke-interface {p3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v5

    invoke-interface {p3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p4

    .end local p1    # "updateFormula":Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .end local p2    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    .end local p4    # "preconditioner":Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;
    .local v1, "updateFormula":Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .local v2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    .local v9, "preconditioner":Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    .line 204
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 410
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    .line 414
    return-void

    .line 412
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 28

    .line 250
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v1

    .line 251
    .local v1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 252
    .local v2, "point":[D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v3

    .line 253
    .local v3, "goal":Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    array-length v4, v2

    .line 254
    .local v4, "n":I
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v5

    .line 255
    .local v5, "r":[D
    sget-object v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v3, v6, :cond_0

    .line 256
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 257
    aget-wide v7, v5, v6

    neg-double v7, v7

    aput-wide v7, v5, v6

    .line 256
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 262
    .end local v6    # "i":I
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

    invoke-interface {v6, v2, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;->precondition([D[D)[D

    move-result-object v6

    .line 263
    .local v6, "steepestDescent":[D
    invoke-virtual {v6}, [D->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    .line 265
    .local v7, "searchDirection":[D
    const-wide/16 v8, 0x0

    .line 266
    .local v8, "delta":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v4, :cond_1

    .line 267
    aget-wide v11, v5, v10

    aget-wide v13, v7, v10

    mul-double/2addr v11, v13

    add-double/2addr v8, v11

    .line 266
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 270
    .end local v10    # "i":I
    :cond_1
    const/4 v10, 0x0

    .line 272
    .local v10, "current":Lorg/apache/commons/math3/optim/PointValuePair;
    :goto_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->incrementIterationCount()V

    .line 274
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->computeObjectiveValue([D)D

    move-result-wide v11

    .line 275
    .local v11, "objective":D
    move-object v13, v10

    .line 276
    .local v13, "previous":Lorg/apache/commons/math3/optim/PointValuePair;
    new-instance v14, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v14, v2, v11, v12}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    move-object v10, v14

    .line 277
    if-eqz v13, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getIterations()I

    move-result v14

    invoke-interface {v1, v14, v13, v10}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 279
    return-object v10

    .line 282
    :cond_2
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-virtual {v14, v2, v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v14

    .line 285
    .local v14, "step":D
    const/16 v16, 0x0

    move-object/from16 v17, v1

    move/from16 v1, v16

    .local v1, "i":I
    .local v17, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    :goto_3
    move-object/from16 v16, v5

    .end local v5    # "r":[D
    .local v16, "r":[D
    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 286
    aget-wide v18, v2, v1

    aget-wide v20, v7, v1

    mul-double v20, v20, v14

    add-double v18, v18, v20

    aput-wide v18, v2, v1

    .line 285
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v16

    goto :goto_3

    .line 289
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v5

    .line 290
    .end local v16    # "r":[D
    .restart local v5    # "r":[D
    sget-object v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v3, v1, :cond_5

    .line 291
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v4, :cond_4

    .line 292
    move-object/from16 v16, v6

    move-object/from16 v18, v7

    .end local v6    # "steepestDescent":[D
    .end local v7    # "searchDirection":[D
    .local v16, "steepestDescent":[D
    .local v18, "searchDirection":[D
    aget-wide v6, v5, v1

    neg-double v6, v6

    aput-wide v6, v5, v1

    .line 291
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    goto :goto_4

    .end local v16    # "steepestDescent":[D
    .end local v18    # "searchDirection":[D
    .restart local v6    # "steepestDescent":[D
    .restart local v7    # "searchDirection":[D
    :cond_4
    move-object/from16 v16, v6

    move-object/from16 v18, v7

    .end local v6    # "steepestDescent":[D
    .end local v7    # "searchDirection":[D
    .restart local v16    # "steepestDescent":[D
    .restart local v18    # "searchDirection":[D
    goto :goto_5

    .line 290
    .end local v1    # "i":I
    .end local v16    # "steepestDescent":[D
    .end local v18    # "searchDirection":[D
    .restart local v6    # "steepestDescent":[D
    .restart local v7    # "searchDirection":[D
    :cond_5
    move-object/from16 v16, v6

    move-object/from16 v18, v7

    .line 297
    .end local v6    # "steepestDescent":[D
    .end local v7    # "searchDirection":[D
    .restart local v16    # "steepestDescent":[D
    .restart local v18    # "searchDirection":[D
    :goto_5
    move-wide v6, v8

    .line 298
    .local v6, "deltaOld":D
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

    invoke-interface {v1, v2, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;->precondition([D[D)[D

    move-result-object v1

    .line 299
    .local v1, "newSteepestDescent":[D
    const-wide/16 v8, 0x0

    .line 300
    const/16 v19, 0x0

    move/from16 v27, v19

    move-object/from16 v19, v1

    move/from16 v1, v27

    .local v1, "i":I
    .local v19, "newSteepestDescent":[D
    :goto_6
    if-ge v1, v4, :cond_6

    .line 301
    aget-wide v20, v5, v1

    aget-wide v22, v19, v1

    mul-double v20, v20, v22

    add-double v8, v8, v20

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 305
    .end local v1    # "i":I
    :cond_6
    sget-object v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$1;->$SwitchMap$org$apache$commons$math3$optim$nonlinear$scalar$gradient$NonLinearConjugateGradientOptimizer$Formula:[I

    move-object/from16 v20, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;->ordinal()I

    move-result v1

    aget v1, v20, v1

    packed-switch v1, :pswitch_data_0

    .line 318
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 310
    :pswitch_0
    const-wide/16 v20, 0x0

    .line 311
    .local v20, "deltaMid":D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    array-length v0, v5

    if-ge v1, v0, :cond_7

    .line 312
    aget-wide v22, v5, v1

    aget-wide v24, v16, v1

    mul-double v22, v22, v24

    add-double v20, v20, v22

    .line 311
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    .line 314
    .end local v1    # "i":I
    :cond_7
    sub-double v0, v8, v20

    div-double/2addr v0, v6

    .line 315
    .local v0, "beta":D
    goto :goto_8

    .line 307
    .end local v0    # "beta":D
    .end local v20    # "deltaMid":D
    :pswitch_1
    div-double v0, v8, v6

    .line 308
    .restart local v0    # "beta":D
    nop

    .line 320
    :goto_8
    move-object/from16 v16, v19

    .line 323
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getIterations()I

    move-result v20

    rem-int v20, v20, v4

    if-eqz v20, :cond_a

    const-wide/16 v20, 0x0

    cmpg-double v20, v0, v20

    if-gez v20, :cond_8

    move-wide/from16 v21, v0

    goto :goto_a

    .line 329
    :cond_8
    const/16 v20, 0x0

    move-wide/from16 v21, v0

    move/from16 v0, v20

    .local v0, "i":I
    .local v21, "beta":D
    :goto_9
    if-ge v0, v4, :cond_9

    .line 330
    aget-wide v23, v16, v0

    aget-wide v25, v18, v0

    mul-double v25, v25, v21

    add-double v23, v23, v25

    aput-wide v23, v18, v0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    move-object/from16 v7, v18

    goto :goto_b

    .line 323
    .end local v21    # "beta":D
    .local v0, "beta":D
    :cond_a
    move-wide/from16 v21, v0

    .line 326
    .end local v0    # "beta":D
    .restart local v21    # "beta":D
    :goto_a
    invoke-virtual/range {v16 .. v16}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move-object v7, v0

    .line 333
    .end local v6    # "deltaOld":D
    .end local v11    # "objective":D
    .end local v13    # "previous":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v14    # "step":D
    .end local v18    # "searchDirection":[D
    .end local v19    # "newSteepestDescent":[D
    .end local v21    # "beta":D
    .restart local v7    # "searchDirection":[D
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v6, v16

    move-object/from16 v1, v17

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 244
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 0
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 342
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 344
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->checkParameters()V

    .line 345
    return-void
.end method
