.class public Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.source "LevenbergMarquardtOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TWO_EPS:D


# instance fields
.field private beta:[D

.field private final costRelativeTolerance:D

.field private diagR:[D

.field private final initialStepBoundFactor:D

.field private jacNorm:[D

.field private lmDir:[D

.field private lmPar:D

.field private final orthoTolerance:D

.field private final parRelativeTolerance:D

.field private permutation:[I

.field private final qrRankingThreshold:D

.field private rank:I

.field private solvedCols:I

.field private weightedJacobian:[[D

.field private weightedResidual:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 120
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 168
    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    .line 169
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11
    .param p1, "costRelativeTolerance"    # D
    .param p3, "parRelativeTolerance"    # D
    .param p5, "orthoTolerance"    # D

    .line 247
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    .line 250
    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1
    .param p1, "initialStepBoundFactor"    # D
    .param p3, "costRelativeTolerance"    # D
    .param p5, "parRelativeTolerance"    # D
    .param p7, "orthoTolerance"    # D
    .param p9, "threshold"    # D

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 281
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 282
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 283
    iput-wide p5, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 284
    iput-wide p7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 285
    iput-wide p9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    .line 286
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V
    .locals 0
    .param p1, "initialStepBoundFactor"    # D
    .param p4, "costRelativeTolerance"    # D
    .param p6, "parRelativeTolerance"    # D
    .param p8, "orthoTolerance"    # D
    .param p10, "threshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .line 218
    .local p3, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 219
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 220
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 221
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 222
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 223
    iput-wide p10, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    .line 224
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    .local v3, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V

    .line 188
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 956
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    .line 960
    return-void

    .line 958
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private determineLMDirection([D[D[D[D)V
    .locals 29
    .param p1, "qy"    # [D
    .param p2, "diag"    # [D
    .param p3, "lmDiag"    # [D
    .param p4, "work"    # [D

    .line 736
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_1

    .line 737
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    .line 738
    .local v3, "pj":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "i":I
    :goto_1
    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v5, :cond_0

    .line 739
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v5, v5, v4

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v6, v6, v2

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v4

    aget-wide v6, v6, v7

    aput-wide v6, v5, v3

    .line 738
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 741
    .end local v4    # "i":I
    :cond_0
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v5, v5, v3

    aput-wide v5, v4, v2

    .line 742
    aget-wide v4, p1, v2

    aput-wide v4, p4, v2

    .line 736
    .end local v3    # "pj":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 746
    .end local v2    # "j":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_7

    .line 750
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    .line 751
    .restart local v3    # "pj":I
    aget-wide v6, p2, v3

    .line 752
    .local v6, "dpj":D
    cmpl-double v8, v6, v4

    if-eqz v8, :cond_2

    .line 753
    add-int/lit8 v8, v2, 0x1

    array-length v9, v1

    invoke-static {v1, v8, v9, v4, v5}, Ljava/util/Arrays;->fill([DIID)V

    .line 755
    :cond_2
    aput-wide v6, v1, v2

    .line 760
    const-wide/16 v8, 0x0

    .line 761
    .local v8, "qtbpj":D
    move v10, v2

    .local v10, "k":I
    :goto_3
    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v10, v11, :cond_6

    .line 762
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v10

    .line 766
    .local v11, "pk":I
    aget-wide v12, v1, v10

    cmpl-double v12, v12, v4

    if-eqz v12, :cond_5

    .line 770
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v12, v12, v10

    aget-wide v12, v12, v11

    .line 771
    .local v12, "rkk":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    aget-wide v16, v1, v10

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    cmpg-double v14, v14, v16

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-gez v14, :cond_3

    .line 772
    aget-wide v17, v1, v10

    div-double v17, v12, v17

    .line 773
    .local v17, "cotan":D
    mul-double v19, v17, v17

    add-double v19, v19, v15

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v19

    div-double v15, v15, v19

    .line 774
    .local v15, "sin":D
    mul-double v17, v17, v15

    .line 775
    .local v17, "cos":D
    move-wide v14, v15

    goto :goto_4

    .line 776
    .end local v15    # "sin":D
    .end local v17    # "cos":D
    :cond_3
    aget-wide v17, v1, v10

    div-double v17, v17, v12

    .line 777
    .local v17, "tan":D
    mul-double v19, v17, v17

    add-double v19, v19, v15

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v19

    div-double v14, v15, v19

    .line 778
    .local v14, "cos":D
    mul-double v19, v14, v17

    move-wide/from16 v17, v14

    move-wide/from16 v14, v19

    .line 783
    .local v14, "sin":D
    .local v17, "cos":D
    :goto_4
    move-wide/from16 v19, v4

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v10

    mul-double v21, v17, v12

    aget-wide v23, v1, v10

    mul-double v23, v23, v14

    add-double v21, v21, v23

    aput-wide v21, v4, v11

    .line 784
    aget-wide v4, p4, v10

    mul-double v4, v4, v17

    mul-double v21, v14, v8

    add-double v4, v4, v21

    .line 785
    .local v4, "temp":D
    move/from16 v16, v2

    .end local v2    # "j":I
    .local v16, "j":I
    neg-double v1, v14

    aget-wide v21, p4, v10

    mul-double v1, v1, v21

    mul-double v21, v17, v8

    add-double v1, v1, v21

    .line 786
    .end local v8    # "qtbpj":D
    .local v1, "qtbpj":D
    aput-wide v4, p4, v10

    .line 789
    add-int/lit8 v8, v10, 0x1

    .local v8, "i":I
    :goto_5
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v8, v9, :cond_4

    .line 790
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v8

    aget-wide v21, v9, v11

    .line 791
    .local v21, "rik":D
    mul-double v23, v17, v21

    aget-wide v25, p3, v8

    mul-double v25, v25, v14

    add-double v23, v23, v25

    .line 792
    .local v23, "temp2":D
    move-wide/from16 v25, v1

    .end local v1    # "qtbpj":D
    .local v25, "qtbpj":D
    neg-double v1, v14

    mul-double v1, v1, v21

    aget-wide v27, p3, v8

    mul-double v27, v27, v17

    add-double v1, v1, v27

    aput-wide v1, p3, v8

    .line 793
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v8

    aput-wide v23, v1, v11

    .line 789
    .end local v21    # "rik":D
    .end local v23    # "temp2":D
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v1, v25

    goto :goto_5

    .end local v25    # "qtbpj":D
    .restart local v1    # "qtbpj":D
    :cond_4
    move-wide/from16 v25, v1

    .end local v1    # "qtbpj":D
    .restart local v25    # "qtbpj":D
    move-wide/from16 v8, v25

    goto :goto_6

    .line 766
    .end local v4    # "temp":D
    .end local v12    # "rkk":D
    .end local v14    # "sin":D
    .end local v16    # "j":I
    .end local v17    # "cos":D
    .end local v25    # "qtbpj":D
    .restart local v2    # "j":I
    .local v8, "qtbpj":D
    :cond_5
    move/from16 v16, v2

    move-wide/from16 v19, v4

    .line 761
    .end local v2    # "j":I
    .end local v11    # "pk":I
    .restart local v16    # "j":I
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p3

    move/from16 v2, v16

    move-wide/from16 v4, v19

    goto/16 :goto_3

    .end local v16    # "j":I
    .restart local v2    # "j":I
    :cond_6
    move/from16 v16, v2

    .line 800
    .end local v2    # "j":I
    .end local v10    # "k":I
    .restart local v16    # "j":I
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v16

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v16

    aget-wide v1, v1, v2

    aput-wide v1, p3, v16

    .line 801
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v16

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v16

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v4, v4, v16

    aput-wide v4, v1, v2

    .line 746
    .end local v3    # "pj":I
    .end local v6    # "dpj":D
    .end local v8    # "qtbpj":D
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v1, p3

    .end local v16    # "j":I
    .restart local v2    # "j":I
    goto/16 :goto_2

    :cond_7
    move/from16 v16, v2

    move-wide/from16 v19, v4

    .line 806
    .end local v2    # "j":I
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 807
    .local v1, "nSing":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_7
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_a

    .line 808
    aget-wide v3, p3, v2

    cmpl-double v3, v3, v19

    if-nez v3, :cond_8

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ne v1, v3, :cond_8

    .line 809
    move v1, v2

    .line 811
    :cond_8
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v3, :cond_9

    .line 812
    aput-wide v19, p4, v2

    .line 807
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 815
    .end local v2    # "j":I
    :cond_a
    if-lez v1, :cond_c

    .line 816
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "j":I
    :goto_8
    if-ltz v2, :cond_c

    .line 817
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    .line 818
    .restart local v3    # "pj":I
    const-wide/16 v4, 0x0

    .line 819
    .local v4, "sum":D
    add-int/lit8 v6, v2, 0x1

    .local v6, "i":I
    :goto_9
    if-ge v6, v1, :cond_b

    .line 820
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v7, v7, v3

    aget-wide v9, p4, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 819
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 822
    .end local v6    # "i":I
    :cond_b
    aget-wide v6, p4, v2

    sub-double/2addr v6, v4

    aget-wide v8, p3, v2

    div-double/2addr v6, v8

    aput-wide v6, p4, v2

    .line 816
    .end local v3    # "pj":I
    .end local v4    # "sum":D
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 827
    .end local v2    # "j":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_a
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    array-length v3, v3

    if-ge v2, v3, :cond_d

    .line 828
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v2

    aget-wide v5, p4, v2

    aput-wide v5, v3, v4

    .line 827
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 830
    .end local v2    # "j":I
    :cond_d
    return-void
.end method

.method private determineLMParameter([DD[D[D[D[D)V
    .locals 39
    .param p1, "qy"    # [D
    .param p2, "delta"    # D
    .param p4, "diag"    # [D
    .param p5, "work1"    # [D
    .param p6, "work2"    # [D
    .param p7, "work3"    # [D

    .line 564
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    .line 568
    .local v7, "nC":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    if-ge v8, v9, :cond_0

    .line 569
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v8

    aget-wide v11, v1, v8

    aput-wide v11, v9, v10

    .line 568
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 571
    .end local v8    # "j":I
    :cond_0
    iget v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    .restart local v8    # "j":I
    :goto_1
    const-wide/16 v9, 0x0

    if-ge v8, v7, :cond_1

    .line 572
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v12, v12, v8

    aput-wide v9, v11, v12

    .line 571
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 574
    .end local v8    # "j":I
    :cond_1
    iget v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    add-int/lit8 v8, v8, -0x1

    .local v8, "k":I
    :goto_2
    if-ltz v8, :cond_3

    .line 575
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v8

    .line 576
    .local v11, "pk":I
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v12, v12, v11

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v14, v14, v11

    div-double/2addr v12, v14

    .line 577
    .local v12, "ypk":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v8, :cond_2

    .line 578
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v14

    aget-wide v18, v15, v9

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v14

    aget-wide v20, v10, v11

    mul-double v20, v20, v12

    sub-double v18, v18, v20

    aput-wide v18, v15, v9

    .line 577
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v9, 0x0

    goto :goto_3

    .line 580
    .end local v14    # "i":I
    :cond_2
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aput-wide v12, v9, v11

    .line 574
    .end local v11    # "pk":I
    .end local v12    # "ypk":D
    add-int/lit8 v8, v8, -0x1

    const-wide/16 v9, 0x0

    goto :goto_2

    .line 585
    .end local v8    # "k":I
    :cond_3
    const-wide/16 v8, 0x0

    .line 586
    .local v8, "dxNorm":D
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v10, v11, :cond_4

    .line 587
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v10

    .line 588
    .local v11, "pj":I
    aget-wide v12, p4, v11

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v14, v14, v11

    mul-double/2addr v12, v14

    .line 589
    .local v12, "s":D
    aput-wide v12, v4, v11

    .line 590
    mul-double v14, v12, v12

    add-double/2addr v8, v14

    .line 586
    .end local v11    # "pj":I
    .end local v12    # "s":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 592
    .end local v10    # "j":I
    :cond_4
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 593
    sub-double v10, v8, v2

    .line 594
    .local v10, "fp":D
    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double v14, v2, v12

    cmpg-double v14, v10, v14

    if-gtz v14, :cond_5

    .line 595
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 596
    return-void

    .line 603
    :cond_5
    const-wide/16 v14, 0x0

    .line 604
    .local v14, "parl":D
    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ne v12, v13, :cond_9

    .line 605
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_5
    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v12, v13, :cond_6

    .line 606
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v12

    .line 607
    .local v13, "pj":I
    aget-wide v20, v4, v13

    aget-wide v22, p4, v13

    div-double v22, v22, v8

    mul-double v20, v20, v22

    aput-wide v20, v4, v13

    .line 605
    .end local v13    # "pj":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 609
    .end local v12    # "j":I
    :cond_6
    const-wide/16 v12, 0x0

    .line 610
    .local v12, "sum2":D
    const/16 v20, 0x0

    move/from16 v38, v20

    move/from16 v20, v7

    move/from16 v7, v38

    .local v7, "j":I
    .local v20, "nC":I
    :goto_6
    move-wide/from16 v21, v8

    .end local v8    # "dxNorm":D
    .local v21, "dxNorm":D
    iget v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v7, v8, :cond_8

    .line 611
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v7

    .line 612
    .local v8, "pj":I
    const-wide/16 v23, 0x0

    .line 613
    .local v23, "sum":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v9, v7, :cond_7

    .line 614
    move/from16 v25, v7

    .end local v7    # "j":I
    .local v25, "j":I
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v9

    aget-wide v26, v7, v8

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v9

    aget-wide v28, v4, v7

    mul-double v26, v26, v28

    add-double v23, v23, v26

    .line 613
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v25

    goto :goto_7

    .end local v25    # "j":I
    .restart local v7    # "j":I
    :cond_7
    move/from16 v25, v7

    .line 616
    .end local v7    # "j":I
    .end local v9    # "i":I
    .restart local v25    # "j":I
    aget-wide v26, v4, v8

    sub-double v26, v26, v23

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v28, v7, v8

    div-double v26, v26, v28

    .line 617
    .local v26, "s":D
    aput-wide v26, v4, v8

    .line 618
    mul-double v28, v26, v26

    add-double v12, v12, v28

    .line 610
    .end local v8    # "pj":I
    .end local v23    # "sum":D
    .end local v26    # "s":D
    add-int/lit8 v7, v25, 0x1

    move-wide/from16 v8, v21

    .end local v25    # "j":I
    .restart local v7    # "j":I
    goto :goto_6

    :cond_8
    move/from16 v25, v7

    .line 620
    .end local v7    # "j":I
    mul-double v7, v2, v12

    div-double v14, v10, v7

    goto :goto_8

    .line 604
    .end local v12    # "sum2":D
    .end local v20    # "nC":I
    .end local v21    # "dxNorm":D
    .local v7, "nC":I
    .local v8, "dxNorm":D
    :cond_9
    move/from16 v20, v7

    move-wide/from16 v21, v8

    .line 624
    .end local v7    # "nC":I
    .end local v8    # "dxNorm":D
    .restart local v20    # "nC":I
    .restart local v21    # "dxNorm":D
    :goto_8
    const-wide/16 v7, 0x0

    .line 625
    .local v7, "sum2":D
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_9
    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v12, :cond_b

    .line 626
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v12, v12, v9

    .line 627
    .local v12, "pj":I
    const-wide/16 v23, 0x0

    .line 628
    .restart local v23    # "sum":D
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a
    if-gt v13, v9, :cond_a

    .line 629
    move-wide/from16 v25, v7

    .end local v7    # "sum2":D
    .local v25, "sum2":D
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v13

    aget-wide v7, v7, v12

    aget-wide v27, v1, v13

    mul-double v7, v7, v27

    add-double v23, v23, v7

    .line 628
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v7, v25

    goto :goto_a

    .end local v25    # "sum2":D
    .restart local v7    # "sum2":D
    :cond_a
    move-wide/from16 v25, v7

    .line 631
    .end local v7    # "sum2":D
    .end local v13    # "i":I
    .restart local v25    # "sum2":D
    aget-wide v7, p4, v12

    div-double v23, v23, v7

    .line 632
    mul-double v7, v23, v23

    add-double v7, v25, v7

    .line 625
    .end local v12    # "pj":I
    .end local v23    # "sum":D
    .end local v25    # "sum2":D
    .restart local v7    # "sum2":D
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_b
    move-wide/from16 v25, v7

    .line 634
    .end local v7    # "sum2":D
    .end local v9    # "j":I
    .restart local v25    # "sum2":D
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 635
    .local v7, "gNorm":D
    div-double v12, v7, v2

    .line 636
    .local v12, "paru":D
    const-wide/16 v16, 0x0

    cmpl-double v9, v12, v16

    if-nez v9, :cond_c

    .line 637
    sget-wide v23, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-wide/from16 v27, v7

    const-wide v7, 0x3fb999999999999aL    # 0.1

    .end local v7    # "gNorm":D
    .local v27, "gNorm":D
    invoke-static {v2, v3, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v29

    div-double v12, v23, v29

    goto :goto_b

    .line 636
    .end local v27    # "gNorm":D
    .restart local v7    # "gNorm":D
    :cond_c
    move-wide/from16 v27, v7

    .line 642
    .end local v7    # "gNorm":D
    .restart local v27    # "gNorm":D
    :goto_b
    iget-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v7, v8, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    invoke-static {v12, v13, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 643
    iget-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    const-wide/16 v16, 0x0

    cmpl-double v7, v7, v16

    if-nez v7, :cond_d

    .line 644
    div-double v7, v27, v21

    iput-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 647
    :cond_d
    const/16 v7, 0xa

    move-wide/from16 v8, v21

    .end local v21    # "dxNorm":D
    .local v7, "countdown":I
    .restart local v8    # "dxNorm":D
    :goto_c
    if-ltz v7, :cond_19

    .line 650
    iget-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    const-wide/16 v16, 0x0

    cmpl-double v2, v2, v16

    if-nez v2, :cond_e

    .line 651
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v21, 0x3f50624dd2f1a9fcL    # 0.001

    move/from16 v23, v7

    move-wide/from16 v29, v8

    .end local v7    # "countdown":I
    .end local v8    # "dxNorm":D
    .local v23, "countdown":I
    .local v29, "dxNorm":D
    mul-double v7, v12, v21

    invoke-static {v2, v3, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_d

    .line 650
    .end local v23    # "countdown":I
    .end local v29    # "dxNorm":D
    .restart local v7    # "countdown":I
    .restart local v8    # "dxNorm":D
    :cond_e
    move/from16 v23, v7

    move-wide/from16 v29, v8

    .line 653
    .end local v7    # "countdown":I
    .end local v8    # "dxNorm":D
    .restart local v23    # "countdown":I
    .restart local v29    # "dxNorm":D
    :goto_d
    iget-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 654
    .local v2, "sPar":D
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_e
    iget v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v7, v8, :cond_f

    .line 655
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v7

    .line 656
    .local v8, "pj":I
    aget-wide v21, p4, v8

    mul-double v21, v21, v2

    aput-wide v21, v4, v8

    .line 654
    .end local v8    # "pj":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 658
    .end local v7    # "j":I
    :cond_f
    invoke-direct {v0, v1, v4, v5, v6}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[D[D)V

    .line 660
    const-wide/16 v7, 0x0

    .line 661
    .end local v29    # "dxNorm":D
    .local v7, "dxNorm":D
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_f
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v1, :cond_10

    .line 662
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v9

    .line 663
    .local v1, "pj":I
    aget-wide v21, p4, v1

    move/from16 v24, v1

    .end local v1    # "pj":I
    .local v24, "pj":I
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v29, v1, v24

    mul-double v21, v21, v29

    .line 664
    .local v21, "s":D
    aput-wide v21, v6, v24

    .line 665
    mul-double v29, v21, v21

    add-double v7, v7, v29

    .line 661
    .end local v21    # "s":D
    .end local v24    # "pj":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_f

    .line 667
    .end local v9    # "j":I
    :cond_10
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 668
    .end local v7    # "dxNorm":D
    .local v8, "dxNorm":D
    move-wide/from16 v21, v10

    .line 669
    .local v21, "previousFP":D
    sub-double v10, v8, p2

    .line 673
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v29

    const-wide v18, 0x3fb999999999999aL    # 0.1

    mul-double v31, p2, v18

    cmpg-double v1, v29, v31

    if-lez v1, :cond_18

    const-wide/16 v16, 0x0

    cmpl-double v1, v14, v16

    if-nez v1, :cond_11

    cmpg-double v1, v10, v21

    if-gtz v1, :cond_11

    cmpg-double v1, v21, v16

    if-gez v1, :cond_11

    move-wide/from16 v32, v2

    goto/16 :goto_15

    .line 679
    :cond_11
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v7, :cond_12

    .line 680
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v1

    .line 681
    .local v7, "pj":I
    aget-wide v29, v6, v7

    aget-wide v31, p4, v7

    mul-double v29, v29, v31

    div-double v29, v29, v8

    aput-wide v29, v4, v7

    .line 679
    .end local v7    # "pj":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 683
    .end local v1    # "j":I
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_11
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v7, :cond_14

    .line 684
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v1

    .line 685
    .restart local v7    # "pj":I
    aget-wide v29, v4, v7

    aget-wide v31, v5, v1

    div-double v29, v29, v31

    aput-wide v29, v4, v7

    .line 686
    aget-wide v29, v4, v7

    .line 687
    .local v29, "tmp":D
    add-int/lit8 v24, v1, 0x1

    move/from16 v31, v1

    move/from16 v1, v24

    .local v1, "i":I
    .local v31, "j":I
    :goto_12
    move-wide/from16 v32, v2

    .end local v2    # "sPar":D
    .local v32, "sPar":D
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_13

    .line 688
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    aget-wide v34, v4, v2

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v3, v3, v1

    aget-wide v36, v3, v7

    mul-double v36, v36, v29

    sub-double v34, v34, v36

    aput-wide v34, v4, v2

    .line 687
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v2, v32

    goto :goto_12

    .line 683
    .end local v1    # "i":I
    .end local v7    # "pj":I
    .end local v29    # "tmp":D
    :cond_13
    add-int/lit8 v1, v31, 0x1

    move-wide/from16 v2, v32

    .end local v31    # "j":I
    .local v1, "j":I
    goto :goto_11

    .end local v32    # "sPar":D
    .restart local v2    # "sPar":D
    :cond_14
    move/from16 v31, v1

    move-wide/from16 v32, v2

    .line 691
    .end local v1    # "j":I
    .end local v2    # "sPar":D
    .restart local v32    # "sPar":D
    const-wide/16 v1, 0x0

    .line 692
    .end local v25    # "sum2":D
    .local v1, "sum2":D
    const/4 v3, 0x0

    move-wide/from16 v25, v1

    .end local v1    # "sum2":D
    .local v3, "j":I
    .restart local v25    # "sum2":D
    :goto_13
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v1, :cond_15

    .line 693
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v3

    aget-wide v1, v4, v1

    .line 694
    .local v1, "s":D
    mul-double v29, v1, v1

    add-double v25, v25, v29

    .line 692
    .end local v1    # "s":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 696
    .end local v3    # "j":I
    :cond_15
    mul-double v1, p2, v25

    div-double v1, v10, v1

    .line 699
    .local v1, "correction":D
    const-wide/16 v16, 0x0

    cmpl-double v3, v10, v16

    if-lez v3, :cond_16

    .line 700
    move-wide/from16 v29, v1

    .end local v1    # "correction":D
    .local v29, "correction":D
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v14, v15, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    move-wide v14, v1

    .end local v14    # "parl":D
    .local v1, "parl":D
    goto :goto_14

    .line 701
    .end local v29    # "correction":D
    .local v1, "correction":D
    .restart local v14    # "parl":D
    :cond_16
    move-wide/from16 v29, v1

    .end local v1    # "correction":D
    .restart local v29    # "correction":D
    cmpg-double v1, v10, v16

    if-gez v1, :cond_17

    .line 702
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v12, v13, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    move-wide v12, v1

    .line 706
    :cond_17
    :goto_14
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    add-double v1, v1, v29

    invoke-static {v14, v15, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 647
    .end local v21    # "previousFP":D
    .end local v29    # "correction":D
    .end local v32    # "sPar":D
    add-int/lit8 v7, v23, -0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .end local v23    # "countdown":I
    .local v7, "countdown":I
    goto/16 :goto_c

    .line 673
    .end local v7    # "countdown":I
    .restart local v2    # "sPar":D
    .restart local v21    # "previousFP":D
    .restart local v23    # "countdown":I
    :cond_18
    move-wide/from16 v32, v2

    .line 675
    .end local v2    # "sPar":D
    .restart local v32    # "sPar":D
    :goto_15
    return-void

    .line 709
    .end local v21    # "previousFP":D
    .end local v23    # "countdown":I
    .end local v32    # "sPar":D
    :cond_19
    return-void
.end method

.method private qTy([D)V
    .locals 11
    .param p1, "y"    # [D

    .line 935
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v0, v0

    .line 936
    .local v0, "nR":I
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    .line 938
    .local v1, "nC":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 939
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    .line 940
    .local v3, "pk":I
    const-wide/16 v4, 0x0

    .line 941
    .local v4, "gamma":D
    move v6, v2

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 942
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v7, v7, v3

    aget-wide v9, p1, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 941
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 944
    .end local v6    # "i":I
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    .line 945
    move v6, v2

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v0, :cond_1

    .line 946
    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v6

    aget-wide v9, v9, v3

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, p1, v6

    .line 945
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 938
    .end local v3    # "pk":I
    .end local v4    # "gamma":D
    .end local v6    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 949
    .end local v2    # "k":I
    :cond_2
    return-void
.end method

.method private qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 26
    .param p1, "jacobian"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 859
    move-object/from16 v0, p0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    move-object/from16 v3, p1

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    .line 861
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v1, v1

    .line 862
    .local v1, "nR":I
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v4, 0x0

    aget-object v2, v2, v4

    array-length v2, v2

    .line 865
    .local v2, "nC":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 866
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aput v4, v5, v4

    .line 867
    const-wide/16 v5, 0x0

    .line 868
    .local v5, "norm2":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 869
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v7

    aget-wide v8, v8, v4

    .line 870
    .local v8, "akk":D
    mul-double v10, v8, v8

    add-double/2addr v5, v10

    .line 868
    .end local v8    # "akk":D
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 872
    .end local v7    # "i":I
    :cond_0
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 865
    .end local v5    # "norm2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 876
    .end local v4    # "k":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_2
    if-ge v4, v2, :cond_b

    .line 879
    const/4 v5, -0x1

    .line 880
    .local v5, "nextColumn":I
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 881
    .local v6, "ak2":D
    move v8, v4

    .local v8, "i":I
    :goto_3
    if-ge v8, v2, :cond_5

    .line 882
    const-wide/16 v9, 0x0

    .line 883
    .local v9, "norm2":D
    move v11, v4

    .local v11, "j":I
    :goto_4
    if-ge v11, v1, :cond_2

    .line 884
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v12, v12, v11

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v8

    aget-wide v12, v12, v13

    .line 885
    .local v12, "aki":D
    mul-double v14, v12, v12

    add-double/2addr v9, v14

    .line 883
    .end local v12    # "aki":D
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 887
    .end local v11    # "j":I
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_4

    .line 891
    cmpl-double v11, v9, v6

    if-lez v11, :cond_3

    .line 892
    move v5, v8

    .line 893
    move-wide v6, v9

    .line 881
    .end local v9    # "norm2":D
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 888
    .restart local v9    # "norm2":D
    :cond_4
    new-instance v11, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v12, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v11

    .line 896
    .end local v8    # "i":I
    .end local v9    # "norm2":D
    :cond_5
    iget-wide v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v8, v6, v8

    if-gtz v8, :cond_6

    .line 897
    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    .line 898
    return-void

    .line 900
    :cond_6
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v5

    .line 901
    .local v8, "pk":I
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v4

    aput v10, v9, v5

    .line 902
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aput v8, v9, v4

    .line 905
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v8

    .line 906
    .local v9, "akk":D
    const-wide/16 v11, 0x0

    cmpl-double v11, v9, v11

    if-lez v11, :cond_7

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    neg-double v11, v11

    goto :goto_5

    :cond_7
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 907
    .local v11, "alpha":D
    :goto_5
    mul-double v13, v9, v11

    sub-double v13, v6, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v13

    .line 908
    .local v15, "betak":D
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    aput-wide v15, v13, v8

    .line 911
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aput-wide v11, v13, v8

    .line 912
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v13, v13, v4

    aget-wide v17, v13, v8

    sub-double v17, v17, v11

    aput-wide v17, v13, v8

    .line 915
    add-int/lit8 v13, v2, -0x1

    sub-int/2addr v13, v4

    .local v13, "dk":I
    :goto_6
    if-lez v13, :cond_a

    .line 916
    const-wide/16 v17, 0x0

    .line 917
    .local v17, "gamma":D
    move v14, v4

    .local v14, "j":I
    :goto_7
    if-ge v14, v1, :cond_8

    .line 918
    move/from16 v19, v2

    .end local v2    # "nC":I
    .local v19, "nC":I
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v14

    aget-wide v20, v2, v8

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v14

    move-object/from16 v22, v2

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    add-int v23, v4, v13

    aget v2, v2, v23

    aget-wide v22, v22, v2

    mul-double v20, v20, v22

    add-double v17, v17, v20

    .line 917
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v19

    goto :goto_7

    .end local v19    # "nC":I
    .restart local v2    # "nC":I
    :cond_8
    move/from16 v19, v2

    .line 920
    .end local v2    # "nC":I
    .end local v14    # "j":I
    .restart local v19    # "nC":I
    mul-double v17, v17, v15

    .line 921
    move v2, v4

    .local v2, "j":I
    :goto_8
    if-ge v2, v1, :cond_9

    .line 922
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v2

    move/from16 v20, v1

    .end local v1    # "nR":I
    .local v20, "nR":I
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    add-int v21, v4, v13

    aget v1, v1, v21

    aget-wide v21, v14, v1

    move/from16 v23, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v2

    aget-wide v24, v1, v8

    mul-double v24, v24, v17

    sub-double v21, v21, v24

    aput-wide v21, v14, v23

    .line 921
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v20

    goto :goto_8

    .end local v20    # "nR":I
    .restart local v1    # "nR":I
    :cond_9
    move/from16 v20, v1

    .line 915
    .end local v1    # "nR":I
    .end local v2    # "j":I
    .end local v17    # "gamma":D
    .restart local v20    # "nR":I
    add-int/lit8 v13, v13, -0x1

    move/from16 v2, v19

    goto :goto_6

    .end local v19    # "nC":I
    .end local v20    # "nR":I
    .restart local v1    # "nR":I
    .local v2, "nC":I
    :cond_a
    move/from16 v20, v1

    move/from16 v19, v2

    .line 876
    .end local v1    # "nR":I
    .end local v2    # "nC":I
    .end local v5    # "nextColumn":I
    .end local v6    # "ak2":D
    .end local v8    # "pk":I
    .end local v9    # "akk":D
    .end local v11    # "alpha":D
    .end local v13    # "dk":I
    .end local v15    # "betak":D
    .restart local v19    # "nC":I
    .restart local v20    # "nR":I
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .end local v19    # "nC":I
    .end local v20    # "nR":I
    .restart local v1    # "nR":I
    .restart local v2    # "nC":I
    :cond_b
    move/from16 v20, v1

    .line 926
    .end local v1    # "nR":I
    .end local v4    # "k":I
    .restart local v20    # "nR":I
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    iput v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    .line 927
    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 65

    .line 291
    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->checkParameters()V

    .line 293
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getTarget()[D

    move-result-object v1

    array-length v8, v1

    .line 294
    .local v8, "nR":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getStartPoint()[D

    move-result-object v9

    .line 295
    .local v9, "currentPoint":[D
    array-length v10, v9

    .line 298
    .local v10, "nC":I
    invoke-static {v8, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    iput v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 299
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    .line 300
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    .line 301
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    .line 302
    new-array v1, v10, [I

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    .line 303
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    .line 306
    const-wide/16 v1, 0x0

    .line 307
    .local v1, "delta":D
    const-wide/16 v3, 0x0

    .line 308
    .local v3, "xNorm":D
    move-wide v5, v3

    .end local v3    # "xNorm":D
    .local v5, "xNorm":D
    new-array v4, v10, [D

    .line 309
    .local v4, "diag":[D
    new-array v11, v10, [D

    .line 310
    .local v11, "oldX":[D
    new-array v3, v8, [D

    .line 311
    .local v3, "oldRes":[D
    new-array v7, v8, [D

    .line 312
    .local v7, "oldObj":[D
    move-wide v12, v1

    .end local v1    # "delta":D
    .local v12, "delta":D
    new-array v1, v8, [D

    .line 313
    .local v1, "qtf":[D
    move-wide v14, v5

    .end local v5    # "xNorm":D
    .local v14, "xNorm":D
    new-array v5, v10, [D

    .line 314
    .local v5, "work1":[D
    new-array v6, v10, [D

    .line 315
    .local v6, "work2":[D
    move-object v2, v7

    .end local v7    # "oldObj":[D
    .local v2, "oldObj":[D
    new-array v7, v10, [D

    .line 317
    .local v7, "work3":[D
    move-object/from16 v16, v11

    .end local v11    # "oldX":[D
    .local v16, "oldX":[D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    .line 320
    .local v11, "weightMatrixSqrt":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v17, v2

    .end local v2    # "oldObj":[D
    .local v17, "oldObj":[D
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v2

    .line 321
    .local v2, "currentObjective":[D
    move-object/from16 v18, v3

    .end local v3    # "oldRes":[D
    .local v18, "oldRes":[D
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v3

    .line 322
    .local v3, "currentResiduals":[D
    move-object/from16 v19, v4

    .end local v4    # "diag":[D
    .local v19, "diag":[D
    new-instance v4, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v4, v9, v2}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 323
    .local v4, "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v20

    .line 326
    .local v20, "currentCost":D
    move-wide/from16 v22, v12

    .end local v12    # "delta":D
    .local v22, "delta":D
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 327
    const/16 v24, 0x1

    .line 328
    .local v24, "firstIteration":Z
    move-wide/from16 v25, v12

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v12

    move-object v13, v5

    move-wide/from16 v61, v20

    move-object/from16 v20, v4

    move-wide/from16 v4, v61

    .line 330
    .end local v5    # "work1":[D
    .local v4, "currentCost":D
    .local v12, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    .local v13, "work1":[D
    .local v20, "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->incrementIterationCount()V

    .line 332
    move-object/from16 v21, v20

    .line 335
    .local v21, "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    move-object/from16 v27, v2

    .end local v2    # "currentObjective":[D
    .local v27, "currentObjective":[D
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 337
    invoke-interface {v11, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 338
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_0

    .line 339
    move/from16 v28, v2

    .end local v2    # "i":I
    .local v28, "i":I
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    aget-wide v29, v2, v28

    aput-wide v29, v1, v28

    .line 338
    add-int/lit8 v2, v28, 0x1

    .end local v28    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    :cond_0
    move/from16 v28, v2

    .line 343
    .end local v2    # "i":I
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qTy([D)V

    .line 347
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    move-object/from16 v28, v1

    .end local v1    # "qtf":[D
    .local v28, "qtf":[D
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v1, :cond_1

    .line 348
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v2

    .line 349
    .local v1, "pk":I
    move/from16 v29, v1

    .end local v1    # "pk":I
    .local v29, "pk":I
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v2

    move-object/from16 v30, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v31, v1, v29

    aput-wide v31, v30, v29

    .line 347
    .end local v29    # "pk":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v28

    goto :goto_2

    .line 352
    .end local v2    # "k":I
    :cond_1
    if-eqz v24, :cond_5

    .line 355
    const-wide/16 v1, 0x0

    .line 356
    .end local v14    # "xNorm":D
    .local v1, "xNorm":D
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_3
    if-ge v14, v10, :cond_3

    .line 357
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v29, v15, v14

    .line 358
    .local v29, "dk":D
    cmpl-double v15, v29, v25

    if-nez v15, :cond_2

    .line 359
    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    .line 361
    :cond_2
    aget-wide v31, v9, v14

    mul-double v31, v31, v29

    .line 362
    .local v31, "xk":D
    mul-double v33, v31, v31

    add-double v1, v1, v33

    .line 363
    aput-wide v29, v19, v14

    .line 356
    .end local v29    # "dk":D
    .end local v31    # "xk":D
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 365
    .end local v14    # "k":I
    :cond_3
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 368
    .end local v1    # "xNorm":D
    .local v14, "xNorm":D
    cmpl-double v1, v14, v25

    if-nez v1, :cond_4

    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    goto :goto_4

    :cond_4
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    mul-double/2addr v1, v14

    :goto_4
    move-wide/from16 v22, v1

    .line 372
    :cond_5
    const-wide/16 v1, 0x0

    .line 373
    .local v1, "maxCosine":D
    cmpl-double v29, v4, v25

    if-eqz v29, :cond_9

    .line 374
    const/16 v29, 0x0

    move/from16 v61, v29

    move-object/from16 v29, v3

    move/from16 v3, v61

    .local v3, "j":I
    .local v29, "currentResiduals":[D
    :goto_5
    move-object/from16 v30, v6

    .end local v6    # "work2":[D
    .local v30, "work2":[D
    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v6, :cond_8

    .line 375
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v6, v3

    .line 376
    .local v6, "pj":I
    move/from16 v31, v6

    .end local v6    # "pj":I
    .local v31, "pj":I
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v32, v6, v31

    .line 377
    .local v32, "s":D
    cmpl-double v6, v32, v25

    if-eqz v6, :cond_7

    .line 378
    const-wide/16 v34, 0x0

    .line 379
    .local v34, "sum":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-gt v6, v3, :cond_6

    .line 380
    move/from16 v36, v3

    .end local v3    # "j":I
    .local v36, "j":I
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v3, v3, v6

    aget-wide v37, v3, v31

    aget-wide v39, v28, v6

    mul-double v37, v37, v39

    add-double v34, v34, v37

    .line 379
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v36

    goto :goto_6

    .end local v36    # "j":I
    .restart local v3    # "j":I
    :cond_6
    move/from16 v36, v3

    .line 382
    .end local v3    # "j":I
    .end local v6    # "i":I
    .restart local v36    # "j":I
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v37

    mul-double v39, v32, v4

    move-object v3, v7

    .end local v7    # "work3":[D
    .local v3, "work3":[D
    div-double v6, v37, v39

    invoke-static {v1, v2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    goto :goto_7

    .line 377
    .end local v34    # "sum":D
    .end local v36    # "j":I
    .local v3, "j":I
    .restart local v7    # "work3":[D
    :cond_7
    move/from16 v36, v3

    move-object v3, v7

    .line 374
    .end local v7    # "work3":[D
    .end local v31    # "pj":I
    .end local v32    # "s":D
    .local v3, "work3":[D
    .restart local v36    # "j":I
    :goto_7
    add-int/lit8 v6, v36, 0x1

    move-object v7, v3

    move v3, v6

    move-object/from16 v6, v30

    .end local v36    # "j":I
    .local v6, "j":I
    goto :goto_5

    .end local v6    # "j":I
    .local v3, "j":I
    .restart local v7    # "work3":[D
    :cond_8
    move/from16 v36, v3

    move-object v3, v7

    .end local v7    # "work3":[D
    .local v3, "work3":[D
    .restart local v36    # "j":I
    move-wide/from16 v31, v1

    goto :goto_8

    .line 373
    .end local v29    # "currentResiduals":[D
    .end local v30    # "work2":[D
    .end local v36    # "j":I
    .local v3, "currentResiduals":[D
    .local v6, "work2":[D
    .restart local v7    # "work3":[D
    :cond_9
    move-object/from16 v29, v3

    move-object/from16 v30, v6

    move-object v3, v7

    .end local v6    # "work2":[D
    .end local v7    # "work3":[D
    .local v3, "work3":[D
    .restart local v29    # "currentResiduals":[D
    .restart local v30    # "work2":[D
    move-wide/from16 v31, v1

    .line 386
    .end local v1    # "maxCosine":D
    .local v31, "maxCosine":D
    :goto_8
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    cmpg-double v1, v31, v1

    if-gtz v1, :cond_a

    .line 388
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 389
    return-object v20

    .line 393
    :cond_a
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_9
    if-ge v1, v10, :cond_b

    .line 394
    aget-wide v6, v19, v1

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    move/from16 v33, v1

    .end local v1    # "j":I
    .local v33, "j":I
    aget-wide v1, v2, v33

    invoke-static {v6, v7, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aput-wide v1, v19, v33

    .line 393
    add-int/lit8 v1, v33, 0x1

    .end local v33    # "j":I
    .restart local v1    # "j":I
    goto :goto_9

    :cond_b
    move/from16 v33, v1

    .line 398
    .end local v1    # "j":I
    const-wide/16 v1, 0x0

    move-wide/from16 v61, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    move-wide/from16 v63, v4

    move-object/from16 v4, v18

    move-wide/from16 v17, v63

    move-wide/from16 v5, v22

    move-wide/from16 v22, v14

    move-wide/from16 v14, v61

    .end local v18    # "oldRes":[D
    .end local v27    # "currentObjective":[D
    .local v1, "oldObj":[D
    .local v2, "currentObjective":[D
    .local v4, "oldRes":[D
    .local v5, "delta":D
    .local v14, "ratio":D
    .local v17, "currentCost":D
    .local v22, "xNorm":D
    :goto_a
    const-wide v33, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v7, v14, v33

    if-gez v7, :cond_26

    .line 401
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_b
    move-object/from16 v27, v1

    .end local v1    # "oldObj":[D
    .local v27, "oldObj":[D
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v7, v1, :cond_c

    .line 402
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v7

    .line 403
    .local v1, "pj":I
    aget-wide v35, v9, v1

    aput-wide v35, v16, v1

    .line 401
    .end local v1    # "pj":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v27

    goto :goto_b

    .line 405
    .end local v7    # "j":I
    :cond_c
    move-wide/from16 v35, v17

    .line 406
    .local v35, "previousCost":D
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 407
    .local v1, "tmpVec":[D
    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 408
    move-object v4, v1

    .line 409
    move-object/from16 v37, v2

    .line 410
    .end local v1    # "tmpVec":[D
    .local v37, "tmpVec":[D
    move-object/from16 v38, v27

    .line 411
    .end local v2    # "currentObjective":[D
    .local v38, "currentObjective":[D
    move-object/from16 v27, v37

    .line 414
    move-object v7, v3

    move-wide v2, v5

    move-object v5, v13

    move-object/from16 v1, v28

    move-object/from16 v6, v30

    move-object v13, v4

    move-object/from16 v4, v19

    .end local v3    # "work3":[D
    .end local v19    # "diag":[D
    .end local v28    # "qtf":[D
    .end local v30    # "work2":[D
    .local v1, "qtf":[D
    .local v2, "delta":D
    .local v4, "diag":[D
    .local v5, "work1":[D
    .restart local v6    # "work2":[D
    .local v7, "work3":[D
    .local v13, "oldRes":[D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->determineLMParameter([DD[D[D[D[D)V

    .line 417
    move-wide/from16 v61, v2

    move-object v3, v0

    move-wide/from16 v0, v61

    .end local v1    # "qtf":[D
    .end local v2    # "delta":D
    .end local v4    # "diag":[D
    .local v0, "delta":D
    .restart local v19    # "diag":[D
    .restart local v28    # "qtf":[D
    const-wide/16 v39, 0x0

    .line 418
    .local v39, "lmNorm":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c
    iget v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v4, :cond_d

    .line 419
    iget-object v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v2

    .line 420
    .local v4, "pj":I
    move/from16 v30, v2

    .end local v2    # "j":I
    .local v30, "j":I
    iget-object v2, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move-object/from16 v41, v2

    iget-object v2, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    move/from16 v43, v4

    move-object/from16 v42, v5

    .end local v4    # "pj":I
    .end local v5    # "work1":[D
    .local v42, "work1":[D
    .local v43, "pj":I
    aget-wide v4, v2, v43

    neg-double v4, v4

    aput-wide v4, v41, v43

    .line 421
    aget-wide v4, v16, v43

    iget-object v2, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v44, v2, v43

    add-double v4, v4, v44

    aput-wide v4, v9, v43

    .line 422
    aget-wide v4, v19, v43

    iget-object v2, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v44, v2, v43

    mul-double v4, v4, v44

    .line 423
    .local v4, "s":D
    mul-double v44, v4, v4

    add-double v39, v39, v44

    .line 418
    .end local v4    # "s":D
    .end local v43    # "pj":I
    add-int/lit8 v2, v30, 0x1

    move-object/from16 v5, v42

    .end local v30    # "j":I
    .restart local v2    # "j":I
    goto :goto_c

    .end local v42    # "work1":[D
    .restart local v5    # "work1":[D
    :cond_d
    move/from16 v30, v2

    move-object/from16 v42, v5

    .line 425
    .end local v2    # "j":I
    .end local v5    # "work1":[D
    .restart local v42    # "work1":[D
    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 427
    .end local v39    # "lmNorm":D
    .local v4, "lmNorm":D
    if-eqz v24, :cond_e

    .line 428
    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 432
    :cond_e
    invoke-virtual {v3, v9}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v2

    .line 433
    .end local v38    # "currentObjective":[D
    .local v2, "currentObjective":[D
    move-wide/from16 v38, v4

    .end local v4    # "lmNorm":D
    .local v38, "lmNorm":D
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v4

    .line 434
    .end local v29    # "currentResiduals":[D
    .local v4, "currentResiduals":[D
    new-instance v5, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v5, v9, v2}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 435
    .end local v20    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .local v5, "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    move-object/from16 v30, v6

    move-object/from16 v40, v7

    .end local v6    # "work2":[D
    .end local v7    # "work3":[D
    .local v30, "work2":[D
    .local v40, "work3":[D
    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v6

    .line 438
    .end local v17    # "currentCost":D
    .local v6, "currentCost":D
    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .line 439
    .local v17, "actRed":D
    const-wide v43, 0x3fb999999999999aL    # 0.1

    mul-double v45, v6, v43

    cmpg-double v20, v45, v35

    if-gez v20, :cond_f

    .line 440
    div-double v45, v6, v35

    .line 441
    .local v45, "r":D
    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    mul-double v49, v45, v45

    sub-double v17, v47, v49

    .line 446
    .end local v45    # "r":D
    :cond_f
    const/16 v20, 0x0

    move-object/from16 v41, v2

    move/from16 v2, v20

    .local v2, "j":I
    .local v41, "currentObjective":[D
    :goto_d
    move-object/from16 v29, v4

    .end local v4    # "currentResiduals":[D
    .restart local v29    # "currentResiduals":[D
    iget v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v4, :cond_11

    .line 447
    iget-object v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v2

    .line 448
    .local v4, "pj":I
    move/from16 v20, v4

    .end local v4    # "pj":I
    .local v20, "pj":I
    iget-object v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v45, v4, v20

    .line 449
    .local v45, "dirJ":D
    aput-wide v25, v42, v2

    .line 450
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-gt v4, v2, :cond_10

    .line 451
    aget-wide v47, v42, v4

    move/from16 v49, v2

    .end local v2    # "j":I
    .local v49, "j":I
    iget-object v2, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v4

    aget-wide v50, v2, v20

    mul-double v50, v50, v45

    add-double v47, v47, v50

    aput-wide v47, v42, v4

    .line 450
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v49

    goto :goto_e

    .end local v49    # "j":I
    .restart local v2    # "j":I
    :cond_10
    move/from16 v49, v2

    .line 446
    .end local v2    # "j":I
    .end local v4    # "i":I
    .end local v20    # "pj":I
    .end local v45    # "dirJ":D
    .restart local v49    # "j":I
    add-int/lit8 v2, v49, 0x1

    move-object/from16 v4, v29

    .end local v49    # "j":I
    .restart local v2    # "j":I
    goto :goto_d

    :cond_11
    move/from16 v49, v2

    .line 454
    .end local v2    # "j":I
    const-wide/16 v45, 0x0

    .line 455
    .local v45, "coeff1":D
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_f
    iget v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v4, :cond_12

    .line 456
    aget-wide v47, v42, v2

    aget-wide v49, v42, v2

    mul-double v47, v47, v49

    add-double v45, v45, v47

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 458
    .end local v2    # "j":I
    :cond_12
    mul-double v47, v35, v35

    .line 459
    .local v47, "pc2":D
    div-double v45, v45, v47

    .line 460
    move-wide/from16 v49, v14

    .end local v14    # "ratio":D
    .local v49, "ratio":D
    iget-wide v14, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    mul-double v14, v14, v38

    mul-double v14, v14, v38

    div-double v14, v14, v47

    .line 461
    .local v14, "coeff2":D
    const-wide/high16 v51, 0x4000000000000000L    # 2.0

    mul-double v53, v14, v51

    add-double v53, v45, v53

    .line 462
    .local v53, "preRed":D
    move-wide/from16 v55, v14

    .end local v14    # "coeff2":D
    .local v55, "coeff2":D
    add-double v14, v45, v55

    neg-double v14, v14

    .line 465
    .local v14, "dirDer":D
    cmpl-double v2, v53, v25

    if-nez v2, :cond_13

    move-wide/from16 v57, v25

    goto :goto_10

    :cond_13
    div-double v57, v17, v53

    .line 468
    .end local v49    # "ratio":D
    .local v57, "ratio":D
    :goto_10
    const-wide/high16 v49, 0x3fd0000000000000L    # 0.25

    cmpg-double v2, v57, v49

    const-wide/high16 v49, 0x3fe0000000000000L    # 0.5

    if-gtz v2, :cond_17

    .line 469
    cmpg-double v2, v17, v25

    if-gez v2, :cond_14

    mul-double v59, v14, v49

    mul-double v49, v49, v17

    add-double v49, v14, v49

    div-double v49, v59, v49

    .line 471
    .local v49, "tmp":D
    :cond_14
    mul-double v59, v6, v43

    cmpl-double v2, v59, v35

    if-gez v2, :cond_15

    cmpg-double v2, v49, v43

    if-gez v2, :cond_16

    .line 472
    :cond_15
    const-wide v49, 0x3fb999999999999aL    # 0.1

    .line 474
    :cond_16
    const-wide/high16 v43, 0x4024000000000000L    # 10.0

    move-wide/from16 v59, v14

    .end local v14    # "dirDer":D
    .local v59, "dirDer":D
    mul-double v14, v38, v43

    invoke-static {v0, v1, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v14

    mul-double v14, v14, v49

    .line 475
    .end local v0    # "delta":D
    .local v14, "delta":D
    iget-wide v0, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    div-double v0, v0, v49

    iput-wide v0, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 476
    .end local v49    # "tmp":D
    move-wide v0, v14

    goto :goto_11

    .end local v59    # "dirDer":D
    .restart local v0    # "delta":D
    .local v14, "dirDer":D
    :cond_17
    move-wide/from16 v59, v14

    .end local v14    # "dirDer":D
    .restart local v59    # "dirDer":D
    iget-wide v14, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v2, v14, v25

    if-eqz v2, :cond_18

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    cmpl-double v2, v57, v14

    if-ltz v2, :cond_19

    .line 477
    :cond_18
    mul-double v0, v38, v51

    .line 478
    iget-wide v14, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    mul-double v14, v14, v49

    iput-wide v14, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 482
    :cond_19
    :goto_11
    cmpl-double v2, v57, v33

    if-ltz v2, :cond_1d

    .line 484
    const/16 v24, 0x0

    .line 485
    const-wide/16 v14, 0x0

    .line 486
    .end local v22    # "xNorm":D
    .local v14, "xNorm":D
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_12
    if-ge v2, v10, :cond_1a

    .line 487
    aget-wide v22, v19, v2

    aget-wide v33, v9, v2

    mul-double v22, v22, v33

    .line 488
    .local v22, "xK":D
    mul-double v33, v22, v22

    add-double v14, v14, v33

    .line 486
    .end local v22    # "xK":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 490
    .end local v2    # "k":I
    :cond_1a
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    .line 493
    .end local v14    # "xNorm":D
    .local v22, "xNorm":D
    if-eqz v12, :cond_1b

    invoke-virtual {v3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getIterations()I

    move-result v2

    move-object/from16 v14, v21

    .end local v21    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .local v14, "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    invoke-interface {v12, v2, v14, v5}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 494
    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 495
    return-object v5

    .line 493
    .end local v14    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .restart local v21    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    :cond_1b
    move-object/from16 v14, v21

    .line 515
    .end local v21    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .restart local v14    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    :cond_1c
    move-object/from16 v20, v5

    move-object v4, v13

    move-object/from16 v2, v41

    goto :goto_14

    .line 499
    .end local v14    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .restart local v21    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    :cond_1d
    move-object/from16 v14, v21

    .end local v21    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .restart local v14    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    move-wide/from16 v6, v35

    .line 500
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_13
    iget v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v4, :cond_1e

    .line 501
    iget-object v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v2

    .line 502
    .local v4, "pj":I
    aget-wide v20, v16, v4

    aput-wide v20, v9, v4

    .line 500
    .end local v4    # "pj":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 504
    .end local v2    # "j":I
    :cond_1e
    iget-object v2, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 505
    .end local v37    # "tmpVec":[D
    .local v2, "tmpVec":[D
    iput-object v13, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 506
    move-object v4, v2

    .line 507
    .end local v13    # "oldRes":[D
    .local v4, "oldRes":[D
    move-object/from16 v37, v41

    .line 508
    .end local v2    # "tmpVec":[D
    .restart local v37    # "tmpVec":[D
    move-object/from16 v2, v27

    .line 509
    .end local v41    # "currentObjective":[D
    .local v2, "currentObjective":[D
    move-object/from16 v13, v37

    .line 511
    .end local v27    # "oldObj":[D
    .local v13, "oldObj":[D
    new-instance v15, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v15, v9, v2}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    move-object/from16 v27, v13

    move-object/from16 v20, v15

    .line 515
    .end local v5    # "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .end local v13    # "oldObj":[D
    .local v20, "current":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .restart local v27    # "oldObj":[D
    :goto_14
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v33

    move-wide/from16 v43, v0

    .end local v0    # "delta":D
    .local v43, "delta":D
    iget-wide v0, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v0, v33, v0

    if-gtz v0, :cond_1f

    iget-wide v0, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v0, v53, v0

    if-gtz v0, :cond_1f

    cmpg-double v0, v57, v51

    if-lez v0, :cond_20

    :cond_1f
    iget-wide v0, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    mul-double v0, v0, v22

    cmpg-double v0, v43, v0

    if-gtz v0, :cond_21

    .line 519
    :cond_20
    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 520
    return-object v20

    .line 524
    :cond_21
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    sget-wide v33, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v0, v0, v33

    if-gtz v0, :cond_23

    sget-wide v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v0, v53, v0

    if-gtz v0, :cond_23

    cmpg-double v0, v57, v51

    if-lez v0, :cond_22

    move-object v13, v4

    goto :goto_15

    .line 527
    :cond_22
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    move-object v13, v4

    .end local v4    # "oldRes":[D
    .local v13, "oldRes":[D
    iget-wide v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 524
    .end local v13    # "oldRes":[D
    .restart local v4    # "oldRes":[D
    :cond_23
    move-object v13, v4

    .line 529
    .end local v4    # "oldRes":[D
    .restart local v13    # "oldRes":[D
    :goto_15
    sget-wide v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    mul-double v0, v0, v22

    cmpg-double v0, v43, v0

    if-lez v0, :cond_25

    .line 532
    sget-wide v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v0, v31, v0

    if-lez v0, :cond_24

    .line 536
    .end local v17    # "actRed":D
    .end local v35    # "previousCost":D
    .end local v37    # "tmpVec":[D
    .end local v38    # "lmNorm":D
    .end local v45    # "coeff1":D
    .end local v47    # "pc2":D
    .end local v53    # "preRed":D
    .end local v55    # "coeff2":D
    .end local v59    # "dirDer":D
    move-object v0, v3

    move-wide/from16 v17, v6

    move-object v4, v13

    move-object/from16 v21, v14

    move-object/from16 v1, v27

    move-object/from16 v3, v40

    move-object/from16 v13, v42

    move-wide/from16 v5, v43

    move-wide/from16 v14, v57

    goto/16 :goto_a

    .line 533
    .restart local v17    # "actRed":D
    .restart local v35    # "previousCost":D
    .restart local v37    # "tmpVec":[D
    .restart local v38    # "lmNorm":D
    .restart local v45    # "coeff1":D
    .restart local v47    # "pc2":D
    .restart local v53    # "preRed":D
    .restart local v55    # "coeff2":D
    .restart local v59    # "dirDer":D
    :cond_24
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 530
    :cond_25
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 398
    .end local v6    # "currentCost":D
    .end local v27    # "oldObj":[D
    .end local v35    # "previousCost":D
    .end local v37    # "tmpVec":[D
    .end local v38    # "lmNorm":D
    .end local v40    # "work3":[D
    .end local v42    # "work1":[D
    .end local v43    # "delta":D
    .end local v45    # "coeff1":D
    .end local v47    # "pc2":D
    .end local v53    # "preRed":D
    .end local v55    # "coeff2":D
    .end local v57    # "ratio":D
    .end local v59    # "dirDer":D
    .local v1, "oldObj":[D
    .restart local v3    # "work3":[D
    .restart local v4    # "oldRes":[D
    .local v5, "delta":D
    .local v13, "work1":[D
    .local v14, "ratio":D
    .local v17, "currentCost":D
    .restart local v21    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    :cond_26
    move-object/from16 v27, v1

    move-object/from16 v40, v3

    move-object/from16 v42, v13

    move-wide/from16 v49, v14

    move-object/from16 v14, v21

    move-object v3, v0

    move-wide v0, v5

    .line 537
    .end local v1    # "oldObj":[D
    .end local v3    # "work3":[D
    .end local v5    # "delta":D
    .end local v13    # "work1":[D
    .end local v14    # "ratio":D
    .end local v21    # "previous":Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .end local v31    # "maxCosine":D
    .restart local v0    # "delta":D
    .restart local v27    # "oldObj":[D
    .restart local v40    # "work3":[D
    .restart local v42    # "work1":[D
    move-wide/from16 v6, v17

    move-object/from16 v18, v4

    move-wide v4, v6

    move-wide/from16 v14, v22

    move-object/from16 v17, v27

    move-object/from16 v6, v30

    move-object/from16 v7, v40

    move-wide/from16 v22, v0

    move-object v0, v3

    move-object/from16 v1, v28

    move-object/from16 v3, v29

    goto/16 :goto_0
.end method
