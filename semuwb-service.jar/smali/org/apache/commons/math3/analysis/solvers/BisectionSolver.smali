.class public Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BisectionSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;-><init>(D)V

    .line 38
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "absoluteAccuracy"    # D

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 46
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 56
    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 64
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->getMin()D

    move-result-wide v1

    .line 65
    .local v1, "min":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->getMax()D

    move-result-wide v3

    .line 66
    .local v3, "max":D
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->verifyInterval(DD)V

    .line 67
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->getAbsoluteAccuracy()D

    move-result-wide v5

    .line 73
    .local v5, "absoluteAccuracy":D
    :cond_0
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide v7

    .line 74
    .local v7, "m":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->computeObjectiveValue(D)D

    move-result-wide v9

    .line 75
    .local v9, "fmin":D
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->computeObjectiveValue(D)D

    move-result-wide v11

    .line 77
    .local v11, "fm":D
    mul-double v13, v11, v9

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_1

    .line 79
    move-wide v1, v7

    goto :goto_0

    .line 82
    :cond_1
    move-wide v3, v7

    .line 85
    :goto_0
    sub-double v13, v3, v1

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpg-double v13, v13, v5

    if-gtz v13, :cond_0

    .line 86
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide v7

    .line 87
    return-wide v7
.end method
