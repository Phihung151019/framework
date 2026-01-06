.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "AbstractUnivariateDifferentiableSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/UnivariateDifferentiableSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/UnivariateDifferentiableSolver;"
    }
.end annotation


# instance fields
.field private function:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# direct methods
.method protected constructor <init>(D)V
    .locals 0
    .param p1, "absoluteAccuracy"    # D

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(D)V

    .line 44
    return-void
.end method

.method protected constructor <init>(DDD)V
    .locals 0
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .line 56
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    .line 57
    return-void
.end method


# virtual methods
.method protected computeObjectiveValueAndDerivative(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .param p1, "point"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->incrementEvaluationCount()V

    .line 70
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->function:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-wide v5, p1

    .end local p1    # "point":D
    .local v5, "point":D
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 30
    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->setup(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DDD)V

    return-void
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DDD)V
    .locals 2
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D

    .line 79
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 80
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
    .local p3, "f":Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .local p4, "min":D
    .local p6, "max":D
    iput-object p3, p1, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->function:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    .line 81
    return-void
.end method
