.class public Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "OpenMapRealMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/SparseRealMatrix;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x52beeb57344b3c8dL


# instance fields
.field private final columns:I

.field private final entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

.field private final rows:I


# direct methods
.method public constructor <init>(II)V
    .locals 8
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 64
    int-to-long v0, p1

    .line 65
    .local v0, "lRow":J
    int-to-long v2, p2

    .line 66
    .local v2, "lCol":J
    mul-long v4, v0, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 69
    iput p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    .line 70
    iput p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    .line 71
    new-instance v4, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v4, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 72
    return-void

    .line 67
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    mul-long v5, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const v6, 0x7fffffff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    .line 79
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 80
    iget v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    .line 81
    iget v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    .line 82
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    iget-object v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 83
    return-void
.end method

.method private computeKey(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 306
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 8
    .param p1, "m"    # Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 120
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 122
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V

    .line 123
    .local v0, "out":Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    iget-object v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .local v1, "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 125
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int/2addr v2, v3

    .line 126
    .local v2, "row":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    .line 127
    .local v3, "col":I
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->setEntry(IID)V

    .line 128
    .end local v2    # "row":I
    .end local v3    # "col":I
    goto :goto_0

    .line 130
    .end local v1    # "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :cond_0
    return-object v0
.end method

.method public addToEntry(IID)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "increment"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 273
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 274
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 275
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v0

    .line 276
    .local v0, "key":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v1

    add-double/2addr v1, p3

    .line 277
    .local v1, "value":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    .line 278
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    goto :goto_0

    .line 280
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    .line 282
    :goto_0
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 1

    .line 88
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->copy()Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 1
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getColumnDimension()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    return v0
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

    .line 245
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 246
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 253
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    return v0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 17
    .param p1, "m"    # Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 216
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->getColumnDimension()I

    move-result v2

    .line 217
    .local v2, "outCols":I
    new-instance v3, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    iget v4, v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(II)V

    .line 218
    .local v3, "out":Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    iget-object v4, v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v4

    .local v4, "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 220
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    .line 221
    .local v5, "value":D
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v7

    .line 222
    .local v7, "key":I
    iget v8, v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int v8, v7, v8

    .line 223
    .local v8, "i":I
    iget v9, v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    rem-int v9, v7, v9

    .line 224
    .local v9, "k":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v2, :cond_2

    .line 225
    invoke-direct {v1, v9, v10}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v11

    .line 226
    .local v11, "rightKey":I
    iget-object v12, v1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 227
    invoke-direct {v3, v8, v10}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v12

    .line 228
    .local v12, "outKey":I
    iget-object v13, v3, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v13, v12}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v13

    iget-object v15, v1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v15, v11}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v15

    mul-double/2addr v15, v5

    add-double/2addr v13, v15

    .line 230
    .local v13, "outValue":D
    const-wide/16 v15, 0x0

    cmpl-double v15, v13, v15

    if-nez v15, :cond_0

    .line 231
    iget-object v15, v3, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v15, v12}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    goto :goto_2

    .line 233
    :cond_0
    iget-object v15, v3, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v15, v12, v13, v14}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    .line 224
    .end local v11    # "rightKey":I
    .end local v12    # "outKey":I
    .end local v13    # "outValue":D
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 237
    .end local v5    # "value":D
    .end local v7    # "key":I
    .end local v8    # "i":I
    .end local v9    # "k":I
    .end local v10    # "j":I
    :cond_2
    goto :goto_0

    .line 239
    .end local v4    # "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :cond_3
    return-object v3
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 12
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 179
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->multiply(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 184
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 185
    .local v1, "outCols":I
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 186
    .local v2, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v3

    .local v3, "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 188
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v4

    .line 189
    .local v4, "value":D
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v6

    .line 190
    .local v6, "key":I
    iget v7, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int v7, v6, v7

    .line 191
    .local v7, "i":I
    iget v8, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    rem-int v8, v6, v8

    .line 192
    .local v8, "k":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v1, :cond_0

    .line 193
    invoke-interface {p1, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v10

    mul-double/2addr v10, v4

    invoke-virtual {v2, v7, v9, v10, v11}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->addToEntry(IID)V

    .line 192
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 195
    .end local v4    # "value":D
    .end local v6    # "key":I
    .end local v7    # "i":I
    .end local v8    # "k":I
    .end local v9    # "j":I
    :cond_0
    goto :goto_0

    .line 197
    .end local v3    # "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :cond_1
    return-object v2
.end method

.method public multiplyEntry(IID)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "factor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 288
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 289
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 290
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v0

    .line 291
    .local v0, "key":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v1

    mul-double/2addr v1, p3

    .line 292
    .local v1, "value":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    .line 293
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    goto :goto_0

    .line 295
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    .line 297
    :goto_0
    return-void
.end method

.method public setEntry(IID)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 260
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 261
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 262
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v1

    invoke-virtual {v0, v1, p3, p4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    .line 267
    :goto_0
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 8
    .param p1, "m"    # Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 155
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 157
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V

    .line 158
    .local v0, "out":Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    iget-object v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .local v1, "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 160
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int/2addr v2, v3

    .line 161
    .local v2, "row":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    .line 162
    .local v3, "col":I
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->setEntry(IID)V

    .line 163
    .end local v2    # "row":I
    .end local v3    # "col":I
    goto :goto_0

    .line 165
    .end local v1    # "iterator":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :cond_0
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 2
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 139
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->subtract(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    return-object v1
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object p1

    return-object p1
.end method
