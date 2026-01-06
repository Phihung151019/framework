.class public Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.source "GaussNewtonOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final useLU:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .param p1, "useLU"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 78
    iput-boolean p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->useLU:Z

    .line 79
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    return-void

    .line 180
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 34

    .line 84
    move-object/from16 v1, p0

    invoke-direct {v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->checkParameters()V

    .line 86
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v2

    .line 90
    .local v2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    if-eqz v2, :cond_a

    .line 94
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getTarget()[D

    move-result-object v3

    .line 95
    .local v3, "targetValues":[D
    array-length v4, v3

    .line 97
    .local v4, "nR":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 99
    .local v5, "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    new-array v6, v4, [D

    .line 100
    .local v6, "residualsWeights":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 101
    invoke-interface {v5, v0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    aput-wide v7, v6, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getStartPoint()[D

    move-result-object v7

    .line 105
    .local v7, "currentPoint":[D
    array-length v8, v7

    .line 108
    .local v8, "nC":I
    const/4 v0, 0x0

    .line 109
    .local v0, "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    const/4 v9, 0x0

    .local v9, "converged":Z
    :goto_1
    if-nez v9, :cond_9

    .line 110
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->incrementIterationCount()V

    .line 113
    move-object v10, v0

    .line 115
    .local v10, "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeObjectiveValue([D)[D

    move-result-object v11

    .line 116
    .local v11, "currentObjective":[D
    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeResiduals([D)[D

    move-result-object v12

    .line 117
    .local v12, "currentResiduals":[D
    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v13

    .line 118
    .local v13, "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v14, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v14, v7, v11}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 121
    .end local v0    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .local v14, "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    new-array v15, v8, [D

    .line 122
    .local v15, "b":[D
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v16, 0x1

    aput v8, v0, v16

    move-object/from16 v16, v3

    .end local v3    # "targetValues":[D
    .local v16, "targetValues":[D
    const/4 v3, 0x0

    aput v8, v0, v3

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [[D

    .line 123
    .local v3, "a":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v4, :cond_4

    .line 125
    invoke-interface {v13, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v17

    .line 126
    .local v17, "grad":[D
    aget-wide v18, v6, v0

    .line 127
    .local v18, "weight":D
    aget-wide v20, v12, v0

    .line 130
    .local v20, "residual":D
    mul-double v22, v18, v20

    .line 131
    .local v22, "wr":D
    const/16 v24, 0x0

    move/from16 v25, v0

    move/from16 v0, v24

    .local v0, "j":I
    .local v25, "i":I
    :goto_3
    if-ge v0, v8, :cond_1

    .line 132
    aget-wide v26, v15, v0

    aget-wide v28, v17, v0

    mul-double v28, v28, v22

    add-double v26, v26, v28

    aput-wide v26, v15, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 136
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_4
    if-ge v0, v8, :cond_3

    .line 137
    aget-object v24, v3, v0

    .line 138
    .local v24, "ak":[D
    aget-wide v26, v17, v0

    mul-double v26, v26, v18

    .line 139
    .local v26, "wgk":D
    const/16 v28, 0x0

    move/from16 v29, v0

    move/from16 v0, v28

    .local v0, "l":I
    .local v29, "k":I
    :goto_5
    if-ge v0, v8, :cond_2

    .line 140
    aget-wide v30, v24, v0

    aget-wide v32, v17, v0

    mul-double v32, v32, v26

    add-double v30, v30, v32

    aput-wide v30, v24, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 136
    .end local v0    # "l":I
    .end local v24    # "ak":[D
    .end local v26    # "wgk":D
    :cond_2
    add-int/lit8 v0, v29, 0x1

    .end local v29    # "k":I
    .local v0, "k":I
    goto :goto_4

    :cond_3
    move/from16 v29, v0

    .line 123
    .end local v0    # "k":I
    .end local v17    # "grad":[D
    .end local v18    # "weight":D
    .end local v20    # "residual":D
    .end local v22    # "wr":D
    add-int/lit8 v0, v25, 0x1

    .end local v25    # "i":I
    .local v0, "i":I
    goto :goto_2

    :cond_4
    move/from16 v25, v0

    .line 146
    .end local v0    # "i":I
    if-eqz v10, :cond_6

    .line 147
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getIterations()I

    move-result v0

    invoke-interface {v2, v0, v10, v14}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 148
    .end local v9    # "converged":Z
    .local v0, "converged":Z
    if-eqz v0, :cond_5

    .line 149
    move/from16 v17, v4

    move-object/from16 v18, v5

    .end local v4    # "nR":I
    .end local v5    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v17, "nR":I
    .local v18, "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {v1, v12}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeCost([D)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->setCost(D)V

    .line 150
    return-object v14

    .line 148
    .end local v17    # "nR":I
    .end local v18    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v4    # "nR":I
    .restart local v5    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_5
    move/from16 v17, v4

    move-object/from16 v18, v5

    .end local v4    # "nR":I
    .end local v5    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v17    # "nR":I
    .restart local v18    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    move v9, v0

    goto :goto_6

    .line 146
    .end local v0    # "converged":Z
    .end local v17    # "nR":I
    .end local v18    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v4    # "nR":I
    .restart local v5    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v9    # "converged":Z
    :cond_6
    move/from16 v17, v4

    move-object/from16 v18, v5

    .line 156
    .end local v4    # "nR":I
    .end local v5    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v17    # "nR":I
    .restart local v18    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    :goto_6
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    .line 157
    .local v0, "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-boolean v4, v1, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->useLU:Z

    if-eqz v4, :cond_7

    new-instance v4, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v4

    goto :goto_7

    :cond_7
    new-instance v4, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v4

    .line 160
    .local v4, "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    :goto_7
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v5, v15, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    .line 162
    .local v1, "dX":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    if-ge v5, v8, :cond_8

    .line 163
    aget-wide v19, v7, v5

    aget-wide v21, v1, v5

    add-double v19, v19, v21

    aput-wide v19, v7, v5
    :try_end_0
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 167
    .end local v0    # "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v1    # "dX":[D
    .end local v4    # "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    .end local v5    # "i":I
    :cond_8
    nop

    .line 168
    .end local v3    # "a":[[D
    .end local v10    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .end local v11    # "currentObjective":[D
    .end local v12    # "currentResiduals":[D
    .end local v13    # "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v15    # "b":[D
    move-object/from16 v1, p0

    move-object v0, v14

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    goto/16 :goto_1

    .line 165
    .restart local v3    # "a":[[D
    .restart local v10    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .restart local v11    # "currentObjective":[D
    .restart local v12    # "currentResiduals":[D
    .restart local v13    # "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v15    # "b":[D
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lorg/apache/commons/math3/linear/SingularMatrixException;
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_SOLVE_SINGULAR_PROBLEM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v1, v4, v5}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 170
    .end local v9    # "converged":Z
    .end local v10    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .end local v11    # "currentObjective":[D
    .end local v12    # "currentResiduals":[D
    .end local v13    # "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v14    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .end local v15    # "b":[D
    .end local v16    # "targetValues":[D
    .end local v17    # "nR":I
    .end local v18    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v0, "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .local v3, "targetValues":[D
    .local v4, "nR":I
    .local v5, "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    .line 91
    .end local v0    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .end local v3    # "targetValues":[D
    .end local v4    # "nR":I
    .end local v5    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v6    # "residualsWeights":[D
    .end local v7    # "currentPoint":[D
    .end local v8    # "nC":I
    :cond_a
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method
