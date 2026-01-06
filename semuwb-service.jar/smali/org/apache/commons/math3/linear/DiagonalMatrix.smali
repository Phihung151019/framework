.class public Lorg/apache/commons/math3/linear/DiagonalMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "DiagonalMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x133068dL


# instance fields
.field private final data:[D


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "dimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 52
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    .line 53
    return-void
.end method

.method public constructor <init>([D)V
    .locals 1
    .param p1, "d"    # [D

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    .line 64
    return-void
.end method

.method public constructor <init>([DZ)V
    .locals 1
    .param p1, "d"    # [D
    .param p2, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 82
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    if-eqz p2, :cond_0

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    .line 84
    return-void
.end method

.method private ensureZero(D)V
    .locals 5
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 316
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p2, v2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    return-void

    .line 317
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 7
    .param p1, "m"    # Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 120
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    .line 123
    .local v0, "dim":I
    new-array v1, v0, [D

    .line 124
    .local v1, "outData":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 125
    iget-object v3, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v3, v3, v2

    iget-object v5, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v5, v5, v2

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object v2
.end method

.method public addToEntry(IID)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "increment"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 252
    if-ne p1, p2, :cond_0

    .line 253
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 254
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v1, v0, p1

    add-double/2addr v1, p3

    aput-wide v1, v0, p1

    goto :goto_0

    .line 256
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->ensureZero(D)V

    .line 258
    :goto_0
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .line 106
    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 96
    if-ne p1, p2, :cond_0

    .line 100
    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getColumnDimension()I
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v0, v0

    return v0
.end method

.method public getData()[[D
    .locals 6

    .line 203
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    .line 204
    .local v0, "dim":I
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

    .line 206
    .local v1, "out":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 207
    aget-object v3, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getDataRef()[D
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    return-object v0
.end method

.method public getEntry(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 226
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 227
    if-ne p1, p2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v0, v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v0, v0

    return v0
.end method

.method public inverse()Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .line 332
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->inverse(D)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object v0

    return-object v0
.end method

.method public inverse(D)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 6
    .param p1, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->isSingular(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 349
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 350
    iget-object v2, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v2, v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    aput-wide v4, v0, v1

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object v1

    .line 345
    .end local v0    # "result":[D
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0
.end method

.method public isSingular(D)Z
    .locals 8
    .param p1, "threshold"    # D

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 364
    iget-object v1, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    move-wide v6, p1

    .end local p1    # "threshold":D
    .local v6, "threshold":D
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    const/4 p1, 0x1

    return p1

    .line 363
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-wide p1, v6

    goto :goto_0

    .end local v6    # "threshold":D
    .restart local p1    # "threshold":D
    :cond_1
    move-wide v6, p1

    .line 368
    .end local v0    # "i":I
    .end local p1    # "threshold":D
    .restart local v6    # "threshold":D
    const/4 p1, 0x0

    return p1
.end method

.method public multiply(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 7
    .param p1, "m"    # Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 162
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    .line 165
    .local v0, "dim":I
    new-array v1, v0, [D

    .line 166
    .local v1, "outData":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 167
    iget-object v3, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v3, v3, v2

    iget-object v5, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v5, v5, v2

    mul-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object v2
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 184
    instance-of v0, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v0, :cond_0

    .line 185
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->multiply(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 188
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 189
    .local v0, "nRows":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 190
    .local v1, "nCols":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 191
    .local v2, "product":[[D
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 192
    const/4 v5, 0x0

    .local v5, "c":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 193
    aget-object v6, v2, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v7, v7, v4

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    mul-double/2addr v7, v9

    aput-wide v7, v6, v5

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 191
    .end local v5    # "c":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    .end local v4    # "r":I
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v4
.end method

.method public multiplyEntry(IID)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "factor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 267
    if-ne p1, p2, :cond_0

    .line 268
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 269
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v1, v0, p1

    mul-double/2addr v1, p3

    aput-wide v1, v0, p1

    .line 271
    :cond_0
    return-void
.end method

.method public operate([D)[D
    .locals 2
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 289
    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->multiply(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getDataRef()[D

    move-result-object v0

    return-object v0
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 303
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v0, :cond_0

    .line 304
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v0

    .local v0, "vectorData":[D
    goto :goto_0

    .line 306
    .end local v0    # "vectorData":[D
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    .line 308
    .restart local v0    # "vectorData":[D
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->preMultiply([D)[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealVector([D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    return-object v1
.end method

.method public preMultiply([D)[D
    .locals 1
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->operate([D)[D

    move-result-object v0

    return-object v0
.end method

.method public setEntry(IID)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 236
    if-ne p1, p2, :cond_0

    .line 237
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 238
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aput-wide p3, v0, p1

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->ensureZero(D)V

    .line 242
    :goto_0
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 7
    .param p1, "m"    # Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 141
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 143
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    .line 144
    .local v0, "dim":I
    new-array v1, v0, [D

    .line 145
    .local v1, "outData":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 146
    iget-object v3, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v3, v3, v2

    iget-object v5, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v5, v5, v2

    sub-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object v2
.end method
