.class public Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.source "LevenbergMarquardtOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
.method public constructor <init>()V
    .locals 11

    .line 157
    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    .line 158
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11
    .param p1, "costRelativeTolerance"    # D
    .param p3, "parRelativeTolerance"    # D
    .param p5, "orthoTolerance"    # D

    .line 236
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    .line 239
    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1
    .param p1, "initialStepBoundFactor"    # D
    .param p3, "costRelativeTolerance"    # D
    .param p5, "parRelativeTolerance"    # D
    .param p7, "orthoTolerance"    # D
    .param p9, "threshold"    # D

    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 270
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 271
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 272
    iput-wide p5, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 273
    iput-wide p7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 274
    iput-wide p9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    .line 275
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V
    .locals 0
    .param p1, "initialStepBoundFactor"    # D
    .param p4, "costRelativeTolerance"    # D
    .param p6, "parRelativeTolerance"    # D
    .param p8, "orthoTolerance"    # D
    .param p10, "threshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .line 207
    .local p3, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 208
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 209
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 210
    iput-wide p6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 211
    iput-wide p8, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 212
    iput-wide p10, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    .line 213
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    .local v3, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V

    .line 177
    return-void
.end method

.method private determineLMDirection([D[D[D[D)V
    .locals 29
    .param p1, "qy"    # [D
    .param p2, "diag"    # [D
    .param p3, "lmDiag"    # [D
    .param p4, "work"    # [D

    .line 729
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_1

    .line 730
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    .line 731
    .local v3, "pj":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "i":I
    :goto_1
    iget v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v5, :cond_0

    .line 732
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v5, v5, v4

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v6, v6, v2

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v4

    aget-wide v6, v6, v7

    aput-wide v6, v5, v3

    .line 731
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 734
    .end local v4    # "i":I
    :cond_0
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v5, v5, v3

    aput-wide v5, v4, v2

    .line 735
    aget-wide v4, p1, v2

    aput-wide v4, p4, v2

    .line 729
    .end local v3    # "pj":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 739
    .end local v2    # "j":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    iget v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_7

    .line 743
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    .line 744
    .restart local v3    # "pj":I
    aget-wide v6, p2, v3

    .line 745
    .local v6, "dpj":D
    cmpl-double v8, v6, v4

    if-eqz v8, :cond_2

    .line 746
    add-int/lit8 v8, v2, 0x1

    array-length v9, v1

    invoke-static {v1, v8, v9, v4, v5}, Ljava/util/Arrays;->fill([DIID)V

    .line 748
    :cond_2
    aput-wide v6, v1, v2

    .line 753
    const-wide/16 v8, 0x0

    .line 754
    .local v8, "qtbpj":D
    move v10, v2

    .local v10, "k":I
    :goto_3
    iget v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v10, v11, :cond_6

    .line 755
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v10

    .line 759
    .local v11, "pk":I
    aget-wide v12, v1, v10

    cmpl-double v12, v12, v4

    if-eqz v12, :cond_5

    .line 763
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v12, v12, v10

    aget-wide v12, v12, v11

    .line 764
    .local v12, "rkk":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    aget-wide v16, v1, v10

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    cmpg-double v14, v14, v16

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-gez v14, :cond_3

    .line 765
    aget-wide v17, v1, v10

    div-double v17, v12, v17

    .line 766
    .local v17, "cotan":D
    mul-double v19, v17, v17

    add-double v19, v19, v15

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v19

    div-double v15, v15, v19

    .line 767
    .local v15, "sin":D
    mul-double v17, v17, v15

    .line 768
    .local v17, "cos":D
    move-wide v14, v15

    goto :goto_4

    .line 769
    .end local v15    # "sin":D
    .end local v17    # "cos":D
    :cond_3
    aget-wide v17, v1, v10

    div-double v17, v17, v12

    .line 770
    .local v17, "tan":D
    mul-double v19, v17, v17

    add-double v19, v19, v15

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v19

    div-double v14, v15, v19

    .line 771
    .local v14, "cos":D
    mul-double v19, v14, v17

    move-wide/from16 v17, v14

    move-wide/from16 v14, v19

    .line 776
    .local v14, "sin":D
    .local v17, "cos":D
    :goto_4
    move-wide/from16 v19, v4

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v10

    mul-double v21, v17, v12

    aget-wide v23, v1, v10

    mul-double v23, v23, v14

    add-double v21, v21, v23

    aput-wide v21, v4, v11

    .line 777
    aget-wide v4, p4, v10

    mul-double v4, v4, v17

    mul-double v21, v14, v8

    add-double v4, v4, v21

    .line 778
    .local v4, "temp":D
    move/from16 v16, v2

    .end local v2    # "j":I
    .local v16, "j":I
    neg-double v1, v14

    aget-wide v21, p4, v10

    mul-double v1, v1, v21

    mul-double v21, v17, v8

    add-double v1, v1, v21

    .line 779
    .end local v8    # "qtbpj":D
    .local v1, "qtbpj":D
    aput-wide v4, p4, v10

    .line 782
    add-int/lit8 v8, v10, 0x1

    .local v8, "i":I
    :goto_5
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v8, v9, :cond_4

    .line 783
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v8

    aget-wide v21, v9, v11

    .line 784
    .local v21, "rik":D
    mul-double v23, v17, v21

    aget-wide v25, p3, v8

    mul-double v25, v25, v14

    add-double v23, v23, v25

    .line 785
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

    .line 786
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v8

    aput-wide v23, v1, v11

    .line 782
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

    .line 759
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

    .line 754
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

    .line 793
    .end local v2    # "j":I
    .end local v10    # "k":I
    .restart local v16    # "j":I
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v16

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v16

    aget-wide v1, v1, v2

    aput-wide v1, p3, v16

    .line 794
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v16

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v16

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v4, v4, v16

    aput-wide v4, v1, v2

    .line 739
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

    .line 799
    .end local v2    # "j":I
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 800
    .local v1, "nSing":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_7
    iget v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_a

    .line 801
    aget-wide v3, p3, v2

    cmpl-double v3, v3, v19

    if-nez v3, :cond_8

    iget v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ne v1, v3, :cond_8

    .line 802
    move v1, v2

    .line 804
    :cond_8
    iget v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v3, :cond_9

    .line 805
    aput-wide v19, p4, v2

    .line 800
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 808
    .end local v2    # "j":I
    :cond_a
    if-lez v1, :cond_c

    .line 809
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "j":I
    :goto_8
    if-ltz v2, :cond_c

    .line 810
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    .line 811
    .restart local v3    # "pj":I
    const-wide/16 v4, 0x0

    .line 812
    .local v4, "sum":D
    add-int/lit8 v6, v2, 0x1

    .local v6, "i":I
    :goto_9
    if-ge v6, v1, :cond_b

    .line 813
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v7, v7, v3

    aget-wide v9, p4, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 812
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 815
    .end local v6    # "i":I
    :cond_b
    aget-wide v6, p4, v2

    sub-double/2addr v6, v4

    aget-wide v8, p3, v2

    div-double/2addr v6, v8

    aput-wide v6, p4, v2

    .line 809
    .end local v3    # "pj":I
    .end local v4    # "sum":D
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 820
    .end local v2    # "j":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_a
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    array-length v3, v3

    if-ge v2, v3, :cond_d

    .line 821
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v2

    aget-wide v5, p4, v2

    aput-wide v5, v3, v4

    .line 820
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 823
    .end local v2    # "j":I
    :cond_d
    return-void
.end method

.method private determineLMParameter([DD[D[D[D[D)V
    .locals 41
    .param p1, "qy"    # [D
    .param p2, "delta"    # D
    .param p4, "diag"    # [D
    .param p5, "work1"    # [D
    .param p6, "work2"    # [D
    .param p7, "work3"    # [D

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    .line 560
    .local v7, "nC":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    if-ge v8, v9, :cond_0

    .line 561
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v8

    aget-wide v11, v1, v8

    aput-wide v11, v9, v10

    .line 560
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 563
    .end local v8    # "j":I
    :cond_0
    iget v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    .restart local v8    # "j":I
    :goto_1
    const-wide/16 v9, 0x0

    if-ge v8, v7, :cond_1

    .line 564
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v12, v12, v8

    aput-wide v9, v11, v12

    .line 563
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 566
    .end local v8    # "j":I
    :cond_1
    iget v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    add-int/lit8 v8, v8, -0x1

    .local v8, "k":I
    :goto_2
    if-ltz v8, :cond_3

    .line 567
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v8

    .line 568
    .local v11, "pk":I
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v12, v12, v11

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v14, v14, v11

    div-double/2addr v12, v14

    .line 569
    .local v12, "ypk":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v8, :cond_2

    .line 570
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v14

    aget-wide v18, v15, v9

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v14

    aget-wide v20, v10, v11

    mul-double v20, v20, v12

    sub-double v18, v18, v20

    aput-wide v18, v15, v9

    .line 569
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v9, 0x0

    goto :goto_3

    .line 572
    .end local v14    # "i":I
    :cond_2
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aput-wide v12, v9, v11

    .line 566
    .end local v11    # "pk":I
    .end local v12    # "ypk":D
    add-int/lit8 v8, v8, -0x1

    const-wide/16 v9, 0x0

    goto :goto_2

    .line 577
    .end local v8    # "k":I
    :cond_3
    const-wide/16 v8, 0x0

    .line 578
    .local v8, "dxNorm":D
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    iget v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v10, v11, :cond_4

    .line 579
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v10

    .line 580
    .local v11, "pj":I
    aget-wide v12, p4, v11

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v14, v14, v11

    mul-double/2addr v12, v14

    .line 581
    .local v12, "s":D
    aput-wide v12, v4, v11

    .line 582
    mul-double v14, v12, v12

    add-double/2addr v8, v14

    .line 578
    .end local v11    # "pj":I
    .end local v12    # "s":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 584
    .end local v10    # "j":I
    :cond_4
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 585
    sub-double v10, v8, v2

    .line 586
    .local v10, "fp":D
    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double v14, v2, v12

    cmpg-double v14, v10, v14

    if-gtz v14, :cond_5

    .line 587
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 588
    return-void

    .line 595
    :cond_5
    const-wide/16 v14, 0x0

    .line 596
    .local v14, "parl":D
    iget v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    iget v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ne v12, v13, :cond_9

    .line 597
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_5
    iget v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v12, v13, :cond_6

    .line 598
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v12

    .line 599
    .local v13, "pj":I
    aget-wide v20, v4, v13

    aget-wide v22, p4, v13

    div-double v22, v22, v8

    mul-double v20, v20, v22

    aput-wide v20, v4, v13

    .line 597
    .end local v13    # "pj":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 601
    .end local v12    # "j":I
    :cond_6
    const-wide/16 v12, 0x0

    .line 602
    .local v12, "sum2":D
    const/16 v20, 0x0

    move/from16 v40, v20

    move/from16 v20, v7

    move/from16 v7, v40

    .local v7, "j":I
    .local v20, "nC":I
    :goto_6
    move-wide/from16 v21, v8

    .end local v8    # "dxNorm":D
    .local v21, "dxNorm":D
    iget v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v7, v8, :cond_8

    .line 603
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v7

    .line 604
    .local v8, "pj":I
    const-wide/16 v23, 0x0

    .line 605
    .local v23, "sum":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v9, v7, :cond_7

    .line 606
    move/from16 v25, v7

    .end local v7    # "j":I
    .local v25, "j":I
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v9

    aget-wide v26, v7, v8

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v9

    aget-wide v28, v4, v7

    mul-double v26, v26, v28

    add-double v23, v23, v26

    .line 605
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v25

    goto :goto_7

    .end local v25    # "j":I
    .restart local v7    # "j":I
    :cond_7
    move/from16 v25, v7

    .line 608
    .end local v7    # "j":I
    .end local v9    # "i":I
    .restart local v25    # "j":I
    aget-wide v26, v4, v8

    sub-double v26, v26, v23

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v28, v7, v8

    div-double v26, v26, v28

    .line 609
    .local v26, "s":D
    aput-wide v26, v4, v8

    .line 610
    mul-double v28, v26, v26

    add-double v12, v12, v28

    .line 602
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

    .line 612
    .end local v7    # "j":I
    mul-double v7, v2, v12

    div-double v14, v10, v7

    goto :goto_8

    .line 596
    .end local v12    # "sum2":D
    .end local v20    # "nC":I
    .end local v21    # "dxNorm":D
    .local v7, "nC":I
    .local v8, "dxNorm":D
    :cond_9
    move/from16 v20, v7

    move-wide/from16 v21, v8

    .line 616
    .end local v7    # "nC":I
    .end local v8    # "dxNorm":D
    .restart local v20    # "nC":I
    .restart local v21    # "dxNorm":D
    :goto_8
    const-wide/16 v7, 0x0

    .line 617
    .local v7, "sum2":D
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_9
    iget v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v12, :cond_b

    .line 618
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v12, v12, v9

    .line 619
    .local v12, "pj":I
    const-wide/16 v23, 0x0

    .line 620
    .restart local v23    # "sum":D
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a
    if-gt v13, v9, :cond_a

    .line 621
    move-wide/from16 v25, v7

    .end local v7    # "sum2":D
    .local v25, "sum2":D
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v13

    aget-wide v7, v7, v12

    aget-wide v27, v1, v13

    mul-double v7, v7, v27

    add-double v23, v23, v7

    .line 620
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v7, v25

    goto :goto_a

    .end local v25    # "sum2":D
    .restart local v7    # "sum2":D
    :cond_a
    move-wide/from16 v25, v7

    .line 623
    .end local v7    # "sum2":D
    .end local v13    # "i":I
    .restart local v25    # "sum2":D
    aget-wide v7, p4, v12

    div-double v23, v23, v7

    .line 624
    mul-double v7, v23, v23

    add-double v7, v25, v7

    .line 617
    .end local v12    # "pj":I
    .end local v23    # "sum":D
    .end local v25    # "sum2":D
    .restart local v7    # "sum2":D
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_b
    move-wide/from16 v25, v7

    .line 626
    .end local v7    # "sum2":D
    .end local v9    # "j":I
    .restart local v25    # "sum2":D
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 627
    .local v7, "gNorm":D
    div-double v12, v7, v2

    .line 628
    .local v12, "paru":D
    const-wide/16 v16, 0x0

    cmpl-double v9, v12, v16

    move-wide/from16 v23, v7

    .end local v7    # "gNorm":D
    .local v23, "gNorm":D
    if-nez v9, :cond_c

    .line 630
    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v27, 0x10000c51bd5669L    # 2.2251E-308

    invoke-static {v2, v3, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v29

    div-double v12, v27, v29

    goto :goto_b

    .line 628
    :cond_c
    const-wide v27, 0x10000c51bd5669L    # 2.2251E-308

    .line 635
    :goto_b
    iget-wide v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v7, v8, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    invoke-static {v12, v13, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 636
    iget-wide v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    const-wide/16 v16, 0x0

    cmpl-double v7, v7, v16

    if-nez v7, :cond_d

    .line 637
    div-double v7, v23, v21

    iput-wide v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 640
    :cond_d
    const/16 v7, 0xa

    move-wide/from16 v8, v21

    .end local v21    # "dxNorm":D
    .local v7, "countdown":I
    .restart local v8    # "dxNorm":D
    :goto_c
    if-ltz v7, :cond_19

    .line 643
    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    const-wide/16 v16, 0x0

    cmpl-double v2, v2, v16

    if-nez v2, :cond_e

    .line 644
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v2, v12

    move/from16 v21, v7

    move-wide/from16 v29, v8

    move-wide/from16 v7, v27

    .end local v7    # "countdown":I
    .end local v8    # "dxNorm":D
    .local v21, "countdown":I
    .local v29, "dxNorm":D
    invoke-static {v7, v8, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_d

    .line 643
    .end local v21    # "countdown":I
    .end local v29    # "dxNorm":D
    .restart local v7    # "countdown":I
    .restart local v8    # "dxNorm":D
    :cond_e
    move/from16 v21, v7

    move-wide/from16 v29, v8

    move-wide/from16 v7, v27

    .line 646
    .end local v7    # "countdown":I
    .end local v8    # "dxNorm":D
    .restart local v21    # "countdown":I
    .restart local v29    # "dxNorm":D
    :goto_d
    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 647
    .local v2, "sPar":D
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_e
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v7, :cond_f

    .line 648
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v9

    .line 649
    .local v7, "pj":I
    aget-wide v31, p4, v7

    mul-double v31, v31, v2

    aput-wide v31, v4, v7

    .line 647
    .end local v7    # "pj":I
    add-int/lit8 v9, v9, 0x1

    const-wide v7, 0x10000c51bd5669L    # 2.2251E-308

    goto :goto_e

    .line 651
    .end local v9    # "j":I
    :cond_f
    invoke-direct {v0, v1, v4, v5, v6}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[D[D)V

    .line 653
    const-wide/16 v7, 0x0

    .line 654
    .end local v29    # "dxNorm":D
    .local v7, "dxNorm":D
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_f
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v1, :cond_10

    .line 655
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v9

    .line 656
    .local v1, "pj":I
    aget-wide v29, p4, v1

    move/from16 v22, v1

    .end local v1    # "pj":I
    .local v22, "pj":I
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v31, v1, v22

    mul-double v29, v29, v31

    .line 657
    .local v29, "s":D
    aput-wide v29, v6, v22

    .line 658
    mul-double v31, v29, v29

    add-double v7, v7, v31

    .line 654
    .end local v22    # "pj":I
    .end local v29    # "s":D
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_f

    .line 660
    .end local v9    # "j":I
    :cond_10
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 661
    .end local v7    # "dxNorm":D
    .restart local v8    # "dxNorm":D
    move-wide/from16 v29, v10

    .line 662
    .local v29, "previousFP":D
    sub-double v10, v8, p2

    .line 666
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    const-wide v18, 0x3fb999999999999aL    # 0.1

    mul-double v33, p2, v18

    cmpg-double v1, v31, v33

    if-lez v1, :cond_18

    const-wide/16 v16, 0x0

    cmpl-double v1, v14, v16

    if-nez v1, :cond_11

    cmpg-double v1, v10, v29

    if-gtz v1, :cond_11

    cmpg-double v1, v29, v16

    if-gez v1, :cond_11

    move-wide/from16 v34, v2

    goto/16 :goto_15

    .line 672
    :cond_11
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v7, :cond_12

    .line 673
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v1

    .line 674
    .local v7, "pj":I
    aget-wide v31, v6, v7

    aget-wide v33, p4, v7

    mul-double v31, v31, v33

    div-double v31, v31, v8

    aput-wide v31, v4, v7

    .line 672
    .end local v7    # "pj":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 676
    .end local v1    # "j":I
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_11
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v7, :cond_14

    .line 677
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v7, v7, v1

    .line 678
    .restart local v7    # "pj":I
    aget-wide v31, v4, v7

    aget-wide v33, v5, v1

    div-double v31, v31, v33

    aput-wide v31, v4, v7

    .line 679
    aget-wide v31, v4, v7

    .line 680
    .local v31, "tmp":D
    add-int/lit8 v22, v1, 0x1

    move/from16 v33, v1

    move/from16 v1, v22

    .local v1, "i":I
    .local v33, "j":I
    :goto_12
    move-wide/from16 v34, v2

    .end local v2    # "sPar":D
    .local v34, "sPar":D
    iget v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_13

    .line 681
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    aget-wide v36, v4, v2

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v3, v3, v1

    aget-wide v38, v3, v7

    mul-double v38, v38, v31

    sub-double v36, v36, v38

    aput-wide v36, v4, v2

    .line 680
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v2, v34

    goto :goto_12

    .line 676
    .end local v1    # "i":I
    .end local v7    # "pj":I
    .end local v31    # "tmp":D
    :cond_13
    add-int/lit8 v1, v33, 0x1

    move-wide/from16 v2, v34

    .end local v33    # "j":I
    .local v1, "j":I
    goto :goto_11

    .end local v34    # "sPar":D
    .restart local v2    # "sPar":D
    :cond_14
    move/from16 v33, v1

    move-wide/from16 v34, v2

    .line 684
    .end local v1    # "j":I
    .end local v2    # "sPar":D
    .restart local v34    # "sPar":D
    const-wide/16 v1, 0x0

    .line 685
    .end local v25    # "sum2":D
    .local v1, "sum2":D
    const/4 v3, 0x0

    move-wide/from16 v25, v1

    .end local v1    # "sum2":D
    .local v3, "j":I
    .restart local v25    # "sum2":D
    :goto_13
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v1, :cond_15

    .line 686
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v3

    aget-wide v1, v4, v1

    .line 687
    .local v1, "s":D
    mul-double v31, v1, v1

    add-double v25, v25, v31

    .line 685
    .end local v1    # "s":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 689
    .end local v3    # "j":I
    :cond_15
    mul-double v1, p2, v25

    div-double v1, v10, v1

    .line 692
    .local v1, "correction":D
    const-wide/16 v16, 0x0

    cmpl-double v3, v10, v16

    if-lez v3, :cond_16

    .line 693
    move-wide/from16 v31, v1

    .end local v1    # "correction":D
    .local v31, "correction":D
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v14, v15, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    move-wide v14, v1

    .end local v14    # "parl":D
    .local v1, "parl":D
    goto :goto_14

    .line 694
    .end local v31    # "correction":D
    .local v1, "correction":D
    .restart local v14    # "parl":D
    :cond_16
    move-wide/from16 v31, v1

    .end local v1    # "correction":D
    .restart local v31    # "correction":D
    cmpg-double v1, v10, v16

    if-gez v1, :cond_17

    .line 695
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v12, v13, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    move-wide v12, v1

    .line 699
    :cond_17
    :goto_14
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    add-double v1, v1, v31

    invoke-static {v14, v15, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 640
    .end local v29    # "previousFP":D
    .end local v31    # "correction":D
    .end local v34    # "sPar":D
    add-int/lit8 v7, v21, -0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-wide v27, 0x10000c51bd5669L    # 2.2251E-308

    .end local v21    # "countdown":I
    .local v7, "countdown":I
    goto/16 :goto_c

    .line 666
    .end local v7    # "countdown":I
    .restart local v2    # "sPar":D
    .restart local v21    # "countdown":I
    .restart local v29    # "previousFP":D
    :cond_18
    move-wide/from16 v34, v2

    .line 668
    .end local v2    # "sPar":D
    .restart local v34    # "sPar":D
    :goto_15
    return-void

    .line 702
    .end local v21    # "countdown":I
    .end local v29    # "previousFP":D
    .end local v34    # "sPar":D
    :cond_19
    return-void
.end method

.method private qTy([D)V
    .locals 11
    .param p1, "y"    # [D

    .line 928
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v0, v0

    .line 929
    .local v0, "nR":I
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    .line 931
    .local v1, "nC":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 932
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    .line 933
    .local v3, "pk":I
    const-wide/16 v4, 0x0

    .line 934
    .local v4, "gamma":D
    move v6, v2

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 935
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v7, v7, v3

    aget-wide v9, p1, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 934
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 937
    .end local v6    # "i":I
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    .line 938
    move v6, v2

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v0, :cond_1

    .line 939
    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v6

    aget-wide v9, v9, v3

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, p1, v6

    .line 938
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 931
    .end local v3    # "pk":I
    .end local v4    # "gamma":D
    .end local v6    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 942
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

    .line 852
    move-object/from16 v0, p0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    move-object/from16 v3, p1

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    .line 854
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v1, v1

    .line 855
    .local v1, "nR":I
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v4, 0x0

    aget-object v2, v2, v4

    array-length v2, v2

    .line 858
    .local v2, "nC":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 859
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aput v4, v5, v4

    .line 860
    const-wide/16 v5, 0x0

    .line 861
    .local v5, "norm2":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 862
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v7

    aget-wide v8, v8, v4

    .line 863
    .local v8, "akk":D
    mul-double v10, v8, v8

    add-double/2addr v5, v10

    .line 861
    .end local v8    # "akk":D
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 865
    .end local v7    # "i":I
    :cond_0
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 858
    .end local v5    # "norm2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 869
    .end local v4    # "k":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_2
    if-ge v4, v2, :cond_b

    .line 872
    const/4 v5, -0x1

    .line 873
    .local v5, "nextColumn":I
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 874
    .local v6, "ak2":D
    move v8, v4

    .local v8, "i":I
    :goto_3
    if-ge v8, v2, :cond_5

    .line 875
    const-wide/16 v9, 0x0

    .line 876
    .local v9, "norm2":D
    move v11, v4

    .local v11, "j":I
    :goto_4
    if-ge v11, v1, :cond_2

    .line 877
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v12, v12, v11

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v8

    aget-wide v12, v12, v13

    .line 878
    .local v12, "aki":D
    mul-double v14, v12, v12

    add-double/2addr v9, v14

    .line 876
    .end local v12    # "aki":D
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 880
    .end local v11    # "j":I
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_4

    .line 884
    cmpl-double v11, v9, v6

    if-lez v11, :cond_3

    .line 885
    move v5, v8

    .line 886
    move-wide v6, v9

    .line 874
    .end local v9    # "norm2":D
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 881
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

    .line 889
    .end local v8    # "i":I
    .end local v9    # "norm2":D
    :cond_5
    iget-wide v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v8, v6, v8

    if-gtz v8, :cond_6

    .line 890
    iput v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    .line 891
    return-void

    .line 893
    :cond_6
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v5

    .line 894
    .local v8, "pk":I
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v4

    aput v10, v9, v5

    .line 895
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aput v8, v9, v4

    .line 898
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v8

    .line 899
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

    .line 900
    .local v11, "alpha":D
    :goto_5
    mul-double v13, v9, v11

    sub-double v13, v6, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v13

    .line 901
    .local v15, "betak":D
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    aput-wide v15, v13, v8

    .line 904
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aput-wide v11, v13, v8

    .line 905
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v13, v13, v4

    aget-wide v17, v13, v8

    sub-double v17, v17, v11

    aput-wide v17, v13, v8

    .line 908
    add-int/lit8 v13, v2, -0x1

    sub-int/2addr v13, v4

    .local v13, "dk":I
    :goto_6
    if-lez v13, :cond_a

    .line 909
    const-wide/16 v17, 0x0

    .line 910
    .local v17, "gamma":D
    move v14, v4

    .local v14, "j":I
    :goto_7
    if-ge v14, v1, :cond_8

    .line 911
    move/from16 v19, v2

    .end local v2    # "nC":I
    .local v19, "nC":I
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v14

    aget-wide v20, v2, v8

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v14

    move-object/from16 v22, v2

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    add-int v23, v4, v13

    aget v2, v2, v23

    aget-wide v22, v22, v2

    mul-double v20, v20, v22

    add-double v17, v17, v20

    .line 910
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v19

    goto :goto_7

    .end local v19    # "nC":I
    .restart local v2    # "nC":I
    :cond_8
    move/from16 v19, v2

    .line 913
    .end local v2    # "nC":I
    .end local v14    # "j":I
    .restart local v19    # "nC":I
    mul-double v17, v17, v15

    .line 914
    move v2, v4

    .local v2, "j":I
    :goto_8
    if-ge v2, v1, :cond_9

    .line 915
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v2

    move/from16 v20, v1

    .end local v1    # "nR":I
    .local v20, "nR":I
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    add-int v21, v4, v13

    aget v1, v1, v21

    aget-wide v21, v14, v1

    move/from16 v23, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v2

    aget-wide v24, v1, v8

    mul-double v24, v24, v17

    sub-double v21, v21, v24

    aput-wide v21, v14, v23

    .line 914
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v20

    goto :goto_8

    .end local v20    # "nR":I
    .restart local v1    # "nR":I
    :cond_9
    move/from16 v20, v1

    .line 908
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

    .line 869
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

    .line 919
    .end local v1    # "nR":I
    .end local v4    # "k":I
    .restart local v20    # "nR":I
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    iput v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    .line 920
    return-void
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 64

    .line 280
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getTarget()[D

    move-result-object v1

    array-length v8, v1

    .line 281
    .local v8, "nR":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getStartPoint()[D

    move-result-object v9

    .line 282
    .local v9, "currentPoint":[D
    array-length v10, v9

    .line 285
    .local v10, "nC":I
    invoke-static {v8, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    iput v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 286
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    .line 287
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    .line 288
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    .line 289
    new-array v1, v10, [I

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    .line 290
    new-array v1, v10, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    .line 293
    const-wide/16 v1, 0x0

    .line 294
    .local v1, "delta":D
    const-wide/16 v3, 0x0

    .line 295
    .local v3, "xNorm":D
    move-wide v5, v3

    .end local v3    # "xNorm":D
    .local v5, "xNorm":D
    new-array v4, v10, [D

    .line 296
    .local v4, "diag":[D
    new-array v11, v10, [D

    .line 297
    .local v11, "oldX":[D
    new-array v3, v8, [D

    .line 298
    .local v3, "oldRes":[D
    new-array v7, v8, [D

    .line 299
    .local v7, "oldObj":[D
    move-wide v12, v1

    .end local v1    # "delta":D
    .local v12, "delta":D
    new-array v1, v8, [D

    .line 300
    .local v1, "qtf":[D
    move-wide v14, v5

    .end local v5    # "xNorm":D
    .local v14, "xNorm":D
    new-array v5, v10, [D

    .line 301
    .local v5, "work1":[D
    new-array v6, v10, [D

    .line 302
    .local v6, "work2":[D
    move-object v2, v7

    .end local v7    # "oldObj":[D
    .local v2, "oldObj":[D
    new-array v7, v10, [D

    .line 304
    .local v7, "work3":[D
    move-object/from16 v16, v11

    .end local v11    # "oldX":[D
    .local v16, "oldX":[D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    .line 307
    .local v11, "weightMatrixSqrt":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v17, v2

    .end local v2    # "oldObj":[D
    .local v17, "oldObj":[D
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v2

    .line 308
    .local v2, "currentObjective":[D
    move-object/from16 v18, v3

    .end local v3    # "oldRes":[D
    .local v18, "oldRes":[D
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v3

    .line 309
    .local v3, "currentResiduals":[D
    move-object/from16 v19, v4

    .end local v4    # "diag":[D
    .local v19, "diag":[D
    new-instance v4, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v4, v9, v2}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 310
    .local v4, "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v20

    .line 313
    .local v20, "currentCost":D
    move-wide/from16 v22, v12

    .end local v12    # "delta":D
    .local v22, "delta":D
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 314
    const/16 v24, 0x1

    .line 315
    .local v24, "firstIteration":Z
    const/16 v25, 0x0

    .line 316
    .local v25, "iter":I
    move-wide/from16 v26, v12

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v12

    move-object v13, v5

    move-wide/from16 v60, v20

    move-object/from16 v20, v4

    move-wide/from16 v4, v60

    .line 318
    .end local v5    # "work1":[D
    .local v4, "currentCost":D
    .local v12, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    .local v13, "work1":[D
    .local v20, "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    :goto_0
    move-object/from16 v21, v13

    .end local v13    # "work1":[D
    .local v21, "work1":[D
    add-int/lit8 v13, v25, 0x1

    .line 319
    .end local v25    # "iter":I
    .local v13, "iter":I
    move-object/from16 v25, v20

    .line 322
    .local v25, "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move-object/from16 v28, v2

    .end local v2    # "currentObjective":[D
    .local v28, "currentObjective":[D
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 324
    invoke-interface {v11, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 325
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_0

    .line 326
    move/from16 v29, v2

    .end local v2    # "i":I
    .local v29, "i":I
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    aget-wide v30, v2, v29

    aput-wide v30, v1, v29

    .line 325
    add-int/lit8 v2, v29, 0x1

    .end local v29    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    :cond_0
    move/from16 v29, v2

    .line 330
    .end local v2    # "i":I
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qTy([D)V

    .line 334
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    move-object/from16 v29, v1

    .end local v1    # "qtf":[D
    .local v29, "qtf":[D
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v1, :cond_1

    .line 335
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v2

    .line 336
    .local v1, "pk":I
    move/from16 v30, v1

    .end local v1    # "pk":I
    .local v30, "pk":I
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v2

    move-object/from16 v31, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v32, v1, v30

    aput-wide v32, v31, v30

    .line 334
    .end local v30    # "pk":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v29

    goto :goto_2

    .line 339
    .end local v2    # "k":I
    :cond_1
    if-eqz v24, :cond_5

    .line 342
    const-wide/16 v1, 0x0

    .line 343
    .end local v14    # "xNorm":D
    .local v1, "xNorm":D
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_3
    if-ge v14, v10, :cond_3

    .line 344
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v30, v15, v14

    .line 345
    .local v30, "dk":D
    cmpl-double v15, v30, v26

    if-nez v15, :cond_2

    .line 346
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    .line 348
    :cond_2
    aget-wide v32, v9, v14

    mul-double v32, v32, v30

    .line 349
    .local v32, "xk":D
    mul-double v34, v32, v32

    add-double v1, v1, v34

    .line 350
    aput-wide v30, v19, v14

    .line 343
    .end local v30    # "dk":D
    .end local v32    # "xk":D
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 352
    .end local v14    # "k":I
    :cond_3
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 355
    .end local v1    # "xNorm":D
    .local v14, "xNorm":D
    cmpl-double v1, v14, v26

    if-nez v1, :cond_4

    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    goto :goto_4

    :cond_4
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    mul-double/2addr v1, v14

    :goto_4
    move-wide/from16 v22, v1

    .line 359
    :cond_5
    const-wide/16 v1, 0x0

    .line 360
    .local v1, "maxCosine":D
    cmpl-double v30, v4, v26

    if-eqz v30, :cond_9

    .line 361
    const/16 v30, 0x0

    move/from16 v60, v30

    move-object/from16 v30, v3

    move/from16 v3, v60

    .local v3, "j":I
    .local v30, "currentResiduals":[D
    :goto_5
    move-object/from16 v31, v6

    .end local v6    # "work2":[D
    .local v31, "work2":[D
    iget v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v6, :cond_8

    .line 362
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v6, v3

    .line 363
    .local v6, "pj":I
    move/from16 v32, v6

    .end local v6    # "pj":I
    .local v32, "pj":I
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v33, v6, v32

    .line 364
    .local v33, "s":D
    cmpl-double v6, v33, v26

    if-eqz v6, :cond_7

    .line 365
    const-wide/16 v35, 0x0

    .line 366
    .local v35, "sum":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-gt v6, v3, :cond_6

    .line 367
    move/from16 v37, v3

    .end local v3    # "j":I
    .local v37, "j":I
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v3, v3, v6

    aget-wide v38, v3, v32

    aget-wide v40, v29, v6

    mul-double v38, v38, v40

    add-double v35, v35, v38

    .line 366
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v37

    goto :goto_6

    .end local v37    # "j":I
    .restart local v3    # "j":I
    :cond_6
    move/from16 v37, v3

    .line 369
    .end local v3    # "j":I
    .end local v6    # "i":I
    .restart local v37    # "j":I
    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    mul-double v40, v33, v4

    move-object v3, v7

    .end local v7    # "work3":[D
    .local v3, "work3":[D
    div-double v6, v38, v40

    invoke-static {v1, v2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    goto :goto_7

    .line 364
    .end local v35    # "sum":D
    .end local v37    # "j":I
    .local v3, "j":I
    .restart local v7    # "work3":[D
    :cond_7
    move/from16 v37, v3

    move-object v3, v7

    .line 361
    .end local v7    # "work3":[D
    .end local v32    # "pj":I
    .end local v33    # "s":D
    .local v3, "work3":[D
    .restart local v37    # "j":I
    :goto_7
    add-int/lit8 v6, v37, 0x1

    move-object v7, v3

    move v3, v6

    move-object/from16 v6, v31

    .end local v37    # "j":I
    .local v6, "j":I
    goto :goto_5

    .end local v6    # "j":I
    .local v3, "j":I
    .restart local v7    # "work3":[D
    :cond_8
    move/from16 v37, v3

    move-object v3, v7

    .end local v7    # "work3":[D
    .local v3, "work3":[D
    .restart local v37    # "j":I
    move-wide/from16 v32, v1

    goto :goto_8

    .line 360
    .end local v30    # "currentResiduals":[D
    .end local v31    # "work2":[D
    .end local v37    # "j":I
    .local v3, "currentResiduals":[D
    .local v6, "work2":[D
    .restart local v7    # "work3":[D
    :cond_9
    move-object/from16 v30, v3

    move-object/from16 v31, v6

    move-object v3, v7

    .end local v6    # "work2":[D
    .end local v7    # "work3":[D
    .local v3, "work3":[D
    .restart local v30    # "currentResiduals":[D
    .restart local v31    # "work2":[D
    move-wide/from16 v32, v1

    .line 373
    .end local v1    # "maxCosine":D
    .local v32, "maxCosine":D
    :goto_8
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    cmpg-double v1, v32, v1

    if-gtz v1, :cond_a

    .line 375
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 377
    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    .line 378
    return-object v20

    .line 382
    :cond_a
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_9
    if-ge v1, v10, :cond_b

    .line 383
    aget-wide v6, v19, v1

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    move/from16 v34, v1

    .end local v1    # "j":I
    .local v34, "j":I
    aget-wide v1, v2, v34

    invoke-static {v6, v7, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aput-wide v1, v19, v34

    .line 382
    add-int/lit8 v1, v34, 0x1

    .end local v34    # "j":I
    .restart local v1    # "j":I
    goto :goto_9

    :cond_b
    move/from16 v34, v1

    .line 387
    .end local v1    # "j":I
    const-wide/16 v1, 0x0

    move-wide/from16 v60, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    move-wide/from16 v62, v4

    move-object/from16 v4, v18

    move-wide/from16 v17, v62

    move-wide/from16 v5, v22

    move-wide/from16 v22, v14

    move-wide/from16 v14, v60

    .end local v18    # "oldRes":[D
    .end local v28    # "currentObjective":[D
    .local v1, "oldObj":[D
    .local v2, "currentObjective":[D
    .local v4, "oldRes":[D
    .local v5, "delta":D
    .local v14, "ratio":D
    .local v17, "currentCost":D
    .local v22, "xNorm":D
    :goto_a
    const-wide v34, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v7, v14, v34

    if-gez v7, :cond_26

    .line 390
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_b
    move-object/from16 v28, v1

    .end local v1    # "oldObj":[D
    .local v28, "oldObj":[D
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v7, v1, :cond_c

    .line 391
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v7

    .line 392
    .local v1, "pj":I
    aget-wide v36, v9, v1

    aput-wide v36, v16, v1

    .line 390
    .end local v1    # "pj":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v28

    goto :goto_b

    .line 394
    .end local v7    # "j":I
    :cond_c
    move-wide/from16 v36, v17

    .line 395
    .local v36, "previousCost":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 396
    .local v1, "tmpVec":[D
    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 397
    move-object v4, v1

    .line 398
    move-object/from16 v38, v2

    .line 399
    .end local v1    # "tmpVec":[D
    .local v38, "tmpVec":[D
    move-object/from16 v39, v28

    .line 400
    .end local v2    # "currentObjective":[D
    .local v39, "currentObjective":[D
    move-object/from16 v28, v38

    .line 403
    move-object v7, v3

    move-wide v2, v5

    move/from16 v40, v8

    move-object/from16 v5, v21

    move-object/from16 v1, v29

    move-object/from16 v6, v31

    move-object v8, v4

    move-object/from16 v4, v19

    .end local v3    # "work3":[D
    .end local v19    # "diag":[D
    .end local v21    # "work1":[D
    .end local v29    # "qtf":[D
    .end local v31    # "work2":[D
    .local v1, "qtf":[D
    .local v2, "delta":D
    .local v4, "diag":[D
    .local v5, "work1":[D
    .restart local v6    # "work2":[D
    .local v7, "work3":[D
    .local v8, "oldRes":[D
    .local v40, "nR":I
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->determineLMParameter([DD[D[D[D[D)V

    .line 406
    move-wide/from16 v60, v2

    move-object v3, v0

    move-wide/from16 v0, v60

    .end local v1    # "qtf":[D
    .end local v2    # "delta":D
    .end local v4    # "diag":[D
    .end local v6    # "work2":[D
    .local v0, "delta":D
    .restart local v19    # "diag":[D
    .restart local v29    # "qtf":[D
    .restart local v31    # "work2":[D
    const-wide/16 v41, 0x0

    .line 407
    .local v41, "lmNorm":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c
    iget v4, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v4, :cond_d

    .line 408
    iget-object v4, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v2

    .line 409
    .local v4, "pj":I
    iget-object v6, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move/from16 v21, v2

    .end local v2    # "j":I
    .local v21, "j":I
    iget-object v2, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    move/from16 v44, v4

    move-object/from16 v43, v5

    .end local v4    # "pj":I
    .end local v5    # "work1":[D
    .local v43, "work1":[D
    .local v44, "pj":I
    aget-wide v4, v2, v44

    neg-double v4, v4

    aput-wide v4, v6, v44

    .line 410
    aget-wide v4, v16, v44

    iget-object v2, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v45, v2, v44

    add-double v4, v4, v45

    aput-wide v4, v9, v44

    .line 411
    aget-wide v4, v19, v44

    iget-object v2, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v45, v2, v44

    mul-double v4, v4, v45

    .line 412
    .local v4, "s":D
    mul-double v45, v4, v4

    add-double v41, v41, v45

    .line 407
    .end local v4    # "s":D
    .end local v44    # "pj":I
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v5, v43

    .end local v21    # "j":I
    .restart local v2    # "j":I
    goto :goto_c

    .end local v43    # "work1":[D
    .restart local v5    # "work1":[D
    :cond_d
    move/from16 v21, v2

    move-object/from16 v43, v5

    .line 414
    .end local v2    # "j":I
    .end local v5    # "work1":[D
    .restart local v43    # "work1":[D
    invoke-static/range {v41 .. v42}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 416
    .end local v41    # "lmNorm":D
    .local v4, "lmNorm":D
    if-eqz v24, :cond_e

    .line 417
    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 421
    :cond_e
    invoke-virtual {v3, v9}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v2

    .line 422
    .end local v39    # "currentObjective":[D
    .local v2, "currentObjective":[D
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v6

    .line 423
    .end local v30    # "currentResiduals":[D
    .local v6, "currentResiduals":[D
    move-wide/from16 v41, v4

    .end local v4    # "lmNorm":D
    .restart local v41    # "lmNorm":D
    new-instance v4, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v4, v9, v2}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 424
    .end local v20    # "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .local v4, "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move-wide/from16 v44, v14

    .end local v14    # "ratio":D
    .local v44, "ratio":D
    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v14

    .line 427
    .end local v17    # "currentCost":D
    .local v14, "currentCost":D
    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .line 428
    .local v17, "actRed":D
    const-wide v20, 0x3fb999999999999aL    # 0.1

    mul-double v46, v14, v20

    cmpg-double v5, v46, v36

    if-gez v5, :cond_f

    .line 429
    div-double v46, v14, v36

    .line 430
    .local v46, "r":D
    const-wide/high16 v48, 0x3ff0000000000000L    # 1.0

    mul-double v50, v46, v46

    sub-double v17, v48, v50

    .line 435
    .end local v46    # "r":D
    :cond_f
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_d
    move-object/from16 v39, v2

    .end local v2    # "currentObjective":[D
    .restart local v39    # "currentObjective":[D
    iget v2, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v5, v2, :cond_11

    .line 436
    iget-object v2, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v5

    .line 437
    .local v2, "pj":I
    move/from16 v30, v2

    .end local v2    # "pj":I
    .local v30, "pj":I
    iget-object v2, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v46, v2, v30

    .line 438
    .local v46, "dirJ":D
    aput-wide v26, v43, v5

    .line 439
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-gt v2, v5, :cond_10

    .line 440
    aget-wide v48, v43, v2

    move/from16 v50, v2

    .end local v2    # "i":I
    .local v50, "i":I
    iget-object v2, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v50

    aget-wide v51, v2, v30

    mul-double v51, v51, v46

    add-double v48, v48, v51

    aput-wide v48, v43, v50

    .line 439
    add-int/lit8 v2, v50, 0x1

    .end local v50    # "i":I
    .restart local v2    # "i":I
    goto :goto_e

    :cond_10
    move/from16 v50, v2

    .line 435
    .end local v2    # "i":I
    .end local v30    # "pj":I
    .end local v46    # "dirJ":D
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v39

    goto :goto_d

    .line 443
    .end local v5    # "j":I
    :cond_11
    const-wide/16 v46, 0x0

    .line 444
    .local v46, "coeff1":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f
    iget v5, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v5, :cond_12

    .line 445
    aget-wide v48, v43, v2

    aget-wide v50, v43, v2

    mul-double v48, v48, v50

    add-double v46, v46, v48

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 447
    .end local v2    # "j":I
    :cond_12
    mul-double v48, v36, v36

    .line 448
    .local v48, "pc2":D
    div-double v46, v46, v48

    .line 449
    move-object v2, v6

    .end local v6    # "currentResiduals":[D
    .local v2, "currentResiduals":[D
    iget-wide v5, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    mul-double v5, v5, v41

    mul-double v5, v5, v41

    div-double v5, v5, v48

    .line 450
    .local v5, "coeff2":D
    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    mul-double v52, v5, v50

    add-double v52, v46, v52

    .line 451
    .local v52, "preRed":D
    move-wide/from16 v54, v5

    .end local v5    # "coeff2":D
    .local v54, "coeff2":D
    add-double v5, v46, v54

    neg-double v5, v5

    .line 454
    .local v5, "dirDer":D
    cmpl-double v30, v52, v26

    if-nez v30, :cond_13

    move-wide/from16 v56, v26

    goto :goto_10

    :cond_13
    div-double v56, v17, v52

    .line 457
    .end local v44    # "ratio":D
    .local v56, "ratio":D
    :goto_10
    const-wide/high16 v44, 0x3fd0000000000000L    # 0.25

    cmpg-double v30, v56, v44

    const-wide/high16 v44, 0x3fe0000000000000L    # 0.5

    if-gtz v30, :cond_17

    .line 458
    cmpg-double v30, v17, v26

    if-gez v30, :cond_14

    mul-double v58, v5, v44

    mul-double v44, v44, v17

    add-double v44, v5, v44

    div-double v44, v58, v44

    .line 460
    .local v44, "tmp":D
    :cond_14
    mul-double v58, v14, v20

    cmpl-double v30, v58, v36

    if-gez v30, :cond_15

    cmpg-double v20, v44, v20

    if-gez v20, :cond_16

    .line 461
    :cond_15
    const-wide v44, 0x3fb999999999999aL    # 0.1

    .line 463
    :cond_16
    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    move-wide/from16 v58, v5

    .end local v5    # "dirDer":D
    .local v58, "dirDer":D
    mul-double v5, v41, v20

    invoke-static {v0, v1, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    mul-double v5, v5, v44

    .line 464
    .end local v0    # "delta":D
    .local v5, "delta":D
    iget-wide v0, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    div-double v0, v0, v44

    iput-wide v0, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 465
    .end local v44    # "tmp":D
    goto :goto_12

    .end local v58    # "dirDer":D
    .restart local v0    # "delta":D
    .local v5, "dirDer":D
    :cond_17
    move-wide/from16 v58, v5

    .end local v5    # "dirDer":D
    .restart local v58    # "dirDer":D
    iget-wide v5, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v5, v5, v26

    if-eqz v5, :cond_19

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    cmpl-double v5, v56, v5

    if-ltz v5, :cond_18

    goto :goto_11

    :cond_18
    move-wide v5, v0

    goto :goto_12

    .line 466
    :cond_19
    :goto_11
    mul-double v0, v41, v50

    .line 467
    iget-wide v5, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    mul-double v5, v5, v44

    iput-wide v5, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide v5, v0

    .line 471
    .end local v0    # "delta":D
    .local v5, "delta":D
    :goto_12
    cmpl-double v0, v56, v34

    if-ltz v0, :cond_1d

    .line 473
    const/16 v24, 0x0

    .line 474
    const-wide/16 v0, 0x0

    .line 475
    .end local v22    # "xNorm":D
    .local v0, "xNorm":D
    const/16 v20, 0x0

    move-wide/from16 v60, v0

    move/from16 v0, v20

    move-wide/from16 v20, v60

    .local v0, "k":I
    .local v20, "xNorm":D
    :goto_13
    if-ge v0, v10, :cond_1a

    .line 476
    aget-wide v22, v19, v0

    aget-wide v34, v9, v0

    mul-double v22, v22, v34

    .line 477
    .local v22, "xK":D
    mul-double v34, v22, v22

    add-double v20, v20, v34

    .line 475
    .end local v22    # "xK":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 479
    .end local v0    # "k":I
    :cond_1a
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    .line 482
    .end local v20    # "xNorm":D
    .local v22, "xNorm":D
    if-eqz v12, :cond_1b

    move-object/from16 v0, v25

    .end local v25    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .local v0, "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    invoke-interface {v12, v13, v0, v4}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 483
    invoke-virtual {v3, v14, v15}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 485
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v1

    iput-object v1, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    .line 486
    return-object v4

    .line 482
    .end local v0    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .restart local v25    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    :cond_1b
    move-object/from16 v0, v25

    .line 506
    .end local v25    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .restart local v0    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    :cond_1c
    move-object v1, v8

    move-object v8, v4

    move-object v4, v1

    move-object/from16 v20, v0

    move-object/from16 v1, v28

    move-object/from16 v0, v39

    goto :goto_15

    .line 490
    .end local v0    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .restart local v25    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    :cond_1d
    move-object/from16 v0, v25

    .end local v25    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .restart local v0    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    move-wide/from16 v14, v36

    .line 491
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_14
    move-object/from16 v20, v0

    .end local v0    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .local v20, "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    iget v0, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v0, :cond_1e

    .line 492
    iget-object v0, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v0, v0, v1

    .line 493
    .local v0, "pj":I
    aget-wide v34, v16, v0

    aput-wide v34, v9, v0

    .line 491
    .end local v0    # "pj":I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v20

    goto :goto_14

    .line 495
    .end local v1    # "j":I
    :cond_1e
    iget-object v0, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 496
    .end local v38    # "tmpVec":[D
    .local v0, "tmpVec":[D
    iput-object v8, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 497
    move-object v1, v0

    .line 498
    .end local v8    # "oldRes":[D
    .local v1, "oldRes":[D
    move-object/from16 v38, v39

    .line 499
    .end local v0    # "tmpVec":[D
    .restart local v38    # "tmpVec":[D
    move-object/from16 v0, v28

    .line 500
    .end local v39    # "currentObjective":[D
    .local v0, "currentObjective":[D
    move-object/from16 v8, v38

    .line 502
    .end local v28    # "oldObj":[D
    .local v8, "oldObj":[D
    move-object/from16 v21, v1

    .end local v1    # "oldRes":[D
    .local v21, "oldRes":[D
    new-instance v1, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v1, v9, v0}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    move-object v4, v8

    move-object v8, v1

    move-object v1, v4

    move-object/from16 v4, v21

    .line 506
    .end local v21    # "oldRes":[D
    .local v1, "oldObj":[D
    .local v4, "oldRes":[D
    .local v8, "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    :goto_15
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v34

    move-object/from16 v25, v0

    move-object/from16 v21, v1

    .end local v0    # "currentObjective":[D
    .end local v1    # "oldObj":[D
    .local v21, "oldObj":[D
    .local v25, "currentObjective":[D
    iget-wide v0, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v0, v34, v0

    if-gtz v0, :cond_1f

    iget-wide v0, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v0, v52, v0

    if-gtz v0, :cond_1f

    cmpg-double v0, v56, v50

    if-lez v0, :cond_20

    :cond_1f
    iget-wide v0, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    mul-double v0, v0, v22

    cmpg-double v0, v5, v0

    if-gtz v0, :cond_21

    .line 510
    :cond_20
    invoke-virtual {v3, v14, v15}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 512
    invoke-virtual {v8}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v0

    iput-object v0, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    .line 513
    return-object v8

    .line 518
    :cond_21
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v34, 0x3cafffd481f97682L    # 2.2204E-16

    cmpg-double v0, v0, v34

    if-gtz v0, :cond_23

    cmpg-double v0, v52, v34

    if-gtz v0, :cond_23

    cmpg-double v0, v56, v50

    if-lez v0, :cond_22

    move-wide/from16 v44, v5

    move-object v6, v4

    goto :goto_16

    .line 519
    :cond_22
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    move-wide/from16 v44, v5

    move-object v6, v4

    .end local v4    # "oldRes":[D
    .end local v5    # "delta":D
    .local v6, "oldRes":[D
    .local v44, "delta":D
    iget-wide v4, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 518
    .end local v6    # "oldRes":[D
    .end local v44    # "delta":D
    .restart local v4    # "oldRes":[D
    .restart local v5    # "delta":D
    :cond_23
    move-wide/from16 v44, v5

    move-object v6, v4

    .line 521
    .end local v4    # "oldRes":[D
    .end local v5    # "delta":D
    .restart local v6    # "oldRes":[D
    .restart local v44    # "delta":D
    :goto_16
    mul-double v0, v22, v34

    cmpg-double v0, v44, v0

    if-lez v0, :cond_25

    .line 524
    cmpg-double v0, v32, v34

    if-lez v0, :cond_24

    .line 528
    .end local v17    # "actRed":D
    .end local v36    # "previousCost":D
    .end local v38    # "tmpVec":[D
    .end local v41    # "lmNorm":D
    .end local v46    # "coeff1":D
    .end local v48    # "pc2":D
    .end local v52    # "preRed":D
    .end local v54    # "coeff2":D
    .end local v58    # "dirDer":D
    move-object/from16 v30, v2

    move-object v0, v3

    move-object v4, v6

    move-object v3, v7

    move-wide/from16 v17, v14

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    move-object/from16 v21, v43

    move-wide/from16 v5, v44

    move-wide/from16 v14, v56

    move-object/from16 v25, v20

    move-object/from16 v20, v8

    move/from16 v8, v40

    goto/16 :goto_a

    .line 525
    .restart local v17    # "actRed":D
    .restart local v36    # "previousCost":D
    .restart local v38    # "tmpVec":[D
    .restart local v41    # "lmNorm":D
    .restart local v46    # "coeff1":D
    .restart local v48    # "pc2":D
    .restart local v52    # "preRed":D
    .restart local v54    # "coeff2":D
    .restart local v58    # "dirDer":D
    :cond_24
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 522
    :cond_25
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v3, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 387
    .end local v6    # "oldRes":[D
    .end local v7    # "work3":[D
    .end local v36    # "previousCost":D
    .end local v38    # "tmpVec":[D
    .end local v40    # "nR":I
    .end local v41    # "lmNorm":D
    .end local v43    # "work1":[D
    .end local v44    # "delta":D
    .end local v46    # "coeff1":D
    .end local v48    # "pc2":D
    .end local v52    # "preRed":D
    .end local v54    # "coeff2":D
    .end local v56    # "ratio":D
    .end local v58    # "dirDer":D
    .restart local v1    # "oldObj":[D
    .local v2, "currentObjective":[D
    .restart local v3    # "work3":[D
    .restart local v4    # "oldRes":[D
    .restart local v5    # "delta":D
    .local v8, "nR":I
    .local v14, "ratio":D
    .local v17, "currentCost":D
    .local v20, "current":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .local v21, "work1":[D
    .local v25, "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .local v30, "currentResiduals":[D
    :cond_26
    move-object/from16 v28, v1

    move-object v7, v3

    move/from16 v40, v8

    move-wide/from16 v44, v14

    move-object/from16 v43, v21

    move-object v3, v0

    move-wide v0, v5

    move-object/from16 v5, v25

    .line 529
    .end local v1    # "oldObj":[D
    .end local v3    # "work3":[D
    .end local v5    # "delta":D
    .end local v8    # "nR":I
    .end local v14    # "ratio":D
    .end local v21    # "work1":[D
    .end local v25    # "previous":Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .end local v32    # "maxCosine":D
    .local v0, "delta":D
    .restart local v7    # "work3":[D
    .restart local v28    # "oldObj":[D
    .restart local v40    # "nR":I
    .restart local v43    # "work1":[D
    move-wide/from16 v14, v17

    move-object/from16 v18, v4

    move-wide v4, v14

    move/from16 v25, v13

    move-wide/from16 v14, v22

    move-object/from16 v17, v28

    move-object/from16 v6, v31

    move-object/from16 v13, v43

    move-wide/from16 v22, v0

    move-object v0, v3

    move-object/from16 v1, v29

    move-object/from16 v3, v30

    goto/16 :goto_0
.end method
