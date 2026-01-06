.class public Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;
.source "LaguerreSolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# instance fields
.field private final complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;-><init>(D)V

    .line 55
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "absoluteAccuracy"    # D

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(D)V

    .line 48
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    .line 63
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(DD)V

    .line 48
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    .line 73
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 3
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .line 84
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(DDD)V

    .line 48
    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "relativeAccuracy":D
    .end local p3    # "absoluteAccuracy":D
    .end local p5    # "functionValueAccuracy":D
    .local v0, "functionValueAccuracy":D
    .local p2, "relativeAccuracy":D
    .local p4, "absoluteAccuracy":D
    new-instance p6, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 v2, 0x0

    invoke-direct {p6, p0, v2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object p6, p1, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    .line 85
    return-void
.end method


# virtual methods
.method public doSolve()D
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 95
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getMin()D

    move-result-wide v1

    .line 96
    .local v1, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getMax()D

    move-result-wide v3

    .line 97
    .local v3, "max":D
    move-wide v5, v3

    .end local v3    # "max":D
    .local v5, "max":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getStartValue()D

    move-result-wide v3

    .line 98
    .local v3, "initial":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getFunctionValueAccuracy()D

    move-result-wide v9

    .line 100
    .local v9, "functionValueAccuracy":D
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->verifySequence(DDD)V

    .line 103
    move-wide v11, v5

    .end local v5    # "max":D
    .local v11, "max":D
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 104
    .local v5, "yInitial":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_0

    .line 105
    return-wide v3

    .line 109
    :cond_0
    move-wide v7, v5

    .end local v5    # "yInitial":D
    .local v7, "yInitial":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 110
    .local v5, "yMin":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpg-double v13, v13, v9

    if-gtz v13, :cond_1

    .line 111
    return-wide v1

    .line 115
    :cond_1
    mul-double v13, v7, v5

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    .line 116
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->laguerre(DDDD)D

    move-result-wide v13

    move-wide/from16 v17, v1

    move-wide/from16 v19, v5

    .end local v1    # "min":D
    .end local v5    # "yMin":D
    .local v17, "min":D
    .local v19, "yMin":D
    return-wide v13

    .line 120
    .end local v17    # "min":D
    .end local v19    # "yMin":D
    .restart local v1    # "min":D
    .restart local v5    # "yMin":D
    :cond_2
    move-wide/from16 v17, v1

    move-wide/from16 v19, v5

    .end local v1    # "min":D
    .end local v5    # "yMin":D
    .restart local v17    # "min":D
    .restart local v19    # "yMin":D
    move-wide v5, v7

    .end local v7    # "yInitial":D
    .local v5, "yInitial":D
    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    .line 121
    .local v7, "yMax":D
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v9

    if-gtz v1, :cond_3

    .line 122
    return-wide v11

    .line 126
    :cond_3
    mul-double v1, v5, v7

    cmpg-double v1, v1, v15

    if-gez v1, :cond_4

    .line 127
    move-wide v1, v3

    move-wide v3, v11

    .end local v11    # "max":D
    .local v1, "initial":D
    .local v3, "max":D
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->laguerre(DDDD)D

    move-result-wide v11

    move-wide v13, v1

    move-wide v15, v5

    .end local v1    # "initial":D
    .end local v5    # "yInitial":D
    .local v13, "initial":D
    .local v15, "yInitial":D
    return-wide v11

    .line 130
    .end local v13    # "initial":D
    .end local v15    # "yInitial":D
    .local v3, "initial":D
    .restart local v5    # "yInitial":D
    .restart local v11    # "max":D
    :cond_4
    move-wide v13, v3

    move-wide v15, v5

    move-wide v3, v11

    .end local v5    # "yInitial":D
    .end local v11    # "max":D
    .local v3, "max":D
    .restart local v13    # "initial":D
    .restart local v15    # "yInitial":D
    new-instance v0, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-wide/from16 v1, v17

    move-wide/from16 v5, v19

    .end local v17    # "min":D
    .end local v19    # "yMin":D
    .local v1, "min":D
    .local v5, "yMin":D
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v0
.end method

.method public laguerre(DDDD)D
    .locals 16
    .param p1, "lo"    # D
    .param p3, "hi"    # D
    .param p5, "fLo"    # D
    .param p7, "fHi"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getCoefficients()[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 158
    .local v1, "c":[Lorg/apache/commons/math3/complex/Complex;
    new-instance v2, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double v5, p1, p3

    mul-double/2addr v5, v3

    const-wide/16 v3, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 159
    .local v2, "initial":Lorg/apache/commons/math3/complex/Complex;
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-virtual {v3, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v9

    .line 160
    .local v9, "z":Lorg/apache/commons/math3/complex/Complex;
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-virtual {v9}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    return-wide v3

    .line 163
    :cond_0
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 165
    .local v3, "r":D
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-virtual {v5, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v5

    .line 166
    .local v5, "root":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 167
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    aget-object v15, v5, v6

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    invoke-virtual/range {v10 .. v15}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    aget-object v7, v5, v6

    invoke-virtual {v7}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    .line 169
    goto :goto_1

    .line 166
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 172
    .end local v6    # "i":I
    :cond_2
    :goto_1
    return-wide v3
.end method

.method public solveAllComplex([DD)[Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .param p1, "coefficients"    # [D
    .param p2, "initial"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 197
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->solveAllComplex([DDI)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public solveAllComplex([DDI)[Lorg/apache/commons/math3/complex/Complex;
    .locals 9
    .param p1, "coefficients"    # [D
    .param p2, "initial"    # D
    .param p4, "maxEval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 222
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move-wide v7, p2

    move v1, p4

    .end local p2    # "initial":D
    .end local p4    # "maxEval":I
    .local v1, "maxEval":I
    .local v7, "initial":D
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    .line 227
    iget-object p2, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-static {p1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p3

    new-instance p4, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v2, 0x0

    invoke-direct {p4, v7, v8, v2, v3}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p2

    return-object p2
.end method

.method public solveComplex([DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .param p1, "coefficients"    # [D
    .param p2, "initial"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 252
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->solveComplex([DDI)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public solveComplex([DDI)Lorg/apache/commons/math3/complex/Complex;
    .locals 9
    .param p1, "coefficients"    # [D
    .param p2, "initial"    # D
    .param p4, "maxEval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 277
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move-wide v7, p2

    move v1, p4

    .end local p2    # "initial":D
    .end local p4    # "maxEval":I
    .local v1, "maxEval":I
    .local v7, "initial":D
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    .line 282
    iget-object p2, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-static {p1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p3

    new-instance p4, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v2, 0x0

    invoke-direct {p4, v7, v8, v2, v3}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p2

    return-object p2
.end method
