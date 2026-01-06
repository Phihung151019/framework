.class Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;
.super Ljava/lang/Object;
.source "FieldLUDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldDecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/FieldLUDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldDecompositionSolver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final lu:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final pivot:[I

.field private final singular:Z


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;[IZ)V
    .locals 0
    .param p3, "pivot"    # [I
    .param p4, "singular"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[[TT;[IZ)V"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "lu":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    .line 286
    iput-object p2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    .line 287
    iput-object p3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    .line 288
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->singular:Z

    .line 289
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;[IZLorg/apache/commons/math3/linear/FieldLUDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/Field;
    .param p2, "x1"    # [[Lorg/apache/commons/math3/FieldElement;
    .param p3, "x2"    # [I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lorg/apache/commons/math3/linear/FieldLUDecomposition$1;

    .line 262
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;[IZ)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    array-length v0, v0

    .line 438
    .local v0, "m":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 439
    .local v1, "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v2, v3, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 440
    .local v2, "identity":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 441
    invoke-interface {v2, v3, v3, v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 443
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v3

    return-object v3
.end method

.method public isNonSingular()Z
    .locals 1

    .line 293
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->singular:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 346
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    .local p1, "b":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    array-length v0, v0

    .line 347
    .local v0, "m":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v1

    .line 348
    .local v1, "length":I
    if-ne v1, v0, :cond_6

    .line 351
    iget-boolean v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->singular:Z

    if-nez v2, :cond_5

    .line 356
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 357
    .local v2, "bp":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 358
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    .end local v3    # "row":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 363
    aget-object v4, v2, v3

    .line 364
    .local v4, "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v5, v3, 0x1

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_1

    .line 365
    aget-object v6, v2, v5

    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v5

    aget-object v7, v7, v3

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v2, v5

    .line 364
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 362
    .end local v4    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 370
    .end local v3    # "col":I
    :cond_2
    add-int/lit8 v3, v0, -0x1

    .restart local v3    # "col":I
    :goto_3
    if-ltz v3, :cond_4

    .line 371
    aget-object v4, v2, v3

    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v3

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v2, v3

    .line 372
    aget-object v4, v2, v3

    .line 373
    .restart local v4    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v3, :cond_3

    .line 374
    aget-object v6, v2, v5

    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v5

    aget-object v7, v7, v3

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v2, v5

    .line 373
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 370
    .end local v4    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "i":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 378
    .end local v3    # "col":I
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v3

    .line 352
    .end local v2    # "bp":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v2}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v2

    .line 349
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    .local p1, "b":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    array-length v0, v0

    .line 384
    .local v0, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    if-ne v1, v0, :cond_a

    .line 387
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->singular:Z

    if-nez v1, :cond_9

    .line 391
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    .line 394
    .local v1, "nColB":I
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v2, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    .line 395
    .local v2, "bp":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 396
    aget-object v4, v2, v3

    .line 397
    .local v4, "bpRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    aget v5, v5, v3

    .line 398
    .local v5, "pRow":I
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 399
    invoke-interface {p1, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    aput-object v7, v4, v6

    .line 398
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 395
    .end local v4    # "bpRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "pRow":I
    .end local v6    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    .end local v3    # "row":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 405
    aget-object v4, v2, v3

    .line 406
    .local v4, "bpCol":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v5, v3, 0x1

    .local v5, "i":I
    :goto_3
    if-ge v5, v0, :cond_3

    .line 407
    aget-object v6, v2, v5

    .line 408
    .local v6, "bpI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v5

    aget-object v7, v7, v3

    .line 409
    .local v7, "luICol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v1, :cond_2

    .line 410
    aget-object v9, v6, v8

    aget-object v10, v4, v8

    invoke-interface {v10, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    aput-object v9, v6, v8

    .line 409
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 406
    .end local v6    # "bpI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v7    # "luICol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v8    # "j":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 404
    .end local v4    # "bpCol":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 416
    .end local v3    # "col":I
    :cond_4
    add-int/lit8 v3, v0, -0x1

    .restart local v3    # "col":I
    :goto_5
    if-ltz v3, :cond_8

    .line 417
    aget-object v4, v2, v3

    .line 418
    .restart local v4    # "bpCol":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v3

    aget-object v5, v5, v3

    .line 419
    .local v5, "luDiag":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6
    if-ge v6, v1, :cond_5

    .line 420
    aget-object v7, v4, v6

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v4, v6

    .line 419
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 422
    .end local v6    # "j":I
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    if-ge v6, v3, :cond_7

    .line 423
    aget-object v7, v2, v6

    .line 424
    .local v7, "bpI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v6

    aget-object v8, v8, v3

    .line 425
    .local v8, "luICol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_8
    if-ge v9, v1, :cond_6

    .line 426
    aget-object v10, v7, v9

    aget-object v11, v4, v9

    invoke-interface {v11, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/FieldElement;

    aput-object v10, v7, v9

    .line 425
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 422
    .end local v7    # "bpI":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v8    # "luICol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v9    # "j":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 416
    .end local v4    # "bpCol":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "luDiag":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v6    # "i":I
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 431
    .end local v3    # "col":I
    :cond_8
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v3

    .line 388
    .end local v1    # "nColB":I
    .end local v2    # "bp":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v1

    .line 385
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver<TT;>;"
    .local p1, "b":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 300
    :catch_0
    move-exception v0

    .line 302
    .local v0, "cce":Ljava/lang/ClassCastException;
    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    array-length v1, v1

    .line 303
    .local v1, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 306
    iget-boolean v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->singular:Z

    if-nez v2, :cond_5

    .line 311
    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 312
    .local v2, "bp":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 313
    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->pivot:[I

    aget v4, v4, v3

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    .end local v3    # "row":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 318
    aget-object v4, v2, v3

    .line 319
    .local v4, "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v5, v3, 0x1

    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_1

    .line 320
    aget-object v6, v2, v5

    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v5

    aget-object v7, v7, v3

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v2, v5

    .line 319
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 317
    .end local v4    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 325
    .end local v3    # "col":I
    :cond_2
    add-int/lit8 v3, v1, -0x1

    .restart local v3    # "col":I
    :goto_3
    if-ltz v3, :cond_4

    .line 326
    aget-object v4, v2, v3

    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v3

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v2, v3

    .line 327
    aget-object v4, v2, v3

    .line 328
    .restart local v4    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v3, :cond_3

    .line 329
    aget-object v6, v2, v5

    iget-object v7, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->lu:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v5

    aget-object v7, v7, v3

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v2, v5

    .line 328
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 325
    .end local v4    # "bpCol":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "i":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 333
    .end local v3    # "col":I
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition$Solver;->field:Lorg/apache/commons/math3/Field;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v3

    .line 307
    .end local v2    # "bp":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v2}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v2

    .line 304
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method
