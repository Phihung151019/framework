.class public Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;
.source "NewtonRaphsonSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;-><init>(D)V

    .line 41
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "absoluteAccuracy"    # D

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;-><init>(D)V

    .line 49
    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;->getStartValue()D

    move-result-wide v0

    .line 78
    .local v0, "startValue":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;->getAbsoluteAccuracy()D

    move-result-wide v2

    .line 80
    .local v2, "absoluteAccuracy":D
    move-wide v4, v0

    .line 83
    .local v4, "x0":D
    :goto_0
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;->computeObjectiveValueAndDerivative(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v6

    .line 84
    .local v6, "y0":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v7

    const/4 v9, 0x1

    filled-new-array {v9}, [I

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v9

    div-double/2addr v7, v9

    sub-double v7, v4, v7

    .line 85
    .local v7, "x1":D
    sub-double v9, v7, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpg-double v9, v9, v2

    if-gtz v9, :cond_0

    .line 86
    return-wide v7

    .line 89
    :cond_0
    move-wide v4, v7

    .line 90
    .end local v6    # "y0":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    goto :goto_0
.end method

.method public bridge synthetic solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 32
    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;->solve(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public solve(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DD)D
    .locals 2
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 68
    invoke-static {p3, p4, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide v0

    invoke-super {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v0

    return-wide v0
.end method
