.class public Lorg/apache/commons/math3/analysis/solvers/SecantSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "SecantSolver.java"


# static fields
.field protected static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 50
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "absoluteAccuracy"    # D

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 59
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 70
    return-void
.end method


# virtual methods
.method protected final doSolve()D
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 78
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getMin()D

    move-result-wide v1

    .line 79
    .local v1, "x0":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getMax()D

    move-result-wide v3

    .line 80
    .local v3, "x1":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 81
    .local v5, "f0":D
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    .line 86
    .local v7, "f1":D
    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-nez v11, :cond_0

    .line 87
    return-wide v1

    .line 89
    :cond_0
    cmpl-double v11, v7, v9

    if-nez v11, :cond_1

    .line 90
    return-wide v3

    .line 94
    :cond_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->verifyBracketing(DD)V

    .line 97
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getFunctionValueAccuracy()D

    move-result-wide v11

    .line 98
    .local v11, "ftol":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getAbsoluteAccuracy()D

    move-result-wide v13

    .line 99
    .local v13, "atol":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getRelativeAccuracy()D

    move-result-wide v15

    .line 104
    .local v15, "rtol":D
    :goto_0
    sub-double v17, v3, v1

    mul-double v17, v17, v7

    sub-double v19, v7, v5

    div-double v17, v17, v19

    move-wide/from16 v19, v9

    sub-double v9, v3, v17

    .line 105
    .local v9, "x":D
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->computeObjectiveValue(D)D

    move-result-wide v17

    .line 110
    .local v17, "fx":D
    cmpl-double v21, v17, v19

    if-nez v21, :cond_2

    .line 111
    return-wide v9

    .line 115
    :cond_2
    move-wide v1, v3

    .line 116
    move-wide v5, v7

    .line 117
    move-wide v3, v9

    .line 118
    move-wide/from16 v7, v17

    .line 123
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v21

    cmpg-double v21, v21, v11

    if-gtz v21, :cond_3

    .line 124
    return-wide v3

    .line 129
    :cond_3
    sub-double v21, v3, v1

    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v21

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v23

    move-wide/from16 v25, v1

    .end local v1    # "x0":D
    .local v25, "x0":D
    mul-double v0, v15, v23

    invoke-static {v0, v1, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    cmpg-double v0, v21, v0

    if-gez v0, :cond_4

    .line 130
    return-wide v3

    .line 132
    .end local v9    # "x":D
    .end local v17    # "fx":D
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v9, v19

    move-wide/from16 v1, v25

    goto :goto_0
.end method
