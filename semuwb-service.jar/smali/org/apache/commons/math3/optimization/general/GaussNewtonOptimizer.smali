.class public Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.source "GaussNewtonOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final useLU:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useLU"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 88
    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .param p1, "useLU"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 99
    iput-boolean p1, p0, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->useLU:Z

    .line 100
    return-void
.end method


# virtual methods
.method public doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 35

    .line 105
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v2

    .line 109
    .local v2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    if-eqz v2, :cond_a

    .line 113
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getTarget()[D

    move-result-object v3

    .line 114
    .local v3, "targetValues":[D
    array-length v4, v3

    .line 116
    .local v4, "nR":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 118
    .local v5, "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    new-array v6, v4, [D

    .line 119
    .local v6, "residualsWeights":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 120
    invoke-interface {v5, v0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    aput-wide v7, v6, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getStartPoint()[D

    move-result-object v7

    .line 124
    .local v7, "currentPoint":[D
    array-length v8, v7

    .line 127
    .local v8, "nC":I
    const/4 v0, 0x0

    .line 128
    .local v0, "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    const/4 v9, 0x0

    .line 129
    .local v9, "iter":I
    const/4 v10, 0x0

    .local v10, "converged":Z
    :goto_1
    if-nez v10, :cond_9

    .line 130
    add-int/lit8 v9, v9, 0x1

    .line 133
    move-object v11, v0

    .line 135
    .local v11, "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeObjectiveValue([D)[D

    move-result-object v12

    .line 136
    .local v12, "currentObjective":[D
    invoke-virtual {v1, v12}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeResiduals([D)[D

    move-result-object v13

    .line 137
    .local v13, "currentResiduals":[D
    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v14

    .line 138
    .local v14, "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v15, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v15, v7, v12}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 141
    .end local v0    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .local v15, "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move-object/from16 v16, v3

    .end local v3    # "targetValues":[D
    .local v16, "targetValues":[D
    new-array v3, v8, [D

    .line 142
    .local v3, "b":[D
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v17, 0x1

    aput v8, v0, v17

    move-object/from16 v17, v5

    .end local v5    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v17, "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v5, 0x0

    aput v8, v0, v5

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [[D

    .line 143
    .local v5, "a":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v4, :cond_4

    .line 145
    invoke-interface {v14, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v18

    .line 146
    .local v18, "grad":[D
    aget-wide v19, v6, v0

    .line 147
    .local v19, "weight":D
    aget-wide v21, v13, v0

    .line 150
    .local v21, "residual":D
    mul-double v23, v19, v21

    .line 151
    .local v23, "wr":D
    const/16 v25, 0x0

    move/from16 v26, v0

    move/from16 v0, v25

    .local v0, "j":I
    .local v26, "i":I
    :goto_3
    if-ge v0, v8, :cond_1

    .line 152
    aget-wide v27, v3, v0

    aget-wide v29, v18, v0

    mul-double v29, v29, v23

    add-double v27, v27, v29

    aput-wide v27, v3, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 156
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_4
    if-ge v0, v8, :cond_3

    .line 157
    aget-object v25, v5, v0

    .line 158
    .local v25, "ak":[D
    aget-wide v27, v18, v0

    mul-double v27, v27, v19

    .line 159
    .local v27, "wgk":D
    const/16 v29, 0x0

    move/from16 v30, v0

    move/from16 v0, v29

    .local v0, "l":I
    .local v30, "k":I
    :goto_5
    if-ge v0, v8, :cond_2

    .line 160
    aget-wide v31, v25, v0

    aget-wide v33, v18, v0

    mul-double v33, v33, v27

    add-double v31, v31, v33

    aput-wide v31, v25, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 156
    .end local v0    # "l":I
    .end local v25    # "ak":[D
    .end local v27    # "wgk":D
    :cond_2
    add-int/lit8 v0, v30, 0x1

    .end local v30    # "k":I
    .local v0, "k":I
    goto :goto_4

    :cond_3
    move/from16 v30, v0

    .line 143
    .end local v0    # "k":I
    .end local v18    # "grad":[D
    .end local v19    # "weight":D
    .end local v21    # "residual":D
    .end local v23    # "wr":D
    add-int/lit8 v0, v26, 0x1

    .end local v26    # "i":I
    .local v0, "i":I
    goto :goto_2

    :cond_4
    move/from16 v26, v0

    .line 167
    .end local v0    # "i":I
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V
    :try_end_0
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_0 .. :try_end_0} :catch_3

    .line 168
    .local v0, "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    move/from16 v18, v4

    .end local v4    # "nR":I
    .local v18, "nR":I
    :try_start_1
    iget-boolean v4, v1, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->useLU:Z
    :try_end_1
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v4, :cond_5

    :try_start_2
    new-instance v4, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v4
    :try_end_2
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 176
    .end local v0    # "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    :catch_0
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_8

    .line 168
    .restart local v0    # "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_5
    :try_start_3
    new-instance v4, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v4

    .line 171
    .local v4, "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    :goto_6
    move-object/from16 v19, v0

    .end local v0    # "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v19, "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;
    :try_end_3
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "a":[[D
    .local v20, "a":[[D
    :try_start_4
    invoke-direct {v0, v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    .line 173
    .local v0, "dX":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    if-ge v5, v8, :cond_6

    .line 174
    aget-wide v21, v7, v5

    aget-wide v23, v0, v5

    add-double v21, v21, v23

    aput-wide v21, v7, v5
    :try_end_4
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_4 .. :try_end_4} :catch_1

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 178
    .end local v0    # "dX":[D
    .end local v4    # "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    .end local v5    # "i":I
    .end local v19    # "mA":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_6
    nop

    .line 181
    if-eqz v11, :cond_8

    .line 182
    invoke-interface {v2, v9, v11, v15}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 183
    .end local v10    # "converged":Z
    .local v0, "converged":Z
    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {v1, v13}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeCost([D)D

    move-result-wide v4

    iput-wide v4, v1, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->cost:D

    .line 186
    invoke-virtual {v15}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v4

    iput-object v4, v1, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->point:[D

    .line 187
    return-object v15

    .line 183
    :cond_7
    move v10, v0

    .line 190
    .end local v0    # "converged":Z
    .end local v3    # "b":[D
    .end local v11    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .end local v12    # "currentObjective":[D
    .end local v13    # "currentResiduals":[D
    .end local v14    # "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v20    # "a":[[D
    .restart local v10    # "converged":Z
    :cond_8
    move-object v0, v15

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_1

    .line 176
    .restart local v3    # "b":[D
    .restart local v11    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .restart local v12    # "currentObjective":[D
    .restart local v13    # "currentResiduals":[D
    .restart local v14    # "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v20    # "a":[[D
    :catch_1
    move-exception v0

    goto :goto_8

    .end local v20    # "a":[[D
    .local v5, "a":[[D
    :catch_2
    move-exception v0

    move-object/from16 v20, v5

    .end local v5    # "a":[[D
    .restart local v20    # "a":[[D
    goto :goto_8

    .end local v18    # "nR":I
    .end local v20    # "a":[[D
    .local v4, "nR":I
    .restart local v5    # "a":[[D
    :catch_3
    move-exception v0

    move/from16 v18, v4

    move-object/from16 v20, v5

    .line 177
    .end local v4    # "nR":I
    .end local v5    # "a":[[D
    .local v0, "e":Lorg/apache/commons/math3/linear/SingularMatrixException;
    .restart local v18    # "nR":I
    .restart local v20    # "a":[[D
    :goto_8
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_SOLVE_SINGULAR_PROBLEM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v4, v5, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 192
    .end local v10    # "converged":Z
    .end local v11    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .end local v12    # "currentObjective":[D
    .end local v13    # "currentResiduals":[D
    .end local v14    # "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v15    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .end local v16    # "targetValues":[D
    .end local v17    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v18    # "nR":I
    .end local v20    # "a":[[D
    .local v0, "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .local v3, "targetValues":[D
    .restart local v4    # "nR":I
    .local v5, "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    .line 110
    .end local v0    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .end local v3    # "targetValues":[D
    .end local v4    # "nR":I
    .end local v5    # "weightMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v6    # "residualsWeights":[D
    .end local v7    # "currentPoint":[D
    .end local v8    # "nC":I
    .end local v9    # "iter":I
    :cond_a
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method
