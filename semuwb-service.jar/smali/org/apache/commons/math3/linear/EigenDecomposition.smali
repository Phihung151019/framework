.class public Lorg/apache/commons/math3/linear/EigenDecomposition;
.super Ljava/lang/Object;
.source "EigenDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private imagEigenvalues:[D

.field private final isSymmetric:Z

.field private main:[D

.field private maxIter:B

.field private realEigenvalues:[D

.field private secondary:[D

.field private transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 4
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x1e

    iput-byte v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    .line 118
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v0, v2

    .line 119
    .local v0, "symTol":D
    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    .line 120
    iget-boolean v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    if-eqz v2, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformToTridiagonal(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 122
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getQ()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectors([[D)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformToSchur(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/SchurTransformer;

    move-result-object v2

    .line 125
    .local v2, "t":Lorg/apache/commons/math3/linear/SchurTransformer;
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectorsFromSchur(Lorg/apache/commons/math3/linear/SchurTransformer;)V

    .line 127
    .end local v2    # "t":Lorg/apache/commons/math3/linear/SchurTransformer;
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "splitTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 145
    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 6
    .param p1, "main"    # [D
    .param p2, "secondary"    # [D

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x1e

    iput-byte v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    .line 158
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    .line 159
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    .line 161
    array-length v1, p1

    .line 162
    .local v1, "size":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v0

    const/4 v0, 0x0

    aput v1, v2, v0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 163
    .local v0, "z":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 164
    aget-object v3, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectors([[D)V

    .line 167
    return-void
.end method

.method public constructor <init>([D[DD)V
    .locals 0
    .param p1, "main"    # [D
    .param p2, "secondary"    # [D
    .param p3, "splitTolerance"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>([D[D)V

    .line 184
    return-void
.end method

.method private cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;
    .locals 2
    .param p1, "xr"    # D
    .param p3, "xi"    # D
    .param p5, "yr"    # D
    .param p7, "yi"    # D

    .line 785
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v1, p5, p6, p7, p8}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method private findEigenVectors([[D)V
    .locals 38
    .param p1, "householderMatrix"    # [[D

    .line 593
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, [[D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 594
    .local v1, "z":[[D
    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    array-length v2, v2

    .line 595
    .local v2, "n":I
    new-array v3, v2, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    .line 596
    new-array v3, v2, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    .line 597
    new-array v3, v2, [D

    .line 598
    .local v3, "e":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_0

    .line 599
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    aget-wide v6, v6, v4

    aput-wide v6, v5, v4

    .line 600
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    aget-wide v5, v5, v4

    aput-wide v5, v3, v4

    .line 598
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 602
    .end local v4    # "i":I
    :cond_0
    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v5, v2, -0x1

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    add-int/lit8 v7, v2, -0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 603
    add-int/lit8 v4, v2, -0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    .line 606
    const-wide/16 v7, 0x0

    .line 607
    .local v7, "maxAbsoluteValue":D
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 608
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v9, v9, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, v7

    if-lez v9, :cond_1

    .line 609
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v9, v9, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    .line 611
    :cond_1
    aget-wide v9, v3, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, v7

    if-lez v9, :cond_2

    .line 612
    aget-wide v9, v3, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    .line 607
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 616
    .end local v4    # "i":I
    :cond_3
    cmpl-double v4, v7, v5

    if-eqz v4, :cond_6

    .line 617
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v2, :cond_6

    .line 618
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v9, v9, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    sget-wide v11, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v11, v7

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_4

    .line 619
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aput-wide v5, v9, v4

    .line 621
    :cond_4
    aget-wide v9, v3, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    sget-wide v11, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v11, v7

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_5

    .line 622
    aput-wide v5, v3, v4

    .line 617
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 627
    .end local v4    # "i":I
    :cond_6
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v2, :cond_12

    .line 628
    const/4 v9, 0x0

    .line 631
    .local v9, "its":I
    :goto_4
    move v10, v4

    .local v10, "m":I
    :goto_5
    add-int/lit8 v11, v2, -0x1

    if-ge v10, v11, :cond_8

    .line 632
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v11, v11, v10

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    iget-object v13, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v14, v10, 0x1

    aget-wide v13, v13, v14

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    add-double/2addr v11, v13

    .line 634
    .local v11, "delta":D
    aget-wide v13, v3, v10

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    add-double/2addr v13, v11

    cmpl-double v13, v13, v11

    if-nez v13, :cond_7

    .line 635
    goto :goto_6

    .line 631
    .end local v11    # "delta":D
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 638
    :cond_8
    :goto_6
    if-eq v10, v4, :cond_10

    .line 639
    iget-byte v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    if-eq v9, v11, :cond_f

    .line 643
    add-int/lit8 v9, v9, 0x1

    .line 644
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v12, v4, 0x1

    aget-wide v11, v11, v12

    iget-object v13, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v13, v13, v4

    sub-double/2addr v11, v13

    aget-wide v13, v3, v4

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v15

    div-double/2addr v11, v13

    .line 645
    .local v11, "q":D
    mul-double v13, v11, v11

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v17

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 646
    .local v13, "t":D
    cmpg-double v19, v11, v5

    if-gez v19, :cond_9

    .line 647
    move-wide/from16 v19, v5

    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v5, v5, v10

    move-wide/from16 v21, v15

    iget-object v15, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v15, v15, v4

    sub-double/2addr v5, v15

    aget-wide v15, v3, v4

    sub-double v23, v11, v13

    div-double v15, v15, v23

    add-double/2addr v5, v15

    .end local v11    # "q":D
    .local v5, "q":D
    goto :goto_7

    .line 649
    .end local v5    # "q":D
    .restart local v11    # "q":D
    :cond_9
    move-wide/from16 v19, v5

    move-wide/from16 v21, v15

    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v5, v5, v10

    iget-object v15, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v15, v15, v4

    sub-double/2addr v5, v15

    aget-wide v15, v3, v4

    add-double v23, v11, v13

    div-double v15, v15, v23

    add-double/2addr v5, v15

    .line 651
    .end local v11    # "q":D
    .restart local v5    # "q":D
    :goto_7
    const-wide/16 v11, 0x0

    .line 652
    .local v11, "u":D
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 653
    .local v15, "s":D
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    .line 655
    .local v23, "c":D
    add-int/lit8 v25, v10, -0x1

    move/from16 v37, v25

    move-object/from16 v25, v1

    move/from16 v1, v37

    .local v1, "i":I
    .local v25, "z":[[D
    :goto_8
    if-lt v1, v4, :cond_d

    .line 656
    aget-wide v26, v3, v1

    mul-double v26, v26, v15

    .line 657
    .local v26, "p":D
    aget-wide v28, v3, v1

    mul-double v28, v28, v23

    .line 658
    .local v28, "h":D
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_a

    .line 659
    div-double v23, v5, v26

    .line 660
    mul-double v30, v23, v23

    add-double v30, v30, v17

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 661
    add-int/lit8 v30, v1, 0x1

    mul-double v31, v26, v13

    aput-wide v31, v3, v30

    .line 662
    div-double v15, v17, v13

    .line 663
    mul-double v23, v23, v15

    goto :goto_9

    .line 665
    :cond_a
    div-double v15, v26, v5

    .line 666
    mul-double v30, v15, v15

    add-double v30, v30, v17

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 667
    add-int/lit8 v30, v1, 0x1

    mul-double v31, v5, v13

    aput-wide v31, v3, v30

    .line 668
    div-double v23, v17, v13

    .line 669
    mul-double v15, v15, v23

    .line 671
    :goto_9
    add-int/lit8 v30, v1, 0x1

    aget-wide v30, v3, v30

    cmpl-double v30, v30, v19

    if-nez v30, :cond_b

    .line 672
    move-object/from16 v30, v3

    .end local v3    # "e":[D
    .local v30, "e":[D
    iget-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v17, v1, 0x1

    aget-wide v21, v3, v17

    sub-double v21, v21, v11

    aput-wide v21, v3, v17

    .line 673
    aput-wide v19, v30, v10

    .line 674
    goto :goto_b

    .line 676
    .end local v30    # "e":[D
    .restart local v3    # "e":[D
    :cond_b
    move-object/from16 v30, v3

    .end local v3    # "e":[D
    .restart local v30    # "e":[D
    iget-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v31, v1, 0x1

    aget-wide v31, v3, v31

    sub-double v31, v31, v11

    .line 677
    .end local v5    # "q":D
    .local v31, "q":D
    iget-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v5, v3, v1

    sub-double v5, v5, v31

    mul-double/2addr v5, v15

    mul-double v33, v23, v21

    mul-double v33, v33, v28

    add-double v13, v5, v33

    .line 678
    mul-double v11, v15, v13

    .line 679
    iget-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v5, v1, 0x1

    add-double v33, v31, v11

    aput-wide v33, v3, v5

    .line 680
    mul-double v5, v23, v13

    sub-double v5, v5, v28

    .line 681
    .end local v31    # "q":D
    .restart local v5    # "q":D
    const/4 v3, 0x0

    .local v3, "ia":I
    :goto_a
    if-ge v3, v2, :cond_c

    .line 682
    aget-object v31, v25, v3

    add-int/lit8 v32, v1, 0x1

    aget-wide v26, v31, v32

    .line 683
    aget-object v31, v25, v3

    add-int/lit8 v32, v1, 0x1

    aget-object v33, v25, v3

    aget-wide v33, v33, v1

    mul-double v33, v33, v15

    mul-double v35, v23, v26

    add-double v33, v33, v35

    aput-wide v33, v31, v32

    .line 684
    aget-object v31, v25, v3

    aget-object v32, v25, v3

    aget-wide v32, v32, v1

    mul-double v32, v32, v23

    mul-double v34, v15, v26

    sub-double v32, v32, v34

    aput-wide v32, v31, v1

    .line 681
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 655
    .end local v3    # "ia":I
    .end local v26    # "p":D
    .end local v28    # "h":D
    :cond_c
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v3, v30

    goto/16 :goto_8

    .end local v30    # "e":[D
    .local v3, "e":[D
    :cond_d
    move-object/from16 v30, v3

    .line 687
    .end local v3    # "e":[D
    .restart local v30    # "e":[D
    :goto_b
    cmpl-double v3, v13, v19

    if-nez v3, :cond_e

    if-lt v1, v4, :cond_e

    .line 688
    goto :goto_c

    .line 690
    :cond_e
    iget-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v17, v3, v4

    sub-double v17, v17, v11

    aput-wide v17, v3, v4

    .line 691
    aput-wide v5, v30, v4

    .line 692
    aput-wide v19, v30, v10

    goto :goto_c

    .line 640
    .end local v5    # "q":D
    .end local v11    # "u":D
    .end local v13    # "t":D
    .end local v15    # "s":D
    .end local v23    # "c":D
    .end local v25    # "z":[[D
    .end local v30    # "e":[D
    .local v1, "z":[[D
    .restart local v3    # "e":[D
    :cond_f
    move-object/from16 v25, v1

    move-object/from16 v30, v3

    .end local v1    # "z":[[D
    .end local v3    # "e":[D
    .restart local v25    # "z":[[D
    .restart local v30    # "e":[D
    new-instance v1, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-byte v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v1, v3, v5, v6}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v1

    .line 638
    .end local v25    # "z":[[D
    .end local v30    # "e":[D
    .restart local v1    # "z":[[D
    .restart local v3    # "e":[D
    :cond_10
    move-object/from16 v25, v1

    move-object/from16 v30, v3

    move-wide/from16 v19, v5

    .line 694
    .end local v1    # "z":[[D
    .end local v3    # "e":[D
    .restart local v25    # "z":[[D
    .restart local v30    # "e":[D
    :goto_c
    if-ne v10, v4, :cond_11

    .line 627
    .end local v9    # "its":I
    .end local v10    # "m":I
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v5, v19

    move-object/from16 v1, v25

    move-object/from16 v3, v30

    goto/16 :goto_3

    .line 694
    .restart local v9    # "its":I
    .restart local v10    # "m":I
    :cond_11
    move-wide/from16 v5, v19

    move-object/from16 v1, v25

    move-object/from16 v3, v30

    goto/16 :goto_4

    .line 627
    .end local v9    # "its":I
    .end local v10    # "m":I
    .end local v25    # "z":[[D
    .end local v30    # "e":[D
    .restart local v1    # "z":[[D
    .restart local v3    # "e":[D
    :cond_12
    move-object/from16 v25, v1

    move-object/from16 v30, v3

    move-wide/from16 v19, v5

    .line 698
    .end local v1    # "z":[[D
    .end local v3    # "e":[D
    .end local v4    # "j":I
    .restart local v25    # "z":[[D
    .restart local v30    # "e":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v2, :cond_16

    .line 699
    move v3, v1

    .line 700
    .local v3, "k":I
    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v4, v4, v1

    .line 701
    .local v4, "p":D
    add-int/lit8 v6, v1, 0x1

    .local v6, "j":I
    :goto_e
    if-ge v6, v2, :cond_14

    .line 702
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v9, v9, v6

    cmpl-double v9, v9, v4

    if-lez v9, :cond_13

    .line 703
    move v3, v6

    .line 704
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v4, v9, v6

    .line 701
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 707
    .end local v6    # "j":I
    :cond_14
    if-eq v3, v1, :cond_15

    .line 708
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v9, v9, v1

    aput-wide v9, v6, v3

    .line 709
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aput-wide v4, v6, v1

    .line 710
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_f
    if-ge v6, v2, :cond_15

    .line 711
    aget-object v9, v25, v6

    aget-wide v4, v9, v1

    .line 712
    aget-object v9, v25, v6

    aget-object v10, v25, v6

    aget-wide v10, v10, v3

    aput-wide v10, v9, v1

    .line 713
    aget-object v9, v25, v6

    aput-wide v4, v9, v3

    .line 710
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 698
    .end local v3    # "k":I
    .end local v4    # "p":D
    .end local v6    # "j":I
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 719
    .end local v1    # "i":I
    :cond_16
    const-wide/16 v3, 0x0

    .line 720
    .end local v7    # "maxAbsoluteValue":D
    .local v3, "maxAbsoluteValue":D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_10
    if-ge v1, v2, :cond_18

    .line 721
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    cmpl-double v5, v5, v3

    if-lez v5, :cond_17

    .line 722
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 720
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 726
    .end local v1    # "i":I
    :cond_18
    cmpl-double v1, v3, v19

    if-eqz v1, :cond_1a

    .line 727
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_11
    if-ge v1, v2, :cond_1a

    .line 728
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v7, v3

    cmpg-double v5, v5, v7

    if-gez v5, :cond_19

    .line 729
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aput-wide v19, v5, v1

    .line 727
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 733
    .end local v1    # "i":I
    :cond_1a
    new-array v1, v2, [Lorg/apache/commons/math3/linear/ArrayRealVector;

    iput-object v1, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 734
    new-array v1, v2, [D

    .line 735
    .local v1, "tmp":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    if-ge v5, v2, :cond_1c

    .line 736
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_13
    if-ge v6, v2, :cond_1b

    .line 737
    aget-object v7, v25, v6

    aget-wide v7, v7, v5

    aput-wide v7, v1, v6

    .line 736
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 739
    .end local v6    # "j":I
    :cond_1b
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aput-object v7, v6, v5

    .line 735
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 741
    .end local v5    # "i":I
    :cond_1c
    return-void
.end method

.method private findEigenVectorsFromSchur(Lorg/apache/commons/math3/linear/SchurTransformer;)V
    .locals 48
    .param p1, "schur"    # Lorg/apache/commons/math3/linear/SchurTransformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 796
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/SchurTransformer;->getT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v9

    .line 797
    .local v9, "matrixT":[[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/SchurTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v10

    .line 799
    .local v10, "matrixP":[[D
    array-length v11, v9

    .line 802
    .local v11, "n":I
    const-wide/16 v1, 0x0

    .line 803
    .local v1, "norm":D
    const/4 v3, 0x0

    move-wide v12, v1

    .end local v1    # "norm":D
    .local v3, "i":I
    .local v12, "norm":D
    :goto_0
    const/4 v1, 0x0

    if-ge v3, v11, :cond_1

    .line 804
    add-int/lit8 v2, v3, -0x1

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    .local v1, "j":I
    :goto_1
    if-ge v1, v11, :cond_0

    .line 805
    aget-object v2, v9, v3

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v12, v4

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 803
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 810
    .end local v3    # "i":I
    :cond_1
    const-wide/16 v14, 0x0

    const-wide v16, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v12 .. v17}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v2

    if-nez v2, :cond_19

    .line 816
    const-wide/16 v1, 0x0

    .line 817
    .local v1, "r":D
    const-wide/16 v3, 0x0

    .line 818
    .local v3, "s":D
    const-wide/16 v5, 0x0

    .line 820
    .local v5, "z":D
    add-int/lit8 v7, v11, -0x1

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move v1, v7

    .end local v3    # "s":D
    .end local v5    # "z":D
    .local v1, "idx":I
    .local v14, "r":D
    .local v16, "s":D
    .local v18, "z":D
    :goto_2
    if-ltz v1, :cond_13

    .line 821
    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v20, v2, v1

    .line 822
    .local v20, "p":D
    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v7, v2, v1

    .line 824
    .local v7, "q":D
    const-wide/16 v2, 0x0

    invoke-static {v7, v8, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_9

    .line 826
    move v4, v1

    .line 827
    .local v4, "l":I
    aget-object v5, v9, v1

    aput-wide v22, v5, v1

    .line 828
    add-int/lit8 v5, v1, -0x1

    move-wide/from16 v24, v16

    .end local v16    # "s":D
    .local v5, "i":I
    .local v24, "s":D
    :goto_3
    if-ltz v5, :cond_8

    .line 829
    aget-object v6, v9, v5

    aget-wide v16, v6, v5

    sub-double v16, v16, v20

    .line 830
    .local v16, "w":D
    const-wide/16 v14, 0x0

    .line 831
    move v6, v4

    .local v6, "j":I
    :goto_4
    if-gt v6, v1, :cond_2

    .line 832
    aget-object v26, v9, v5

    aget-wide v26, v26, v6

    aget-object v28, v9, v6

    aget-wide v28, v28, v1

    mul-double v26, v26, v28

    add-double v14, v14, v26

    .line 831
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 834
    .end local v6    # "j":I
    :cond_2
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v26, v6, v5

    const-wide/16 v28, 0x0

    const-wide v30, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v26 .. v31}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v6

    if-gez v6, :cond_3

    .line 835
    move-wide/from16 v18, v16

    .line 836
    move-wide/from16 v24, v14

    move-wide/from16 v30, v2

    move/from16 v26, v5

    goto/16 :goto_8

    .line 838
    :cond_3
    move v4, v5

    .line 839
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    move/from16 v27, v4

    move/from16 v26, v5

    .end local v4    # "l":I
    .end local v5    # "i":I
    .local v26, "i":I
    .local v27, "l":I
    aget-wide v4, v6, v26

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 840
    cmpl-double v4, v16, v2

    if-eqz v4, :cond_4

    .line 841
    aget-object v4, v9, v26

    neg-double v5, v14

    div-double v5, v5, v16

    aput-wide v5, v4, v1

    goto :goto_5

    .line 843
    :cond_4
    aget-object v4, v9, v26

    neg-double v5, v14

    sget-wide v28, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v28, v28, v12

    div-double v5, v5, v28

    aput-wide v5, v4, v1

    .line 861
    :goto_5
    move-wide/from16 v30, v2

    move-wide/from16 v2, v24

    goto :goto_6

    .line 847
    :cond_5
    aget-object v4, v9, v26

    add-int/lit8 v5, v26, 0x1

    aget-wide v4, v4, v5

    .line 848
    .local v4, "x":D
    add-int/lit8 v6, v26, 0x1

    aget-object v6, v9, v6

    aget-wide v28, v6, v26

    .line 849
    .local v28, "y":D
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v30, v6, v26

    sub-double v30, v30, v20

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v32, v6, v26

    sub-double v32, v32, v20

    mul-double v30, v30, v32

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v32, v6, v26

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v34, v6, v26

    mul-double v32, v32, v34

    add-double v7, v30, v32

    .line 851
    move-wide/from16 v30, v2

    move-wide/from16 v2, v24

    .end local v24    # "s":D
    .local v2, "s":D
    mul-double v24, v4, v2

    mul-double v32, v18, v14

    sub-double v24, v24, v32

    div-double v24, v24, v7

    .line 852
    .local v24, "t":D
    aget-object v6, v9, v26

    aput-wide v24, v6, v1

    .line 853
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v34

    cmpl-double v6, v32, v34

    if-lez v6, :cond_6

    .line 854
    add-int/lit8 v6, v26, 0x1

    aget-object v6, v9, v6

    move-wide/from16 v32, v4

    .end local v4    # "x":D
    .local v32, "x":D
    neg-double v4, v14

    mul-double v34, v16, v24

    sub-double v4, v4, v34

    div-double v4, v4, v32

    aput-wide v4, v6, v1

    goto :goto_6

    .line 856
    .end local v32    # "x":D
    .restart local v4    # "x":D
    :cond_6
    move-wide/from16 v32, v4

    .end local v4    # "x":D
    .restart local v32    # "x":D
    add-int/lit8 v5, v26, 0x1

    aget-object v4, v9, v5

    neg-double v5, v2

    mul-double v34, v28, v24

    sub-double v5, v5, v34

    div-double v5, v5, v18

    aput-wide v5, v4, v1

    .line 861
    .end local v24    # "t":D
    .end local v28    # "y":D
    .end local v32    # "x":D
    :goto_6
    aget-object v4, v9, v26

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 862
    .local v4, "t":D
    sget-wide v24, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v24, v24, v4

    mul-double v24, v24, v4

    cmpl-double v6, v24, v22

    if-lez v6, :cond_7

    .line 863
    move/from16 v6, v26

    .restart local v6    # "j":I
    :goto_7
    if-gt v6, v1, :cond_7

    .line 864
    aget-object v24, v9, v6

    aget-wide v28, v24, v1

    div-double v28, v28, v4

    aput-wide v28, v24, v1

    .line 863
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 828
    .end local v4    # "t":D
    .end local v6    # "j":I
    .end local v16    # "w":D
    :cond_7
    move-wide/from16 v24, v2

    move/from16 v4, v27

    .end local v2    # "s":D
    .end local v27    # "l":I
    .local v4, "l":I
    .local v24, "s":D
    :goto_8
    add-int/lit8 v5, v26, -0x1

    move-wide/from16 v2, v30

    .end local v26    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_3

    :cond_8
    move/from16 v26, v5

    move-wide/from16 v2, v24

    .line 869
    .end local v4    # "l":I
    .end local v5    # "i":I
    .end local v24    # "s":D
    .restart local v2    # "s":D
    move-wide/from16 v16, v2

    move-object/from16 v26, v9

    move-object/from16 v37, v10

    move/from16 v38, v11

    move-wide/from16 v27, v12

    move v9, v1

    goto/16 :goto_10

    .end local v2    # "s":D
    .local v16, "s":D
    :cond_9
    move-wide/from16 v30, v2

    cmpg-double v2, v7, v30

    if-gez v2, :cond_12

    .line 871
    add-int/lit8 v24, v1, -0x1

    .line 874
    .local v24, "l":I
    aget-object v2, v9, v1

    add-int/lit8 v3, v1, -0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-int/lit8 v4, v1, -0x1

    aget-object v4, v9, v4

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_a

    .line 875
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v9, v2

    add-int/lit8 v3, v1, -0x1

    aget-object v4, v9, v1

    add-int/lit8 v5, v1, -0x1

    aget-wide v4, v4, v5

    div-double v4, v7, v4

    aput-wide v4, v2, v3

    .line 876
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v9, v2

    aget-object v3, v9, v1

    aget-wide v3, v3, v1

    sub-double v3, v3, v20

    neg-double v3, v3

    aget-object v5, v9, v1

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    div-double/2addr v3, v5

    aput-wide v3, v2, v1

    move-object/from16 v26, v9

    move-wide/from16 v27, v12

    move-wide/from16 v12, v30

    move v9, v1

    goto :goto_9

    .line 878
    :cond_a
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v9, v2

    aget-wide v2, v2, v1

    neg-double v3, v2

    add-int/lit8 v2, v1, -0x1

    aget-object v2, v9, v2

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, v2, v5

    sub-double v5, v5, v20

    move/from16 v25, v1

    .end local v1    # "idx":I
    .local v25, "idx":I
    const-wide/16 v1, 0x0

    move-object/from16 v26, v9

    move-wide/from16 v27, v12

    move/from16 v9, v25

    move-wide/from16 v12, v30

    .end local v12    # "norm":D
    .end local v25    # "idx":I
    .local v9, "idx":I
    .local v26, "matrixT":[[D
    .local v27, "norm":D
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 880
    .local v1, "result":Lorg/apache/commons/math3/complex/Complex;
    add-int/lit8 v2, v9, -0x1

    aget-object v2, v26, v2

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 881
    add-int/lit8 v2, v9, -0x1

    aget-object v2, v26, v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v3

    aput-wide v3, v2, v9

    .line 884
    .end local v1    # "result":Lorg/apache/commons/math3/complex/Complex;
    :goto_9
    aget-object v1, v26, v9

    add-int/lit8 v2, v9, -0x1

    aput-wide v12, v1, v2

    .line 885
    aget-object v1, v26, v9

    aput-wide v22, v1, v9

    .line 887
    add-int/lit8 v1, v9, -0x2

    move-wide/from16 v46, v14

    move v14, v1

    move-wide/from16 v1, v46

    .local v1, "r":D
    .local v14, "i":I
    :goto_a
    if-ltz v14, :cond_11

    .line 888
    const-wide/16 v3, 0x0

    .line 889
    .local v3, "ra":D
    const-wide/16 v5, 0x0

    .line 890
    .local v5, "sa":D
    move/from16 v15, v24

    .local v15, "j":I
    :goto_b
    if-gt v15, v9, :cond_b

    .line 891
    aget-object v25, v26, v14

    aget-wide v29, v25, v15

    aget-object v25, v26, v15

    add-int/lit8 v31, v9, -0x1

    aget-wide v31, v25, v31

    mul-double v29, v29, v31

    add-double v3, v3, v29

    .line 892
    aget-object v25, v26, v14

    aget-wide v29, v25, v15

    aget-object v25, v26, v15

    aget-wide v31, v25, v9

    mul-double v29, v29, v31

    add-double v5, v5, v29

    .line 890
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 894
    .end local v15    # "j":I
    :cond_b
    aget-object v15, v26, v14

    aget-wide v29, v15, v14

    sub-double v29, v29, v20

    .line 896
    .local v29, "w":D
    iget-object v15, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v31, v15, v14

    const-wide/16 v33, 0x0

    const-wide v35, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v31 .. v36}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v15

    if-gez v15, :cond_c

    .line 897
    move-wide/from16 v18, v29

    .line 898
    move-wide v1, v3

    .line 899
    move-wide v15, v5

    move-object/from16 v37, v10

    move/from16 v38, v11

    move/from16 v35, v14

    move-wide/from16 v16, v15

    .end local v16    # "s":D
    .local v15, "s":D
    goto/16 :goto_f

    .line 901
    .end local v15    # "s":D
    .restart local v16    # "s":D
    :cond_c
    move v15, v14

    .line 902
    .end local v24    # "l":I
    .local v15, "l":I
    move-wide/from16 v31, v1

    .end local v1    # "r":D
    .local v31, "r":D
    iget-object v1, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v1, v1, v14

    invoke-static {v1, v2, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 903
    neg-double v1, v3

    move-wide/from16 v24, v3

    .end local v3    # "ra":D
    .local v24, "ra":D
    neg-double v3, v5

    move-wide/from16 v43, v5

    move-wide/from16 v39, v16

    move-wide/from16 v41, v24

    move-wide/from16 v5, v29

    move-wide/from16 v37, v31

    .end local v16    # "s":D
    .end local v24    # "ra":D
    .end local v29    # "w":D
    .end local v31    # "r":D
    .local v5, "w":D
    .local v37, "r":D
    .local v39, "s":D
    .local v41, "ra":D
    .local v43, "sa":D
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 904
    move-wide/from16 v16, v7

    .end local v5    # "w":D
    .end local v7    # "q":D
    .local v1, "c":Lorg/apache/commons/math3/complex/Complex;
    .local v16, "q":D
    .restart local v29    # "w":D
    aget-object v2, v26, v14

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 905
    aget-object v2, v26, v14

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v3

    aput-wide v3, v2, v9

    .line 906
    .end local v1    # "c":Lorg/apache/commons/math3/complex/Complex;
    move/from16 v35, v14

    move/from16 v36, v15

    move-wide/from16 v5, v18

    move-wide/from16 v12, v37

    move-wide/from16 v14, v43

    move-object/from16 v37, v10

    move/from16 v38, v11

    move-wide/from16 v10, v41

    goto/16 :goto_d

    .line 908
    .end local v37    # "r":D
    .end local v39    # "s":D
    .end local v41    # "ra":D
    .end local v43    # "sa":D
    .restart local v3    # "ra":D
    .local v5, "sa":D
    .restart local v7    # "q":D
    .local v16, "s":D
    .restart local v31    # "r":D
    :cond_d
    move-wide/from16 v41, v3

    move-wide/from16 v43, v5

    move-wide/from16 v39, v16

    move-wide/from16 v37, v31

    move-wide/from16 v16, v7

    .end local v3    # "ra":D
    .end local v5    # "sa":D
    .end local v7    # "q":D
    .end local v31    # "r":D
    .local v16, "q":D
    .restart local v37    # "r":D
    .restart local v39    # "s":D
    .restart local v41    # "ra":D
    .restart local v43    # "sa":D
    aget-object v1, v26, v14

    add-int/lit8 v2, v14, 0x1

    aget-wide v24, v1, v2

    .line 909
    .local v24, "x":D
    add-int/lit8 v1, v14, 0x1

    aget-object v1, v26, v1

    aget-wide v31, v1, v14

    .line 910
    .local v31, "y":D
    iget-object v1, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v1, v1, v14

    sub-double v1, v1, v20

    iget-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v3, v3, v14

    sub-double v3, v3, v20

    mul-double/2addr v1, v3

    iget-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v3, v3, v14

    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v5, v5, v14

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    mul-double v7, v16, v16

    sub-double/2addr v1, v7

    .line 912
    .local v1, "vr":D
    iget-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v3, v3, v14

    sub-double v3, v3, v20

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    mul-double v7, v3, v16

    .line 913
    .local v7, "vi":D
    invoke-static {v1, v2, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v7, v8, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 914
    sget-wide v3, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v3, v3, v27

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v33

    add-double v5, v5, v33

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v33

    add-double v5, v5, v33

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v33

    add-double v5, v5, v33

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v33

    add-double v5, v5, v33

    mul-double v1, v3, v5

    move-wide v5, v1

    goto :goto_c

    .line 918
    :cond_e
    move-wide v5, v1

    .end local v1    # "vr":D
    .local v5, "vr":D
    :goto_c
    mul-double v1, v24, v37

    mul-double v3, v18, v41

    sub-double/2addr v1, v3

    mul-double v3, v16, v43

    add-double/2addr v1, v3

    mul-double v3, v24, v39

    mul-double v33, v18, v43

    sub-double v3, v3, v33

    mul-double v33, v16, v41

    sub-double v3, v3, v33

    move/from16 v35, v14

    move/from16 v36, v15

    move-wide/from16 v12, v37

    move-wide/from16 v14, v43

    move-object/from16 v37, v10

    move/from16 v38, v11

    move-wide/from16 v10, v41

    .end local v11    # "n":I
    .end local v15    # "l":I
    .end local v41    # "ra":D
    .end local v43    # "sa":D
    .local v10, "ra":D
    .local v12, "r":D
    .local v14, "sa":D
    .local v35, "i":I
    .local v36, "l":I
    .local v37, "matrixP":[[D
    .local v38, "n":I
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v41

    .line 920
    move-wide/from16 v44, v5

    move-wide/from16 v42, v7

    .end local v5    # "vr":D
    .end local v7    # "vi":D
    .local v41, "c":Lorg/apache/commons/math3/complex/Complex;
    .local v42, "vi":D
    .local v44, "vr":D
    aget-object v0, v26, v35

    add-int/lit8 v1, v9, -0x1

    invoke-virtual/range {v41 .. v41}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 921
    aget-object v0, v26, v35

    invoke-virtual/range {v41 .. v41}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v1

    aput-wide v1, v0, v9

    .line 923
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_f

    .line 924
    add-int/lit8 v0, v35, 0x1

    aget-object v0, v26, v0

    add-int/lit8 v1, v9, -0x1

    neg-double v2, v10

    aget-object v4, v26, v35

    add-int/lit8 v5, v9, -0x1

    aget-wide v4, v4, v5

    mul-double v4, v4, v29

    sub-double/2addr v2, v4

    aget-object v4, v26, v35

    aget-wide v4, v4, v9

    mul-double v7, v16, v4

    add-double/2addr v2, v7

    div-double v2, v2, v24

    aput-wide v2, v0, v1

    .line 926
    add-int/lit8 v0, v35, 0x1

    aget-object v0, v26, v0

    neg-double v1, v14

    aget-object v3, v26, v35

    aget-wide v3, v3, v9

    mul-double v3, v3, v29

    sub-double/2addr v1, v3

    aget-object v3, v26, v35

    add-int/lit8 v4, v9, -0x1

    aget-wide v3, v3, v4

    mul-double v7, v16, v3

    sub-double/2addr v1, v7

    div-double v1, v1, v24

    aput-wide v1, v0, v9

    move-object/from16 v0, p0

    move-wide/from16 v7, v16

    move-wide/from16 v5, v18

    goto :goto_d

    .line 929
    :cond_f
    neg-double v0, v12

    aget-object v2, v26, v35

    add-int/lit8 v3, v9, -0x1

    aget-wide v2, v2, v3

    mul-double v2, v2, v31

    sub-double v1, v0, v2

    move-wide/from16 v3, v39

    .end local v39    # "s":D
    .local v3, "s":D
    neg-double v5, v3

    aget-object v0, v26, v35

    aget-wide v7, v0, v9

    mul-double v7, v7, v31

    sub-double/2addr v5, v7

    move-object/from16 v0, p0

    move-wide v3, v5

    move-wide/from16 v7, v16

    move-wide/from16 v5, v18

    .end local v3    # "s":D
    .end local v16    # "q":D
    .end local v18    # "z":D
    .local v5, "z":D
    .local v7, "q":D
    .restart local v39    # "s":D
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 931
    .local v1, "c2":Lorg/apache/commons/math3/complex/Complex;
    add-int/lit8 v2, v35, 0x1

    aget-object v2, v26, v2

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v16

    aput-wide v16, v2, v3

    .line 932
    add-int/lit8 v2, v35, 0x1

    aget-object v2, v26, v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v3

    aput-wide v3, v2, v9

    .line 937
    .end local v1    # "c2":Lorg/apache/commons/math3/complex/Complex;
    .end local v24    # "x":D
    .end local v31    # "y":D
    .end local v41    # "c":Lorg/apache/commons/math3/complex/Complex;
    .end local v42    # "vi":D
    .end local v44    # "vr":D
    :goto_d
    aget-object v1, v26, v35

    add-int/lit8 v2, v9, -0x1

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    aget-object v3, v26, v35

    aget-wide v3, v3, v9

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 939
    .local v1, "t":D
    sget-wide v3, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v3, v1

    mul-double/2addr v3, v1

    cmpl-double v3, v3, v22

    if-lez v3, :cond_10

    .line 940
    move/from16 v3, v35

    .local v3, "j":I
    :goto_e
    if-gt v3, v9, :cond_10

    .line 941
    aget-object v4, v26, v3

    add-int/lit8 v16, v9, -0x1

    aget-wide v17, v4, v16

    div-double v17, v17, v1

    aput-wide v17, v4, v16

    .line 942
    aget-object v4, v26, v3

    aget-wide v16, v4, v9

    div-double v16, v16, v1

    aput-wide v16, v4, v9

    .line 940
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 887
    .end local v1    # "t":D
    .end local v3    # "j":I
    .end local v10    # "ra":D
    .end local v14    # "sa":D
    .end local v29    # "w":D
    :cond_10
    move-wide/from16 v18, v5

    move-wide v1, v12

    move/from16 v24, v36

    move-wide/from16 v16, v39

    .end local v5    # "z":D
    .end local v12    # "r":D
    .end local v36    # "l":I
    .end local v39    # "s":D
    .local v1, "r":D
    .local v16, "s":D
    .restart local v18    # "z":D
    .local v24, "l":I
    :goto_f
    add-int/lit8 v14, v35, -0x1

    move-object/from16 v10, v37

    move/from16 v11, v38

    const-wide/16 v12, 0x0

    .end local v35    # "i":I
    .local v14, "i":I
    goto/16 :goto_a

    .end local v37    # "matrixP":[[D
    .end local v38    # "n":I
    .local v10, "matrixP":[[D
    .restart local v11    # "n":I
    :cond_11
    move-wide v12, v1

    move-object/from16 v37, v10

    move/from16 v38, v11

    move/from16 v35, v14

    move-wide/from16 v39, v16

    move-wide/from16 v5, v18

    .end local v1    # "r":D
    .end local v10    # "matrixP":[[D
    .end local v11    # "n":I
    .end local v14    # "i":I
    .end local v16    # "s":D
    .end local v18    # "z":D
    .restart local v5    # "z":D
    .restart local v12    # "r":D
    .restart local v35    # "i":I
    .restart local v37    # "matrixP":[[D
    .restart local v38    # "n":I
    .restart local v39    # "s":D
    move-wide v14, v12

    goto :goto_10

    .line 869
    .end local v5    # "z":D
    .end local v24    # "l":I
    .end local v26    # "matrixT":[[D
    .end local v27    # "norm":D
    .end local v35    # "i":I
    .end local v37    # "matrixP":[[D
    .end local v38    # "n":I
    .end local v39    # "s":D
    .local v1, "idx":I
    .local v9, "matrixT":[[D
    .restart local v10    # "matrixP":[[D
    .restart local v11    # "n":I
    .local v12, "norm":D
    .local v14, "r":D
    .restart local v16    # "s":D
    .restart local v18    # "z":D
    :cond_12
    move-object/from16 v26, v9

    move-object/from16 v37, v10

    move/from16 v38, v11

    move-wide/from16 v27, v12

    move v9, v1

    .line 820
    .end local v1    # "idx":I
    .end local v7    # "q":D
    .end local v10    # "matrixP":[[D
    .end local v11    # "n":I
    .end local v12    # "norm":D
    .end local v20    # "p":D
    .local v9, "idx":I
    .restart local v26    # "matrixT":[[D
    .restart local v27    # "norm":D
    .restart local v37    # "matrixP":[[D
    .restart local v38    # "n":I
    :goto_10
    add-int/lit8 v1, v9, -0x1

    move-object/from16 v9, v26

    move-wide/from16 v12, v27

    move-object/from16 v10, v37

    move/from16 v11, v38

    .end local v9    # "idx":I
    .restart local v1    # "idx":I
    goto/16 :goto_2

    .end local v26    # "matrixT":[[D
    .end local v27    # "norm":D
    .end local v37    # "matrixP":[[D
    .end local v38    # "n":I
    .local v9, "matrixT":[[D
    .restart local v10    # "matrixP":[[D
    .restart local v11    # "n":I
    .restart local v12    # "norm":D
    :cond_13
    move-object/from16 v26, v9

    move-object/from16 v37, v10

    move/from16 v38, v11

    move-wide/from16 v27, v12

    move v9, v1

    .line 951
    .end local v1    # "idx":I
    .end local v9    # "matrixT":[[D
    .end local v10    # "matrixP":[[D
    .end local v11    # "n":I
    .end local v12    # "norm":D
    .restart local v26    # "matrixT":[[D
    .restart local v27    # "norm":D
    .restart local v37    # "matrixP":[[D
    .restart local v38    # "n":I
    add-int/lit8 v11, v38, -0x1

    .local v11, "j":I
    :goto_11
    if-ltz v11, :cond_16

    .line 952
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    add-int/lit8 v2, v38, -0x1

    if-gt v1, v2, :cond_15

    .line 953
    const-wide/16 v2, 0x0

    .line 954
    .end local v18    # "z":D
    .local v2, "z":D
    const/4 v4, 0x0

    move-wide/from16 v18, v2

    .end local v2    # "z":D
    .local v4, "k":I
    .restart local v18    # "z":D
    :goto_13
    add-int/lit8 v2, v38, -0x1

    invoke-static {v11, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    if-gt v4, v2, :cond_14

    .line 955
    aget-object v2, v37, v1

    aget-wide v2, v2, v4

    aget-object v5, v26, v4

    aget-wide v5, v5, v11

    mul-double/2addr v2, v5

    add-double v18, v18, v2

    .line 954
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 957
    .end local v4    # "k":I
    :cond_14
    aget-object v2, v37, v1

    aput-wide v18, v2, v11

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 951
    .end local v1    # "i":I
    :cond_15
    add-int/lit8 v11, v11, -0x1

    goto :goto_11

    .line 961
    .end local v11    # "j":I
    :cond_16
    move/from16 v2, v38

    .end local v38    # "n":I
    .local v2, "n":I
    new-array v1, v2, [Lorg/apache/commons/math3/linear/ArrayRealVector;

    iput-object v1, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 962
    new-array v1, v2, [D

    .line 963
    .local v1, "tmp":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_18

    .line 964
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_15
    if-ge v4, v2, :cond_17

    .line 965
    aget-object v5, v37, v4

    aget-wide v5, v5, v3

    aput-wide v5, v1, v4

    .line 964
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 967
    .end local v4    # "j":I
    :cond_17
    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aput-object v5, v4, v3

    .line 963
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 969
    .end local v3    # "i":I
    :cond_18
    return-void

    .line 811
    .end local v1    # "tmp":[D
    .end local v2    # "n":I
    .end local v14    # "r":D
    .end local v16    # "s":D
    .end local v18    # "z":D
    .end local v26    # "matrixT":[[D
    .end local v27    # "norm":D
    .end local v37    # "matrixP":[[D
    .restart local v9    # "matrixT":[[D
    .restart local v10    # "matrixP":[[D
    .local v11, "n":I
    .restart local v12    # "norm":D
    :cond_19
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method

.method private transformToSchur(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/SchurTransformer;
    .locals 13
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 750
    new-instance v0, Lorg/apache/commons/math3/linear/SchurTransformer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/SchurTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 751
    .local v0, "schurTransform":Lorg/apache/commons/math3/linear/SchurTransformer;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/SchurTransformer;->getT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    .line 753
    .local v1, "matT":[[D
    array-length v2, v1

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    .line 754
    array-length v2, v1

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    .line 756
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 757
    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 761
    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    add-int/lit8 v4, v2, 0x1

    aget-wide v3, v3, v4

    .line 762
    .local v3, "x":D
    aget-object v5, v1, v2

    aget-wide v5, v5, v2

    sub-double/2addr v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    .line 763
    .local v5, "p":D
    mul-double v7, v5, v5

    add-int/lit8 v9, v2, 0x1

    aget-object v9, v1, v9

    aget-wide v9, v9, v2

    aget-object v11, v1, v2

    add-int/lit8 v12, v2, 0x1

    aget-wide v11, v11, v12

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 764
    .local v7, "z":D
    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-double v10, v3, v5

    aput-wide v10, v9, v2

    .line 765
    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aput-wide v7, v9, v2

    .line 766
    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v10, v2, 0x1

    add-double v11, v3, v5

    aput-wide v11, v9, v10

    .line 767
    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    add-int/lit8 v10, v2, 0x1

    neg-double v11, v7

    aput-wide v11, v9, v10

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 759
    .end local v3    # "x":D
    .end local v5    # "p":D
    .end local v7    # "z":D
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-object v4, v1, v2

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    .line 756
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private transformToTridiagonal(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 581
    new-instance v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    .line 582
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getMainDiagonalRef()[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    .line 583
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getSecondaryDiagonalRef()[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    .line 584
    return-void
.end method


# virtual methods
.method public getD()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 227
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-lez v1, :cond_0

    .line 228
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v3, v3, v0

    invoke-interface {v1, v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    goto :goto_1

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-gez v1, :cond_1

    .line 230
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v3, v3, v0

    invoke-interface {v1, v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 226
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getDeterminant()D
    .locals 7

    .line 356
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 357
    .local v0, "determinant":D
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    .local v2, "arr$":[D
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 358
    .local v5, "lambda":D
    mul-double/2addr v0, v5

    .line 357
    .end local v5    # "lambda":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 360
    .end local v2    # "arr$":[D
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    return-wide v0
.end method

.method public getEigenvector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "i"    # I

    .line 347
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public getImagEigenvalue(I)D
    .locals 2
    .param p1, "i"    # I

    .line 336
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getImagEigenvalues()[D
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getRealEigenvalue(I)D
    .locals 2
    .param p1, "i"    # I

    .line 305
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getRealEigenvalues()[D
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 5

    .line 405
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->hasComplexEigenvalues()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;-><init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/EigenDecomposition$1;)V

    return-object v0

    .line 406
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    .line 374
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 379
    .local v0, "sqrtEigenValues":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 380
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v2, v2, v1

    .line 381
    .local v2, "eigen":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-lez v4, :cond_0

    .line 384
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 379
    .end local v2    # "eigen":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .restart local v2    # "eigen":D
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v4

    .line 386
    .end local v1    # "i":I
    .end local v2    # "eigen":D
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 387
    .local v1, "sqrtEigen":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 388
    .local v2, "v":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getVT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 390
    .local v3, "vT":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    return-object v4

    .line 375
    .end local v0    # "sqrtEigenValues":[D
    .end local v1    # "sqrtEigen":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v2    # "v":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v3    # "vT":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .line 198
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    array-length v0, v0

    .line 200
    .local v0, "m":I
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 201
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 202
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "m":I
    .end local v1    # "k":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getVT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .line 249
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    array-length v0, v0

    .line 251
    .local v0, "m":I
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 252
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 253
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "m":I
    .end local v1    # "k":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public hasComplexEigenvalues()Z
    .locals 8

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 272
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    const/4 v1, 0x1

    return v1

    .line 271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
