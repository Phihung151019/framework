.class Lorg/apache/commons/math3/linear/LUDecomposition$Solver;
.super Ljava/lang/Object;
.source "LUDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/LUDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final lu:[[D

.field private final pivot:[I

.field private final singular:Z


# direct methods
.method private constructor <init>([[D[IZ)V
    .locals 0
    .param p1, "lu"    # [[D
    .param p2, "pivot"    # [I
    .param p3, "singular"    # Z

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    .line 280
    iput-object p2, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    .line 281
    iput-boolean p3, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    .line 282
    return-void
.end method

.method synthetic constructor <init>([[D[IZLorg/apache/commons/math3/linear/LUDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # [[D
    .param p2, "x1"    # [I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/commons/math3/linear/LUDecomposition$1;

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;-><init>([[D[IZ)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 19
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    array-length v1, v1

    .line 330
    .local v1, "m":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ne v2, v1, :cond_a

    .line 333
    iget-boolean v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    if-nez v2, :cond_9

    .line 337
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 340
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

    .line 341
    .local v3, "bp":[[D
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 342
    aget-object v6, v3, v5

    .line 343
    .local v6, "bpRow":[D
    iget-object v7, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    aget v7, v7, v5

    .line 344
    .local v7, "pRow":I
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_1
    if-ge v8, v2, :cond_0

    .line 345
    move-object/from16 v9, p1

    invoke-interface {v9, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v10

    aput-wide v10, v6, v8

    .line 344
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v9, p1

    .line 341
    .end local v6    # "bpRow":[D
    .end local v7    # "pRow":I
    .end local v8    # "col":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v9, p1

    .line 350
    .end local v5    # "row":I
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_2
    if-ge v5, v1, :cond_4

    .line 351
    aget-object v6, v3, v5

    .line 352
    .local v6, "bpCol":[D
    add-int/lit8 v7, v5, 0x1

    .local v7, "i":I
    :goto_3
    if-ge v7, v1, :cond_3

    .line 353
    aget-object v8, v3, v7

    .line 354
    .local v8, "bpI":[D
    iget-object v10, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v10, v10, v7

    aget-wide v10, v10, v5

    .line 355
    .local v10, "luICol":D
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    if-ge v12, v2, :cond_2

    .line 356
    aget-wide v13, v8, v12

    aget-wide v15, v6, v12

    mul-double/2addr v15, v10

    sub-double/2addr v13, v15

    aput-wide v13, v8, v12

    .line 355
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 352
    .end local v8    # "bpI":[D
    .end local v10    # "luICol":D
    .end local v12    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 350
    .end local v6    # "bpCol":[D
    .end local v7    # "i":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 362
    .end local v5    # "col":I
    :cond_4
    add-int/lit8 v5, v1, -0x1

    .restart local v5    # "col":I
    :goto_5
    if-ltz v5, :cond_8

    .line 363
    aget-object v6, v3, v5

    .line 364
    .restart local v6    # "bpCol":[D
    iget-object v7, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v7, v7, v5

    aget-wide v7, v7, v5

    .line 365
    .local v7, "luDiag":D
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    if-ge v10, v2, :cond_5

    .line 366
    aget-wide v11, v6, v10

    div-double/2addr v11, v7

    aput-wide v11, v6, v10

    .line 365
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 368
    .end local v10    # "j":I
    :cond_5
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7
    if-ge v10, v5, :cond_7

    .line 369
    aget-object v11, v3, v10

    .line 370
    .local v11, "bpI":[D
    iget-object v12, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v12, v12, v10

    aget-wide v12, v12, v5

    .line 371
    .local v12, "luICol":D
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_8
    if-ge v14, v2, :cond_6

    .line 372
    aget-wide v15, v11, v14

    aget-wide v17, v6, v14

    mul-double v17, v17, v12

    sub-double v15, v15, v17

    aput-wide v15, v11, v14

    .line 371
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 368
    .end local v11    # "bpI":[D
    .end local v12    # "luICol":D
    .end local v14    # "j":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 362
    .end local v6    # "bpCol":[D
    .end local v7    # "luDiag":D
    .end local v10    # "i":I
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 377
    .end local v5    # "col":I
    :cond_8
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v5, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v5

    .line 334
    .end local v2    # "nColB":I
    .end local v3    # "bp":[[D
    :cond_9
    move-object/from16 v9, p1

    new-instance v2, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v2}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v2

    .line 331
    :cond_a
    move-object/from16 v9, p1

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 10
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 291
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    array-length v0, v0

    .line 292
    .local v0, "m":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 295
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    if-nez v1, :cond_5

    .line 299
    new-array v1, v0, [D

    .line 302
    .local v1, "bp":[D
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 303
    iget-object v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v2    # "row":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 308
    aget-wide v3, v1, v2

    .line 309
    .local v3, "bpCol":D
    add-int/lit8 v5, v2, 0x1

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_1

    .line 310
    aget-wide v6, v1, v5

    iget-object v8, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v8, v8, v5

    aget-wide v8, v8, v2

    mul-double/2addr v8, v3

    sub-double/2addr v6, v8

    aput-wide v6, v1, v5

    .line 309
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 307
    .end local v3    # "bpCol":D
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    .end local v2    # "col":I
    :cond_2
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "col":I
    :goto_3
    if-ltz v2, :cond_4

    .line 316
    aget-wide v3, v1, v2

    iget-object v5, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v2

    div-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 317
    aget-wide v3, v1, v2

    .line 318
    .restart local v3    # "bpCol":D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v2, :cond_3

    .line 319
    aget-wide v6, v1, v5

    iget-object v8, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v8, v8, v5

    aget-wide v8, v8, v2

    mul-double/2addr v8, v3

    sub-double/2addr v6, v8

    aput-wide v6, v1, v5

    .line 318
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 315
    .end local v3    # "bpCol":D
    .end local v5    # "i":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 323
    .end local v2    # "col":I
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v2

    .line 296
    .end local v1    # "bp":[D
    :cond_5
    new-instance v1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v1

    .line 293
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
