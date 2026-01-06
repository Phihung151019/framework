.class public Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;
.super Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;
.source "BracketingNthOrderBrentSolverDFP.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;I)V
    .locals 0
    .param p1, "relativeAccuracy"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "absoluteAccuracy"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p3, "functionValueAccuracy"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "maximalOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;I)V

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic getAbsoluteAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->getAbsoluteAccuracy()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getAbsoluteAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 69
    invoke-super {p0}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->getAbsoluteAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public bridge synthetic getFunctionValueAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->getFunctionValueAccuracy()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionValueAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 87
    invoke-super {p0}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->getFunctionValueAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public bridge synthetic getRelativeAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->getRelativeAccuracy()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 78
    invoke-super {p0}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->getRelativeAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;
    .param p3, "min"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "max"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p5, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 109
    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    .end local p1    # "maxEval":I
    .end local p2    # "f":Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;
    .end local p3    # "min":Lorg/apache/commons/math3/dfp/Dfp;
    .end local p4    # "max":Lorg/apache/commons/math3/dfp/Dfp;
    .end local p5    # "allowedSolution":Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .local v3, "maxEval":I
    .local v4, "f":Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;
    .local v5, "min":Lorg/apache/commons/math3/dfp/Dfp;
    .local v6, "max":Lorg/apache/commons/math3/dfp/Dfp;
    .local v8, "allowedSolution":Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;
    .param p3, "min"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "max"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p5, "startValue"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p6, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 135
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 138
    new-instance v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;

    invoke-direct {v0, p0, p2}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;-><init>(Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;)V

    move-object v3, v0

    .line 147
    .local v3, "fieldF":Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;, "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<Lorg/apache/commons/math3/dfp/Dfp;>;"
    move-object v1, p0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "maxEval":I
    .end local p3    # "min":Lorg/apache/commons/math3/dfp/Dfp;
    .end local p4    # "max":Lorg/apache/commons/math3/dfp/Dfp;
    .end local p5    # "startValue":Lorg/apache/commons/math3/dfp/Dfp;
    .end local p6    # "allowedSolution":Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .local v2, "maxEval":I
    .local v4, "min":Lorg/apache/commons/math3/dfp/Dfp;
    .local v5, "max":Lorg/apache/commons/math3/dfp/Dfp;
    .local v6, "startValue":Lorg/apache/commons/math3/dfp/Dfp;
    .local v7, "allowedSolution":Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    return-object p1
.end method
