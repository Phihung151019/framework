.class Lorg/apache/commons/math3/linear/QRDecomposition$Solver;
.super Ljava/lang/Object;
.source "QRDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/QRDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final qrt:[[D

.field private final rDiag:[D

.field private final threshold:D


# direct methods
.method private constructor <init>([[D[DD)V
    .locals 0
    .param p1, "qrt"    # [[D
    .param p2, "rDiag"    # [D
    .param p3, "threshold"    # D

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    .line 332
    iput-object p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    .line 333
    iput-wide p3, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->threshold:D

    .line 334
    return-void
.end method

.method synthetic constructor <init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # [[D
    .param p2, "x1"    # [D
    .param p3, "x2"    # D
    .param p5, "x3"    # Lorg/apache/commons/math3/linear/QRDecomposition$1;

    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;-><init>([[D[DD)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .line 473
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 9

    .line 338
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    .local v0, "arr$":[D
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, v0, v2

    .line 339
    .local v3, "diag":D
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->threshold:D

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_0

    .line 340
    const/4 v5, 0x0

    return v5

    .line 338
    .end local v3    # "diag":D
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "arr$":[D
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 36
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    array-length v1, v1

    .line 392
    .local v1, "n":I
    iget-object v2, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 393
    .local v2, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    if-ne v4, v2, :cond_c

    .line 396
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->isNonSingular()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 400
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    .line 401
    .local v4, "columns":I
    const/16 v5, 0x34

    .line 402
    .local v5, "blockSize":I
    add-int/lit8 v6, v4, 0x34

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/16 v8, 0x34

    div-int/2addr v6, v8

    .line 403
    .local v6, "cBlocks":I
    invoke-static {v1, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createBlocksLayout(II)[[D

    move-result-object v9

    .line 404
    .local v9, "xBlocks":[[D
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v10

    const/4 v11, 0x2

    new-array v11, v11, [I

    aput v8, v11, v7

    aput v10, v11, v3

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, [[D

    .line 405
    .local v16, "y":[[D
    new-array v8, v8, [D

    .line 407
    .local v8, "alpha":[D
    const/4 v10, 0x0

    .local v10, "kBlock":I
    :goto_0
    if-ge v10, v6, :cond_a

    .line 408
    mul-int/lit8 v14, v10, 0x34

    .line 409
    .local v14, "kStart":I
    add-int/lit8 v11, v14, 0x34

    invoke-static {v11, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v17

    .line 410
    .local v17, "kEnd":I
    sub-int v11, v17, v14

    .line 413
    .local v11, "kWidth":I
    add-int/lit8 v13, v2, -0x1

    add-int/lit8 v15, v17, -0x1

    const/4 v12, 0x0

    move/from16 v18, v7

    move v7, v11

    move-object/from16 v11, p1

    .end local v11    # "kWidth":I
    .local v7, "kWidth":I
    invoke-interface/range {v11 .. v16}, Lorg/apache/commons/math3/linear/RealMatrix;->copySubMatrix(IIII[[D)V

    .line 416
    const/4 v11, 0x0

    .local v11, "minor":I
    :goto_1
    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    if-ge v11, v12, :cond_5

    .line 417
    iget-object v12, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v12, v12, v11

    .line 418
    .local v12, "qrtMinor":[D
    iget-object v13, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v21, v13, v11

    aget-wide v23, v12, v11

    mul-double v21, v21, v23

    div-double v19, v19, v21

    .line 420
    .local v19, "factor":D
    move v13, v5

    move v15, v6

    .end local v5    # "blockSize":I
    .end local v6    # "cBlocks":I
    .local v13, "blockSize":I
    .local v15, "cBlocks":I
    const-wide/16 v5, 0x0

    invoke-static {v8, v3, v7, v5, v6}, Ljava/util/Arrays;->fill([DIID)V

    .line 421
    move v5, v11

    .local v5, "row":I
    :goto_2
    if-ge v5, v2, :cond_1

    .line 422
    aget-wide v21, v12, v5

    .line 423
    .local v21, "d":D
    aget-object v6, v16, v5

    .line 424
    .local v6, "yRow":[D
    const/16 v23, 0x0

    move/from16 v3, v23

    .local v3, "k":I
    :goto_3
    if-ge v3, v7, :cond_0

    .line 425
    aget-wide v25, v8, v3

    aget-wide v27, v6, v3

    mul-double v27, v27, v21

    add-double v25, v25, v27

    aput-wide v25, v8, v3

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 421
    .end local v3    # "k":I
    .end local v6    # "yRow":[D
    .end local v21    # "d":D
    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_2

    .line 428
    .end local v5    # "row":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_4
    if-ge v3, v7, :cond_2

    .line 429
    aget-wide v5, v8, v3

    mul-double v5, v5, v19

    aput-wide v5, v8, v3

    .line 428
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 432
    .end local v3    # "k":I
    :cond_2
    move v3, v11

    .local v3, "row":I
    :goto_5
    if-ge v3, v2, :cond_4

    .line 433
    aget-wide v5, v12, v3

    .line 434
    .local v5, "d":D
    aget-object v21, v16, v3

    .line 435
    .local v21, "yRow":[D
    const/16 v22, 0x0

    move/from16 v23, v3

    move/from16 v3, v22

    .local v3, "k":I
    .local v23, "row":I
    :goto_6
    if-ge v3, v7, :cond_3

    .line 436
    aget-wide v25, v21, v3

    aget-wide v27, v8, v3

    mul-double v27, v27, v5

    add-double v25, v25, v27

    aput-wide v25, v21, v3

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 432
    .end local v3    # "k":I
    .end local v5    # "d":D
    .end local v21    # "yRow":[D
    :cond_3
    add-int/lit8 v3, v23, 0x1

    .end local v23    # "row":I
    .local v3, "row":I
    goto :goto_5

    :cond_4
    move/from16 v23, v3

    .line 416
    .end local v3    # "row":I
    .end local v12    # "qrtMinor":[D
    .end local v19    # "factor":D
    add-int/lit8 v11, v11, 0x1

    move v5, v13

    move v6, v15

    const/4 v3, 0x0

    goto :goto_1

    .end local v13    # "blockSize":I
    .end local v15    # "cBlocks":I
    .local v5, "blockSize":I
    .local v6, "cBlocks":I
    :cond_5
    move v13, v5

    move v15, v6

    .line 442
    .end local v5    # "blockSize":I
    .end local v6    # "cBlocks":I
    .end local v11    # "minor":I
    .restart local v13    # "blockSize":I
    .restart local v15    # "cBlocks":I
    iget-object v3, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_7
    if-ltz v3, :cond_9

    .line 443
    div-int/lit8 v5, v3, 0x34

    .line 444
    .local v5, "jBlock":I
    mul-int/lit8 v6, v5, 0x34

    .line 445
    .local v6, "jStart":I
    iget-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v11, v11, v3

    div-double v11, v19, v11

    .line 446
    .local v11, "factor":D
    aget-object v21, v16, v3

    .line 447
    .local v21, "yJ":[D
    mul-int v22, v5, v15

    add-int v22, v22, v10

    aget-object v22, v9, v22

    .line 448
    .local v22, "xBlock":[D
    sub-int v23, v3, v6

    mul-int v23, v23, v7

    .line 449
    .local v23, "index":I
    const/16 v25, 0x0

    move/from16 v35, v25

    move/from16 v25, v5

    move/from16 v5, v35

    .local v5, "k":I
    .local v25, "jBlock":I
    :goto_8
    if-ge v5, v7, :cond_6

    .line 450
    aget-wide v26, v21, v5

    mul-double v26, v26, v11

    aput-wide v26, v21, v5

    .line 451
    add-int/lit8 v26, v23, 0x1

    .end local v23    # "index":I
    .local v26, "index":I
    aget-wide v27, v21, v5

    aput-wide v27, v22, v23

    .line 449
    add-int/lit8 v5, v5, 0x1

    move/from16 v23, v26

    goto :goto_8

    .line 454
    .end local v5    # "k":I
    .end local v26    # "index":I
    .restart local v23    # "index":I
    :cond_6
    iget-object v5, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v5, v5, v3

    .line 455
    .local v5, "qrtJ":[D
    const/16 v26, 0x0

    move/from16 v0, v26

    .local v0, "i":I
    :goto_9
    if-ge v0, v3, :cond_8

    .line 456
    aget-wide v26, v5, v0

    .line 457
    .local v26, "rIJ":D
    aget-object v28, v16, v0

    .line 458
    .local v28, "yI":[D
    const/16 v29, 0x0

    move/from16 v30, v0

    move/from16 v0, v29

    .local v0, "k":I
    .local v30, "i":I
    :goto_a
    if-ge v0, v7, :cond_7

    .line 459
    aget-wide v31, v28, v0

    aget-wide v33, v21, v0

    mul-double v33, v33, v26

    sub-double v31, v31, v33

    aput-wide v31, v28, v0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 455
    .end local v0    # "k":I
    .end local v26    # "rIJ":D
    .end local v28    # "yI":[D
    :cond_7
    add-int/lit8 v0, v30, 0x1

    .end local v30    # "i":I
    .local v0, "i":I
    goto :goto_9

    :cond_8
    move/from16 v30, v0

    .line 442
    .end local v0    # "i":I
    .end local v5    # "qrtJ":[D
    .end local v6    # "jStart":I
    .end local v11    # "factor":D
    .end local v21    # "yJ":[D
    .end local v22    # "xBlock":[D
    .end local v23    # "index":I
    .end local v25    # "jBlock":I
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    goto :goto_7

    .line 407
    .end local v3    # "j":I
    .end local v7    # "kWidth":I
    .end local v14    # "kStart":I
    .end local v17    # "kEnd":I
    :cond_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move v5, v13

    move v6, v15

    move/from16 v7, v18

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 465
    .end local v10    # "kBlock":I
    .end local v13    # "blockSize":I
    .end local v15    # "cBlocks":I
    .local v5, "blockSize":I
    .local v6, "cBlocks":I
    :cond_a
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v4, v9, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II[[DZ)V

    return-object v0

    .line 397
    .end local v4    # "columns":I
    .end local v5    # "blockSize":I
    .end local v6    # "cBlocks":I
    .end local v8    # "alpha":[D
    .end local v9    # "xBlocks":[[D
    .end local v16    # "y":[[D
    :cond_b
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0

    .line 394
    :cond_c
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 14
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 348
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    array-length v0, v0

    .line 349
    .local v0, "n":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    .line 350
    .local v1, "m":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 353
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->isNonSingular()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 357
    new-array v3, v0, [D

    .line 358
    .local v3, "x":[D
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v4

    .line 361
    .local v4, "y":[D
    const/4 v5, 0x0

    .local v5, "minor":I
    :goto_0
    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 363
    iget-object v6, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v6, v6, v5

    .line 364
    .local v6, "qrtMinor":[D
    const-wide/16 v7, 0x0

    .line 365
    .local v7, "dotProduct":D
    move v9, v5

    .local v9, "row":I
    :goto_1
    if-ge v9, v1, :cond_0

    .line 366
    aget-wide v10, v4, v9

    aget-wide v12, v6, v9

    mul-double/2addr v10, v12

    add-double/2addr v7, v10

    .line 365
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 368
    .end local v9    # "row":I
    :cond_0
    iget-object v9, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v9, v9, v5

    aget-wide v11, v6, v5

    mul-double/2addr v9, v11

    div-double/2addr v7, v9

    .line 370
    move v9, v5

    .restart local v9    # "row":I
    :goto_2
    if-ge v9, v1, :cond_1

    .line 371
    aget-wide v10, v4, v9

    aget-wide v12, v6, v9

    mul-double/2addr v12, v7

    add-double/2addr v10, v12

    aput-wide v10, v4, v9

    .line 370
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 361
    .end local v6    # "qrtMinor":[D
    .end local v7    # "dotProduct":D
    .end local v9    # "row":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 376
    .end local v5    # "minor":I
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "row":I
    :goto_3
    if-ltz v5, :cond_4

    .line 377
    aget-wide v6, v4, v5

    iget-object v8, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v8, v8, v5

    div-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 378
    aget-wide v6, v4, v5

    .line 379
    .local v6, "yRow":D
    iget-object v8, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v8, v8, v5

    .line 380
    .local v8, "qrtRow":[D
    aput-wide v6, v3, v5

    .line 381
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v5, :cond_3

    .line 382
    aget-wide v10, v4, v9

    aget-wide v12, v8, v9

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    aput-wide v10, v4, v9

    .line 381
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 376
    .end local v6    # "yRow":D
    .end local v8    # "qrtRow":[D
    .end local v9    # "i":I
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 386
    .end local v5    # "row":I
    :cond_4
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v5

    .line 354
    .end local v3    # "x":[D
    .end local v4    # "y":[D
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v2}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v2

    .line 351
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method
