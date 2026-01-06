.class Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;
.super Ljava/lang/Object;
.source "EigenDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/EigenDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private imagEigenvalues:[D

.field private realEigenvalues:[D


# direct methods
.method private constructor <init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 0
    .param p1, "realEigenvalues"    # [D
    .param p2, "imagEigenvalues"    # [D
    .param p3, "eigenvectors"    # [Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    .line 431
    iput-object p2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->imagEigenvalues:[D

    .line 432
    iput-object p3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 433
    return-void
.end method

.method synthetic constructor <init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/EigenDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # [D
    .param p2, "x1"    # [D
    .param p3, "x2"    # [Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p4, "x3"    # Lorg/apache/commons/math3/linear/EigenDecomposition$1;

    .line 412
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;-><init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;)V

    return-void
.end method

.method private eigenvalueNorm(I)D
    .locals 8
    .param p1, "i"    # I

    .line 540
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v0, v0, p1

    .line 541
    .local v0, "re":D
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->imagEigenvalues:[D

    aget-wide v2, v2, p1

    .line 542
    .local v2, "im":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 13

    .line 552
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v0, v0

    .line 557
    .local v0, "m":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 559
    .local v1, "invData":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 560
    aget-object v3, v1, v2

    .line 561
    .local v3, "invI":[D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 562
    const-wide/16 v5, 0x0

    .line 563
    .local v5, "invIJ":D
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    if-ge v7, v0, :cond_0

    .line 564
    iget-object v8, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v8

    .line 565
    .local v8, "vK":[D
    aget-wide v9, v8, v2

    aget-wide v11, v8, v4

    mul-double/2addr v9, v11

    iget-object v11, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v11, v11, v7

    div-double/2addr v9, v11

    add-double/2addr v5, v9

    .line 563
    .end local v8    # "vK":[D
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 567
    .end local v7    # "k":I
    :cond_0
    aput-wide v5, v3, v4

    .line 561
    .end local v5    # "invIJ":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 559
    .end local v3    # "invI":[D
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    .end local v2    # "i":I
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    return-object v2

    .line 553
    .end local v0    # "m":I
    .end local v1    # "invData":[[D
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0
.end method

.method public isNonSingular()Z
    .locals 12

    .line 515
    const-wide/16 v0, 0x0

    .line 518
    .local v0, "largestEigenvalueNorm":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 519
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvalueNorm(I)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    .end local v2    # "i":I
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 523
    return v3

    .line 525
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 528
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvalueNorm(I)D

    move-result-wide v4

    div-double v6, v4, v0

    const-wide/16 v8, 0x0

    const-wide v10, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v6 .. v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 529
    return v3

    .line 525
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 532
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 19
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 474
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 478
    iget-object v1, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v1, v1

    .line 479
    .local v1, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 483
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 484
    .local v2, "nColB":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x0

    aput v1, v3, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 485
    .local v3, "bp":[[D
    new-array v5, v1, [D

    .line 486
    .local v5, "tmpCol":[D
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    if-ge v6, v2, :cond_4

    .line 487
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 488
    move-object/from16 v8, p1

    invoke-interface {v8, v7, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    aput-wide v9, v5, v7

    .line 489
    aget-object v9, v3, v7

    const-wide/16 v10, 0x0

    aput-wide v10, v9, v6

    .line 487
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v8, p1

    .line 491
    .end local v7    # "i":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v1, :cond_3

    .line 492
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v9, v9, v7

    .line 493
    .local v9, "v":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v10

    .line 494
    .local v10, "vData":[D
    const-wide/16 v11, 0x0

    .line 495
    .local v11, "s":D
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v1, :cond_1

    .line 496
    invoke-virtual {v9, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    aget-wide v16, v5, v13

    mul-double v14, v14, v16

    add-double/2addr v11, v14

    .line 495
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 498
    .end local v13    # "j":I
    :cond_1
    iget-object v13, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v13, v13, v7

    div-double/2addr v11, v13

    .line 499
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_4
    if-ge v13, v1, :cond_2

    .line 500
    aget-object v14, v3, v13

    aget-wide v15, v14, v6

    aget-wide v17, v10, v13

    mul-double v17, v17, v11

    add-double v15, v15, v17

    aput-wide v15, v14, v6

    .line 499
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 491
    .end local v9    # "v":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v10    # "vData":[D
    .end local v11    # "s":D
    .end local v13    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 486
    .end local v7    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v8, p1

    .line 505
    .end local v6    # "k":I
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v6, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v6

    .line 480
    .end local v2    # "nColB":I
    .end local v3    # "bp":[[D
    .end local v5    # "tmpCol":[D
    :cond_5
    move-object/from16 v8, p1

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 475
    .end local v1    # "m":I
    :cond_6
    move-object/from16 v8, p1

    new-instance v1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 449
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v0, v0

    .line 454
    .local v0, "m":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 458
    new-array v1, v0, [D

    .line 459
    .local v1, "bp":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 460
    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v2

    .line 461
    .local v3, "v":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v4

    .line 462
    .local v4, "vData":[D
    invoke-virtual {v3, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v7, v7, v2

    div-double/2addr v5, v7

    .line 463
    .local v5, "s":D
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v0, :cond_0

    .line 464
    aget-wide v8, v1, v7

    aget-wide v10, v4, v7

    mul-double/2addr v10, v5

    add-double/2addr v8, v10

    aput-wide v8, v1, v7

    .line 463
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 459
    .end local v3    # "v":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v4    # "vData":[D
    .end local v5    # "s":D
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v2

    .line 455
    .end local v1    # "bp":[D
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 450
    .end local v0    # "m":I
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0
.end method
