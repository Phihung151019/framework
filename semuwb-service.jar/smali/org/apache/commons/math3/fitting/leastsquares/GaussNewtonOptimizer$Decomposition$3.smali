.class final enum Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$3;
.super Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
.source "GaussNewtonOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$1;)V

    return-void
.end method


# virtual methods
.method protected solve(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "jacobian"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "residuals"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 113
    :try_start_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->access$100(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v0

    .line 115
    .local v0, "normalEquation":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealMatrix;

    move-object v3, v1

    .line 116
    .local v3, "normal":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector;

    .line 117
    .local v1, "jTr":Lorg/apache/commons/math3/linear/RealVector;
    new-instance v2, Lorg/apache/commons/math3/linear/CholeskyDecomposition;

    const-wide v4, 0x3da5fd7fe1796495L    # 1.0E-11

    const-wide v6, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;DD)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 121
    .end local v0    # "normalEquation":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;>;"
    .end local v1    # "jTr":Lorg/apache/commons/math3/linear/RealVector;
    .end local v3    # "normal":Lorg/apache/commons/math3/linear/RealMatrix;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_SOLVE_SINGULAR_PROBLEM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method
