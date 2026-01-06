.class public abstract Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.super Lorg/apache/commons/math3/linear/RealLinearOperator;
.source "AbstractRealMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/RealMatrix;


# static fields
.field private static final DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/linear/RealMatrixFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    .line 49
    sget-object v0, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->getFormat()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 50
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;-><init>()V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;-><init>()V

    .line 67
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 70
    if-lt p2, v0, :cond_0

    .line 73
    return-void

    .line 71
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 78
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 81
    .local v0, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 82
    .local v1, "columnCount":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 83
    .local v2, "out":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 84
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 85
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 83
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "row":I
    :cond_1
    return-object v2
.end method

.method public addToEntry(IID)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "increment"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 596
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 597
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v0

    add-double/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 598
    return-void
.end method

.method public abstract copy()Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method public copySubMatrix(IIII[[D)V
    .locals 13
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "startColumn"    # I
    .param p4, "endColumn"    # I
    .param p5, "destination"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 347
    move-object/from16 v0, p5

    invoke-static/range {p0 .. p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 348
    add-int/lit8 v1, p2, 0x1

    sub-int/2addr v1, p1

    .line 349
    .local v1, "rowsCount":I
    add-int/lit8 v2, p4, 0x1

    sub-int v2, v2, p3

    .line 350
    .local v2, "columnsCount":I
    array-length v3, v0

    const/4 v4, 0x0

    if-lt v3, v1, :cond_2

    aget-object v3, v0, v4

    array-length v3, v3

    if-lt v3, v2, :cond_2

    .line 355
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 356
    aget-object v4, v0, v3

    array-length v4, v4

    if-lt v4, v2, :cond_0

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v5, v0

    aget-object v6, v0, v3

    array-length v6, v6

    invoke-direct {v4, v5, v6, v1, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v4

    .line 362
    .end local v3    # "i":I
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;

    invoke-direct {v8, p0, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;-><init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;[[D)V

    move-object v7, p0

    move v9, p1

    move v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D

    .line 386
    return-void

    .line 351
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v5, v0

    aget-object v4, v0, v4

    array-length v4, v4

    invoke-direct {v3, v5, v4, v1, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v3
.end method

.method public copySubMatrix([I[I[[D)V
    .locals 8
    .param p1, "selectedRows"    # [I
    .param p2, "selectedColumns"    # [I
    .param p3, "destination"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 393
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;[I[I)V

    .line 394
    array-length v0, p2

    .line 395
    .local v0, "nCols":I
    array-length v1, p3

    array-length v2, p1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    aget-object v1, p3, v3

    array-length v1, v1

    if-lt v1, v0, :cond_3

    .line 401
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 402
    aget-object v2, p3, v1

    .line 403
    .local v2, "destinationI":[D
    array-length v3, v2

    if-lt v3, v0, :cond_1

    .line 407
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 408
    aget v4, p1, v1

    aget v5, p2, v3

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 401
    .end local v2    # "destinationI":[D
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .restart local v2    # "destinationI":[D
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v4, p3

    array-length v5, v2

    array-length v6, p1

    array-length v7, p2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v3

    .line 411
    .end local v1    # "i":I
    .end local v2    # "destinationI":[D
    :cond_2
    return-void

    .line 397
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v2, p3

    aget-object v3, p3, v3

    array-length v3, v3

    array-length v4, p1

    array-length v5, p2

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public abstract createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    .line 929
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 930
    return v0

    .line 932
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 933
    return v2

    .line 935
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/linear/RealMatrix;

    .line 936
    .local v1, "m":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v3

    .line 937
    .local v3, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v4

    .line 938
    .local v4, "nCols":I
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    if-ne v5, v4, :cond_6

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v5

    if-eq v5, v3, :cond_2

    goto :goto_2

    .line 941
    :cond_2
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 942
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_1
    if-ge v6, v4, :cond_4

    .line 943
    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v7

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_3

    .line 944
    return v2

    .line 942
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 941
    .end local v6    # "col":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 948
    .end local v5    # "row":I
    :cond_5
    return v0

    .line 939
    :cond_6
    :goto_2
    return v2
.end method

.method public getColumn(I)[D
    .locals 5
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 570
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 571
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 572
    .local v0, "nRows":I
    new-array v1, v0, [D

    .line 573
    .local v1, "out":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 574
    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public abstract getColumnDimension()I
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 477
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 479
    .local v0, "nRows":I
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 480
    .local v1, "out":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 481
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 480
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 484
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 3
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 526
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumn(I)[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public getData()[[D
    .locals 6

    .line 227
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 229
    .local v0, "data":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 230
    aget-object v2, v0, v1

    .line 231
    .local v2, "dataI":[D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 232
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 229
    .end local v2    # "dataI":[D
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public abstract getEntry(II)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public getFrobeniusNorm()D
    .locals 2

    .line 279
    new-instance v0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;-><init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm()D
    .locals 2

    .line 241
    new-instance v0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;-><init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRow(I)[D
    .locals 5
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 545
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 546
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    .line 547
    .local v0, "nCols":I
    new-array v1, v0, [D

    .line 548
    .local v1, "out":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 549
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public abstract getRowDimension()I
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 448
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 449
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    .line 450
    .local v0, "nCols":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 451
    .local v1, "out":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 452
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-interface {v1, v3, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 3
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 506
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRow(I)[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "startColumn"    # I
    .param p4, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 307
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 309
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p4, p3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 311
    .local v0, "subMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 312
    move v2, p3

    .local v2, "j":I
    :goto_1
    if-gt v2, p4, :cond_0

    .line 313
    sub-int v3, v1, p1

    sub-int v4, v2, p3

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {v0, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getSubMatrix([I[I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p1, "selectedRows"    # [I
    .param p2, "selectedColumns"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 324
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;[I[I)V

    .line 326
    array-length v0, p1

    array-length v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 328
    .local v0, "subMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v1, Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;-><init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;[I[I)V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D

    .line 338
    return-object v0
.end method

.method public getTrace()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .line 648
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 649
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 650
    .local v1, "nCols":I
    if-ne v0, v1, :cond_1

    .line 653
    const-wide/16 v2, 0x0

    .line 654
    .local v2, "trace":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 655
    invoke-virtual {p0, v4, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v5

    add-double/2addr v2, v5

    .line 654
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 657
    .end local v4    # "i":I
    :cond_0
    return-wide v2

    .line 651
    .end local v2    # "trace":D
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v2
.end method

.method public hashCode()I
    .locals 9

    .line 958
    const/4 v0, 0x7

    .line 959
    .local v0, "ret":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    .line 960
    .local v1, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    .line 961
    .local v2, "nCols":I
    mul-int/lit8 v3, v0, 0x1f

    add-int/2addr v3, v1

    .line 962
    .end local v0    # "ret":I
    .local v3, "ret":I
    mul-int/lit8 v0, v3, 0x1f

    add-int/2addr v0, v2

    .line 963
    .end local v3    # "ret":I
    .restart local v0    # "ret":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 964
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 965
    mul-int/lit8 v5, v0, 0x1f

    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v6, v6, 0xb

    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x11

    add-int/2addr v6, v7

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v7

    mul-int/2addr v6, v7

    add-int v0, v5, v6

    .line 964
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 963
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 969
    .end local v3    # "row":I
    :cond_1
    return v0
.end method

.method public isSquare()Z
    .locals 2

    .line 627
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 13
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 140
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 143
    .local v0, "nRows":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 144
    .local v1, "nCols":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    .line 145
    .local v2, "nSum":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 146
    .local v3, "out":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 147
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 148
    const-wide/16 v6, 0x0

    .line 149
    .local v6, "sum":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v2, :cond_0

    .line 150
    invoke-virtual {p0, v4, v8}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v9

    invoke-interface {p1, v8, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    .line 149
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 152
    .end local v8    # "i":I
    :cond_0
    invoke-interface {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 147
    .end local v6    # "sum":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 146
    .end local v5    # "col":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v4    # "row":I
    :cond_2
    return-object v3
.end method

.method public multiplyEntry(IID)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "factor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 603
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 604
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v0

    mul-double/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 605
    return-void
.end method

.method public operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 13
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 686
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->operate([D)[D

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 687
    :catch_0
    move-exception v1

    .line 688
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v2

    .line 689
    .local v2, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v3

    .line 690
    .local v3, "nCols":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 694
    new-array v4, v2, [D

    .line 695
    .local v4, "out":[D
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 696
    const-wide/16 v6, 0x0

    .line 697
    .local v6, "sum":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v3, :cond_0

    .line 698
    invoke-virtual {p0, v5, v8}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v9

    invoke-virtual {p1, v8}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    .line 697
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 700
    .end local v8    # "i":I
    :cond_0
    aput-wide v6, v4, v5

    .line 695
    .end local v6    # "sum":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 703
    .end local v5    # "row":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v5

    .line 691
    .end local v4    # "out":[D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v4

    invoke-direct {v0, v4, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public operate([D)[D
    .locals 11
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 664
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 665
    .local v1, "nCols":I
    array-length v2, p1

    if-ne v2, v1, :cond_2

    .line 669
    new-array v2, v0, [D

    .line 670
    .local v2, "out":[D
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 671
    const-wide/16 v4, 0x0

    .line 672
    .local v4, "sum":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 673
    invoke-virtual {p0, v3, v6}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v7

    aget-wide v9, p1, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 672
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 675
    .end local v6    # "i":I
    :cond_0
    aput-wide v4, v2, v3

    .line 670
    .end local v4    # "sum":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 678
    .end local v3    # "row":I
    :cond_1
    return-object v2

    .line 666
    .end local v2    # "out":[D
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public power(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .line 168
    if-ltz p1, :cond_7

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    if-nez p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0

    .line 184
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 193
    .local v1, "power":I
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 194
    .local v2, "binaryRepresentation":[C
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v3, "nonZeroPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 197
    .local v4, "maxI":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_3

    .line 198
    aget-char v6, v2, v5

    const/16 v7, 0x31

    if-ne v6, v7, :cond_2

    .line 199
    array-length v6, v2

    sub-int/2addr v6, v5

    sub-int/2addr v6, v0

    .line 200
    .local v6, "pos":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 204
    move v4, v6

    .line 197
    .end local v6    # "pos":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 209
    .end local v5    # "i":I
    :cond_3
    add-int/lit8 v0, v4, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/linear/RealMatrix;

    .line 210
    .local v0, "results":[Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    aput-object v6, v0, v5

    .line 212
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_1
    if-gt v5, v4, :cond_4

    .line 213
    add-int/lit8 v6, v5, -0x1

    aget-object v6, v0, v6

    add-int/lit8 v7, v5, -0x1

    aget-object v7, v0, v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    aput-object v6, v0, v5

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 216
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 218
    .local v5, "result":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 219
    .local v7, "i":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v0, v8

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 220
    .end local v7    # "i":Ljava/lang/Integer;
    goto :goto_2

    .line 222
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    return-object v5

    .line 173
    .end local v0    # "results":[Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v1    # "power":I
    .end local v2    # "binaryRepresentation":[C
    .end local v3    # "nonZeroPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "maxI":I
    .end local v5    # "result":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0

    .line 169
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 162
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 13
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 731
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->preMultiply([D)[D

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 732
    :catch_0
    move-exception v1

    .line 734
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v2

    .line 735
    .local v2, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v3

    .line 736
    .local v3, "nCols":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 740
    new-array v4, v3, [D

    .line 741
    .local v4, "out":[D
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 742
    const-wide/16 v6, 0x0

    .line 743
    .local v6, "sum":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_0

    .line 744
    invoke-virtual {p0, v8, v5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v9

    invoke-virtual {p1, v8}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    .line 743
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 746
    .end local v8    # "i":I
    :cond_0
    aput-wide v6, v4, v5

    .line 741
    .end local v6    # "sum":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 749
    .end local v5    # "col":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v5

    .line 737
    .end local v4    # "out":[D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v4

    invoke-direct {v0, v4, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public preMultiply([D)[D
    .locals 11
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 710
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 711
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 712
    .local v1, "nCols":I
    array-length v2, p1

    if-ne v2, v0, :cond_2

    .line 716
    new-array v2, v1, [D

    .line 717
    .local v2, "out":[D
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 718
    const-wide/16 v4, 0x0

    .line 719
    .local v4, "sum":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 720
    invoke-virtual {p0, v6, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v7

    aget-wide v9, p1, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 719
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 722
    .end local v6    # "i":I
    :cond_0
    aput-wide v4, v2, v3

    .line 717
    .end local v4    # "sum":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 725
    .end local v3    # "col":I
    :cond_1
    return-object v2

    .line 713
    .end local v2    # "out":[D
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p1, "d"    # D

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 112
    .local v0, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 113
    .local v1, "columnCount":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 114
    .local v2, "out":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 115
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 116
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v5

    add-double/2addr v5, p1

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "row":I
    :cond_1
    return-object v2
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p1, "d"    # D

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 126
    .local v0, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 127
    .local v1, "columnCount":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 128
    .local v2, "out":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 129
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 130
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v5

    mul-double/2addr v5, p1

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v3    # "row":I
    :cond_1
    return-object v2
.end method

.method public setColumn(I[D)V
    .locals 4
    .param p1, "column"    # I
    .param p2, "array"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 583
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 584
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 585
    .local v0, "nRows":I
    array-length v1, p2

    if-ne v1, v0, :cond_1

    .line 588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 589
    aget-wide v2, p2, v1

    invoke-virtual {p0, v1, p1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 586
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v2, p2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0, v3}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 5
    .param p1, "column"    # I
    .param p2, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 490
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 491
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 492
    .local v0, "nRows":I
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 498
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 499
    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    invoke-virtual {p0, v1, p1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 494
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .param p1, "column"    # I
    .param p2, "vector"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 532
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 533
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 534
    .local v0, "nRows":I
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 538
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 539
    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, p1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 535
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0, v3}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public abstract setEntry(IID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public setRow(I[D)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "array"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 558
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 559
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    .line 560
    .local v0, "nCols":I
    array-length v1, p2

    if-ne v1, v0, :cond_1

    .line 563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 564
    aget-wide v2, p2, v1

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 561
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v2, p2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v3, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 461
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 462
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    .line 463
    .local v0, "nCols":I
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 470
    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 465
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v1, v3, v4, v2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "vector"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 512
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 513
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    .line 514
    .local v0, "nCols":I
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 518
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 519
    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 515
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v3, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setSubMatrix([[DII)V
    .locals 8
    .param p1, "subMatrix"    # [[D
    .param p2, "row"    # I
    .param p3, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 417
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 418
    array-length v0, p1

    .line 419
    .local v0, "nRows":I
    if-eqz v0, :cond_5

    .line 423
    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    .line 424
    .local v1, "nCols":I
    if-eqz v1, :cond_4

    .line 428
    const/4 v2, 0x1

    .local v2, "r":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 429
    aget-object v3, p1, v2

    array-length v3, v3

    if-ne v3, v1, :cond_0

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v4, p1, v2

    array-length v4, v4

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 434
    .end local v2    # "r":I
    :cond_1
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 435
    invoke-static {p0, p3}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 436
    add-int v2, v0, p2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 437
    add-int v2, v1, p3

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 439
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 440
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 441
    add-int v4, p2, v2

    add-int v5, p3, v3

    aget-object v6, p1, v2

    aget-wide v6, v6, v3

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 439
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 444
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 425
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v2

    .line 420
    .end local v1    # "nCols":I
    :cond_5
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 95
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 98
    .local v0, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 99
    .local v1, "columnCount":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 100
    .local v2, "out":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 101
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 102
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 100
    .end local v4    # "col":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "row":I
    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, "fullClassName":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 914
    .local v2, "shortClassName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    sget-object v3, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    invoke-virtual {v3, p0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format(Lorg/apache/commons/math3/linear/RealMatrix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public transpose()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .line 609
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 610
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 611
    .local v1, "nCols":I
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 612
    .local v2, "out":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v3, Lorg/apache/commons/math3/linear/AbstractRealMatrix$5;

    invoke-direct {v3, p0, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix$5;-><init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    .line 622
    return-object v2
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 8
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .line 817
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    .line 818
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    .line 819
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 820
    const/4 p1, 0x0

    .local p1, "column":I
    :goto_0
    if-ge p1, v2, :cond_1

    .line 821
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 822
    invoke-virtual {p0, v3, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 823
    .local v4, "oldValue":D
    invoke-interface {v0, v3, p1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v6

    .line 824
    .local v6, "newValue":D
    invoke-virtual {p0, v3, p1, v6, v7}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 821
    .end local v4    # "oldValue":D
    .end local v6    # "newValue":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 820
    .end local v3    # "row":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 827
    .end local p1    # "column":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v3

    return-wide v3
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 7
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 848
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 849
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .end local p2    # "startRow":I
    .end local p3    # "endRow":I
    .end local p4    # "startColumn":I
    .end local p5    # "endColumn":I
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .local v3, "startRow":I
    .local v4, "endRow":I
    .local v5, "startColumn":I
    .local v6, "endColumn":I
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 851
    move p1, v5

    .local p1, "column":I
    :goto_0
    if-gt p1, v6, :cond_1

    .line 852
    move p2, v3

    .local p2, "row":I
    :goto_1
    if-gt p2, v4, :cond_0

    .line 853
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide p3

    .line 854
    .local p3, "oldValue":D
    invoke-interface {v0, p2, p1, p3, p4}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v1

    .line 855
    .local v1, "newValue":D
    invoke-virtual {p0, p2, p1, v1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 852
    .end local v1    # "newValue":D
    .end local p3    # "oldValue":D
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 851
    .end local p2    # "row":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 858
    .end local p1    # "column":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 7
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .line 832
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    .line 833
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    .line 834
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 835
    const/4 p1, 0x0

    .local p1, "column":I
    :goto_0
    if-ge p1, v2, :cond_1

    .line 836
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 837
    invoke-virtual {p0, v3, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-interface {v0, v3, p1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 836
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 835
    .end local v3    # "row":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 840
    .end local p1    # "column":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v3

    return-wide v3
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 7
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 866
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 867
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .end local p2    # "startRow":I
    .end local p3    # "endRow":I
    .end local p4    # "startColumn":I
    .end local p5    # "endColumn":I
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .local v3, "startRow":I
    .local v4, "endRow":I
    .local v5, "startColumn":I
    .local v6, "endColumn":I
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 869
    move p1, v5

    .local p1, "column":I
    :goto_0
    if-gt p1, v6, :cond_1

    .line 870
    move p2, v3

    .local p2, "row":I
    :goto_1
    if-gt p2, v4, :cond_0

    .line 871
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide p3

    invoke-interface {v0, p2, p1, p3, p4}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 870
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 869
    .end local p2    # "row":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 874
    .end local p1    # "column":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 2
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .line 879
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 2
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 893
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 2
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .line 884
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 2
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 902
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 8
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .line 755
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    .line 756
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    .line 757
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 758
    const/4 p1, 0x0

    .local p1, "row":I
    :goto_0
    if-ge p1, v1, :cond_1

    .line 759
    const/4 v3, 0x0

    .local v3, "column":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 760
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 761
    .local v4, "oldValue":D
    invoke-interface {v0, p1, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v6

    .line 762
    .local v6, "newValue":D
    invoke-virtual {p0, p1, v3, v6, v7}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 759
    .end local v4    # "oldValue":D
    .end local v6    # "newValue":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 758
    .end local v3    # "column":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 765
    .end local p1    # "row":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v3

    return-wide v3
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 7
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 786
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 787
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .end local p2    # "startRow":I
    .end local p3    # "endRow":I
    .end local p4    # "startColumn":I
    .end local p5    # "endColumn":I
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .local v3, "startRow":I
    .local v4, "endRow":I
    .local v5, "startColumn":I
    .local v6, "endColumn":I
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 789
    move p1, v3

    .local p1, "row":I
    :goto_0
    if-gt p1, v4, :cond_1

    .line 790
    move p2, v5

    .local p2, "column":I
    :goto_1
    if-gt p2, v6, :cond_0

    .line 791
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide p3

    .line 792
    .local p3, "oldValue":D
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v1

    .line 793
    .local v1, "newValue":D
    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    .line 790
    .end local v1    # "newValue":D
    .end local p3    # "oldValue":D
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 789
    .end local p2    # "column":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 796
    .end local p1    # "row":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 7
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .line 770
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    .line 771
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    .line 772
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 773
    const/4 p1, 0x0

    .local p1, "row":I
    :goto_0
    if-ge p1, v1, :cond_1

    .line 774
    const/4 v3, 0x0

    .local v3, "column":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 775
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-interface {v0, p1, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 774
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 773
    .end local v3    # "column":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 778
    .end local p1    # "row":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v3

    return-wide v3
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 7
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 804
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 805
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .end local p2    # "startRow":I
    .end local p3    # "endRow":I
    .end local p4    # "startColumn":I
    .end local p5    # "endColumn":I
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .local v3, "startRow":I
    .local v4, "endRow":I
    .local v5, "startColumn":I
    .local v6, "endColumn":I
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 807
    move p1, v3

    .local p1, "row":I
    :goto_0
    if-gt p1, v4, :cond_1

    .line 808
    move p2, v5

    .local p2, "column":I
    :goto_1
    if-gt p2, v6, :cond_0

    .line 809
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide p3

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 808
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 807
    .end local p2    # "column":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 812
    .end local p1    # "row":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method
