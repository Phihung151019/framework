.class public Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "Array2DRowRealMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xecfca64605e8958L


# instance fields
.field private data:[[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    .line 62
    return-void
.end method

.method public constructor <init>([D)V
    .locals 6
    .param p1, "v"    # [D

    .line 131
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 132
    array-length v0, p1

    .line 133
    .local v0, "nRows":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    .line 134
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v3, v3, v1

    aget-wide v4, p1, v1

    aput-wide v4, v3, v2

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "row":I
    :cond_0
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 0
    .param p1, "d"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 79
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyIn([[D)V

    .line 80
    return-void
.end method

.method public constructor <init>([[DZ)V
    .locals 5
    .param p1, "d"    # [[D
    .param p2, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 101
    if-eqz p2, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyIn([[D)V

    goto :goto_1

    .line 104
    :cond_0
    if-eqz p1, :cond_5

    .line 107
    array-length v0, p1

    .line 108
    .local v0, "nRows":I
    if-eqz v0, :cond_4

    .line 111
    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    .line 112
    .local v1, "nCols":I
    if-eqz v1, :cond_3

    .line 115
    const/4 v2, 0x1

    .local v2, "r":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 116
    aget-object v3, p1, v2

    array-length v3, v3

    if-ne v3, v1, :cond_1

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v4, p1, v2

    array-length v4, v4

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 120
    .end local v2    # "r":I
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    .line 122
    .end local v0    # "nRows":I
    .end local v1    # "nCols":I
    :goto_1
    return-void

    .line 113
    .restart local v0    # "nRows":I
    .restart local v1    # "nCols":I
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v2

    .line 109
    .end local v1    # "nCols":I
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 105
    .end local v0    # "nRows":I
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method private copyIn([[D)V
    .locals 1
    .param p1, "in"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setSubMatrix([[DII)V

    .line 547
    return-void
.end method

.method private copyOut()[[D
    .locals 7

    .line 527
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    .line 528
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 530
    .local v2, "out":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 531
    iget-object v4, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v4, v4, v3

    aget-object v5, v2, v3

    iget-object v6, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v6, v6, v3

    array-length v6, v6

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 13
    .param p1, "m"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 164
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    .line 167
    .local v0, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    .line 168
    .local v1, "columnCount":I
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

    .line 169
    .local v2, "outData":[[D
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 170
    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v5, v5, v4

    .line 171
    .local v5, "dataRow":[D
    iget-object v6, p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v6, v6, v4

    .line 172
    .local v6, "mRow":[D
    aget-object v7, v2, v4

    .line 173
    .local v7, "outDataRow":[D
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_1
    if-ge v8, v1, :cond_0

    .line 174
    aget-wide v9, v5, v8

    aget-wide v11, v6, v8

    add-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 173
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 169
    .end local v5    # "dataRow":[D
    .end local v6    # "mRow":[D
    .end local v7    # "outDataRow":[D
    .end local v8    # "col":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    .end local v4    # "row":I
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v4
.end method

.method public addToEntry(IID)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "increment"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 323
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, p1

    aget-wide v1, v0, p2

    add-double/2addr v1, p3

    aput-wide v1, v0, p2

    .line 324
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 3

    .line 150
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyOut()[[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 144
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    return-object v0
.end method

.method public getColumnDimension()I
    .locals 2

    .line 344
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, v1

    array-length v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getData()[[D
    .locals 1

    .line 253
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyOut()[[D

    move-result-object v0

    return-object v0
.end method

.method public getDataRef()[[D
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

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

    .line 305
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 306
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    return-wide v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 19
    .param p1, "m"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 218
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    .line 221
    .local v0, "nRows":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    .line 222
    .local v1, "nCols":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 224
    .local v2, "nSum":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x0

    aput v0, v3, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 226
    .local v3, "outData":[[D
    new-array v5, v2, [D

    .line 227
    .local v5, "mCol":[D
    move-object/from16 v6, p1

    iget-object v7, v6, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    .line 230
    .local v7, "mData":[[D
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_0
    if-ge v8, v1, :cond_3

    .line 233
    const/4 v9, 0x0

    .local v9, "mRow":I
    :goto_1
    if-ge v9, v2, :cond_0

    .line 234
    aget-object v10, v7, v9

    aget-wide v10, v10, v8

    aput-wide v10, v5, v9

    .line 233
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 237
    .end local v9    # "mRow":I
    :cond_0
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_2
    if-ge v9, v0, :cond_2

    .line 238
    move-object/from16 v10, p0

    iget-object v11, v10, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v11, v11, v9

    .line 239
    .local v11, "dataRow":[D
    const-wide/16 v12, 0x0

    .line 240
    .local v12, "sum":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v2, :cond_1

    .line 241
    aget-wide v15, v11, v14

    aget-wide v17, v5, v14

    mul-double v15, v15, v17

    add-double/2addr v12, v15

    .line 240
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 243
    .end local v14    # "i":I
    :cond_1
    aget-object v14, v3, v9

    aput-wide v12, v14, v8

    .line 237
    .end local v11    # "dataRow":[D
    .end local v12    # "sum":D
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v10, p0

    .line 230
    .end local v9    # "row":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v10, p0

    .line 247
    .end local v8    # "col":I
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v8, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v8
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

    .line 331
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 332
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, p1

    aget-wide v1, v0, p2

    mul-double/2addr v1, p3

    aput-wide v1, v0, p2

    .line 333
    return-void
.end method

.method public operate([D)[D
    .locals 12
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    .line 352
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    .line 353
    .local v1, "nCols":I
    array-length v2, p1

    if-ne v2, v1, :cond_2

    .line 356
    new-array v2, v0, [D

    .line 357
    .local v2, "out":[D
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 358
    iget-object v4, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v4, v4, v3

    .line 359
    .local v4, "dataRow":[D
    const-wide/16 v5, 0x0

    .line 360
    .local v5, "sum":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 361
    aget-wide v8, v4, v7

    aget-wide v10, p1, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    .line 360
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 363
    .end local v7    # "i":I
    :cond_0
    aput-wide v5, v2, v3

    .line 357
    .end local v4    # "dataRow":[D
    .end local v5    # "sum":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    .end local v3    # "row":I
    :cond_1
    return-object v2

    .line 354
    .end local v2    # "out":[D
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public preMultiply([D)[D
    .locals 11
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    .line 373
    .local v0, "nRows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    .line 374
    .local v1, "nCols":I
    array-length v2, p1

    if-ne v2, v0, :cond_2

    .line 378
    new-array v2, v1, [D

    .line 379
    .local v2, "out":[D
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 380
    const-wide/16 v4, 0x0

    .line 381
    .local v4, "sum":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 382
    iget-object v7, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v7, v7, v6

    aget-wide v7, v7, v3

    aget-wide v9, p1, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 381
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 384
    .end local v6    # "i":I
    :cond_0
    aput-wide v4, v2, v3

    .line 379
    .end local v4    # "sum":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 387
    .end local v3    # "col":I
    :cond_1
    return-object v2

    .line 375
    .end local v2    # "out":[D
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public setEntry(IID)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 313
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 314
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, p1

    aput-wide p3, v0, p2

    .line 315
    return-void
.end method

.method public setSubMatrix([[DII)V
    .locals 7
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

    .line 271
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    if-nez v0, :cond_6

    .line 272
    if-gtz p2, :cond_5

    .line 275
    if-gtz p3, :cond_4

    .line 278
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 279
    array-length v0, p1

    .line 280
    .local v0, "nRows":I
    if-eqz v0, :cond_3

    .line 284
    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    .line 285
    .local v2, "nCols":I
    if-eqz v2, :cond_2

    .line 288
    array-length v3, p1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    aput v3, v4, v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    .line 289
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 290
    aget-object v4, p1, v3

    array-length v4, v4

    if-ne v4, v2, :cond_0

    .line 293
    aget-object v4, p1, v3

    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    add-int v6, v3, p2

    aget-object v5, v5, v6

    invoke-static {v4, v1, v5, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v4, p1, v3

    array-length v4, v4

    invoke-direct {v1, v4, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 295
    .end local v0    # "nRows":I
    .end local v2    # "nCols":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 286
    .restart local v0    # "nRows":I
    .restart local v2    # "nCols":I
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v3}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 281
    .end local v2    # "nCols":I
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 276
    .end local v0    # "nRows":I
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_COLUMNS_NOT_INITIALIZED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 273
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_ROWS_NOT_INITIALIZED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 296
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setSubMatrix([[DII)V

    .line 299
    :goto_1
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 13
    .param p1, "m"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 191
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 193
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    .line 194
    .local v0, "rowCount":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    .line 195
    .local v1, "columnCount":I
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

    .line 196
    .local v2, "outData":[[D
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 197
    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v5, v5, v4

    .line 198
    .local v5, "dataRow":[D
    iget-object v6, p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v6, v6, v4

    .line 199
    .local v6, "mRow":[D
    aget-object v7, v2, v4

    .line 200
    .local v7, "outDataRow":[D
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_1
    if-ge v8, v1, :cond_0

    .line 201
    aget-wide v9, v5, v8

    aget-wide v11, v6, v8

    sub-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 200
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 196
    .end local v5    # "dataRow":[D
    .end local v6    # "mRow":[D
    .end local v7    # "outDataRow":[D
    .end local v8    # "col":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    .end local v4    # "row":I
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v4
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 7
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .line 460
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    .line 461
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 462
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 463
    const/4 p1, 0x0

    .local p1, "j":I
    :goto_0
    if-ge p1, v2, :cond_1

    .line 464
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 465
    iget-object v4, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v4, v4, v3

    .line 466
    .local v4, "rowI":[D
    aget-wide v5, v4, p1

    invoke-interface {v0, v3, p1, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v5

    aput-wide v5, v4, p1

    .line 464
    .end local v4    # "rowI":[D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 463
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 469
    .end local p1    # "j":I
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

    .line 492
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 493
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

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

    .line 495
    move p1, v5

    .local p1, "j":I
    :goto_0
    if-gt p1, v6, :cond_1

    .line 496
    move p2, v3

    .local p2, "i":I
    :goto_1
    if-gt p2, v4, :cond_0

    .line 497
    iget-object p3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object p3, p3, p2

    .line 498
    .local p3, "rowI":[D
    aget-wide p4, p3, p1

    invoke-interface {v0, p2, p1, p4, p5}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide p4

    aput-wide p4, p3, p1

    .line 496
    .end local p3    # "rowI":[D
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 495
    .end local p2    # "i":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 501
    .end local p1    # "j":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 7
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .line 475
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    .line 476
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 477
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 478
    const/4 p1, 0x0

    .local p1, "j":I
    :goto_0
    if-ge p1, v2, :cond_1

    .line 479
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 480
    iget-object v4, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, p1

    invoke-interface {v0, v3, p1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 478
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 483
    .end local p1    # "j":I
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

    .line 510
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 511
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

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

    .line 513
    move p1, v5

    .local p1, "j":I
    :goto_0
    if-gt p1, v6, :cond_1

    .line 514
    move p2, v3

    .local p2, "i":I
    :goto_1
    if-gt p2, v4, :cond_0

    .line 515
    iget-object p3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object p3, p3, p2

    aget-wide p3, p3, p1

    invoke-interface {v0, p2, p1, p3, p4}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 514
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 513
    .end local p2    # "i":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 518
    .end local p1    # "j":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 7
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .line 394
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    .line 395
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 396
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 397
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge p1, v1, :cond_1

    .line 398
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v3, v3, p1

    .line 399
    .local v3, "rowI":[D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 400
    aget-wide v5, v3, v4

    invoke-interface {v0, p1, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 399
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 397
    .end local v3    # "rowI":[D
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 403
    .end local p1    # "i":I
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

    .line 427
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 428
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

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

    .line 430
    move p1, v3

    .local p1, "i":I
    :goto_0
    if-gt p1, v4, :cond_1

    .line 431
    iget-object p2, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object p2, p2, p1

    .line 432
    .local p2, "rowI":[D
    move p3, v5

    .local p3, "j":I
    :goto_1
    if-gt p3, v6, :cond_0

    .line 433
    aget-wide p4, p2, p3

    invoke-interface {v0, p1, p3, p4, p5}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide p4

    aput-wide p4, p2, p3

    .line 432
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 430
    .end local p2    # "rowI":[D
    .end local p3    # "j":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 436
    .end local p1    # "i":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 7
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .line 409
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    .line 410
    .local v1, "rows":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    .line 411
    .local v2, "columns":I
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 412
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge p1, v1, :cond_1

    .line 413
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v3, v3, p1

    .line 414
    .local v3, "rowI":[D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 415
    aget-wide v5, v3, v4

    invoke-interface {v0, p1, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 414
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 412
    .end local v3    # "rowI":[D
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 418
    .end local p1    # "i":I
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

    .line 445
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 446
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

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

    .line 448
    move p1, v3

    .local p1, "i":I
    :goto_0
    if-gt p1, v4, :cond_1

    .line 449
    iget-object p2, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object p2, p2, p1

    .line 450
    .local p2, "rowI":[D
    move p3, v5

    .local p3, "j":I
    :goto_1
    if-gt p3, v6, :cond_0

    .line 451
    aget-wide p4, p2, p3

    invoke-interface {v0, p1, p3, p4, p5}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 450
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 448
    .end local p2    # "rowI":[D
    .end local p3    # "j":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 454
    .end local p1    # "i":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method
