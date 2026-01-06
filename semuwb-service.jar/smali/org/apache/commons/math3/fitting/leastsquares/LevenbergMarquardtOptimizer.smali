.class public Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
.super Ljava/lang/Object;
.source "LevenbergMarquardtOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    }
.end annotation


# static fields
.field private static final TWO_EPS:D


# instance fields
.field private final costRelativeTolerance:D

.field private final initialStepBoundFactor:D

.field private final orthoTolerance:D

.field private final parRelativeTolerance:D

.field private final qrRankingThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 113
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 140
    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    .line 141
    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 0
    .param p1, "initialStepBoundFactor"    # D
    .param p3, "costRelativeTolerance"    # D
    .param p5, "parRelativeTolerance"    # D
    .param p7, "orthoTolerance"    # D
    .param p9, "qrRankingThreshold"    # D

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 161
    iput-wide p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 162
    iput-wide p5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 163
    iput-wide p7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 164
    iput-wide p9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    .line 165
    return-void
.end method

.method private determineLMDirection([D[D[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D)V
    .locals 38
    .param p1, "qy"    # [D
    .param p2, "diag"    # [D
    .param p3, "lmDiag"    # [D
    .param p4, "internalData"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .param p5, "solvedCols"    # I
    .param p6, "work"    # [D
    .param p7, "lmDir"    # [D

    .line 808
    move-object/from16 v0, p3

    move/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v3

    .line 809
    .local v3, "permutation":[I
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v4

    .line 810
    .local v4, "weightedJacobian":[[D
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v5

    .line 814
    .local v5, "diagR":[D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v6, v1, :cond_1

    .line 815
    aget v7, v3, v6

    .line 816
    .local v7, "pj":I
    add-int/lit8 v8, v6, 0x1

    .local v8, "i":I
    :goto_1
    if-ge v8, v1, :cond_0

    .line 817
    aget-object v9, v4, v8

    aget-object v10, v4, v6

    aget v11, v3, v8

    aget-wide v10, v10, v11

    aput-wide v10, v9, v7

    .line 816
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 819
    .end local v8    # "i":I
    :cond_0
    aget-wide v8, v5, v7

    aput-wide v8, v2, v6

    .line 820
    aget-wide v8, p1, v6

    aput-wide v8, p6, v6

    .line 814
    .end local v7    # "pj":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 824
    .end local v6    # "j":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    const-wide/16 v7, 0x0

    if-ge v6, v1, :cond_7

    .line 828
    aget v9, v3, v6

    .line 829
    .local v9, "pj":I
    aget-wide v10, p2, v9

    .line 830
    .local v10, "dpj":D
    cmpl-double v12, v10, v7

    if-eqz v12, :cond_2

    .line 831
    add-int/lit8 v12, v6, 0x1

    array-length v13, v0

    invoke-static {v0, v12, v13, v7, v8}, Ljava/util/Arrays;->fill([DIID)V

    .line 833
    :cond_2
    aput-wide v10, v0, v6

    .line 838
    const-wide/16 v12, 0x0

    .line 839
    .local v12, "qtbpj":D
    move v14, v6

    .local v14, "k":I
    :goto_3
    if-ge v14, v1, :cond_6

    .line 840
    aget v15, v3, v14

    .line 844
    .local v15, "pk":I
    aget-wide v16, v0, v14

    cmpl-double v16, v16, v7

    if-eqz v16, :cond_5

    .line 848
    aget-object v16, v4, v14

    aget-wide v16, v16, v15

    .line 849
    .local v16, "rkk":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    aget-wide v20, v0, v14

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    cmpg-double v18, v18, v20

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    if-gez v18, :cond_3

    .line 850
    aget-wide v21, v0, v14

    div-double v21, v16, v21

    .line 851
    .local v21, "cotan":D
    mul-double v23, v21, v21

    add-double v23, v23, v19

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v23

    div-double v19, v19, v23

    .line 852
    .local v19, "sin":D
    mul-double v21, v21, v19

    .line 853
    .local v21, "cos":D
    move-wide/from16 v34, v19

    move-wide/from16 v36, v21

    move-wide/from16 v20, v7

    move-wide/from16 v7, v34

    move-wide/from16 v18, v36

    goto :goto_4

    .line 854
    .end local v19    # "sin":D
    .end local v21    # "cos":D
    :cond_3
    aget-wide v21, v0, v14

    div-double v21, v21, v16

    .line 855
    .local v21, "tan":D
    mul-double v23, v21, v21

    add-double v23, v23, v19

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v23

    div-double v18, v19, v23

    .line 856
    .local v18, "cos":D
    mul-double v23, v18, v21

    move-wide/from16 v20, v7

    move-wide/from16 v7, v23

    .line 861
    .end local v21    # "tan":D
    .local v7, "sin":D
    :goto_4
    aget-object v22, v4, v14

    mul-double v23, v18, v16

    aget-wide v25, v0, v14

    mul-double v25, v25, v7

    add-double v23, v23, v25

    aput-wide v23, v22, v15

    .line 862
    aget-wide v22, p6, v14

    mul-double v22, v22, v18

    mul-double v24, v7, v12

    add-double v22, v22, v24

    .line 863
    .local v22, "temp":D
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    .end local v3    # "permutation":[I
    .end local v4    # "weightedJacobian":[[D
    .local v24, "permutation":[I
    .local v25, "weightedJacobian":[[D
    neg-double v3, v7

    aget-wide v26, p6, v14

    mul-double v3, v3, v26

    mul-double v26, v18, v12

    add-double v3, v3, v26

    .line 864
    .end local v12    # "qtbpj":D
    .local v3, "qtbpj":D
    aput-wide v22, p6, v14

    .line 867
    add-int/lit8 v12, v14, 0x1

    .local v12, "i":I
    :goto_5
    if-ge v12, v1, :cond_4

    .line 868
    aget-object v13, v25, v12

    aget-wide v26, v13, v15

    .line 869
    .local v26, "rik":D
    mul-double v28, v18, v26

    aget-wide v30, v0, v12

    mul-double v30, v30, v7

    add-double v28, v28, v30

    .line 870
    .local v28, "temp2":D
    move-wide/from16 v30, v3

    .end local v3    # "qtbpj":D
    .local v30, "qtbpj":D
    neg-double v3, v7

    mul-double v3, v3, v26

    aget-wide v32, v0, v12

    mul-double v32, v32, v18

    add-double v3, v3, v32

    aput-wide v3, v0, v12

    .line 871
    aget-object v3, v25, v12

    aput-wide v28, v3, v15

    .line 867
    .end local v26    # "rik":D
    .end local v28    # "temp2":D
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v30

    goto :goto_5

    .end local v30    # "qtbpj":D
    .restart local v3    # "qtbpj":D
    :cond_4
    move-wide/from16 v30, v3

    .end local v3    # "qtbpj":D
    .restart local v30    # "qtbpj":D
    move-wide/from16 v12, v30

    goto :goto_6

    .line 844
    .end local v7    # "sin":D
    .end local v16    # "rkk":D
    .end local v18    # "cos":D
    .end local v22    # "temp":D
    .end local v24    # "permutation":[I
    .end local v25    # "weightedJacobian":[[D
    .end local v30    # "qtbpj":D
    .local v3, "permutation":[I
    .restart local v4    # "weightedJacobian":[[D
    .local v12, "qtbpj":D
    :cond_5
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v20, v7

    .line 839
    .end local v3    # "permutation":[I
    .end local v4    # "weightedJacobian":[[D
    .end local v15    # "pk":I
    .restart local v24    # "permutation":[I
    .restart local v25    # "weightedJacobian":[[D
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v7, v20

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_3

    .end local v24    # "permutation":[I
    .end local v25    # "weightedJacobian":[[D
    .restart local v3    # "permutation":[I
    .restart local v4    # "weightedJacobian":[[D
    :cond_6
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    .line 878
    .end local v3    # "permutation":[I
    .end local v4    # "weightedJacobian":[[D
    .end local v14    # "k":I
    .restart local v24    # "permutation":[I
    .restart local v25    # "weightedJacobian":[[D
    aget-object v3, v25, v6

    aget v4, v24, v6

    aget-wide v3, v3, v4

    aput-wide v3, v0, v6

    .line 879
    aget-object v3, v25, v6

    aget v4, v24, v6

    aget-wide v7, v2, v6

    aput-wide v7, v3, v4

    .line 824
    .end local v9    # "pj":I
    .end local v10    # "dpj":D
    .end local v12    # "qtbpj":D
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_2

    .end local v24    # "permutation":[I
    .end local v25    # "weightedJacobian":[[D
    .restart local v3    # "permutation":[I
    .restart local v4    # "weightedJacobian":[[D
    :cond_7
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v20, v7

    .line 884
    .end local v3    # "permutation":[I
    .end local v4    # "weightedJacobian":[[D
    .end local v6    # "j":I
    .restart local v24    # "permutation":[I
    .restart local v25    # "weightedJacobian":[[D
    move/from16 v3, p5

    .line 885
    .local v3, "nSing":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_7
    if-ge v4, v1, :cond_a

    .line 886
    aget-wide v6, v0, v4

    cmpl-double v6, v6, v20

    if-nez v6, :cond_8

    if-ne v3, v1, :cond_8

    .line 887
    move v3, v4

    .line 889
    :cond_8
    if-ge v3, v1, :cond_9

    .line 890
    aput-wide v20, p6, v4

    .line 885
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 893
    .end local v4    # "j":I
    :cond_a
    if-lez v3, :cond_c

    .line 894
    add-int/lit8 v4, v3, -0x1

    .restart local v4    # "j":I
    :goto_8
    if-ltz v4, :cond_c

    .line 895
    aget v6, v24, v4

    .line 896
    .local v6, "pj":I
    const-wide/16 v7, 0x0

    .line 897
    .local v7, "sum":D
    add-int/lit8 v9, v4, 0x1

    .local v9, "i":I
    :goto_9
    if-ge v9, v3, :cond_b

    .line 898
    aget-object v10, v25, v9

    aget-wide v10, v10, v6

    aget-wide v12, p6, v9

    mul-double/2addr v10, v12

    add-double/2addr v7, v10

    .line 897
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 900
    .end local v9    # "i":I
    :cond_b
    aget-wide v9, p6, v4

    sub-double/2addr v9, v7

    aget-wide v11, v0, v4

    div-double/2addr v9, v11

    aput-wide v9, p6, v4

    .line 894
    .end local v6    # "pj":I
    .end local v7    # "sum":D
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 905
    .end local v4    # "j":I
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_a
    array-length v6, v2

    if-ge v4, v6, :cond_d

    .line 906
    aget v6, v24, v4

    aget-wide v7, p6, v4

    aput-wide v7, v2, v6

    .line 905
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 908
    .end local v4    # "j":I
    :cond_d
    return-void
.end method

.method private determineLMParameter([DD[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D[D[DD)D
    .locals 41
    .param p1, "qy"    # [D
    .param p2, "delta"    # D
    .param p4, "diag"    # [D
    .param p5, "internalData"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .param p6, "solvedCols"    # I
    .param p7, "work1"    # [D
    .param p8, "work2"    # [D
    .param p9, "work3"    # [D
    .param p10, "lmDir"    # [D
    .param p11, "lmPar"    # D

    .line 624
    move-wide/from16 v0, p2

    move/from16 v7, p6

    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v10

    .line 625
    .local v10, "weightedJacobian":[[D
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v11

    .line 626
    .local v11, "permutation":[I
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$400(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)I

    move-result v12

    .line 627
    .local v12, "rank":I
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v13

    .line 629
    .local v13, "diagR":[D
    const/4 v2, 0x0

    aget-object v2, v10, v2

    array-length v14, v2

    .line 633
    .local v14, "nC":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v12, :cond_0

    .line 634
    aget v3, v11, v2

    aget-wide v4, p1, v2

    aput-wide v4, p10, v3

    .line 633
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    .end local v2    # "j":I
    :cond_0
    move v2, v12

    .restart local v2    # "j":I
    :goto_1
    const-wide/16 v15, 0x0

    if-ge v2, v14, :cond_1

    .line 637
    aget v3, v11, v2

    aput-wide v15, p10, v3

    .line 636
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 639
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v2, v12, -0x1

    .local v2, "k":I
    :goto_2
    if-ltz v2, :cond_3

    .line 640
    aget v3, v11, v2

    .line 641
    .local v3, "pk":I
    aget-wide v4, p10, v3

    aget-wide v8, v13, v3

    div-double/2addr v4, v8

    .line 642
    .local v4, "ypk":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_2

    .line 643
    aget v8, v11, v6

    aget-wide v17, p10, v8

    aget-object v9, v10, v6

    aget-wide v19, v9, v3

    mul-double v19, v19, v4

    sub-double v17, v17, v19

    aput-wide v17, p10, v8

    .line 642
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 645
    .end local v6    # "i":I
    :cond_2
    aput-wide v4, p10, v3

    .line 639
    .end local v3    # "pk":I
    .end local v4    # "ypk":D
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 650
    .end local v2    # "k":I
    :cond_3
    const-wide/16 v2, 0x0

    .line 651
    .local v2, "dxNorm":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    if-ge v4, v7, :cond_4

    .line 652
    aget v5, v11, v4

    .line 653
    .local v5, "pj":I
    aget-wide v8, p4, v5

    aget-wide v17, p10, v5

    mul-double v8, v8, v17

    .line 654
    .local v8, "s":D
    aput-wide v8, p7, v5

    .line 655
    mul-double v17, v8, v8

    add-double v2, v2, v17

    .line 651
    .end local v5    # "pj":I
    .end local v8    # "s":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 657
    .end local v4    # "j":I
    :cond_4
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 658
    sub-double v4, v2, v0

    .line 659
    .local v4, "fp":D
    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double v17, v0, v8

    cmpg-double v6, v4, v17

    if-gtz v6, :cond_5

    .line 660
    const-wide/16 v8, 0x0

    .line 661
    .end local p11    # "lmPar":D
    .local v8, "lmPar":D
    return-wide v8

    .line 668
    .end local v8    # "lmPar":D
    .restart local p11    # "lmPar":D
    :cond_5
    const-wide/16 v17, 0x0

    .line 669
    .local v17, "parl":D
    if-ne v12, v7, :cond_9

    .line 670
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_5
    if-ge v6, v7, :cond_6

    .line 671
    aget v19, v11, v6

    .line 672
    .local v19, "pj":I
    aget-wide v20, p7, v19

    aget-wide v22, p4, v19

    div-double v22, v22, v2

    mul-double v20, v20, v22

    aput-wide v20, p7, v19

    .line 670
    .end local v19    # "pj":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 674
    .end local v6    # "j":I
    :cond_6
    const-wide/16 v19, 0x0

    .line 675
    .local v19, "sum2":D
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_6
    if-ge v6, v7, :cond_8

    .line 676
    aget v21, v11, v6

    .line 677
    .local v21, "pj":I
    const-wide/16 v22, 0x0

    .line 678
    .local v22, "sum":D
    const/16 v24, 0x0

    move-wide/from16 v39, v15

    move/from16 v15, v24

    move-wide/from16 v24, v39

    .local v15, "i":I
    :goto_7
    if-ge v15, v6, :cond_7

    .line 679
    aget-object v16, v10, v15

    aget-wide v26, v16, v21

    aget v16, v11, v15

    aget-wide v28, p7, v16

    mul-double v26, v26, v28

    add-double v22, v22, v26

    .line 678
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 681
    .end local v15    # "i":I
    :cond_7
    aget-wide v15, p7, v21

    sub-double v15, v15, v22

    aget-wide v26, v13, v21

    div-double v15, v15, v26

    .line 682
    .local v15, "s":D
    aput-wide v15, p7, v21

    .line 683
    mul-double v26, v15, v15

    add-double v19, v19, v26

    .line 675
    .end local v15    # "s":D
    .end local v21    # "pj":I
    .end local v22    # "sum":D
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v15, v24

    goto :goto_6

    :cond_8
    move-wide/from16 v24, v15

    .line 685
    .end local v6    # "j":I
    mul-double v15, v0, v19

    div-double v17, v4, v15

    move-wide/from16 v30, v17

    goto :goto_8

    .line 669
    .end local v19    # "sum2":D
    :cond_9
    move-wide/from16 v24, v15

    move-wide/from16 v30, v17

    .line 689
    .end local v17    # "parl":D
    .local v30, "parl":D
    :goto_8
    const-wide/16 v15, 0x0

    .line 690
    .local v15, "sum2":D
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_9
    if-ge v6, v7, :cond_b

    .line 691
    aget v17, v11, v6

    .line 692
    .local v17, "pj":I
    const-wide/16 v18, 0x0

    .line 693
    .local v18, "sum":D
    const/16 v20, 0x0

    move/from16 v8, v20

    .local v8, "i":I
    :goto_a
    if-gt v8, v6, :cond_a

    .line 694
    aget-object v9, v10, v8

    aget-wide v22, v9, v17

    aget-wide v26, p1, v8

    mul-double v22, v22, v26

    add-double v18, v18, v22

    .line 693
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 696
    .end local v8    # "i":I
    :cond_a
    aget-wide v8, p4, v17

    div-double v18, v18, v8

    .line 697
    mul-double v8, v18, v18

    add-double/2addr v15, v8

    .line 690
    .end local v17    # "pj":I
    .end local v18    # "sum":D
    add-int/lit8 v6, v6, 0x1

    const-wide v8, 0x3fb999999999999aL    # 0.1

    goto :goto_9

    .line 699
    .end local v6    # "j":I
    :cond_b
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    .line 700
    .local v17, "gNorm":D
    div-double v8, v17, v0

    .line 701
    .local v8, "paru":D
    cmpl-double v6, v8, v24

    if-nez v6, :cond_c

    .line 702
    sget-wide v22, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-wide/from16 v26, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .end local v2    # "dxNorm":D
    .local v26, "dxNorm":D
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v19

    div-double v8, v22, v19

    goto :goto_b

    .line 701
    .end local v26    # "dxNorm":D
    .restart local v2    # "dxNorm":D
    :cond_c
    move-wide/from16 v26, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 707
    .end local v2    # "dxNorm":D
    .restart local v26    # "dxNorm":D
    :goto_b
    move-wide/from16 v0, p11

    move-wide/from16 v22, v4

    move-wide/from16 v2, v30

    .end local v4    # "fp":D
    .end local v30    # "parl":D
    .local v2, "parl":D
    .local v22, "fp":D
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 708
    .end local p11    # "lmPar":D
    .local v0, "lmPar":D
    cmpl-double v4, v0, v24

    if-nez v4, :cond_d

    .line 709
    div-double v0, v17, v26

    .line 712
    :cond_d
    const/16 v4, 0xa

    move-wide/from16 v30, v2

    move-wide/from16 v28, v15

    move v15, v4

    .end local v2    # "parl":D
    .local v15, "countdown":I
    .local v28, "sum2":D
    .restart local v30    # "parl":D
    :goto_c
    if-ltz v15, :cond_19

    .line 715
    cmpl-double v2, v0, v24

    if-nez v2, :cond_e

    .line 716
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v4, v8

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 718
    :cond_e
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v32

    .line 719
    .local v32, "sPar":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_d
    if-ge v2, v7, :cond_f

    .line 720
    aget v3, v11, v2

    .line 721
    .local v3, "pj":I
    aget-wide v4, p4, v3

    mul-double v4, v4, v32

    aput-wide v4, p7, v3

    .line 719
    .end local v3    # "pj":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 723
    .end local v2    # "j":I
    :cond_f
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v16, v10

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v21, v13

    move-wide/from16 v12, v30

    const-wide v30, 0x3fb999999999999aL    # 0.1

    move-wide v10, v8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .end local v8    # "paru":D
    .end local v11    # "permutation":[I
    .end local v13    # "diagR":[D
    .end local v30    # "parl":D
    .local v10, "paru":D
    .local v12, "parl":D
    .local v16, "weightedJacobian":[[D
    .local v19, "permutation":[I
    .local v20, "rank":I
    .local v21, "diagR":[D
    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D)V

    .line 725
    const-wide/16 v2, 0x0

    .line 726
    .end local v26    # "dxNorm":D
    .local v2, "dxNorm":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_e
    if-ge v4, v7, :cond_10

    .line 727
    aget v5, v19, v4

    .line 728
    .restart local v5    # "pj":I
    aget-wide v8, p4, v5

    aget-wide v26, p10, v5

    mul-double v8, v8, v26

    .line 729
    .local v8, "s":D
    aput-wide v8, p9, v5

    .line 730
    mul-double v26, v8, v8

    add-double v2, v2, v26

    .line 726
    .end local v5    # "pj":I
    .end local v8    # "s":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 732
    .end local v4    # "j":I
    :cond_10
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    .line 733
    .end local v2    # "dxNorm":D
    .restart local v26    # "dxNorm":D
    move-wide/from16 v2, v22

    .line 734
    .local v2, "previousFP":D
    sub-double v22, v26, p2

    .line 738
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    mul-double v8, p2, v30

    cmpg-double v4, v4, v8

    if-lez v4, :cond_18

    cmpl-double v4, v12, v24

    if-nez v4, :cond_11

    cmpg-double v4, v22, v2

    if-gtz v4, :cond_11

    cmpg-double v4, v2, v24

    if-gez v4, :cond_11

    goto/16 :goto_14

    .line 746
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_f
    if-ge v4, v7, :cond_12

    .line 747
    aget v5, v19, v4

    .line 748
    .restart local v5    # "pj":I
    aget-wide v8, p9, v5

    aget-wide v34, p4, v5

    mul-double v8, v8, v34

    div-double v8, v8, v26

    aput-wide v8, p7, v5

    .line 746
    .end local v5    # "pj":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 750
    .end local v4    # "j":I
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_10
    if-ge v4, v7, :cond_14

    .line 751
    aget v5, v19, v4

    .line 752
    .restart local v5    # "pj":I
    aget-wide v8, p7, v5

    aget-wide v34, p8, v4

    div-double v8, v8, v34

    aput-wide v8, p7, v5

    .line 753
    aget-wide v8, p7, v5

    .line 754
    .local v8, "tmp":D
    add-int/lit8 v6, v4, 0x1

    .local v6, "i":I
    :goto_11
    if-ge v6, v7, :cond_13

    .line 755
    aget v34, v19, v6

    aget-wide v35, p7, v34

    aget-object v37, v16, v6

    aget-wide v37, v37, v5

    mul-double v37, v37, v8

    sub-double v35, v35, v37

    aput-wide v35, p7, v34

    .line 754
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 750
    .end local v5    # "pj":I
    .end local v6    # "i":I
    .end local v8    # "tmp":D
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 758
    .end local v4    # "j":I
    :cond_14
    const-wide/16 v4, 0x0

    .line 759
    .end local v28    # "sum2":D
    .local v4, "sum2":D
    const/4 v6, 0x0

    move-wide/from16 v28, v4

    .end local v4    # "sum2":D
    .local v6, "j":I
    .restart local v28    # "sum2":D
    :goto_12
    if-ge v6, v7, :cond_15

    .line 760
    aget v4, v19, v6

    aget-wide v4, p7, v4

    .line 761
    .local v4, "s":D
    mul-double v8, v4, v4

    add-double v28, v28, v8

    .line 759
    .end local v4    # "s":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 763
    .end local v6    # "j":I
    :cond_15
    mul-double v4, p2, v28

    div-double v4, v22, v4

    .line 766
    .local v4, "correction":D
    cmpl-double v6, v22, v24

    if-lez v6, :cond_16

    .line 767
    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    move-wide v12, v8

    move-wide v8, v10

    .end local v12    # "parl":D
    .local v8, "parl":D
    goto :goto_13

    .line 768
    .end local v8    # "parl":D
    .restart local v12    # "parl":D
    :cond_16
    cmpg-double v6, v22, v24

    if-gez v6, :cond_17

    .line 769
    invoke-static {v10, v11, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    .end local v10    # "paru":D
    .local v8, "paru":D
    goto :goto_13

    .line 768
    .end local v8    # "paru":D
    .restart local v10    # "paru":D
    :cond_17
    move-wide v8, v10

    .line 773
    .end local v10    # "paru":D
    .restart local v8    # "paru":D
    :goto_13
    add-double v10, v0, v4

    invoke-static {v12, v13, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 712
    .end local v2    # "previousFP":D
    .end local v4    # "correction":D
    .end local v32    # "sPar":D
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v30, v12

    move-object/from16 v10, v16

    move-object/from16 v11, v19

    move/from16 v12, v20

    move-object/from16 v13, v21

    goto/16 :goto_c

    .line 742
    .end local v8    # "paru":D
    .restart local v2    # "previousFP":D
    .restart local v10    # "paru":D
    .restart local v32    # "sPar":D
    :cond_18
    :goto_14
    return-wide v0

    .line 776
    .end local v2    # "previousFP":D
    .end local v15    # "countdown":I
    .end local v16    # "weightedJacobian":[[D
    .end local v19    # "permutation":[I
    .end local v20    # "rank":I
    .end local v21    # "diagR":[D
    .end local v32    # "sPar":D
    .restart local v8    # "paru":D
    .local v10, "weightedJacobian":[[D
    .restart local v11    # "permutation":[I
    .local v12, "rank":I
    .restart local v13    # "diagR":[D
    .restart local v30    # "parl":D
    :cond_19
    return-wide v0
.end method

.method private qTy([DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)V
    .locals 14
    .param p1, "y"    # [D
    .param p2, "internalData"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    .line 1023
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v0

    .line 1024
    .local v0, "weightedJacobian":[[D
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v1

    .line 1025
    .local v1, "permutation":[I
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$500(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v2

    .line 1027
    .local v2, "beta":[D
    array-length v3, v0

    .line 1028
    .local v3, "nR":I
    const/4 v4, 0x0

    aget-object v4, v0, v4

    array-length v4, v4

    .line 1030
    .local v4, "nC":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 1031
    aget v6, v1, v5

    .line 1032
    .local v6, "pk":I
    const-wide/16 v7, 0x0

    .line 1033
    .local v7, "gamma":D
    move v9, v5

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_0

    .line 1034
    aget-object v10, v0, v9

    aget-wide v10, v10, v6

    aget-wide v12, p1, v9

    mul-double/2addr v10, v12

    add-double/2addr v7, v10

    .line 1033
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1036
    .end local v9    # "i":I
    :cond_0
    aget-wide v9, v2, v6

    mul-double/2addr v7, v9

    .line 1037
    move v9, v5

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v3, :cond_1

    .line 1038
    aget-wide v10, p1, v9

    aget-object v12, v0, v9

    aget-wide v12, v12, v6

    mul-double/2addr v12, v7

    sub-double/2addr v10, v12

    aput-wide v10, p1, v9

    .line 1037
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1030
    .end local v6    # "pk":I
    .end local v7    # "gamma":D
    .end local v9    # "i":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1041
    .end local v5    # "k":I
    :cond_2
    return-void
.end method

.method private qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .locals 30
    .param p1, "jacobian"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "solvedCols"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 940
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move-object/from16 v2, p1

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v4

    .line 942
    .local v4, "weightedJacobian":[[D
    array-length v0, v4

    .line 943
    .local v0, "nR":I
    const/4 v1, 0x0

    aget-object v1, v4, v1

    array-length v1, v1

    .line 945
    .local v1, "nC":I
    new-array v5, v1, [I

    .line 946
    .local v5, "permutation":[I
    new-array v7, v1, [D

    .line 947
    .local v7, "diagR":[D
    new-array v8, v1, [D

    .line 948
    .local v8, "jacNorm":[D
    new-array v9, v1, [D

    .line 951
    .local v9, "beta":[D
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 952
    aput v3, v5, v3

    .line 953
    const-wide/16 v10, 0x0

    .line 954
    .local v10, "norm2":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 955
    aget-object v12, v4, v6

    aget-wide v12, v12, v3

    .line 956
    .local v12, "akk":D
    mul-double v14, v12, v12

    add-double/2addr v10, v14

    .line 954
    .end local v12    # "akk":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 958
    .end local v6    # "i":I
    :cond_0
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    aput-wide v12, v8, v3

    .line 951
    .end local v10    # "norm2":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 962
    .end local v3    # "k":I
    :cond_1
    const/4 v3, 0x0

    move v6, v3

    .local v6, "k":I
    :goto_2
    if-ge v6, v1, :cond_b

    .line 965
    const/4 v3, -0x1

    .line 966
    .local v3, "nextColumn":I
    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 967
    .local v10, "ak2":D
    move v12, v6

    move-wide/from16 v28, v10

    move v10, v3

    move v3, v12

    move-wide/from16 v11, v28

    .local v3, "i":I
    .local v10, "nextColumn":I
    .local v11, "ak2":D
    :goto_3
    if-ge v3, v1, :cond_5

    .line 968
    const-wide/16 v13, 0x0

    .line 969
    .local v13, "norm2":D
    move v15, v6

    .local v15, "j":I
    :goto_4
    if-ge v15, v0, :cond_2

    .line 970
    aget-object v16, v4, v15

    aget v17, v5, v3

    aget-wide v16, v16, v17

    .line 971
    .local v16, "aki":D
    mul-double v18, v16, v16

    add-double v13, v13, v18

    .line 969
    .end local v16    # "aki":D
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 973
    .end local v15    # "j":I
    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_4

    .line 977
    cmpl-double v15, v13, v11

    if-lez v15, :cond_3

    .line 978
    move v10, v3

    .line 979
    move-wide v11, v13

    .line 967
    .end local v13    # "norm2":D
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 974
    .restart local v13    # "norm2":D
    :cond_4
    new-instance v15, Lorg/apache/commons/math3/exception/ConvergenceException;

    move/from16 v16, v1

    .end local v1    # "nC":I
    .local v16, "nC":I
    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v17, v3

    .end local v3    # "i":I
    .local v17, "i":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v15, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v15

    .line 967
    .end local v13    # "norm2":D
    .end local v16    # "nC":I
    .end local v17    # "i":I
    .restart local v1    # "nC":I
    .restart local v3    # "i":I
    :cond_5
    move/from16 v16, v1

    move/from16 v17, v3

    .line 982
    .end local v1    # "nC":I
    .end local v3    # "i":I
    .restart local v16    # "nC":I
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v2, v11, v2

    if-gtz v2, :cond_6

    .line 983
    new-instance v3, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;-><init>([[D[II[D[D[D)V

    return-object v3

    .line 985
    :cond_6
    aget v2, v5, v10

    .line 986
    .local v2, "pk":I
    aget v3, v5, v6

    aput v3, v5, v10

    .line 987
    aput v2, v5, v6

    .line 990
    aget-object v3, v4, v6

    aget-wide v13, v3, v2

    .line 991
    .local v13, "akk":D
    const-wide/16 v17, 0x0

    cmpl-double v3, v13, v17

    if-lez v3, :cond_7

    move v3, v2

    .end local v2    # "pk":I
    .local v3, "pk":I
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    neg-double v1, v1

    goto :goto_5

    .end local v3    # "pk":I
    .restart local v2    # "pk":I
    :cond_7
    move v3, v2

    .end local v2    # "pk":I
    .restart local v3    # "pk":I
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 992
    .local v1, "alpha":D
    :goto_5
    mul-double v17, v13, v1

    sub-double v17, v11, v17

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    div-double v19, v19, v17

    .line 993
    .local v19, "betak":D
    aput-wide v19, v9, v3

    .line 996
    aput-wide v1, v7, v3

    .line 997
    aget-object v15, v4, v6

    aget-wide v17, v15, v3

    sub-double v17, v17, v1

    aput-wide v17, v15, v3

    .line 1000
    add-int/lit8 v15, v16, -0x1

    sub-int/2addr v15, v6

    .local v15, "dk":I
    :goto_6
    if-lez v15, :cond_a

    .line 1001
    const-wide/16 v17, 0x0

    .line 1002
    .local v17, "gamma":D
    move/from16 v21, v6

    move-wide/from16 v28, v1

    move/from16 v1, v21

    move-wide/from16 v21, v28

    .local v1, "j":I
    .local v21, "alpha":D
    :goto_7
    if-ge v1, v0, :cond_8

    .line 1003
    aget-object v2, v4, v1

    aget-wide v23, v2, v3

    aget-object v2, v4, v1

    add-int v25, v6, v15

    aget v25, v5, v25

    aget-wide v25, v2, v25

    mul-double v23, v23, v25

    add-double v17, v17, v23

    .line 1002
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1005
    .end local v1    # "j":I
    :cond_8
    mul-double v17, v17, v19

    .line 1006
    move v1, v6

    .restart local v1    # "j":I
    :goto_8
    if-ge v1, v0, :cond_9

    .line 1007
    aget-object v2, v4, v1

    add-int v23, v6, v15

    aget v23, v5, v23

    aget-wide v24, v2, v23

    aget-object v26, v4, v1

    aget-wide v26, v26, v3

    mul-double v26, v26, v17

    sub-double v24, v24, v26

    aput-wide v24, v2, v23

    .line 1006
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1000
    .end local v1    # "j":I
    .end local v17    # "gamma":D
    :cond_9
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v1, v21

    goto :goto_6

    .end local v21    # "alpha":D
    .local v1, "alpha":D
    :cond_a
    move-wide/from16 v21, v1

    .line 962
    .end local v1    # "alpha":D
    .end local v3    # "pk":I
    .end local v10    # "nextColumn":I
    .end local v11    # "ak2":D
    .end local v13    # "akk":D
    .end local v15    # "dk":I
    .end local v19    # "betak":D
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    move/from16 v1, v16

    goto/16 :goto_2

    .line 1012
    .end local v6    # "k":I
    .end local v16    # "nC":I
    .local v1, "nC":I
    :cond_b
    new-instance v3, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    move/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;-><init>([[D[II[D[D[D)V

    return-object v3
.end method


# virtual methods
.method public getCostRelativeTolerance()D
    .locals 2

    .line 262
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    return-wide v0
.end method

.method public getInitialStepBoundFactor()D
    .locals 2

    .line 252
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    return-wide v0
.end method

.method public getOrthoTolerance()D
    .locals 2

    .line 282
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    return-wide v0
.end method

.method public getParameterRelativeTolerance()D
    .locals 2

    .line 272
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    return-wide v0
.end method

.method public getRankingThreshold()D
    .locals 2

    .line 292
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-wide v0
.end method

.method public optimize(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;
    .locals 73
    .param p1, "problem"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getObservationSize()I

    move-result v14

    .line 299
    .local v14, "nR":I
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getParameterSize()I

    move-result v15

    .line 301
    .local v15, "nC":I
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v16

    .line 302
    .local v16, "iterationCounter":Lorg/apache/commons/math3/util/Incrementor;
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v17

    .line 304
    .local v17, "evaluationCounter":Lorg/apache/commons/math3/util/Incrementor;
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v1

    .line 307
    .local v1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    .line 309
    .local v6, "solvedCols":I
    new-array v10, v15, [D

    .line 311
    .local v10, "lmDir":[D
    const-wide/16 v2, 0x0

    .line 314
    .local v2, "lmPar":D
    const-wide/16 v4, 0x0

    .line 315
    .local v4, "delta":D
    const-wide/16 v7, 0x0

    .line 316
    .local v7, "xNorm":D
    move-wide v11, v4

    .end local v4    # "delta":D
    .local v11, "delta":D
    new-array v4, v15, [D

    .line 317
    .local v4, "diag":[D
    new-array v5, v15, [D

    .line 318
    .local v5, "oldX":[D
    new-array v9, v14, [D

    .line 319
    .local v9, "oldRes":[D
    move-object/from16 v18, v1

    .end local v1    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .local v18, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    new-array v1, v14, [D

    .line 320
    .local v1, "qtf":[D
    move-wide/from16 v19, v7

    .end local v7    # "xNorm":D
    .local v19, "xNorm":D
    new-array v7, v15, [D

    .line 321
    .local v7, "work1":[D
    new-array v8, v15, [D

    .line 322
    .local v8, "work2":[D
    move-object/from16 v21, v9

    .end local v9    # "oldRes":[D
    .local v21, "oldRes":[D
    new-array v9, v15, [D

    .line 326
    .local v9, "work3":[D
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 328
    move-wide/from16 v22, v2

    .end local v2    # "lmPar":D
    .local v22, "lmPar":D
    invoke-interface {v13}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getStart()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-interface {v13, v2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v2

    .line 329
    .local v2, "current":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    invoke-interface {v2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v3

    .line 330
    .local v3, "currentResiduals":[D
    invoke-interface {v2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v24

    .line 331
    .local v24, "currentCost":D
    invoke-interface {v2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v26

    .line 334
    .local v26, "currentPoint":[D
    const/16 v27, 0x1

    .line 336
    .local v27, "firstIteration":Z
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 338
    move-object/from16 v28, v2

    .line 341
    .local v28, "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    move-object/from16 v29, v3

    .end local v3    # "currentResiduals":[D
    .local v29, "currentResiduals":[D
    invoke-interface {v2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    move-result-object v3

    .line 343
    .local v3, "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    invoke-static {v3}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D

    move-result-object v30

    .line 344
    .local v30, "weightedJacobian":[[D
    invoke-static {v3}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I

    move-result-object v31

    .line 345
    .local v31, "permutation":[I
    invoke-static {v3}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v32

    .line 346
    .local v32, "diagR":[D
    invoke-static {v3}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->access$300(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D

    move-result-object v33

    .line 349
    .local v33, "jacNorm":[D
    move-object/from16 v34, v29

    .line 350
    .local v34, "weightedResidual":[D
    const/16 v35, 0x0

    move-object/from16 v36, v4

    move/from16 v4, v35

    .local v4, "i":I
    .local v36, "diag":[D
    :goto_1
    if-ge v4, v14, :cond_0

    .line 351
    aget-wide v37, v34, v4

    aput-wide v37, v1, v4

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 355
    .end local v4    # "i":I
    :cond_0
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qTy([DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)V

    .line 359
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    if-ge v4, v6, :cond_1

    .line 360
    aget v35, v31, v4

    .line 361
    .local v35, "pk":I
    aget-object v37, v30, v4

    aget-wide v38, v32, v35

    aput-wide v38, v37, v35

    .line 359
    .end local v35    # "pk":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 364
    .end local v4    # "k":I
    :cond_1
    const-wide/16 v37, 0x0

    if-eqz v27, :cond_5

    .line 367
    const-wide/16 v19, 0x0

    .line 368
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_3
    if-ge v4, v15, :cond_3

    .line 369
    aget-wide v39, v33, v4

    .line 370
    .local v39, "dk":D
    cmpl-double v35, v39, v37

    if-nez v35, :cond_2

    .line 371
    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    .line 373
    :cond_2
    aget-wide v41, v26, v4

    mul-double v41, v41, v39

    .line 374
    .local v41, "xk":D
    mul-double v43, v41, v41

    add-double v19, v19, v43

    .line 375
    aput-wide v39, v36, v4

    .line 368
    .end local v39    # "dk":D
    .end local v41    # "xk":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 377
    .end local v4    # "k":I
    :cond_3
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v19

    .line 380
    cmpl-double v4, v19, v37

    if-nez v4, :cond_4

    move-object/from16 v35, v3

    .end local v3    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .local v35, "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    iget-wide v3, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    goto :goto_4

    .end local v35    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .restart local v3    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    :cond_4
    move-object/from16 v35, v3

    .end local v3    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .restart local v35    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    iget-wide v3, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    mul-double v3, v3, v19

    :goto_4
    move-wide v11, v3

    goto :goto_5

    .line 364
    .end local v35    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .restart local v3    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    :cond_5
    move-object/from16 v35, v3

    .line 384
    .end local v3    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .restart local v35    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    :goto_5
    const-wide/16 v3, 0x0

    .line 385
    .local v3, "maxCosine":D
    cmpl-double v39, v24, v37

    if-eqz v39, :cond_9

    .line 386
    const/16 v39, 0x0

    move/from16 v71, v39

    move-object/from16 v39, v1

    move/from16 v1, v71

    .local v1, "j":I
    .local v39, "qtf":[D
    :goto_6
    if-ge v1, v6, :cond_8

    .line 387
    aget v40, v31, v1

    .line 388
    .local v40, "pj":I
    aget-wide v41, v33, v40

    .line 389
    .local v41, "s":D
    cmpl-double v43, v41, v37

    if-eqz v43, :cond_7

    .line 390
    const-wide/16 v43, 0x0

    .line 391
    .local v43, "sum":D
    const/16 v45, 0x0

    move/from16 v71, v45

    move-object/from16 v45, v5

    move/from16 v5, v71

    .local v5, "i":I
    .local v45, "oldX":[D
    :goto_7
    if-gt v5, v1, :cond_6

    .line 392
    aget-object v46, v30, v5

    aget-wide v46, v46, v40

    aget-wide v48, v39, v5

    mul-double v46, v46, v48

    add-double v43, v43, v46

    .line 391
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 394
    .end local v5    # "i":I
    :cond_6
    invoke-static/range {v43 .. v44}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    mul-double v48, v41, v24

    move-object v5, v7

    move-object/from16 v50, v8

    .end local v7    # "work1":[D
    .end local v8    # "work2":[D
    .local v5, "work1":[D
    .local v50, "work2":[D
    div-double v7, v46, v48

    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    goto :goto_8

    .line 389
    .end local v43    # "sum":D
    .end local v45    # "oldX":[D
    .end local v50    # "work2":[D
    .local v5, "oldX":[D
    .restart local v7    # "work1":[D
    .restart local v8    # "work2":[D
    :cond_7
    move-object/from16 v45, v5

    move-object v5, v7

    move-object/from16 v50, v8

    .line 386
    .end local v7    # "work1":[D
    .end local v8    # "work2":[D
    .end local v40    # "pj":I
    .end local v41    # "s":D
    .local v5, "work1":[D
    .restart local v45    # "oldX":[D
    .restart local v50    # "work2":[D
    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object v7, v5

    move-object/from16 v5, v45

    move-object/from16 v8, v50

    goto :goto_6

    .end local v45    # "oldX":[D
    .end local v50    # "work2":[D
    .local v5, "oldX":[D
    .restart local v7    # "work1":[D
    .restart local v8    # "work2":[D
    :cond_8
    move-object/from16 v45, v5

    move-object v5, v7

    move-object/from16 v50, v8

    .end local v7    # "work1":[D
    .end local v8    # "work2":[D
    .local v5, "work1":[D
    .restart local v45    # "oldX":[D
    .restart local v50    # "work2":[D
    move-wide/from16 v40, v3

    goto :goto_9

    .line 385
    .end local v39    # "qtf":[D
    .end local v45    # "oldX":[D
    .end local v50    # "work2":[D
    .local v1, "qtf":[D
    .local v5, "oldX":[D
    .restart local v7    # "work1":[D
    .restart local v8    # "work2":[D
    :cond_9
    move-object/from16 v39, v1

    move-object/from16 v45, v5

    move-object v5, v7

    move-object/from16 v50, v8

    .end local v1    # "qtf":[D
    .end local v7    # "work1":[D
    .end local v8    # "work2":[D
    .local v5, "work1":[D
    .restart local v39    # "qtf":[D
    .restart local v45    # "oldX":[D
    .restart local v50    # "work2":[D
    move-wide/from16 v40, v3

    .line 398
    .end local v3    # "maxCosine":D
    .local v40, "maxCosine":D
    :goto_9
    iget-wide v3, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    cmpg-double v1, v40, v3

    if-gtz v1, :cond_a

    .line 400
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object v1

    .line 407
    :cond_a
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_a
    if-ge v1, v15, :cond_b

    .line 408
    aget-wide v3, v36, v1

    aget-wide v7, v33, v1

    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    aput-wide v3, v36, v1

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 412
    .end local v1    # "j":I
    :cond_b
    const-wide/16 v3, 0x0

    move-object/from16 v1, v21

    move-wide/from16 v71, v19

    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    move-wide v2, v11

    move-wide/from16 v11, v22

    move-wide/from16 v22, v71

    .end local v21    # "oldRes":[D
    .local v1, "oldRes":[D
    .local v2, "delta":D
    .local v11, "lmPar":D
    .local v19, "current":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .local v20, "ratio":D
    .local v22, "xNorm":D
    :goto_b
    const-wide v42, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v20, v42

    if-gez v4, :cond_26

    .line 415
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_c
    if-ge v4, v6, :cond_c

    .line 416
    aget v7, v31, v4

    .line 417
    .local v7, "pj":I
    aget-wide v46, v26, v7

    aput-wide v46, v45, v7

    .line 415
    .end local v7    # "pj":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 419
    .end local v4    # "j":I
    :cond_c
    move-wide/from16 v46, v24

    .line 420
    .local v46, "previousCost":D
    move-object/from16 v44, v34

    .line 421
    .local v44, "tmpVec":[D
    move-object/from16 v34, v1

    .line 422
    move-object/from16 v48, v44

    .line 425
    .end local v1    # "oldRes":[D
    .local v48, "oldRes":[D
    move-object v7, v5

    move/from16 v49, v14

    move-object/from16 v14, v26

    move-object/from16 v5, v35

    move-object/from16 v4, v36

    move-object/from16 v1, v39

    move-object/from16 v8, v50

    .end local v26    # "currentPoint":[D
    .end local v35    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .end local v36    # "diag":[D
    .end local v39    # "qtf":[D
    .end local v50    # "work2":[D
    .local v1, "qtf":[D
    .local v4, "diag":[D
    .local v5, "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .local v7, "work1":[D
    .restart local v8    # "work2":[D
    .local v14, "currentPoint":[D
    .local v49, "nR":I
    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->determineLMParameter([DD[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;I[D[D[D[DD)D

    move-result-wide v11

    .line 430
    move-object v5, v7

    .end local v1    # "qtf":[D
    .end local v7    # "work1":[D
    .end local v8    # "work2":[D
    .local v5, "work1":[D
    .restart local v35    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .restart local v39    # "qtf":[D
    .restart local v50    # "work2":[D
    const-wide/16 v7, 0x0

    .line 431
    .local v7, "lmNorm":D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    if-ge v1, v6, :cond_d

    .line 432
    aget v26, v31, v1

    .line 433
    .local v26, "pj":I
    move-object/from16 v36, v4

    move-object/from16 v51, v5

    .end local v4    # "diag":[D
    .end local v5    # "work1":[D
    .restart local v36    # "diag":[D
    .local v51, "work1":[D
    aget-wide v4, v10, v26

    neg-double v4, v4

    aput-wide v4, v10, v26

    .line 434
    aget-wide v4, v45, v26

    aget-wide v52, v10, v26

    add-double v4, v4, v52

    aput-wide v4, v14, v26

    .line 435
    aget-wide v4, v36, v26

    aget-wide v52, v10, v26

    mul-double v4, v4, v52

    .line 436
    .local v4, "s":D
    mul-double v52, v4, v4

    add-double v7, v7, v52

    .line 431
    .end local v4    # "s":D
    .end local v26    # "pj":I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v36

    move-object/from16 v5, v51

    goto :goto_d

    .end local v36    # "diag":[D
    .end local v51    # "work1":[D
    .local v4, "diag":[D
    .restart local v5    # "work1":[D
    :cond_d
    move-object/from16 v36, v4

    move-object/from16 v51, v5

    .line 438
    .end local v1    # "j":I
    .end local v4    # "diag":[D
    .end local v5    # "work1":[D
    .restart local v36    # "diag":[D
    .restart local v51    # "work1":[D
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 440
    .end local v7    # "lmNorm":D
    .local v4, "lmNorm":D
    if-eqz v27, :cond_e

    .line 441
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    .line 445
    :cond_e
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 446
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-interface {v13, v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v1

    .line 447
    .end local v19    # "current":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .local v1, "current":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    invoke-interface {v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v29

    .line 448
    invoke-interface {v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v7

    .line 449
    .end local v24    # "currentCost":D
    .local v7, "currentCost":D
    invoke-interface {v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v26

    .line 452
    .end local v14    # "currentPoint":[D
    .local v26, "currentPoint":[D
    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    .line 453
    .local v24, "actRed":D
    const-wide v52, 0x3fb999999999999aL    # 0.1

    mul-double v54, v7, v52

    cmpg-double v14, v54, v46

    if-gez v14, :cond_f

    .line 454
    div-double v54, v7, v46

    .line 455
    .local v54, "r":D
    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    mul-double v58, v54, v54

    sub-double v24, v56, v58

    .line 460
    .end local v54    # "r":D
    :cond_f
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_e
    if-ge v14, v6, :cond_11

    .line 461
    aget v19, v31, v14

    .line 462
    .local v19, "pj":I
    aget-wide v54, v10, v19

    .line 463
    .local v54, "dirJ":D
    aput-wide v37, v51, v14

    .line 464
    const/16 v56, 0x0

    move-wide/from16 v57, v4

    move/from16 v4, v56

    .local v4, "i":I
    .local v57, "lmNorm":D
    :goto_f
    if-gt v4, v14, :cond_10

    .line 465
    aget-wide v59, v51, v4

    aget-object v5, v30, v4

    aget-wide v61, v5, v19

    mul-double v61, v61, v54

    add-double v59, v59, v61

    aput-wide v59, v51, v4

    .line 464
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 460
    .end local v4    # "i":I
    .end local v19    # "pj":I
    .end local v54    # "dirJ":D
    :cond_10
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v4, v57

    goto :goto_e

    .end local v57    # "lmNorm":D
    .local v4, "lmNorm":D
    :cond_11
    move-wide/from16 v57, v4

    .line 468
    .end local v4    # "lmNorm":D
    .end local v14    # "j":I
    .restart local v57    # "lmNorm":D
    const-wide/16 v4, 0x0

    .line 469
    .local v4, "coeff1":D
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_10
    if-ge v14, v6, :cond_12

    .line 470
    aget-wide v54, v51, v14

    aget-wide v59, v51, v14

    mul-double v54, v54, v59

    add-double v4, v4, v54

    .line 469
    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    .line 472
    .end local v14    # "j":I
    :cond_12
    mul-double v54, v46, v46

    .line 473
    .local v54, "pc2":D
    div-double v4, v4, v54

    .line 474
    mul-double v59, v11, v57

    mul-double v59, v59, v57

    div-double v59, v59, v54

    .line 475
    .local v59, "coeff2":D
    const-wide/high16 v61, 0x4000000000000000L    # 2.0

    mul-double v63, v59, v61

    add-double v63, v4, v63

    .line 476
    .local v63, "preRed":D
    move-wide/from16 v65, v4

    .end local v4    # "coeff1":D
    .local v65, "coeff1":D
    add-double v4, v65, v59

    neg-double v4, v4

    .line 479
    .local v4, "dirDer":D
    cmpl-double v14, v63, v37

    if-nez v14, :cond_13

    move-wide/from16 v67, v37

    goto :goto_11

    :cond_13
    div-double v67, v24, v63

    :goto_11
    move-wide/from16 v20, v67

    .line 482
    const-wide/high16 v67, 0x3fd0000000000000L    # 0.25

    cmpg-double v14, v20, v67

    const-wide/high16 v67, 0x3fe0000000000000L    # 0.5

    if-gtz v14, :cond_17

    .line 483
    cmpg-double v14, v24, v37

    if-gez v14, :cond_14

    mul-double v69, v4, v67

    mul-double v67, v67, v24

    add-double v67, v4, v67

    div-double v67, v69, v67

    .line 485
    .local v67, "tmp":D
    :cond_14
    mul-double v69, v7, v52

    cmpl-double v14, v69, v46

    if-gez v14, :cond_15

    cmpg-double v14, v67, v52

    if-gez v14, :cond_16

    .line 486
    :cond_15
    const-wide v67, 0x3fb999999999999aL    # 0.1

    .line 488
    :cond_16
    const-wide/high16 v52, 0x4024000000000000L    # 10.0

    move-wide/from16 v69, v4

    .end local v4    # "dirDer":D
    .local v69, "dirDer":D
    mul-double v4, v57, v52

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    mul-double v4, v4, v67

    .line 489
    .end local v2    # "delta":D
    .local v4, "delta":D
    div-double v11, v11, v67

    .line 490
    .end local v67    # "tmp":D
    move-wide v2, v4

    goto :goto_12

    .end local v69    # "dirDer":D
    .restart local v2    # "delta":D
    .local v4, "dirDer":D
    :cond_17
    move-wide/from16 v69, v4

    .end local v4    # "dirDer":D
    .restart local v69    # "dirDer":D
    cmpl-double v4, v11, v37

    if-eqz v4, :cond_18

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v20, v4

    if-ltz v4, :cond_19

    .line 491
    :cond_18
    mul-double v4, v57, v61

    .line 492
    .end local v2    # "delta":D
    .local v4, "delta":D
    mul-double v11, v11, v67

    move-wide v2, v4

    .line 496
    .end local v4    # "delta":D
    .restart local v2    # "delta":D
    :cond_19
    :goto_12
    cmpl-double v4, v20, v42

    if-ltz v4, :cond_1d

    .line 498
    const/16 v27, 0x0

    .line 499
    const-wide/16 v4, 0x0

    .line 500
    .end local v22    # "xNorm":D
    .local v4, "xNorm":D
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_13
    if-ge v14, v15, :cond_1a

    .line 501
    aget-wide v22, v36, v14

    aget-wide v42, v26, v14

    mul-double v22, v22, v42

    .line 502
    .local v22, "xK":D
    mul-double v42, v22, v22

    add-double v4, v4, v42

    .line 500
    .end local v22    # "xK":D
    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    .line 504
    .end local v14    # "k":I
    :cond_1a
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    .line 507
    .end local v4    # "xNorm":D
    .local v22, "xNorm":D
    if-eqz v18, :cond_1c

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v4

    move-object/from16 v5, v18

    move-object/from16 v14, v28

    .end local v18    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .end local v28    # "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .local v5, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .local v14, "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    invoke-interface {v5, v4, v14, v1}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 508
    new-instance v4, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    move-wide/from16 v18, v2

    .end local v2    # "delta":D
    .local v18, "delta":D
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v3

    invoke-direct {v4, v1, v2, v3}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object v4

    .line 507
    .end local v18    # "delta":D
    .restart local v2    # "delta":D
    :cond_1b
    move-wide/from16 v18, v2

    .end local v2    # "delta":D
    .restart local v18    # "delta":D
    goto :goto_14

    .end local v5    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .end local v14    # "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .restart local v2    # "delta":D
    .local v18, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .restart local v28    # "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    :cond_1c
    move-object/from16 v5, v18

    move-object/from16 v14, v28

    move-wide/from16 v18, v2

    .line 525
    .end local v2    # "delta":D
    .end local v28    # "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .restart local v5    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .restart local v14    # "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .local v18, "delta":D
    :goto_14
    move-object v2, v1

    move-object/from16 v1, v48

    goto :goto_16

    .line 512
    .end local v5    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .end local v14    # "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .restart local v2    # "delta":D
    .local v18, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .restart local v28    # "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    :cond_1d
    move-object/from16 v5, v18

    move-object/from16 v14, v28

    move-wide/from16 v18, v2

    .end local v2    # "delta":D
    .end local v28    # "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .restart local v5    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .restart local v14    # "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .local v18, "delta":D
    move-wide/from16 v2, v46

    .line 513
    .end local v7    # "currentCost":D
    .local v2, "currentCost":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_15
    if-ge v4, v6, :cond_1e

    .line 514
    aget v7, v31, v4

    .line 515
    .local v7, "pj":I
    aget-wide v42, v45, v7

    aput-wide v42, v26, v7

    .line 513
    .end local v7    # "pj":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 517
    .end local v4    # "j":I
    :cond_1e
    move-object/from16 v44, v34

    .line 518
    move-object/from16 v4, v48

    .line 519
    .end local v34    # "weightedResidual":[D
    .local v4, "weightedResidual":[D
    move-object/from16 v7, v44

    .line 521
    .end local v48    # "oldRes":[D
    .local v7, "oldRes":[D
    move-object v1, v14

    move-wide/from16 v71, v2

    move-object v2, v1

    move-object v1, v7

    move-wide/from16 v7, v71

    move-object/from16 v34, v4

    .line 525
    .end local v4    # "weightedResidual":[D
    .local v1, "oldRes":[D
    .local v2, "current":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .local v7, "currentCost":D
    .restart local v34    # "weightedResidual":[D
    :goto_16
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    move-wide/from16 v42, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v3, v42, v3

    if-gtz v3, :cond_1f

    iget-wide v3, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v3, v63, v3

    if-gtz v3, :cond_1f

    cmpg-double v3, v20, v61

    if-lez v3, :cond_20

    :cond_1f
    iget-wide v3, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    mul-double v3, v3, v22

    cmpg-double v3, v18, v3

    if-gtz v3, :cond_21

    .line 529
    :cond_20
    new-instance v3, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v4

    move-object/from16 v28, v1

    .end local v1    # "oldRes":[D
    .local v28, "oldRes":[D
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v1

    invoke-direct {v3, v2, v4, v1}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object v3

    .line 533
    .end local v28    # "oldRes":[D
    .restart local v1    # "oldRes":[D
    :cond_21
    move-object/from16 v28, v1

    .end local v1    # "oldRes":[D
    .restart local v28    # "oldRes":[D
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    sget-wide v42, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v1, v3, v42

    if-gtz v1, :cond_23

    sget-wide v3, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v1, v63, v3

    if-gtz v1, :cond_23

    cmpg-double v1, v20, v61

    if-lez v1, :cond_22

    move-object/from16 v42, v5

    goto :goto_17

    .line 536
    :cond_22
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    move-object/from16 v42, v5

    .end local v5    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .local v42, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    iget-wide v4, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 533
    .end local v42    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .restart local v5    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    :cond_23
    move-object/from16 v42, v5

    .line 538
    .end local v5    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .restart local v42    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    :goto_17
    sget-wide v3, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    mul-double v3, v3, v22

    cmpg-double v1, v18, v3

    if-lez v1, :cond_25

    .line 541
    sget-wide v3, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v1, v40, v3

    if-lez v1, :cond_24

    .line 545
    .end local v24    # "actRed":D
    .end local v44    # "tmpVec":[D
    .end local v46    # "previousCost":D
    .end local v54    # "pc2":D
    .end local v57    # "lmNorm":D
    .end local v59    # "coeff2":D
    .end local v63    # "preRed":D
    .end local v65    # "coeff1":D
    .end local v69    # "dirDer":D
    move-wide/from16 v24, v18

    move-object/from16 v19, v2

    move-wide/from16 v2, v24

    move-wide/from16 v24, v7

    move-object/from16 v1, v28

    move-object/from16 v18, v42

    move-object/from16 v5, v51

    move-object/from16 v28, v14

    move/from16 v14, v49

    goto/16 :goto_b

    .line 542
    .restart local v24    # "actRed":D
    .restart local v44    # "tmpVec":[D
    .restart local v46    # "previousCost":D
    .restart local v54    # "pc2":D
    .restart local v57    # "lmNorm":D
    .restart local v59    # "coeff2":D
    .restart local v63    # "preRed":D
    .restart local v65    # "coeff1":D
    .restart local v69    # "dirDer":D
    :cond_24
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 539
    :cond_25
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 412
    .end local v7    # "currentCost":D
    .end local v42    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .end local v44    # "tmpVec":[D
    .end local v46    # "previousCost":D
    .end local v49    # "nR":I
    .end local v51    # "work1":[D
    .end local v54    # "pc2":D
    .end local v57    # "lmNorm":D
    .end local v59    # "coeff2":D
    .end local v63    # "preRed":D
    .end local v65    # "coeff1":D
    .end local v69    # "dirDer":D
    .restart local v1    # "oldRes":[D
    .local v2, "delta":D
    .local v5, "work1":[D
    .local v14, "nR":I
    .local v18, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .local v19, "current":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .local v24, "currentCost":D
    .local v28, "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    :cond_26
    move-object/from16 v51, v5

    move/from16 v49, v14

    move-object/from16 v42, v18

    move-object/from16 v14, v26

    move-object/from16 v4, v28

    .line 546
    .end local v5    # "work1":[D
    .end local v18    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .end local v20    # "ratio":D
    .end local v26    # "currentPoint":[D
    .end local v28    # "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .end local v30    # "weightedJacobian":[[D
    .end local v31    # "permutation":[I
    .end local v32    # "diagR":[D
    .end local v33    # "jacNorm":[D
    .end local v34    # "weightedResidual":[D
    .end local v35    # "internalData":Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
    .end local v40    # "maxCosine":D
    .local v14, "currentPoint":[D
    .restart local v42    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    .restart local v49    # "nR":I
    .restart local v51    # "work1":[D
    move-wide v4, v2

    move-object/from16 v2, v19

    move-wide/from16 v19, v22

    move-wide/from16 v22, v11

    move-wide v11, v4

    move-object/from16 v21, v1

    move-object/from16 v3, v29

    move-object/from16 v4, v36

    move-object/from16 v1, v39

    move-object/from16 v5, v45

    move/from16 v14, v49

    move-object/from16 v8, v50

    move-object/from16 v7, v51

    goto/16 :goto_0
.end method

.method public withCostRelativeTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 11
    .param p1, "newCostRelativeTolerance"    # D

    .line 191
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v3, p1

    .end local p1    # "newCostRelativeTolerance":D
    .local v3, "newCostRelativeTolerance":D
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v0
.end method

.method public withInitialStepBoundFactor(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 11
    .param p1, "newInitialStepBoundFactor"    # D

    .line 178
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v1, p1

    .end local p1    # "newInitialStepBoundFactor":D
    .local v1, "newInitialStepBoundFactor":D
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v0
.end method

.method public withOrthoTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 11
    .param p1, "newOrthoTolerance"    # D

    .line 221
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v7, p1

    .end local p1    # "newOrthoTolerance":D
    .local v7, "newOrthoTolerance":D
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v0
.end method

.method public withParameterRelativeTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 11
    .param p1, "newParRelativeTolerance"    # D

    .line 205
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    move-wide v5, p1

    .end local p1    # "newParRelativeTolerance":D
    .local v5, "newParRelativeTolerance":D
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v0
.end method

.method public withRankingThreshold(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 11
    .param p1, "newQRRankingThreshold"    # D

    .line 237
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->orthoTolerance:D

    move-wide v9, p1

    .end local p1    # "newQRRankingThreshold":D
    .local v9, "newQRRankingThreshold":D
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v0
.end method
