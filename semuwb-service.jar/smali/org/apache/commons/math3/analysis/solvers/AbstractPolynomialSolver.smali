.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "AbstractPolynomialSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/PolynomialSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/PolynomialSolver;"
    }
.end annotation


# instance fields
.field private polynomialFunction:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;


# direct methods
.method protected constructor <init>(D)V
    .locals 0
    .param p1, "absoluteAccuracy"    # D

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(D)V

    .line 40
    return-void
.end method

.method protected constructor <init>(DD)V
    .locals 0
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DD)V

    .line 50
    return-void
.end method

.method protected constructor <init>(DDD)V
    .locals 0
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    .line 62
    return-void
.end method


# virtual methods
.method protected getCoefficients()[D
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->polynomialFunction:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->getCoefficients()[D

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 27
    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    return-void
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V
    .locals 2
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D

    .line 70
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 71
    move-wide v0, p7

    move-wide p6, p5

    move-wide p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "maxEval":I
    .end local p5    # "max":D
    .end local p7    # "startValue":D
    .local v0, "startValue":D
    .local p2, "maxEval":I
    .local p3, "f":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .local p4, "min":D
    .local p6, "max":D
    iput-object p3, p1, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->polynomialFunction:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 72
    return-void
.end method
