.class public Lorg/apache/commons/math3/linear/BlockRealMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "BlockRealMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BLOCK_SIZE:I = 0x34

.field private static final serialVersionUID:J = 0x4546c684f3b7c9deL


# instance fields
.field private final blockColumns:I

.field private final blockRows:I

.field private final blocks:[[D

.field private final columns:I

.field private final rows:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 98
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    .line 99
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    .line 102
    add-int/lit8 v0, p1, 0x34

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    .line 103
    add-int/lit8 v0, p2, 0x34

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    .line 106
    invoke-static {p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createBlocksLayout(II)[[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    .line 107
    return-void
.end method

.method public constructor <init>(II[[DZ)V
    .locals 7
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .param p3, "blockData"    # [[D
    .param p4, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 149
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    .line 150
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    .line 153
    add-int/lit8 v0, p1, 0x34

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    .line 154
    add-int/lit8 v0, p2, 0x34

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    .line 156
    if-eqz p4, :cond_0

    .line 158
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v0, v1

    new-array v0, v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    goto :goto_0

    .line 161
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    .line 164
    :goto_0
    const/4 v0, 0x0

    .line 165
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "iBlock":I
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v2, :cond_4

    .line 166
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v2

    .line 167
    .local v2, "iHeight":I
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_2
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v4, :cond_3

    .line 168
    aget-object v4, p3, v0

    array-length v4, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    mul-int/2addr v5, v2

    if-ne v4, v5, :cond_2

    .line 172
    if-eqz p4, :cond_1

    .line 173
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v5, p3, v0

    invoke-virtual {v5}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    aput-object v5, v4, v0

    .line 167
    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v5, p3, v0

    array-length v5, v5

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    mul-int/2addr v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 165
    .end local v2    # "iHeight":I
    .end local v3    # "jBlock":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    .end local v1    # "iBlock":I
    :cond_4
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 4
    .param p1, "rawData"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    invoke-static {p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->toBlocksLayout([[D)[[D

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II[[DZ)V

    .line 127
    return-void
.end method

.method private blockHeight(I)I
    .locals 2
    .param p1, "blockRow"    # I

    .line 1570
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    mul-int/lit8 v1, p1, 0x34

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    :goto_0
    return v0
.end method

.method private blockWidth(I)I
    .locals 2
    .param p1, "blockColumn"    # I

    .line 1579
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    mul-int/lit8 v1, p1, 0x34

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    :goto_0
    return v0
.end method

.method private copyBlockPart([DIIIII[DIII)V
    .locals 4
    .param p1, "srcBlock"    # [D
    .param p2, "srcWidth"    # I
    .param p3, "srcStartRow"    # I
    .param p4, "srcEndRow"    # I
    .param p5, "srcStartColumn"    # I
    .param p6, "srcEndColumn"    # I
    .param p7, "dstBlock"    # [D
    .param p8, "dstWidth"    # I
    .param p9, "dstStartRow"    # I
    .param p10, "dstStartColumn"    # I

    .line 776
    sub-int v0, p6, p5

    .line 777
    .local v0, "length":I
    mul-int v1, p3, p2

    add-int/2addr v1, p5

    .line 778
    .local v1, "srcPos":I
    mul-int v2, p9, p8

    add-int/2addr v2, p10

    .line 779
    .local v2, "dstPos":I
    move v3, p3

    .local v3, "srcRow":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 780
    invoke-static {p1, v1, p7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    add-int/2addr v1, p2

    .line 782
    add-int/2addr v2, p8

    .line 779
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 784
    .end local v3    # "srcRow":I
    :cond_0
    return-void
.end method

.method public static createBlocksLayout(II)[[D
    .locals 13
    .param p0, "rows"    # I
    .param p1, "columns"    # I

    .line 257
    add-int/lit8 v0, p0, 0x34

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x34

    .line 258
    .local v0, "blockRows":I
    add-int/lit8 v1, p1, 0x34

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x34

    .line 260
    .local v1, "blockColumns":I
    mul-int v2, v0, v1

    new-array v2, v2, [[D

    .line 261
    .local v2, "blocks":[[D
    const/4 v3, 0x0

    .line 262
    .local v3, "blockIndex":I
    const/4 v4, 0x0

    .local v4, "iBlock":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 263
    mul-int/lit8 v5, v4, 0x34

    .line 264
    .local v5, "pStart":I
    add-int/lit8 v6, v5, 0x34

    invoke-static {v6, p0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    .line 265
    .local v6, "pEnd":I
    sub-int v7, v6, v5

    .line 266
    .local v7, "iHeight":I
    const/4 v8, 0x0

    .local v8, "jBlock":I
    :goto_1
    if-ge v8, v1, :cond_0

    .line 267
    mul-int/lit8 v9, v8, 0x34

    .line 268
    .local v9, "qStart":I
    add-int/lit8 v10, v9, 0x34

    invoke-static {v10, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 269
    .local v10, "qEnd":I
    sub-int v11, v10, v9

    .line 270
    .local v11, "jWidth":I
    mul-int v12, v7, v11

    new-array v12, v12, [D

    aput-object v12, v2, v3

    .line 271
    nop

    .end local v9    # "qStart":I
    .end local v10    # "qEnd":I
    .end local v11    # "jWidth":I
    add-int/lit8 v3, v3, 0x1

    .line 266
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 262
    .end local v5    # "pStart":I
    .end local v6    # "pEnd":I
    .end local v7    # "iHeight":I
    .end local v8    # "jBlock":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 275
    .end local v4    # "iBlock":I
    :cond_1
    return-object v2
.end method

.method public static toBlocksLayout([[D)[[D
    .locals 18
    .param p0, "rawData"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 202
    move-object/from16 v0, p0

    array-length v1, v0

    .line 203
    .local v1, "rows":I
    const/4 v2, 0x0

    aget-object v2, v0, v2

    array-length v2, v2

    .line 204
    .local v2, "columns":I
    add-int/lit8 v3, v1, 0x34

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x34

    .line 205
    .local v3, "blockRows":I
    add-int/lit8 v4, v2, 0x34

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x34

    .line 208
    .local v4, "blockColumns":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 209
    aget-object v6, v0, v5

    array-length v6, v6

    .line 210
    .local v6, "length":I
    if-ne v6, v2, :cond_0

    .line 208
    .end local v6    # "length":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 211
    .restart local v6    # "length":I
    :cond_0
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v7, v2, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 216
    .end local v5    # "i":I
    .end local v6    # "length":I
    :cond_1
    mul-int v5, v3, v4

    new-array v5, v5, [[D

    .line 217
    .local v5, "blocks":[[D
    const/4 v6, 0x0

    .line 218
    .local v6, "blockIndex":I
    const/4 v7, 0x0

    .local v7, "iBlock":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 219
    mul-int/lit8 v8, v7, 0x34

    .line 220
    .local v8, "pStart":I
    add-int/lit8 v9, v8, 0x34

    invoke-static {v9, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    .line 221
    .local v9, "pEnd":I
    sub-int v10, v9, v8

    .line 222
    .local v10, "iHeight":I
    const/4 v11, 0x0

    .local v11, "jBlock":I
    :goto_2
    if-ge v11, v4, :cond_3

    .line 223
    mul-int/lit8 v12, v11, 0x34

    .line 224
    .local v12, "qStart":I
    add-int/lit8 v13, v12, 0x34

    invoke-static {v13, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 225
    .local v13, "qEnd":I
    sub-int v14, v13, v12

    .line 228
    .local v14, "jWidth":I
    mul-int v15, v10, v14

    new-array v15, v15, [D

    .line 229
    .local v15, "block":[D
    aput-object v15, v5, v6

    .line 232
    const/16 v16, 0x0

    .line 233
    .local v16, "index":I
    move/from16 v17, v8

    move/from16 v0, v16

    move/from16 v16, v1

    move/from16 v1, v17

    .local v0, "index":I
    .local v1, "p":I
    .local v16, "rows":I
    :goto_3
    if-ge v1, v9, :cond_2

    .line 234
    move/from16 v17, v1

    .end local v1    # "p":I
    .local v17, "p":I
    aget-object v1, p0, v17

    invoke-static {v1, v12, v15, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int/2addr v0, v14

    .line 233
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "p":I
    .restart local v1    # "p":I
    goto :goto_3

    :cond_2
    move/from16 v17, v1

    .line 237
    .end local v1    # "p":I
    nop

    .end local v0    # "index":I
    .end local v12    # "qStart":I
    .end local v13    # "qEnd":I
    .end local v14    # "jWidth":I
    .end local v15    # "block":[D
    add-int/lit8 v6, v6, 0x1

    .line 222
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_2

    .end local v16    # "rows":I
    .local v1, "rows":I
    :cond_3
    move/from16 v16, v1

    .line 218
    .end local v1    # "rows":I
    .end local v8    # "pStart":I
    .end local v9    # "pEnd":I
    .end local v10    # "iHeight":I
    .end local v11    # "jBlock":I
    .restart local v16    # "rows":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 241
    .end local v7    # "iBlock":I
    .end local v16    # "rows":I
    .restart local v1    # "rows":I
    :cond_4
    return-object v5
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 10
    .param p1, "m"    # Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 351
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 353
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 356
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v1, 0x0

    .local v1, "blockIndex":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 357
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v2, v2, v1

    .line 358
    .local v2, "outBlock":[D
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v3, v1

    .line 359
    .local v3, "tBlock":[D
    iget-object v4, p1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v1

    .line 360
    .local v4, "mBlock":[D
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 361
    aget-wide v6, v3, v5

    aget-wide v8, v4, v5

    add-double/2addr v6, v8

    aput-wide v6, v2, v5

    .line 360
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 356
    .end local v2    # "outBlock":[D
    .end local v3    # "tBlock":[D
    .end local v4    # "mBlock":[D
    .end local v5    # "k":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "blockIndex":I
    :cond_1
    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 20
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 305
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    move-object v0, v2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->add(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 308
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 310
    new-instance v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v4, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v5, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 313
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v4, 0x0

    .line 314
    .local v4, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v6, :cond_3

    .line 315
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    iget v7, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 318
    iget-object v7, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v7, v4

    .line 319
    .local v7, "outBlock":[D
    iget-object v8, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v4

    .line 320
    .local v8, "tBlock":[D
    mul-int/lit8 v9, v5, 0x34

    .line 321
    .local v9, "pStart":I
    add-int/lit8 v10, v9, 0x34

    iget v11, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 322
    .local v10, "pEnd":I
    mul-int/lit8 v11, v6, 0x34

    .line 323
    .local v11, "qStart":I
    add-int/lit8 v12, v11, 0x34

    iget v13, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 324
    .local v12, "qEnd":I
    const/4 v13, 0x0

    .line 325
    .local v13, "k":I
    move v14, v9

    .local v14, "p":I
    :goto_2
    if-ge v14, v10, :cond_1

    .line 326
    move v15, v11

    .local v15, "q":I
    :goto_3
    if-ge v15, v12, :cond_0

    .line 327
    aget-wide v16, v8, v13

    invoke-interface {v2, v14, v15}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v18

    add-double v16, v16, v18

    aput-wide v16, v7, v13

    .line 328
    add-int/lit8 v13, v13, 0x1

    .line 326
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 325
    .end local v15    # "q":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 332
    .end local v14    # "p":I
    :cond_1
    nop

    .end local v7    # "outBlock":[D
    .end local v8    # "tBlock":[D
    .end local v9    # "pStart":I
    .end local v10    # "pEnd":I
    .end local v11    # "qStart":I
    .end local v12    # "qEnd":I
    .end local v13    # "k":I
    add-int/lit8 v4, v4, 0x1

    .line 315
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 314
    .end local v6    # "jBlock":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 336
    .end local v5    # "iBlock":I
    :cond_3
    return-object v3
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public addToEntry(IID)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "increment"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1190
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1191
    div-int/lit8 v0, p1, 0x34

    .line 1192
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x34

    .line 1193
    .local v1, "jBlock":I
    mul-int/lit8 v2, v0, 0x34

    sub-int v2, p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x34

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    .line 1195
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aget-wide v4, v3, v2

    add-double/2addr v4, p3

    aput-wide v4, v3, v2

    .line 1196
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 6

    .line 290
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 293
    .local v0, "copied":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 294
    iget-object v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v2, v2, v1

    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v1

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copy()Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 1
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 283
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getColumn(I)[D
    .locals 12
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1118
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1119
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v0, v0, [D

    .line 1122
    .local v0, "out":[D
    div-int/lit8 v1, p1, 0x34

    .line 1123
    .local v1, "jBlock":I
    mul-int/lit8 v2, v1, 0x34

    sub-int v2, p1, v2

    .line 1124
    .local v2, "jColumn":I
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v3

    .line 1125
    .local v3, "jWidth":I
    const/4 v4, 0x0

    .line 1126
    .local v4, "outIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v6, :cond_1

    .line 1127
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v6

    .line 1128
    .local v6, "iHeight":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    .line 1129
    .local v7, "block":[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 1130
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "outIndex":I
    .local v9, "outIndex":I
    mul-int v10, v8, v3

    add-int/2addr v10, v2

    aget-wide v10, v7, v10

    aput-wide v10, v0, v4

    .line 1129
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_1

    .line 1126
    .end local v6    # "iHeight":I
    .end local v7    # "block":[D
    .end local v8    # "i":I
    .end local v9    # "outIndex":I
    .restart local v4    # "outIndex":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1134
    .end local v5    # "iBlock":I
    :cond_1
    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .line 1256
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    return v0
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 14
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 929
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 930
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 933
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    div-int/lit8 v1, p1, 0x34

    .line 934
    .local v1, "jBlock":I
    mul-int/lit8 v2, v1, 0x34

    sub-int v2, p1, v2

    .line 935
    .local v2, "jColumn":I
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v3

    .line 936
    .local v3, "jWidth":I
    const/4 v4, 0x0

    .line 937
    .local v4, "outBlockIndex":I
    const/4 v5, 0x0

    .line 938
    .local v5, "outIndex":I
    iget-object v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v6, v6, v4

    .line 939
    .local v6, "outBlock":[D
    const/4 v7, 0x0

    .local v7, "iBlock":I
    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v7, v8, :cond_2

    .line 940
    invoke-direct {p0, v7}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v8

    .line 941
    .local v8, "iHeight":I
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v10, v7

    add-int/2addr v10, v1

    aget-object v9, v9, v10

    .line 942
    .local v9, "block":[D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_1

    .line 943
    array-length v11, v6

    if-lt v5, v11, :cond_0

    .line 944
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v4, v4, 0x1

    aget-object v6, v11, v4

    .line 945
    const/4 v5, 0x0

    .line 947
    :cond_0
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "outIndex":I
    .local v11, "outIndex":I
    mul-int v12, v10, v3

    add-int/2addr v12, v2

    aget-wide v12, v9, v12

    aput-wide v12, v6, v5

    .line 942
    add-int/lit8 v10, v10, 0x1

    move v5, v11

    goto :goto_1

    .line 939
    .end local v8    # "iHeight":I
    .end local v9    # "block":[D
    .end local v10    # "i":I
    .end local v11    # "outIndex":I
    .restart local v5    # "outIndex":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 951
    .end local v7    # "iBlock":I
    :cond_2
    return-object v0
.end method

.method public bridge synthetic getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1043
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1044
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v0, v0, [D

    .line 1047
    .local v0, "outData":[D
    div-int/lit8 v1, p1, 0x34

    .line 1048
    .local v1, "jBlock":I
    mul-int/lit8 v2, v1, 0x34

    sub-int v2, p1, v2

    .line 1049
    .local v2, "jColumn":I
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v3

    .line 1050
    .local v3, "jWidth":I
    const/4 v4, 0x0

    .line 1051
    .local v4, "outIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v6, :cond_1

    .line 1052
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v6

    .line 1053
    .local v6, "iHeight":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    .line 1054
    .local v7, "block":[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 1055
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "outIndex":I
    .local v9, "outIndex":I
    mul-int v10, v8, v3

    add-int/2addr v10, v2

    aget-wide v10, v7, v10

    aput-wide v10, v0, v4

    .line 1054
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_1

    .line 1051
    .end local v6    # "iHeight":I
    .end local v7    # "block":[D
    .end local v8    # "i":I
    .end local v9    # "outIndex":I
    .restart local v4    # "outIndex":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1059
    .end local v5    # "iBlock":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v5
.end method

.method public getData()[[D
    .locals 17

    .line 597
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 598
    .local v1, "data":[[D
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    sub-int/2addr v3, v4

    const/16 v5, 0x34

    mul-int/2addr v3, v5

    sub-int/2addr v2, v3

    .line 600
    .local v2, "lastColumns":I
    const/4 v3, 0x0

    .local v3, "iBlock":I
    :goto_0
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v3, v6, :cond_2

    .line 601
    mul-int/lit8 v6, v3, 0x34

    .line 602
    .local v6, "pStart":I
    add-int/lit8 v7, v6, 0x34

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 603
    .local v7, "pEnd":I
    const/4 v8, 0x0

    .line 604
    .local v8, "regularPos":I
    const/4 v9, 0x0

    .line 605
    .local v9, "lastPos":I
    move v10, v6

    .local v10, "p":I
    :goto_1
    if-ge v10, v7, :cond_1

    .line 606
    aget-object v11, v1, v10

    .line 607
    .local v11, "dataP":[D
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v12, v3

    .line 608
    .local v12, "blockIndex":I
    const/4 v13, 0x0

    .line 609
    .local v13, "dataPos":I
    const/4 v14, 0x0

    .local v14, "jBlock":I
    :goto_2
    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    sub-int/2addr v15, v4

    if-ge v14, v15, :cond_0

    .line 610
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v16, v12, 0x1

    .end local v12    # "blockIndex":I
    .local v16, "blockIndex":I
    aget-object v12, v15, v12

    invoke-static {v12, v8, v11, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    add-int/lit8 v13, v13, 0x34

    .line 609
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v16

    goto :goto_2

    .line 613
    .end local v14    # "jBlock":I
    .end local v16    # "blockIndex":I
    .restart local v12    # "blockIndex":I
    :cond_0
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v14, v14, v12

    invoke-static {v14, v9, v11, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    add-int/lit8 v8, v8, 0x34

    .line 615
    add-int/2addr v9, v2

    .line 605
    .end local v11    # "dataP":[D
    .end local v12    # "blockIndex":I
    .end local v13    # "dataPos":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 600
    .end local v6    # "pStart":I
    .end local v7    # "pEnd":I
    .end local v8    # "regularPos":I
    .end local v9    # "lastPos":I
    .end local v10    # "p":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 619
    .end local v3    # "iBlock":I
    :cond_2
    return-object v1
.end method

.method public getEntry(II)D
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1165
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1166
    div-int/lit8 v0, p1, 0x34

    .line 1167
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x34

    .line 1168
    .local v1, "jBlock":I
    mul-int/lit8 v2, v0, 0x34

    sub-int v2, p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x34

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    .line 1170
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aget-wide v3, v3, v2

    return-wide v3
.end method

.method public getFrobeniusNorm()D
    .locals 10

    .line 651
    const-wide/16 v0, 0x0

    .line 652
    .local v0, "sum2":D
    const/4 v2, 0x0

    .local v2, "blockIndex":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 653
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v3, v2

    .local v3, "arr$":[D
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_0

    aget-wide v6, v3, v5

    .line 654
    .local v6, "entry":D
    mul-double v8, v6, v6

    add-double/2addr v0, v8

    .line 653
    .end local v6    # "entry":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 652
    .end local v3    # "arr$":[D
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    .end local v2    # "blockIndex":I
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public getNorm()D
    .locals 14

    .line 625
    const/16 v0, 0x34

    new-array v0, v0, [D

    .line 626
    .local v0, "colSums":[D
    const-wide/16 v1, 0x0

    .line 627
    .local v1, "maxColSum":D
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v4, :cond_4

    .line 628
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    .line 629
    .local v4, "jWidth":I
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v0, v5, v4, v6, v7}, Ljava/util/Arrays;->fill([DIID)V

    .line 630
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v6, :cond_2

    .line 631
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v6

    .line 632
    .local v6, "iHeight":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    .line 633
    .local v7, "block":[D
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v4, :cond_1

    .line 634
    const-wide/16 v9, 0x0

    .line 635
    .local v9, "sum":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v6, :cond_0

    .line 636
    mul-int v12, v11, v4

    add-int/2addr v12, v8

    aget-wide v12, v7, v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    add-double/2addr v9, v12

    .line 635
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 638
    .end local v11    # "i":I
    :cond_0
    aget-wide v11, v0, v8

    add-double/2addr v11, v9

    aput-wide v11, v0, v8

    .line 633
    .end local v9    # "sum":D
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 630
    .end local v6    # "iHeight":I
    .end local v7    # "block":[D
    .end local v8    # "j":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 641
    .end local v5    # "iBlock":I
    :cond_2
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    if-ge v5, v4, :cond_3

    .line 642
    aget-wide v6, v0, v5

    invoke-static {v1, v2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 641
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 627
    .end local v4    # "jWidth":I
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 645
    .end local v3    # "jBlock":I
    :cond_4
    return-wide v1
.end method

.method public getRow(I)[D
    .locals 8
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1076
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1077
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v0, v0, [D

    .line 1080
    .local v0, "out":[D
    div-int/lit8 v1, p1, 0x34

    .line 1081
    .local v1, "iBlock":I
    mul-int/lit8 v2, v1, 0x34

    sub-int v2, p1, v2

    .line 1082
    .local v2, "iRow":I
    const/4 v3, 0x0

    .line 1083
    .local v3, "outIndex":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v5, :cond_0

    .line 1084
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    .line 1085
    .local v5, "jWidth":I
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v4

    aget-object v6, v6, v7

    .line 1086
    .local v6, "block":[D
    mul-int v7, v2, v5

    invoke-static {v6, v7, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1087
    add-int/2addr v3, v5

    .line 1083
    .end local v5    # "jWidth":I
    .end local v6    # "block":[D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1090
    .end local v4    # "jBlock":I
    :cond_0
    return-object v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 1250
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    return v0
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 13
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 843
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 844
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 847
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    div-int/lit8 v1, p1, 0x34

    .line 848
    .local v1, "iBlock":I
    mul-int/lit8 v2, v1, 0x34

    sub-int v2, p1, v2

    .line 849
    .local v2, "iRow":I
    const/4 v3, 0x0

    .line 850
    .local v3, "outBlockIndex":I
    const/4 v4, 0x0

    .line 851
    .local v4, "outIndex":I
    iget-object v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v5, v5, v3

    .line 852
    .local v5, "outBlock":[D
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v6, v7, :cond_1

    .line 853
    invoke-direct {p0, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v7

    .line 854
    .local v7, "jWidth":I
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v6

    aget-object v8, v8, v9

    .line 855
    .local v8, "block":[D
    array-length v9, v5

    sub-int/2addr v9, v4

    .line 856
    .local v9, "available":I
    if-le v7, v9, :cond_0

    .line 857
    mul-int v10, v2, v7

    invoke-static {v8, v10, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    iget-object v10, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v3, v3, 0x1

    aget-object v5, v10, v3

    .line 859
    mul-int v10, v2, v7

    const/4 v11, 0x0

    sub-int v12, v7, v9

    invoke-static {v8, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    sub-int v4, v7, v9

    goto :goto_1

    .line 862
    :cond_0
    mul-int v10, v2, v7

    invoke-static {v8, v10, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    add-int/2addr v4, v7

    .line 852
    .end local v7    # "jWidth":I
    .end local v8    # "block":[D
    .end local v9    # "available":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 867
    .end local v6    # "jBlock":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getRowMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1011
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1012
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v0, v0, [D

    .line 1015
    .local v0, "outData":[D
    div-int/lit8 v1, p1, 0x34

    .line 1016
    .local v1, "iBlock":I
    mul-int/lit8 v2, v1, 0x34

    sub-int v2, p1, v2

    .line 1017
    .local v2, "iRow":I
    const/4 v3, 0x0

    .line 1018
    .local v3, "outIndex":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v5, :cond_0

    .line 1019
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    .line 1020
    .local v5, "jWidth":I
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v4

    aget-object v6, v6, v7

    .line 1021
    .local v6, "block":[D
    mul-int v7, v2, v5

    invoke-static {v6, v7, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1022
    add-int/2addr v3, v5

    .line 1018
    .end local v5    # "jWidth":I
    .end local v6    # "block":[D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1025
    .end local v4    # "jBlock":I
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v4
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 27
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

    .line 667
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 670
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    sub-int v3, p4, p3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    move-object v11, v1

    .line 674
    .local v11, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    div-int/lit8 v12, p1, 0x34

    .line 675
    .local v12, "blockStartRow":I
    rem-int/lit8 v3, p1, 0x34

    .line 676
    .local v3, "rowsShift":I
    div-int/lit8 v13, p3, 0x34

    .line 677
    .local v13, "blockStartColumn":I
    rem-int/lit8 v5, p3, 0x34

    .line 680
    .local v5, "columnsShift":I
    move v1, v12

    .line 681
    .local v1, "pBlock":I
    const/4 v2, 0x0

    move v14, v1

    move v15, v2

    .end local v1    # "pBlock":I
    .local v14, "pBlock":I
    .local v15, "iBlock":I
    :goto_0
    iget v1, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v15, v1, :cond_4

    .line 682
    invoke-direct {v11, v15}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v16

    .line 683
    .local v16, "iHeight":I
    move v1, v13

    .line 684
    .local v1, "qBlock":I
    const/4 v2, 0x0

    .local v2, "jBlock":I
    :goto_1
    iget v4, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v2, v4, :cond_3

    .line 685
    invoke-direct {v11, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v8

    .line 688
    .local v8, "jWidth":I
    iget v4, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v15

    add-int v17, v4, v2

    .line 689
    .local v17, "outIndex":I
    iget-object v4, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v4, v17

    .line 690
    .local v7, "outBlock":[D
    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v14

    add-int v18, v4, v1

    .line 691
    .local v18, "index":I
    move v4, v2

    .end local v2    # "jBlock":I
    .local v4, "jBlock":I
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    .line 693
    .local v2, "width":I
    add-int v6, v16, v3

    add-int/lit8 v19, v6, -0x34

    .line 694
    .local v19, "heightExcess":I
    add-int v6, v8, v5

    add-int/lit8 v20, v6, -0x34

    .line 695
    .local v20, "widthExcess":I
    if-lez v19, :cond_1

    .line 697
    if-lez v20, :cond_0

    .line 699
    add-int/lit8 v6, v1, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v21

    .line 700
    .local v21, "width2":I
    iget-object v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v6, v6, v18

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v22, v4

    .end local v4    # "jBlock":I
    .local v22, "jBlock":I
    const/16 v4, 0x34

    move/from16 v23, v1

    move-object v1, v6

    .end local v1    # "qBlock":I
    .local v23, "qBlock":I
    const/16 v6, 0x34

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 704
    move/from16 v25, v2

    move/from16 v24, v5

    .end local v2    # "width":I
    .end local v5    # "columnsShift":I
    .local v24, "columnsShift":I
    .local v25, "width":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v2, v18, 0x1

    aget-object v1, v1, v2

    sub-int v10, v8, v20

    const/4 v5, 0x0

    move/from16 v6, v20

    move/from16 v2, v21

    .end local v20    # "widthExcess":I
    .end local v21    # "width2":I
    .local v2, "width2":I
    .local v6, "widthExcess":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 708
    move/from16 v26, v2

    move/from16 v20, v3

    move/from16 v21, v6

    .end local v2    # "width2":I
    .end local v3    # "rowsShift":I
    .end local v6    # "widthExcess":I
    .local v20, "rowsShift":I
    .local v21, "widthExcess":I
    .local v26, "width2":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int v2, v18, v2

    aget-object v1, v1, v2

    sub-int v9, v16, v19

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x34

    move/from16 v4, v19

    move/from16 v5, v24

    move/from16 v2, v25

    .end local v19    # "heightExcess":I
    .end local v24    # "columnsShift":I
    .end local v25    # "width":I
    .local v2, "width":I
    .local v4, "heightExcess":I
    .restart local v5    # "columnsShift":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 712
    .end local v2    # "width":I
    .end local v5    # "columnsShift":I
    .restart local v24    # "columnsShift":I
    .restart local v25    # "width":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int v2, v18, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    sub-int v9, v16, v4

    sub-int v10, v8, v21

    const/4 v5, 0x0

    move/from16 v6, v21

    move/from16 v2, v26

    .end local v21    # "widthExcess":I
    .end local v26    # "width2":I
    .local v2, "width2":I
    .restart local v6    # "widthExcess":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 716
    .end local v2    # "width2":I
    .end local v4    # "heightExcess":I
    .end local v6    # "widthExcess":I
    .restart local v19    # "heightExcess":I
    .restart local v21    # "widthExcess":I
    move/from16 v3, v20

    move/from16 v5, v24

    move/from16 v2, v25

    goto/16 :goto_2

    .line 718
    .end local v21    # "widthExcess":I
    .end local v22    # "jBlock":I
    .end local v23    # "qBlock":I
    .end local v24    # "columnsShift":I
    .end local v25    # "width":I
    .restart local v1    # "qBlock":I
    .local v2, "width":I
    .restart local v3    # "rowsShift":I
    .local v4, "jBlock":I
    .restart local v5    # "columnsShift":I
    .local v20, "widthExcess":I
    :cond_0
    move/from16 v23, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v24, v5

    move/from16 v21, v20

    move/from16 v20, v3

    .end local v1    # "qBlock":I
    .end local v2    # "width":I
    .end local v3    # "rowsShift":I
    .end local v4    # "jBlock":I
    .end local v5    # "columnsShift":I
    .local v20, "rowsShift":I
    .restart local v21    # "widthExcess":I
    .restart local v22    # "jBlock":I
    .restart local v23    # "qBlock":I
    .restart local v24    # "columnsShift":I
    .restart local v25    # "width":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v1, v1, v18

    add-int v6, v8, v24

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x34

    .end local v20    # "rowsShift":I
    .end local v24    # "columnsShift":I
    .end local v25    # "width":I
    .restart local v2    # "width":I
    .restart local v3    # "rowsShift":I
    .restart local v5    # "columnsShift":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 722
    .end local v3    # "rowsShift":I
    .restart local v20    # "rowsShift":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int v3, v18, v3

    aget-object v1, v1, v3

    add-int v6, v8, v5

    sub-int v9, v16, v19

    const/4 v3, 0x0

    move/from16 v4, v19

    .end local v19    # "heightExcess":I
    .local v4, "heightExcess":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    move/from16 v3, v20

    .end local v4    # "heightExcess":I
    .restart local v19    # "heightExcess":I
    goto :goto_2

    .line 729
    .end local v21    # "widthExcess":I
    .end local v22    # "jBlock":I
    .end local v23    # "qBlock":I
    .restart local v1    # "qBlock":I
    .restart local v3    # "rowsShift":I
    .local v4, "jBlock":I
    .local v20, "widthExcess":I
    :cond_1
    move/from16 v23, v1

    move/from16 v22, v4

    move/from16 v21, v20

    move/from16 v20, v3

    .end local v1    # "qBlock":I
    .end local v3    # "rowsShift":I
    .end local v4    # "jBlock":I
    .local v20, "rowsShift":I
    .restart local v21    # "widthExcess":I
    .restart local v22    # "jBlock":I
    .restart local v23    # "qBlock":I
    if-lez v21, :cond_2

    .line 731
    add-int/lit8 v1, v23, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v24

    .line 732
    .local v24, "width2":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v1, v1, v18

    add-int v4, v16, v20

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0x34

    move/from16 v3, v20

    .end local v20    # "rowsShift":I
    .restart local v3    # "rowsShift":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 736
    move/from16 v25, v2

    move/from16 v20, v5

    .end local v2    # "width":I
    .end local v5    # "columnsShift":I
    .local v20, "columnsShift":I
    .restart local v25    # "width":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v2, v18, 0x1

    aget-object v1, v1, v2

    add-int v4, v16, v3

    sub-int v10, v8, v21

    const/4 v5, 0x0

    move/from16 v6, v21

    move/from16 v2, v24

    .end local v21    # "widthExcess":I
    .end local v24    # "width2":I
    .local v2, "width2":I
    .restart local v6    # "widthExcess":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 740
    .end local v2    # "width2":I
    .end local v6    # "widthExcess":I
    .restart local v21    # "widthExcess":I
    move/from16 v5, v20

    move/from16 v2, v25

    goto :goto_2

    .line 742
    .end local v3    # "rowsShift":I
    .end local v25    # "width":I
    .local v2, "width":I
    .restart local v5    # "columnsShift":I
    .local v20, "rowsShift":I
    :cond_2
    move/from16 v25, v2

    move/from16 v3, v20

    move/from16 v20, v5

    .end local v2    # "width":I
    .end local v5    # "columnsShift":I
    .restart local v3    # "rowsShift":I
    .local v20, "columnsShift":I
    .restart local v25    # "width":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v1, v1, v18

    add-int v4, v16, v3

    add-int v6, v8, v20

    const/4 v9, 0x0

    const/4 v10, 0x0

    .end local v20    # "columnsShift":I
    .end local v25    # "width":I
    .restart local v2    # "width":I
    .restart local v5    # "columnsShift":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 748
    :goto_2
    nop

    .end local v2    # "width":I
    .end local v7    # "outBlock":[D
    .end local v8    # "jWidth":I
    .end local v17    # "outIndex":I
    .end local v18    # "index":I
    .end local v19    # "heightExcess":I
    .end local v21    # "widthExcess":I
    add-int/lit8 v1, v23, 0x1

    .line 684
    .end local v23    # "qBlock":I
    .restart local v1    # "qBlock":I
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    .end local v22    # "jBlock":I
    .local v2, "jBlock":I
    goto/16 :goto_1

    :cond_3
    move/from16 v23, v1

    move/from16 v22, v2

    .line 750
    .end local v1    # "qBlock":I
    .end local v2    # "jBlock":I
    .restart local v23    # "qBlock":I
    nop

    .end local v16    # "iHeight":I
    .end local v23    # "qBlock":I
    add-int/lit8 v14, v14, 0x1

    .line 681
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 753
    .end local v15    # "iBlock":I
    :cond_4
    return-object v11
.end method

.method public bridge synthetic getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 32
    .param p1, "m"    # Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 538
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v4, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 541
    .local v2, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v3, 0x0

    .line 542
    .local v3, "blockIndex":I
    const/4 v4, 0x0

    .local v4, "iBlock":I
    :goto_0
    iget v5, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v5, :cond_6

    .line 544
    mul-int/lit8 v5, v4, 0x34

    .line 545
    .local v5, "pStart":I
    add-int/lit8 v6, v5, 0x34

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    .line 547
    .local v6, "pEnd":I
    const/4 v7, 0x0

    .local v7, "jBlock":I
    :goto_1
    iget v8, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v7, v8, :cond_5

    .line 548
    invoke-direct {v2, v7}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v8

    .line 549
    .local v8, "jWidth":I
    add-int v9, v8, v8

    .line 550
    .local v9, "jWidth2":I
    add-int v10, v9, v8

    .line 551
    .local v10, "jWidth3":I
    add-int v11, v10, v8

    .line 554
    .local v11, "jWidth4":I
    iget-object v12, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v12, v12, v3

    .line 557
    .local v12, "outBlock":[D
    const/4 v13, 0x0

    .local v13, "kBlock":I
    :goto_2
    iget v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v13, v14, :cond_4

    .line 558
    invoke-direct {v0, v13}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v14

    .line 559
    .local v14, "kWidth":I
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v16, v2

    .end local v2    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .local v16, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v2, v4

    add-int/2addr v2, v13

    aget-object v2, v15, v2

    .line 560
    .local v2, "tBlock":[D
    iget-object v15, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v0, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v0, v13

    add-int/2addr v0, v7

    aget-object v0, v15, v0

    .line 561
    .local v0, "mBlock":[D
    const/4 v15, 0x0

    .line 562
    .local v15, "k":I
    move/from16 v17, v5

    move/from16 v31, v17

    move-object/from16 v17, v0

    move/from16 v0, v31

    .local v0, "p":I
    .local v17, "mBlock":[D
    :goto_3
    if-ge v0, v6, :cond_3

    .line 563
    sub-int v18, v0, v5

    mul-int v18, v18, v14

    .line 564
    .local v18, "lStart":I
    move/from16 v19, v0

    .end local v0    # "p":I
    .local v19, "p":I
    add-int v0, v18, v14

    .line 565
    .local v0, "lEnd":I
    const/16 v20, 0x0

    move/from16 v1, v20

    .local v1, "nStart":I
    :goto_4
    if-ge v1, v8, :cond_2

    .line 566
    const-wide/16 v20, 0x0

    .line 567
    .local v20, "sum":D
    move/from16 v22, v18

    .line 568
    .local v22, "l":I
    move/from16 v23, v1

    move/from16 v31, v22

    move/from16 v22, v1

    move/from16 v1, v31

    .line 569
    .local v1, "l":I
    .local v22, "nStart":I
    .local v23, "n":I
    :goto_5
    move-object/from16 v24, v2

    .end local v2    # "tBlock":[D
    .local v24, "tBlock":[D
    add-int/lit8 v2, v0, -0x3

    if-ge v1, v2, :cond_0

    .line 570
    aget-wide v25, v24, v1

    aget-wide v27, v17, v23

    mul-double v25, v25, v27

    add-int/lit8 v2, v1, 0x1

    aget-wide v27, v24, v2

    add-int v2, v23, v8

    aget-wide v29, v17, v2

    mul-double v27, v27, v29

    add-double v25, v25, v27

    add-int/lit8 v2, v1, 0x2

    aget-wide v27, v24, v2

    add-int v2, v23, v9

    aget-wide v29, v17, v2

    mul-double v27, v27, v29

    add-double v25, v25, v27

    add-int/lit8 v2, v1, 0x3

    aget-wide v27, v24, v2

    add-int v2, v23, v10

    aget-wide v29, v17, v2

    mul-double v27, v27, v29

    add-double v25, v25, v27

    add-double v20, v20, v25

    .line 574
    add-int/lit8 v1, v1, 0x4

    .line 575
    add-int v23, v23, v11

    move-object/from16 v2, v24

    goto :goto_5

    .line 577
    :cond_0
    :goto_6
    if-ge v1, v0, :cond_1

    .line 578
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "l":I
    .local v2, "l":I
    aget-wide v25, v24, v1

    aget-wide v27, v17, v23

    mul-double v25, v25, v27

    add-double v20, v20, v25

    .line 579
    add-int v23, v23, v8

    move v1, v2

    goto :goto_6

    .line 581
    .end local v2    # "l":I
    .restart local v1    # "l":I
    :cond_1
    aget-wide v25, v12, v15

    add-double v25, v25, v20

    aput-wide v25, v12, v15

    .line 582
    nop

    .end local v1    # "l":I
    .end local v20    # "sum":D
    .end local v23    # "n":I
    add-int/lit8 v15, v15, 0x1

    .line 565
    add-int/lit8 v1, v22, 0x1

    move-object/from16 v2, v24

    .end local v22    # "nStart":I
    .local v1, "nStart":I
    goto :goto_4

    .end local v24    # "tBlock":[D
    .local v2, "tBlock":[D
    :cond_2
    move/from16 v22, v1

    move-object/from16 v24, v2

    .line 562
    .end local v0    # "lEnd":I
    .end local v1    # "nStart":I
    .end local v2    # "tBlock":[D
    .end local v18    # "lStart":I
    .restart local v24    # "tBlock":[D
    add-int/lit8 v0, v19, 0x1

    move-object/from16 v1, p1

    .end local v19    # "p":I
    .local v0, "p":I
    goto :goto_3

    .end local v24    # "tBlock":[D
    .restart local v2    # "tBlock":[D
    :cond_3
    move/from16 v19, v0

    move-object/from16 v24, v2

    .line 557
    .end local v0    # "p":I
    .end local v2    # "tBlock":[D
    .end local v14    # "kWidth":I
    .end local v15    # "k":I
    .end local v17    # "mBlock":[D
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto/16 :goto_2

    .end local v16    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .local v2, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    :cond_4
    move-object/from16 v16, v2

    .line 587
    .end local v2    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v13    # "kBlock":I
    .restart local v16    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    nop

    .end local v8    # "jWidth":I
    .end local v9    # "jWidth2":I
    .end local v10    # "jWidth3":I
    .end local v11    # "jWidth4":I
    .end local v12    # "outBlock":[D
    add-int/lit8 v3, v3, 0x1

    .line 547
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    .end local v16    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .restart local v2    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    :cond_5
    move-object/from16 v16, v2

    .line 542
    .end local v2    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v5    # "pStart":I
    .end local v6    # "pEnd":I
    .end local v7    # "jBlock":I
    .restart local v16    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .end local v16    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .restart local v2    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    :cond_6
    move-object/from16 v16, v2

    .line 591
    .end local v2    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v4    # "iBlock":I
    .restart local v16    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    return-object v16
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 29
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 476
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    move-object v0, v2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->multiply(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 477
    :catch_0
    move-exception v0

    .line 479
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 481
    new-instance v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v4, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 484
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v4, 0x0

    .line 485
    .local v4, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v6, :cond_5

    .line 486
    mul-int/lit8 v6, v5, 0x34

    .line 487
    .local v6, "pStart":I
    add-int/lit8 v7, v6, 0x34

    iget v8, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 489
    .local v7, "pEnd":I
    const/4 v8, 0x0

    .local v8, "jBlock":I
    :goto_1
    iget v9, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v8, v9, :cond_4

    .line 490
    mul-int/lit8 v9, v8, 0x34

    .line 491
    .local v9, "qStart":I
    add-int/lit8 v10, v9, 0x34

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v11

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 494
    .local v10, "qEnd":I
    iget-object v11, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v11, v11, v4

    .line 497
    .local v11, "outBlock":[D
    const/4 v12, 0x0

    .local v12, "kBlock":I
    :goto_2
    iget v13, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v12, v13, :cond_3

    .line 498
    invoke-direct {v1, v12}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v13

    .line 499
    .local v13, "kWidth":I
    iget-object v14, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v15, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v15, v5

    add-int/2addr v15, v12

    aget-object v14, v14, v15

    .line 500
    .local v14, "tBlock":[D
    mul-int/lit8 v15, v12, 0x34

    .line 501
    .local v15, "rStart":I
    const/16 v16, 0x0

    .line 502
    .local v16, "k":I
    move/from16 v17, v6

    move/from16 v28, v17

    move-object/from16 v17, v0

    move/from16 v0, v28

    .local v0, "p":I
    .local v17, "cce":Ljava/lang/ClassCastException;
    :goto_3
    if-ge v0, v7, :cond_2

    .line 503
    sub-int v18, v0, v6

    mul-int v18, v18, v13

    .line 504
    .local v18, "lStart":I
    move/from16 v19, v0

    .end local v0    # "p":I
    .local v19, "p":I
    add-int v0, v18, v13

    .line 505
    .local v0, "lEnd":I
    move/from16 v20, v9

    move/from16 v1, v20

    .local v1, "q":I
    :goto_4
    if-ge v1, v10, :cond_1

    .line 506
    const-wide/16 v20, 0x0

    .line 507
    .local v20, "sum":D
    move/from16 v22, v15

    .line 508
    .local v22, "r":I
    move/from16 v23, v18

    move/from16 v28, v22

    move-object/from16 v22, v3

    move/from16 v3, v28

    move/from16 v28, v23

    move/from16 v23, v4

    move/from16 v4, v28

    .local v3, "r":I
    .local v4, "l":I
    .local v22, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .local v23, "blockIndex":I
    :goto_5
    if-ge v4, v0, :cond_0

    .line 509
    aget-wide v24, v14, v4

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v20, v20, v24

    .line 510
    add-int/lit8 v3, v3, 0x1

    .line 508
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 512
    .end local v4    # "l":I
    :cond_0
    aget-wide v24, v11, v16

    add-double v24, v24, v20

    aput-wide v24, v11, v16

    .line 513
    nop

    .end local v3    # "r":I
    .end local v20    # "sum":D
    add-int/lit8 v16, v16, 0x1

    .line 505
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v22

    move/from16 v4, v23

    goto :goto_4

    .end local v22    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v23    # "blockIndex":I
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .local v4, "blockIndex":I
    :cond_1
    move-object/from16 v22, v3

    move/from16 v23, v4

    .line 502
    .end local v0    # "lEnd":I
    .end local v1    # "q":I
    .end local v3    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v4    # "blockIndex":I
    .end local v18    # "lStart":I
    .restart local v22    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .restart local v23    # "blockIndex":I
    add-int/lit8 v0, v19, 0x1

    move-object/from16 v1, p0

    .end local v19    # "p":I
    .local v0, "p":I
    goto :goto_3

    .end local v22    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v23    # "blockIndex":I
    .restart local v3    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .restart local v4    # "blockIndex":I
    :cond_2
    move/from16 v19, v0

    move-object/from16 v22, v3

    move/from16 v23, v4

    .line 497
    .end local v0    # "p":I
    .end local v3    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v4    # "blockIndex":I
    .end local v13    # "kWidth":I
    .end local v14    # "tBlock":[D
    .end local v15    # "rStart":I
    .end local v16    # "k":I
    .restart local v22    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .restart local v23    # "blockIndex":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v17

    goto :goto_2

    .end local v17    # "cce":Ljava/lang/ClassCastException;
    .end local v22    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v23    # "blockIndex":I
    .local v0, "cce":Ljava/lang/ClassCastException;
    .restart local v3    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .restart local v4    # "blockIndex":I
    :cond_3
    move-object/from16 v17, v0

    move-object/from16 v22, v3

    move/from16 v23, v4

    .line 518
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v4    # "blockIndex":I
    .end local v12    # "kBlock":I
    .restart local v17    # "cce":Ljava/lang/ClassCastException;
    .restart local v22    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .restart local v23    # "blockIndex":I
    nop

    .end local v9    # "qStart":I
    .end local v10    # "qEnd":I
    .end local v11    # "outBlock":[D
    add-int/lit8 v4, v23, 0x1

    .line 489
    .end local v23    # "blockIndex":I
    .restart local v4    # "blockIndex":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .end local v17    # "cce":Ljava/lang/ClassCastException;
    .end local v22    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    .restart local v3    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    :cond_4
    move-object/from16 v17, v0

    move-object/from16 v22, v3

    move/from16 v23, v4

    .line 485
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v4    # "blockIndex":I
    .end local v6    # "pStart":I
    .end local v7    # "pEnd":I
    .end local v8    # "jBlock":I
    .restart local v17    # "cce":Ljava/lang/ClassCastException;
    .restart local v22    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .restart local v23    # "blockIndex":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .end local v17    # "cce":Ljava/lang/ClassCastException;
    .end local v22    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v23    # "blockIndex":I
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    .restart local v3    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .restart local v4    # "blockIndex":I
    :cond_5
    move-object/from16 v22, v3

    .line 522
    .end local v3    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .end local v5    # "iBlock":I
    .restart local v22    # "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    return-object v22
.end method

.method public bridge synthetic multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public multiplyEntry(IID)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "factor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1203
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1204
    div-int/lit8 v0, p1, 0x34

    .line 1205
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x34

    .line 1206
    .local v1, "jBlock":I
    mul-int/lit8 v2, v0, 0x34

    sub-int v2, p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x34

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    .line 1208
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aget-wide v4, v3, v2

    mul-double/2addr v4, p3

    aput-wide v4, v3, v2

    .line 1209
    return-void
.end method

.method public operate([D)[D
    .locals 21
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1263
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    if-ne v2, v3, :cond_5

    .line 1266
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v2, v2, [D

    .line 1269
    .local v2, "out":[D
    const/4 v3, 0x0

    .local v3, "iBlock":I
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v3, v4, :cond_4

    .line 1270
    mul-int/lit8 v4, v3, 0x34

    .line 1271
    .local v4, "pStart":I
    add-int/lit8 v5, v4, 0x34

    iget v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1272
    .local v5, "pEnd":I
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v6, v7, :cond_3

    .line 1273
    iget-object v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v6

    aget-object v7, v7, v8

    .line 1274
    .local v7, "block":[D
    mul-int/lit8 v8, v6, 0x34

    .line 1275
    .local v8, "qStart":I
    add-int/lit8 v9, v8, 0x34

    iget v10, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    .line 1276
    .local v9, "qEnd":I
    const/4 v10, 0x0

    .line 1277
    .local v10, "k":I
    move v11, v4

    .local v11, "p":I
    :goto_2
    if-ge v11, v5, :cond_2

    .line 1278
    const-wide/16 v12, 0x0

    .line 1279
    .local v12, "sum":D
    move v14, v8

    .line 1280
    .local v14, "q":I
    :goto_3
    add-int/lit8 v15, v9, -0x3

    if-ge v14, v15, :cond_0

    .line 1281
    aget-wide v15, v7, v10

    aget-wide v17, v1, v14

    mul-double v15, v15, v17

    add-int/lit8 v17, v10, 0x1

    aget-wide v17, v7, v17

    add-int/lit8 v19, v14, 0x1

    aget-wide v19, v1, v19

    mul-double v17, v17, v19

    add-double v15, v15, v17

    add-int/lit8 v17, v10, 0x2

    aget-wide v17, v7, v17

    add-int/lit8 v19, v14, 0x2

    aget-wide v19, v1, v19

    mul-double v17, v17, v19

    add-double v15, v15, v17

    add-int/lit8 v17, v10, 0x3

    aget-wide v17, v7, v17

    add-int/lit8 v19, v14, 0x3

    aget-wide v19, v1, v19

    mul-double v17, v17, v19

    add-double v15, v15, v17

    add-double/2addr v12, v15

    .line 1285
    add-int/lit8 v10, v10, 0x4

    .line 1286
    add-int/lit8 v14, v14, 0x4

    goto :goto_3

    .line 1288
    :cond_0
    :goto_4
    if-ge v14, v9, :cond_1

    .line 1289
    add-int/lit8 v15, v10, 0x1

    .end local v10    # "k":I
    .local v15, "k":I
    aget-wide v16, v7, v10

    add-int/lit8 v10, v14, 0x1

    .end local v14    # "q":I
    .local v10, "q":I
    aget-wide v18, v1, v14

    mul-double v16, v16, v18

    add-double v12, v12, v16

    move v14, v10

    move v10, v15

    goto :goto_4

    .line 1291
    .end local v15    # "k":I
    .local v10, "k":I
    .restart local v14    # "q":I
    :cond_1
    aget-wide v15, v2, v11

    add-double/2addr v15, v12

    aput-wide v15, v2, v11

    .line 1277
    .end local v12    # "sum":D
    .end local v14    # "q":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1272
    .end local v7    # "block":[D
    .end local v8    # "qStart":I
    .end local v9    # "qEnd":I
    .end local v10    # "k":I
    .end local v11    # "p":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1269
    .end local v4    # "pStart":I
    .end local v5    # "pEnd":I
    .end local v6    # "jBlock":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1296
    .end local v3    # "iBlock":I
    :cond_4
    return-object v2

    .line 1264
    .end local v2    # "out":[D
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v1

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public preMultiply([D)[D
    .locals 27
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1303
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    if-ne v2, v3, :cond_5

    .line 1306
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v2, v2, [D

    .line 1309
    .local v2, "out":[D
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v4, :cond_4

    .line 1310
    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    .line 1311
    .local v4, "jWidth":I
    add-int v5, v4, v4

    .line 1312
    .local v5, "jWidth2":I
    add-int v6, v5, v4

    .line 1313
    .local v6, "jWidth3":I
    add-int v7, v6, v4

    .line 1314
    .local v7, "jWidth4":I
    mul-int/lit8 v8, v3, 0x34

    .line 1315
    .local v8, "qStart":I
    add-int/lit8 v9, v8, 0x34

    iget v10, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    .line 1316
    .local v9, "qEnd":I
    const/4 v10, 0x0

    .local v10, "iBlock":I
    :goto_1
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v10, v11, :cond_3

    .line 1317
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v3

    aget-object v11, v11, v12

    .line 1318
    .local v11, "block":[D
    mul-int/lit8 v12, v10, 0x34

    .line 1319
    .local v12, "pStart":I
    add-int/lit8 v13, v12, 0x34

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1320
    .local v13, "pEnd":I
    move v14, v8

    .local v14, "q":I
    :goto_2
    if-ge v14, v9, :cond_2

    .line 1321
    sub-int v15, v14, v8

    .line 1322
    .local v15, "k":I
    const-wide/16 v16, 0x0

    .line 1323
    .local v16, "sum":D
    move/from16 v18, v12

    move/from16 v26, v18

    move-object/from16 v18, v2

    move/from16 v2, v26

    .line 1324
    .local v2, "p":I
    .local v18, "out":[D
    :goto_3
    move/from16 v19, v3

    .end local v3    # "jBlock":I
    .local v19, "jBlock":I
    add-int/lit8 v3, v13, -0x3

    if-ge v2, v3, :cond_0

    .line 1325
    aget-wide v20, v11, v15

    aget-wide v22, v1, v2

    mul-double v20, v20, v22

    add-int v3, v15, v4

    aget-wide v22, v11, v3

    add-int/lit8 v3, v2, 0x1

    aget-wide v24, v1, v3

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-int v3, v15, v5

    aget-wide v22, v11, v3

    add-int/lit8 v3, v2, 0x2

    aget-wide v24, v1, v3

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-int v3, v15, v6

    aget-wide v22, v11, v3

    add-int/lit8 v3, v2, 0x3

    aget-wide v24, v1, v3

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-double v16, v16, v20

    .line 1329
    add-int/2addr v15, v7

    .line 1330
    add-int/lit8 v2, v2, 0x4

    move/from16 v3, v19

    goto :goto_3

    .line 1332
    :cond_0
    :goto_4
    if-ge v2, v13, :cond_1

    .line 1333
    aget-wide v20, v11, v15

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "p":I
    .local v3, "p":I
    aget-wide v22, v1, v2

    mul-double v20, v20, v22

    add-double v16, v16, v20

    .line 1334
    add-int/2addr v15, v4

    move v2, v3

    goto :goto_4

    .line 1336
    .end local v3    # "p":I
    .restart local v2    # "p":I
    :cond_1
    aget-wide v20, v18, v14

    add-double v20, v20, v16

    aput-wide v20, v18, v14

    .line 1320
    .end local v2    # "p":I
    .end local v15    # "k":I
    .end local v16    # "sum":D
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto :goto_2

    .end local v18    # "out":[D
    .end local v19    # "jBlock":I
    .local v2, "out":[D
    .local v3, "jBlock":I
    :cond_2
    move-object/from16 v18, v2

    move/from16 v19, v3

    .line 1316
    .end local v2    # "out":[D
    .end local v3    # "jBlock":I
    .end local v11    # "block":[D
    .end local v12    # "pStart":I
    .end local v13    # "pEnd":I
    .end local v14    # "q":I
    .restart local v18    # "out":[D
    .restart local v19    # "jBlock":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v18    # "out":[D
    .end local v19    # "jBlock":I
    .restart local v2    # "out":[D
    .restart local v3    # "jBlock":I
    :cond_3
    move-object/from16 v18, v2

    move/from16 v19, v3

    .line 1309
    .end local v2    # "out":[D
    .end local v3    # "jBlock":I
    .end local v4    # "jWidth":I
    .end local v5    # "jWidth2":I
    .end local v6    # "jWidth3":I
    .end local v7    # "jWidth4":I
    .end local v8    # "qStart":I
    .end local v9    # "qEnd":I
    .end local v10    # "iBlock":I
    .restart local v18    # "out":[D
    .restart local v19    # "jBlock":I
    add-int/lit8 v3, v19, 0x1

    .end local v19    # "jBlock":I
    .restart local v3    # "jBlock":I
    goto/16 :goto_0

    .end local v18    # "out":[D
    .restart local v2    # "out":[D
    :cond_4
    move-object/from16 v18, v2

    .line 1341
    .end local v2    # "out":[D
    .end local v3    # "jBlock":I
    .restart local v18    # "out":[D
    return-object v18

    .line 1304
    .end local v18    # "out":[D
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v1

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public scalarAdd(D)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 7
    .param p1, "d"    # D

    .line 440
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 443
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v1, 0x0

    .local v1, "blockIndex":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 444
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v2, v2, v1

    .line 445
    .local v2, "outBlock":[D
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v3, v1

    .line 446
    .local v3, "tBlock":[D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 447
    aget-wide v5, v3, v4

    add-double/2addr v5, p1

    aput-wide v5, v2, v4

    .line 446
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 443
    .end local v2    # "outBlock":[D
    .end local v3    # "tBlock":[D
    .end local v4    # "k":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "blockIndex":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p1, "d"    # D

    .line 457
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 460
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v1, 0x0

    .local v1, "blockIndex":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 461
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v2, v2, v1

    .line 462
    .local v2, "outBlock":[D
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v3, v1

    .line 463
    .local v3, "tBlock":[D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 464
    aget-wide v5, v3, v4

    mul-double/2addr v5, p1

    aput-wide v5, v2, v4

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 460
    .end local v2    # "outBlock":[D
    .end local v3    # "tBlock":[D
    .end local v4    # "k":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "blockIndex":I
    :cond_1
    return-object v0
.end method

.method public setColumn(I[D)V
    .locals 13
    .param p1, "column"    # I
    .param p2, "array"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1141
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1142
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v0

    .line 1143
    .local v0, "nRows":I
    array-length v1, p2

    if-ne v1, v0, :cond_2

    .line 1148
    div-int/lit8 v1, p1, 0x34

    .line 1149
    .local v1, "jBlock":I
    mul-int/lit8 v2, v1, 0x34

    sub-int v2, p1, v2

    .line 1150
    .local v2, "jColumn":I
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v3

    .line 1151
    .local v3, "jWidth":I
    const/4 v4, 0x0

    .line 1152
    .local v4, "outIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v6, :cond_1

    .line 1153
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v6

    .line 1154
    .local v6, "iHeight":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    .line 1155
    .local v7, "block":[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 1156
    mul-int v9, v8, v3

    add-int/2addr v9, v2

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "outIndex":I
    .local v10, "outIndex":I
    aget-wide v11, p2, v4

    aput-wide v11, v7, v9

    .line 1155
    add-int/lit8 v8, v8, 0x1

    move v4, v10

    goto :goto_1

    .line 1152
    .end local v6    # "iHeight":I
    .end local v7    # "block":[D
    .end local v8    # "i":I
    .end local v10    # "outIndex":I
    .restart local v4    # "outIndex":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1159
    .end local v5    # "iBlock":I
    :cond_1
    return-void

    .line 1144
    .end local v1    # "jBlock":I
    .end local v2    # "jColumn":I
    .end local v3    # "jWidth":I
    .end local v4    # "outIndex":I
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v2, p2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0, v3}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method setColumnMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    .locals 17
    .param p1, "column"    # I
    .param p2, "matrix"    # Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 978
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 979
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v2

    .line 980
    .local v2, "nRows":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v2, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 988
    div-int/lit8 v3, p1, 0x34

    .line 989
    .local v3, "jBlock":I
    mul-int/lit8 v4, v3, 0x34

    sub-int v4, p1, v4

    .line 990
    .local v4, "jColumn":I
    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    .line 991
    .local v5, "jWidth":I
    const/4 v6, 0x0

    .line 992
    .local v6, "mBlockIndex":I
    const/4 v7, 0x0

    .line 993
    .local v7, "mIndex":I
    iget-object v8, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v6

    .line 994
    .local v8, "mBlock":[D
    const/4 v9, 0x0

    .local v9, "iBlock":I
    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v9, v10, :cond_2

    .line 995
    invoke-direct {v0, v9}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v10

    .line 996
    .local v10, "iHeight":I
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v12, v9

    add-int/2addr v12, v3

    aget-object v11, v11, v12

    .line 997
    .local v11, "block":[D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_1

    .line 998
    array-length v13, v8

    if-lt v7, v13, :cond_0

    .line 999
    iget-object v13, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v6, v6, 0x1

    aget-object v8, v13, v6

    .line 1000
    const/4 v7, 0x0

    .line 1002
    :cond_0
    mul-int v13, v12, v5

    add-int/2addr v13, v4

    add-int/lit8 v14, v7, 0x1

    .end local v7    # "mIndex":I
    .local v14, "mIndex":I
    aget-wide v15, v8, v7

    aput-wide v15, v11, v13

    .line 997
    add-int/lit8 v12, v12, 0x1

    move v7, v14

    goto :goto_1

    .line 994
    .end local v10    # "iHeight":I
    .end local v11    # "block":[D
    .end local v12    # "i":I
    .end local v14    # "mIndex":I
    .restart local v7    # "mIndex":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1005
    .end local v9    # "iBlock":I
    :cond_2
    return-void

    .line 982
    .end local v3    # "jBlock":I
    .end local v4    # "jColumn":I
    .end local v5    # "jWidth":I
    .end local v6    # "mBlockIndex":I
    .end local v7    # "mIndex":I
    .end local v8    # "mBlock":[D
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v6

    invoke-direct {v3, v5, v6, v2, v4}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v3
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "column"    # I
    .param p2, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 959
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V

    .line 963
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 1
    .param p1, "column"    # I
    .param p2, "vector"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1067
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setColumn(I[D)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    goto :goto_0

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V

    .line 1071
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public setEntry(IID)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1177
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1178
    div-int/lit8 v0, p1, 0x34

    .line 1179
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x34

    .line 1180
    .local v1, "jBlock":I
    mul-int/lit8 v2, v0, 0x34

    sub-int v2, p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x34

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    .line 1182
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aput-wide p3, v3, v2

    .line 1183
    return-void
.end method

.method public setRow(I[D)V
    .locals 8
    .param p1, "row"    # I
    .param p2, "array"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1097
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1098
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v0

    .line 1099
    .local v0, "nCols":I
    array-length v1, p2

    if-ne v1, v0, :cond_1

    .line 1104
    div-int/lit8 v1, p1, 0x34

    .line 1105
    .local v1, "iBlock":I
    mul-int/lit8 v2, v1, 0x34

    sub-int v2, p1, v2

    .line 1106
    .local v2, "iRow":I
    const/4 v3, 0x0

    .line 1107
    .local v3, "outIndex":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v5, :cond_0

    .line 1108
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    .line 1109
    .local v5, "jWidth":I
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v4

    aget-object v6, v6, v7

    .line 1110
    .local v6, "block":[D
    mul-int v7, v2, v5

    invoke-static {p2, v3, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1111
    add-int/2addr v3, v5

    .line 1107
    .end local v5    # "jWidth":I
    .end local v6    # "block":[D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1113
    .end local v4    # "jBlock":I
    :cond_0
    return-void

    .line 1100
    .end local v1    # "iBlock":I
    .end local v2    # "iRow":I
    .end local v3    # "outIndex":I
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v2, p2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v3, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    .locals 13
    .param p1, "row"    # I
    .param p2, "matrix"    # Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 894
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 895
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v0

    .line 896
    .local v0, "nCols":I
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 904
    div-int/lit8 v1, p1, 0x34

    .line 905
    .local v1, "iBlock":I
    mul-int/lit8 v2, v1, 0x34

    sub-int v2, p1, v2

    .line 906
    .local v2, "iRow":I
    const/4 v3, 0x0

    .line 907
    .local v3, "mBlockIndex":I
    const/4 v4, 0x0

    .line 908
    .local v4, "mIndex":I
    iget-object v5, p2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v5, v5, v3

    .line 909
    .local v5, "mBlock":[D
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v6, v7, :cond_1

    .line 910
    invoke-direct {p0, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v7

    .line 911
    .local v7, "jWidth":I
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v6

    aget-object v8, v8, v9

    .line 912
    .local v8, "block":[D
    array-length v9, v5

    sub-int/2addr v9, v4

    .line 913
    .local v9, "available":I
    if-le v7, v9, :cond_0

    .line 914
    mul-int v10, v2, v7

    invoke-static {v5, v4, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    iget-object v10, p2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v3, v3, 0x1

    aget-object v5, v10, v3

    .line 916
    mul-int v10, v2, v7

    sub-int v11, v7, v9

    const/4 v12, 0x0

    invoke-static {v5, v12, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    sub-int v4, v7, v9

    goto :goto_1

    .line 919
    :cond_0
    mul-int v10, v2, v7

    invoke-static {v5, v4, v8, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    add-int/2addr v4, v7

    .line 909
    .end local v7    # "jWidth":I
    .end local v8    # "block":[D
    .end local v9    # "available":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 923
    .end local v6    # "jBlock":I
    :cond_1
    return-void

    .line 898
    .end local v1    # "iBlock":I
    .end local v2    # "iRow":I
    .end local v3    # "mBlockIndex":I
    .end local v4    # "mIndex":I
    .end local v5    # "mBlock":[D
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v1, v3, v4, v2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 875
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    goto :goto_0

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V

    .line 879
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "vector"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1033
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setRow(I[D)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    goto :goto_0

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    .line 1037
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public setSubMatrix([[DII)V
    .locals 25
    .param p1, "subMatrix"    # [[D
    .param p2, "row"    # I
    .param p3, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 793
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 794
    const/4 v4, 0x0

    aget-object v4, v1, v4

    array-length v4, v4

    .line 795
    .local v4, "refLength":I
    if-eqz v4, :cond_5

    .line 798
    array-length v5, v1

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    .line 799
    .local v5, "endRow":I
    add-int v6, v3, v4

    add-int/lit8 v6, v6, -0x1

    .line 800
    .local v6, "endColumn":I
    invoke-static {v0, v2, v5, v3, v6}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 801
    move-object/from16 v7, p1

    .local v7, "arr$":[[D
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 802
    .local v10, "subRow":[D
    array-length v11, v10

    if-ne v11, v4, :cond_0

    .line 801
    .end local v10    # "subRow":[D
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 803
    .restart local v10    # "subRow":[D
    :cond_0
    new-instance v11, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v12, v10

    invoke-direct {v11, v4, v12}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v11

    .line 808
    .end local v7    # "arr$":[[D
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    .end local v10    # "subRow":[D
    :cond_1
    div-int/lit8 v7, v2, 0x34

    .line 809
    .local v7, "blockStartRow":I
    add-int/lit8 v8, v5, 0x34

    div-int/lit8 v8, v8, 0x34

    .line 810
    .local v8, "blockEndRow":I
    div-int/lit8 v9, v3, 0x34

    .line 811
    .local v9, "blockStartColumn":I
    add-int/lit8 v10, v6, 0x34

    div-int/lit8 v10, v10, 0x34

    .line 814
    .local v10, "blockEndColumn":I
    move v11, v7

    .local v11, "iBlock":I
    :goto_1
    if-ge v11, v8, :cond_4

    .line 815
    invoke-direct {v0, v11}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v12

    .line 816
    .local v12, "iHeight":I
    mul-int/lit8 v13, v11, 0x34

    .line 817
    .local v13, "firstRow":I
    invoke-static {v2, v13}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v14

    .line 818
    .local v14, "iStart":I
    add-int/lit8 v15, v5, 0x1

    add-int v1, v13, v12

    invoke-static {v15, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    .line 820
    .local v1, "iEnd":I
    move v15, v9

    .local v15, "jBlock":I
    :goto_2
    if-ge v15, v10, :cond_3

    .line 821
    invoke-direct {v0, v15}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v16

    .line 822
    .local v16, "jWidth":I
    mul-int/lit8 v2, v15, 0x34

    .line 823
    .local v2, "firstColumn":I
    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v17

    .line 824
    .local v17, "jStart":I
    move/from16 v18, v2

    .end local v2    # "firstColumn":I
    .local v18, "firstColumn":I
    add-int/lit8 v2, v6, 0x1

    add-int v3, v18, v16

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 825
    .local v2, "jEnd":I
    sub-int v3, v2, v17

    .line 828
    .local v3, "jLength":I
    move/from16 v19, v2

    .end local v2    # "jEnd":I
    .local v19, "jEnd":I
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v20, v2

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v2, v11

    add-int/2addr v2, v15

    aget-object v2, v20, v2

    .line 829
    .local v2, "block":[D
    move/from16 v20, v14

    move/from16 v0, v20

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_2

    .line 830
    sub-int v20, v0, p2

    move/from16 v21, v0

    .end local v0    # "i":I
    .local v21, "i":I
    aget-object v0, p1, v20

    move/from16 v20, v1

    .end local v1    # "iEnd":I
    .local v20, "iEnd":I
    sub-int v1, v17, p3

    sub-int v22, v21, v13

    mul-int v22, v22, v16

    sub-int v23, v17, v18

    move/from16 v24, v4

    .end local v4    # "refLength":I
    .local v24, "refLength":I
    add-int v4, v22, v23

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    add-int/lit8 v0, v21, 0x1

    move/from16 v1, v20

    move/from16 v4, v24

    .end local v21    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .end local v20    # "iEnd":I
    .end local v24    # "refLength":I
    .restart local v1    # "iEnd":I
    .restart local v4    # "refLength":I
    :cond_2
    move/from16 v21, v0

    move/from16 v20, v1

    move/from16 v24, v4

    .line 820
    .end local v0    # "i":I
    .end local v1    # "iEnd":I
    .end local v2    # "block":[D
    .end local v3    # "jLength":I
    .end local v4    # "refLength":I
    .end local v16    # "jWidth":I
    .end local v17    # "jStart":I
    .end local v18    # "firstColumn":I
    .end local v19    # "jEnd":I
    .restart local v20    # "iEnd":I
    .restart local v24    # "refLength":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_2

    .end local v20    # "iEnd":I
    .end local v24    # "refLength":I
    .restart local v1    # "iEnd":I
    .restart local v4    # "refLength":I
    :cond_3
    move/from16 v20, v1

    move/from16 v24, v4

    .line 814
    .end local v1    # "iEnd":I
    .end local v4    # "refLength":I
    .end local v12    # "iHeight":I
    .end local v13    # "firstRow":I
    .end local v14    # "iStart":I
    .end local v15    # "jBlock":I
    .restart local v24    # "refLength":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_1

    .line 837
    .end local v11    # "iBlock":I
    .end local v24    # "refLength":I
    .restart local v4    # "refLength":I
    :cond_4
    return-void

    .line 796
    .end local v5    # "endRow":I
    .end local v6    # "endColumn":I
    .end local v7    # "blockStartRow":I
    .end local v8    # "blockEndRow":I
    .end local v9    # "blockStartColumn":I
    .end local v10    # "blockEndColumn":I
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 10
    .param p1, "m"    # Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 419
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 421
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 424
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v1, 0x0

    .local v1, "blockIndex":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 425
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v2, v2, v1

    .line 426
    .local v2, "outBlock":[D
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v3, v3, v1

    .line 427
    .local v3, "tBlock":[D
    iget-object v4, p1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v1

    .line 428
    .local v4, "mBlock":[D
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 429
    aget-wide v6, v3, v5

    aget-wide v8, v4, v5

    sub-double/2addr v6, v8

    aput-wide v6, v2, v5

    .line 428
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 424
    .end local v2    # "outBlock":[D
    .end local v3    # "tBlock":[D
    .end local v4    # "mBlock":[D
    .end local v5    # "k":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "blockIndex":I
    :cond_1
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 20
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 373
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    move-object v0, v2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->subtract(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 374
    :catch_0
    move-exception v0

    .line 376
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 378
    new-instance v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v4, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v5, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 381
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v4, 0x0

    .line 382
    .local v4, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v6, :cond_3

    .line 383
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    iget v7, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 386
    iget-object v7, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v7, v4

    .line 387
    .local v7, "outBlock":[D
    iget-object v8, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v4

    .line 388
    .local v8, "tBlock":[D
    mul-int/lit8 v9, v5, 0x34

    .line 389
    .local v9, "pStart":I
    add-int/lit8 v10, v9, 0x34

    iget v11, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 390
    .local v10, "pEnd":I
    mul-int/lit8 v11, v6, 0x34

    .line 391
    .local v11, "qStart":I
    add-int/lit8 v12, v11, 0x34

    iget v13, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 392
    .local v12, "qEnd":I
    const/4 v13, 0x0

    .line 393
    .local v13, "k":I
    move v14, v9

    .local v14, "p":I
    :goto_2
    if-ge v14, v10, :cond_1

    .line 394
    move v15, v11

    .local v15, "q":I
    :goto_3
    if-ge v15, v12, :cond_0

    .line 395
    aget-wide v16, v8, v13

    invoke-interface {v2, v14, v15}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v18

    sub-double v16, v16, v18

    aput-wide v16, v7, v13

    .line 396
    add-int/lit8 v13, v13, 0x1

    .line 394
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 393
    .end local v15    # "q":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 400
    .end local v14    # "p":I
    :cond_1
    nop

    .end local v7    # "outBlock":[D
    .end local v8    # "tBlock":[D
    .end local v9    # "pStart":I
    .end local v10    # "pEnd":I
    .end local v11    # "qStart":I
    .end local v12    # "qEnd":I
    .end local v13    # "k":I
    add-int/lit8 v4, v4, 0x1

    .line 383
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 382
    .end local v6    # "jBlock":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 404
    .end local v5    # "iBlock":I
    :cond_3
    return-object v3
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public transpose()Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 19

    .line 1214
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    .line 1215
    .local v1, "nRows":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v2

    .line 1216
    .local v2, "nCols":I
    new-instance v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v3, v2, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 1219
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockRealMatrix;
    const/4 v4, 0x0

    .line 1220
    .local v4, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v6, :cond_3

    .line 1221
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v6, v7, :cond_2

    .line 1223
    iget-object v7, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v7, v4

    .line 1224
    .local v7, "outBlock":[D
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v9, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v9, v6

    add-int/2addr v9, v5

    aget-object v8, v8, v9

    .line 1225
    .local v8, "tBlock":[D
    mul-int/lit8 v9, v5, 0x34

    .line 1226
    .local v9, "pStart":I
    add-int/lit8 v10, v9, 0x34

    iget v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 1227
    .local v10, "pEnd":I
    mul-int/lit8 v11, v6, 0x34

    .line 1228
    .local v11, "qStart":I
    add-int/lit8 v12, v11, 0x34

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 1229
    .local v12, "qEnd":I
    const/4 v13, 0x0

    .line 1230
    .local v13, "k":I
    move v14, v9

    .local v14, "p":I
    :goto_2
    if-ge v14, v10, :cond_1

    .line 1231
    sub-int v15, v10, v9

    .line 1232
    .local v15, "lInc":I
    sub-int v16, v14, v9

    .line 1233
    .local v16, "l":I
    move/from16 v17, v11

    move/from16 v0, v17

    .local v0, "q":I
    :goto_3
    if-ge v0, v12, :cond_0

    .line 1234
    aget-wide v17, v8, v16

    aput-wide v17, v7, v13

    .line 1235
    add-int/lit8 v13, v13, 0x1

    .line 1236
    add-int v16, v16, v15

    .line 1233
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1230
    .end local v0    # "q":I
    .end local v15    # "lInc":I
    .end local v16    # "l":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 1240
    .end local v14    # "p":I
    :cond_1
    nop

    .end local v7    # "outBlock":[D
    .end local v8    # "tBlock":[D
    .end local v9    # "pStart":I
    .end local v10    # "pEnd":I
    .end local v11    # "qStart":I
    .end local v12    # "qEnd":I
    .end local v13    # "k":I
    add-int/lit8 v4, v4, 0x1

    .line 1221
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 1220
    .end local v6    # "jBlock":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 1244
    .end local v5    # "iBlock":I
    :cond_3
    return-object v3
.end method

.method public bridge synthetic transpose()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->transpose()Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 13
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .line 1455
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v6, v0, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1456
    const/4 p1, 0x0

    .line 1457
    .local p1, "blockIndex":I
    const/4 v1, 0x0

    .local v1, "iBlock":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    .line 1458
    mul-int/lit8 v2, v1, 0x34

    .line 1459
    .local v2, "pStart":I
    add-int/lit8 v3, v2, 0x34

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 1460
    .local v3, "pEnd":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v5, :cond_2

    .line 1461
    mul-int/lit8 v5, v4, 0x34

    .line 1462
    .local v5, "qStart":I
    add-int/lit8 v6, v5, 0x34

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    .line 1463
    .local v6, "qEnd":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v7, p1

    .line 1464
    .local v7, "block":[D
    const/4 v8, 0x0

    .line 1465
    .local v8, "k":I
    move v9, v2

    .local v9, "p":I
    :goto_2
    if-ge v9, v3, :cond_1

    .line 1466
    move v10, v5

    .local v10, "q":I
    :goto_3
    if-ge v10, v6, :cond_0

    .line 1467
    aget-wide v11, v7, v8

    invoke-interface {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v11

    aput-wide v11, v7, v8

    .line 1468
    add-int/lit8 v8, v8, 0x1

    .line 1466
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1465
    .end local v10    # "q":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1471
    .end local v9    # "p":I
    :cond_1
    nop

    .end local v5    # "qStart":I
    .end local v6    # "qEnd":I
    .end local v7    # "block":[D
    .end local v8    # "k":I
    add-int/lit8 p1, p1, 0x1

    .line 1460
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1457
    .end local v2    # "pStart":I
    .end local v3    # "pEnd":I
    .end local v4    # "jBlock":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1474
    .end local v1    # "iBlock":I
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v1

    return-wide v1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 18
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

    .line 1509
    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1510
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1511
    div-int/lit8 v1, v4, 0x34

    .local v1, "iBlock":I
    :goto_0
    div-int/lit8 v2, p3, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1512
    mul-int/lit8 v2, v1, 0x34

    .line 1513
    .local v2, "p0":I
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 1514
    .local v3, "pStart":I
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x34

    add-int/lit8 v7, p3, 0x1

    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1515
    .local v5, "pEnd":I
    div-int/lit8 v7, v6, 0x34

    .local v7, "jBlock":I
    :goto_1
    div-int/lit8 v8, p5, 0x34

    add-int/lit8 v8, v8, 0x1

    if-ge v7, v8, :cond_2

    .line 1516
    invoke-direct {v0, v7}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v8

    .line 1517
    .local v8, "jWidth":I
    mul-int/lit8 v9, v7, 0x34

    .line 1518
    .local v9, "q0":I
    invoke-static {v6, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v10

    .line 1519
    .local v10, "qStart":I
    add-int/lit8 v11, v7, 0x1

    mul-int/lit8 v11, v11, 0x34

    add-int/lit8 v12, p5, 0x1

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 1520
    .local v11, "qEnd":I
    iget-object v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v13, v1

    add-int/2addr v13, v7

    aget-object v12, v12, v13

    .line 1521
    .local v12, "block":[D
    move v13, v3

    .local v13, "p":I
    :goto_2
    if-ge v13, v5, :cond_1

    .line 1522
    sub-int v14, v13, v2

    mul-int/2addr v14, v8

    add-int/2addr v14, v10

    sub-int/2addr v14, v9

    .line 1523
    .local v14, "k":I
    move v15, v10

    .local v15, "q":I
    :goto_3
    if-ge v15, v11, :cond_0

    .line 1524
    move/from16 v16, v1

    .end local v1    # "iBlock":I
    .local v16, "iBlock":I
    aget-wide v0, v12, v14

    move/from16 v17, v2

    move-object/from16 v2, p1

    .end local v2    # "p0":I
    .local v17, "p0":I
    invoke-interface {v2, v13, v15, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v0

    aput-wide v0, v12, v14

    .line 1525
    add-int/lit8 v14, v14, 0x1

    .line 1523
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_3

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_0
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1521
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v14    # "k":I
    .end local v15    # "q":I
    .restart local v16    # "iBlock":I
    .restart local v17    # "p0":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_2

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_1
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1515
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v8    # "jWidth":I
    .end local v9    # "q0":I
    .end local v10    # "qStart":I
    .end local v11    # "qEnd":I
    .end local v12    # "block":[D
    .end local v13    # "p":I
    .restart local v16    # "iBlock":I
    .restart local v17    # "p0":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_1

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1511
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v3    # "pStart":I
    .end local v5    # "pEnd":I
    .end local v7    # "jBlock":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p0

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    goto/16 :goto_0

    :cond_3
    move-object/from16 v2, p1

    .line 1530
    .end local v1    # "iBlock":I
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 13
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .line 1480
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v6, v0, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1481
    const/4 p1, 0x0

    .line 1482
    .local p1, "blockIndex":I
    const/4 v1, 0x0

    .local v1, "iBlock":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    .line 1483
    mul-int/lit8 v2, v1, 0x34

    .line 1484
    .local v2, "pStart":I
    add-int/lit8 v3, v2, 0x34

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 1485
    .local v3, "pEnd":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v5, :cond_2

    .line 1486
    mul-int/lit8 v5, v4, 0x34

    .line 1487
    .local v5, "qStart":I
    add-int/lit8 v6, v5, 0x34

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    .line 1488
    .local v6, "qEnd":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v7, p1

    .line 1489
    .local v7, "block":[D
    const/4 v8, 0x0

    .line 1490
    .local v8, "k":I
    move v9, v2

    .local v9, "p":I
    :goto_2
    if-ge v9, v3, :cond_1

    .line 1491
    move v10, v5

    .local v10, "q":I
    :goto_3
    if-ge v10, v6, :cond_0

    .line 1492
    aget-wide v11, v7, v8

    invoke-interface {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 1493
    add-int/lit8 v8, v8, 0x1

    .line 1491
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1490
    .end local v10    # "q":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1496
    .end local v9    # "p":I
    :cond_1
    nop

    .end local v5    # "qStart":I
    .end local v6    # "qEnd":I
    .end local v7    # "block":[D
    .end local v8    # "k":I
    add-int/lit8 p1, p1, 0x1

    .line 1485
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1482
    .end local v2    # "pStart":I
    .end local v3    # "pEnd":I
    .end local v4    # "jBlock":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1499
    .end local v1    # "iBlock":I
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v1

    return-wide v1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 18
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

    .line 1540
    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1541
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1542
    div-int/lit8 v1, v4, 0x34

    .local v1, "iBlock":I
    :goto_0
    div-int/lit8 v2, p3, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1543
    mul-int/lit8 v2, v1, 0x34

    .line 1544
    .local v2, "p0":I
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 1545
    .local v3, "pStart":I
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x34

    add-int/lit8 v7, p3, 0x1

    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1546
    .local v5, "pEnd":I
    div-int/lit8 v7, v6, 0x34

    .local v7, "jBlock":I
    :goto_1
    div-int/lit8 v8, p5, 0x34

    add-int/lit8 v8, v8, 0x1

    if-ge v7, v8, :cond_2

    .line 1547
    invoke-direct {v0, v7}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v8

    .line 1548
    .local v8, "jWidth":I
    mul-int/lit8 v9, v7, 0x34

    .line 1549
    .local v9, "q0":I
    invoke-static {v6, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v10

    .line 1550
    .local v10, "qStart":I
    add-int/lit8 v11, v7, 0x1

    mul-int/lit8 v11, v11, 0x34

    add-int/lit8 v12, p5, 0x1

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 1551
    .local v11, "qEnd":I
    iget-object v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v13, v1

    add-int/2addr v13, v7

    aget-object v12, v12, v13

    .line 1552
    .local v12, "block":[D
    move v13, v3

    .local v13, "p":I
    :goto_2
    if-ge v13, v5, :cond_1

    .line 1553
    sub-int v14, v13, v2

    mul-int/2addr v14, v8

    add-int/2addr v14, v10

    sub-int/2addr v14, v9

    .line 1554
    .local v14, "k":I
    move v15, v10

    .local v15, "q":I
    :goto_3
    if-ge v15, v11, :cond_0

    .line 1555
    move/from16 v16, v1

    .end local v1    # "iBlock":I
    .local v16, "iBlock":I
    aget-wide v0, v12, v14

    move/from16 v17, v2

    move-object/from16 v2, p1

    .end local v2    # "p0":I
    .local v17, "p0":I
    invoke-interface {v2, v13, v15, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 1556
    add-int/lit8 v14, v14, 0x1

    .line 1554
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_3

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_0
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1552
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v14    # "k":I
    .end local v15    # "q":I
    .restart local v16    # "iBlock":I
    .restart local v17    # "p0":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_2

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_1
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1546
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v8    # "jWidth":I
    .end local v9    # "q0":I
    .end local v10    # "qStart":I
    .end local v11    # "qEnd":I
    .end local v12    # "block":[D
    .end local v13    # "p":I
    .restart local v16    # "iBlock":I
    .restart local v17    # "p0":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_1

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1542
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v3    # "pStart":I
    .end local v5    # "pEnd":I
    .end local v7    # "jBlock":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p0

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    goto :goto_0

    :cond_3
    move-object/from16 v2, p1

    .line 1561
    .end local v1    # "iBlock":I
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 13
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;

    .line 1347
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v6, v0, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1348
    const/4 p1, 0x0

    .local p1, "iBlock":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge p1, v1, :cond_3

    .line 1349
    mul-int/lit8 v1, p1, 0x34

    .line 1350
    .local v1, "pStart":I
    add-int/lit8 v2, v1, 0x34

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 1351
    .local v2, "pEnd":I
    move v3, v1

    .local v3, "p":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1352
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_2
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v5, :cond_1

    .line 1353
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    .line 1354
    .local v5, "jWidth":I
    mul-int/lit8 v6, v4, 0x34

    .line 1355
    .local v6, "qStart":I
    add-int/lit8 v7, v6, 0x34

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1356
    .local v7, "qEnd":I
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v9, p1

    add-int/2addr v9, v4

    aget-object v8, v8, v9

    .line 1357
    .local v8, "block":[D
    sub-int v9, v3, v1

    mul-int/2addr v9, v5

    .line 1358
    .local v9, "k":I
    move v10, v6

    .local v10, "q":I
    :goto_3
    if-ge v10, v7, :cond_0

    .line 1359
    aget-wide v11, v8, v9

    invoke-interface {v0, v3, v10, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v11

    aput-wide v11, v8, v9

    .line 1360
    add-int/lit8 v9, v9, 0x1

    .line 1358
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1352
    .end local v5    # "jWidth":I
    .end local v6    # "qStart":I
    .end local v7    # "qEnd":I
    .end local v8    # "block":[D
    .end local v9    # "k":I
    .end local v10    # "q":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1351
    .end local v4    # "jBlock":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1348
    .end local v1    # "pStart":I
    .end local v2    # "pEnd":I
    .end local v3    # "p":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1365
    .end local p1    # "iBlock":I
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v1

    return-wide v1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 18
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

    .line 1398
    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1399
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1400
    div-int/lit8 v1, v4, 0x34

    .local v1, "iBlock":I
    :goto_0
    div-int/lit8 v2, p3, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1401
    mul-int/lit8 v2, v1, 0x34

    .line 1402
    .local v2, "p0":I
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 1403
    .local v3, "pStart":I
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x34

    add-int/lit8 v7, p3, 0x1

    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1404
    .local v5, "pEnd":I
    move v7, v3

    .local v7, "p":I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 1405
    div-int/lit8 v8, v6, 0x34

    .local v8, "jBlock":I
    :goto_2
    div-int/lit8 v9, p5, 0x34

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_1

    .line 1406
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v9

    .line 1407
    .local v9, "jWidth":I
    mul-int/lit8 v10, v8, 0x34

    .line 1408
    .local v10, "q0":I
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    .line 1409
    .local v11, "qStart":I
    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v12, v12, 0x34

    add-int/lit8 v13, p5, 0x1

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 1410
    .local v12, "qEnd":I
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v14, v1

    add-int/2addr v14, v8

    aget-object v13, v13, v14

    .line 1411
    .local v13, "block":[D
    sub-int v14, v7, v2

    mul-int/2addr v14, v9

    add-int/2addr v14, v11

    sub-int/2addr v14, v10

    .line 1412
    .local v14, "k":I
    move v15, v11

    .local v15, "q":I
    :goto_3
    if-ge v15, v12, :cond_0

    .line 1413
    move/from16 v16, v1

    .end local v1    # "iBlock":I
    .local v16, "iBlock":I
    aget-wide v0, v13, v14

    move/from16 v17, v2

    move-object/from16 v2, p1

    .end local v2    # "p0":I
    .local v17, "p0":I
    invoke-interface {v2, v7, v15, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v0

    aput-wide v0, v13, v14

    .line 1414
    add-int/lit8 v14, v14, 0x1

    .line 1412
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_3

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_0
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1405
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v9    # "jWidth":I
    .end local v10    # "q0":I
    .end local v11    # "qStart":I
    .end local v12    # "qEnd":I
    .end local v13    # "block":[D
    .end local v14    # "k":I
    .end local v15    # "q":I
    .restart local v16    # "iBlock":I
    .restart local v17    # "p0":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_2

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_1
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1404
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v8    # "jBlock":I
    .restart local v16    # "iBlock":I
    .restart local v17    # "p0":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_1

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1400
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v3    # "pStart":I
    .end local v5    # "pEnd":I
    .end local v7    # "p":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p0

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    goto/16 :goto_0

    :cond_3
    move-object/from16 v2, p1

    .line 1419
    .end local v1    # "iBlock":I
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 13
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;

    .line 1371
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v6, v0, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    .local v0, "visitor":Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1372
    const/4 p1, 0x0

    .local p1, "iBlock":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge p1, v1, :cond_3

    .line 1373
    mul-int/lit8 v1, p1, 0x34

    .line 1374
    .local v1, "pStart":I
    add-int/lit8 v2, v1, 0x34

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 1375
    .local v2, "pEnd":I
    move v3, v1

    .local v3, "p":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1376
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_2
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v5, :cond_1

    .line 1377
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    .line 1378
    .local v5, "jWidth":I
    mul-int/lit8 v6, v4, 0x34

    .line 1379
    .local v6, "qStart":I
    add-int/lit8 v7, v6, 0x34

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1380
    .local v7, "qEnd":I
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v9, p1

    add-int/2addr v9, v4

    aget-object v8, v8, v9

    .line 1381
    .local v8, "block":[D
    sub-int v9, v3, v1

    mul-int/2addr v9, v5

    .line 1382
    .local v9, "k":I
    move v10, v6

    .local v10, "q":I
    :goto_3
    if-ge v10, v7, :cond_0

    .line 1383
    aget-wide v11, v8, v9

    invoke-interface {v0, v3, v10, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 1384
    add-int/lit8 v9, v9, 0x1

    .line 1382
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1376
    .end local v5    # "jWidth":I
    .end local v6    # "qStart":I
    .end local v7    # "qEnd":I
    .end local v8    # "block":[D
    .end local v9    # "k":I
    .end local v10    # "q":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1375
    .end local v4    # "jBlock":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1372
    .end local v1    # "pStart":I
    .end local v2    # "pEnd":I
    .end local v3    # "p":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1389
    .end local p1    # "iBlock":I
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v1

    return-wide v1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 18
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

    .line 1428
    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1429
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1430
    div-int/lit8 v1, v4, 0x34

    .local v1, "iBlock":I
    :goto_0
    div-int/lit8 v2, p3, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1431
    mul-int/lit8 v2, v1, 0x34

    .line 1432
    .local v2, "p0":I
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 1433
    .local v3, "pStart":I
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x34

    add-int/lit8 v7, p3, 0x1

    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1434
    .local v5, "pEnd":I
    move v7, v3

    .local v7, "p":I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 1435
    div-int/lit8 v8, v6, 0x34

    .local v8, "jBlock":I
    :goto_2
    div-int/lit8 v9, p5, 0x34

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_1

    .line 1436
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v9

    .line 1437
    .local v9, "jWidth":I
    mul-int/lit8 v10, v8, 0x34

    .line 1438
    .local v10, "q0":I
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    .line 1439
    .local v11, "qStart":I
    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v12, v12, 0x34

    add-int/lit8 v13, p5, 0x1

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 1440
    .local v12, "qEnd":I
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v14, v1

    add-int/2addr v14, v8

    aget-object v13, v13, v14

    .line 1441
    .local v13, "block":[D
    sub-int v14, v7, v2

    mul-int/2addr v14, v9

    add-int/2addr v14, v11

    sub-int/2addr v14, v10

    .line 1442
    .local v14, "k":I
    move v15, v11

    .local v15, "q":I
    :goto_3
    if-ge v15, v12, :cond_0

    .line 1443
    move/from16 v16, v1

    .end local v1    # "iBlock":I
    .local v16, "iBlock":I
    aget-wide v0, v13, v14

    move/from16 v17, v2

    move-object/from16 v2, p1

    .end local v2    # "p0":I
    .local v17, "p0":I
    invoke-interface {v2, v7, v15, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    .line 1444
    add-int/lit8 v14, v14, 0x1

    .line 1442
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_3

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_0
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1435
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v9    # "jWidth":I
    .end local v10    # "q0":I
    .end local v11    # "qStart":I
    .end local v12    # "qEnd":I
    .end local v13    # "block":[D
    .end local v14    # "k":I
    .end local v15    # "q":I
    .restart local v16    # "iBlock":I
    .restart local v17    # "p0":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_2

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_1
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1434
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v8    # "jBlock":I
    .restart local v16    # "iBlock":I
    .restart local v17    # "p0":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_1

    .end local v16    # "iBlock":I
    .end local v17    # "p0":I
    .restart local v1    # "iBlock":I
    .restart local v2    # "p0":I
    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    .line 1430
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v3    # "pStart":I
    .end local v5    # "pEnd":I
    .end local v7    # "p":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p0

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    goto :goto_0

    :cond_3
    move-object/from16 v2, p1

    .line 1449
    .end local v1    # "iBlock":I
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method
