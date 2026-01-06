.class public Lorg/apache/commons/math3/linear/BlockFieldMatrix;
.super Lorg/apache/commons/math3/linear/AbstractFieldMatrix;
.source "BlockFieldMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x24

.field private static final serialVersionUID:J = -0x3fdec8c7e872feefL


# instance fields
.field private final blockColumns:I

.field private final blockRows:I

.field private final blocks:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final columns:I

.field private final rows:I


# direct methods
.method public constructor <init>(II[[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 7
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .param p4, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p3, "blockData":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-static {p3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 153
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    .line 154
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    .line 157
    add-int/lit8 v0, p1, 0x24

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x24

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    .line 158
    add-int/lit8 v0, p2, 0x24

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x24

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    .line 160
    if-eqz p4, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    .line 165
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    .line 168
    :goto_0
    const/4 v0, 0x0

    .line 169
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "iBlock":I
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v2, :cond_4

    .line 170
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v2

    .line 171
    .local v2, "iHeight":I
    const/4 v3, 0x0

    .local v3, "jBlock":I
    :goto_2
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v3, v4, :cond_3

    .line 172
    aget-object v4, p3, v0

    array-length v4, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    mul-int/2addr v5, v2

    if-ne v4, v5, :cond_2

    .line 176
    if-eqz p4, :cond_1

    .line 177
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, p3, v0

    invoke-virtual {v5}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/commons/math3/FieldElement;

    aput-object v5, v4, v0

    .line 171
    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 173
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v5, p3, v0

    array-length v5, v5

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    mul-int/2addr v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 169
    .end local v2    # "iHeight":I
    .end local v3    # "jBlock":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    .end local v1    # "iBlock":I
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;II)V
    .locals 1
    .param p2, "rows"    # I
    .param p3, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 103
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    .line 104
    iput p3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    .line 107
    add-int/lit8 v0, p2, 0x24

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x24

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    .line 108
    add-int/lit8 v0, p3, 0x24

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x24

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    .line 111
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->createBlocksLayout(Lorg/apache/commons/math3/Field;II)[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    .line 112
    return-void
.end method

.method public constructor <init>([[Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "rawData":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    invoke-static {p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->toBlocksLayout([[Lorg/apache/commons/math3/FieldElement;)[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(II[[Lorg/apache/commons/math3/FieldElement;Z)V

    .line 130
    return-void
.end method

.method private blockHeight(I)I
    .locals 2
    .param p1, "blockRow"    # I

    .line 1581
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    mul-int/lit8 v1, p1, 0x24

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    return v0
.end method

.method private blockWidth(I)I
    .locals 2
    .param p1, "blockColumn"    # I

    .line 1590
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    mul-int/lit8 v1, p1, 0x24

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    return v0
.end method

.method private copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V
    .locals 4
    .param p2, "srcWidth"    # I
    .param p3, "srcStartRow"    # I
    .param p4, "srcEndRow"    # I
    .param p5, "srcStartColumn"    # I
    .param p6, "srcEndColumn"    # I
    .param p8, "dstWidth"    # I
    .param p9, "dstStartRow"    # I
    .param p10, "dstStartColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;IIIII[TT;III)V"
        }
    .end annotation

    .line 771
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "srcBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local p7, "dstBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    sub-int v0, p6, p5

    .line 772
    .local v0, "length":I
    mul-int v1, p3, p2

    add-int/2addr v1, p5

    .line 773
    .local v1, "srcPos":I
    mul-int v2, p9, p8

    add-int/2addr v2, p10

    .line 774
    .local v2, "dstPos":I
    move v3, p3

    .local v3, "srcRow":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 775
    invoke-static {p1, v1, p7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    add-int/2addr v1, p2

    .line 777
    add-int/2addr v2, p8

    .line 774
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 779
    .end local v3    # "srcRow":I
    :cond_0
    return-void
.end method

.method public static createBlocksLayout(Lorg/apache/commons/math3/Field;II)[[Lorg/apache/commons/math3/FieldElement;
    .locals 13
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)[[TT;"
        }
    .end annotation

    .line 271
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    add-int/lit8 v0, p1, 0x24

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x24

    .line 272
    .local v0, "blockRows":I
    add-int/lit8 v1, p2, 0x24

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x24

    .line 274
    .local v1, "blockColumns":I
    mul-int v2, v0, v1

    const/4 v3, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    .line 275
    .local v2, "blocks":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v3, 0x0

    .line 276
    .local v3, "blockIndex":I
    const/4 v4, 0x0

    .local v4, "iBlock":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 277
    mul-int/lit8 v5, v4, 0x24

    .line 278
    .local v5, "pStart":I
    add-int/lit8 v6, v5, 0x24

    invoke-static {v6, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    .line 279
    .local v6, "pEnd":I
    sub-int v7, v6, v5

    .line 280
    .local v7, "iHeight":I
    const/4 v8, 0x0

    .local v8, "jBlock":I
    :goto_1
    if-ge v8, v1, :cond_0

    .line 281
    mul-int/lit8 v9, v8, 0x24

    .line 282
    .local v9, "qStart":I
    add-int/lit8 v10, v9, 0x24

    invoke-static {v10, p2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 283
    .local v10, "qEnd":I
    sub-int v11, v10, v9

    .line 284
    .local v11, "jWidth":I
    mul-int v12, v7, v11

    invoke-static {p0, v12}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lorg/apache/commons/math3/FieldElement;

    aput-object v12, v2, v3

    .line 285
    nop

    .end local v9    # "qStart":I
    .end local v10    # "qEnd":I
    .end local v11    # "jWidth":I
    add-int/lit8 v3, v3, 0x1

    .line 280
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 276
    .end local v5    # "pStart":I
    .end local v6    # "pEnd":I
    .end local v7    # "iHeight":I
    .end local v8    # "jBlock":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 289
    .end local v4    # "iBlock":I
    :cond_1
    return-object v2
.end method

.method public static toBlocksLayout([[Lorg/apache/commons/math3/FieldElement;)[[Lorg/apache/commons/math3/FieldElement;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([[TT;)[[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 210
    .local p0, "rawData":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    move-object/from16 v0, p0

    array-length v1, v0

    .line 211
    .local v1, "rows":I
    const/4 v2, 0x0

    aget-object v2, v0, v2

    array-length v2, v2

    .line 212
    .local v2, "columns":I
    add-int/lit8 v3, v1, 0x24

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x24

    .line 213
    .local v3, "blockRows":I
    add-int/lit8 v4, v2, 0x24

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x24

    .line 216
    .local v4, "blockColumns":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 217
    aget-object v6, v0, v5

    array-length v6, v6

    .line 218
    .local v6, "length":I
    if-ne v6, v2, :cond_0

    .line 216
    .end local v6    # "length":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 219
    .restart local v6    # "length":I
    :cond_0
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v7, v2, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 224
    .end local v5    # "i":I
    .end local v6    # "length":I
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v5

    .line 225
    .local v5, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    mul-int v6, v3, v4

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lorg/apache/commons/math3/FieldElement;

    .line 226
    .local v6, "blocks":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v7, 0x0

    .line 227
    .local v7, "blockIndex":I
    const/4 v8, 0x0

    .local v8, "iBlock":I
    :goto_1
    if-ge v8, v3, :cond_4

    .line 228
    mul-int/lit8 v9, v8, 0x24

    .line 229
    .local v9, "pStart":I
    add-int/lit8 v10, v9, 0x24

    invoke-static {v10, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 230
    .local v10, "pEnd":I
    sub-int v11, v10, v9

    .line 231
    .local v11, "iHeight":I
    const/4 v12, 0x0

    .local v12, "jBlock":I
    :goto_2
    if-ge v12, v4, :cond_3

    .line 232
    mul-int/lit8 v13, v12, 0x24

    .line 233
    .local v13, "qStart":I
    add-int/lit8 v14, v13, 0x24

    invoke-static {v14, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v14

    .line 234
    .local v14, "qEnd":I
    sub-int v15, v14, v13

    .line 237
    .local v15, "jWidth":I
    mul-int v0, v11, v15

    invoke-static {v5, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 238
    .local v0, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aput-object v0, v6, v7

    .line 241
    const/16 v16, 0x0

    .line 242
    .local v16, "index":I
    move/from16 v17, v9

    move/from16 v18, v1

    move/from16 v1, v16

    move/from16 v16, v2

    move/from16 v2, v17

    .local v1, "index":I
    .local v2, "p":I
    .local v16, "columns":I
    .local v18, "rows":I
    :goto_3
    if-ge v2, v10, :cond_2

    .line 243
    move/from16 v17, v2

    .end local v2    # "p":I
    .local v17, "p":I
    aget-object v2, p0, v17

    invoke-static {v2, v13, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    add-int/2addr v1, v15

    .line 242
    add-int/lit8 v2, v17, 0x1

    .end local v17    # "p":I
    .restart local v2    # "p":I
    goto :goto_3

    :cond_2
    move/from16 v17, v2

    .line 247
    .end local v2    # "p":I
    nop

    .end local v0    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v1    # "index":I
    .end local v13    # "qStart":I
    .end local v14    # "qEnd":I
    .end local v15    # "jWidth":I
    add-int/lit8 v7, v7, 0x1

    .line 231
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v1, v18

    goto :goto_2

    .end local v16    # "columns":I
    .end local v18    # "rows":I
    .local v1, "rows":I
    .local v2, "columns":I
    :cond_3
    move/from16 v18, v1

    move/from16 v16, v2

    .line 227
    .end local v1    # "rows":I
    .end local v2    # "columns":I
    .end local v9    # "pStart":I
    .end local v10    # "pEnd":I
    .end local v11    # "iHeight":I
    .end local v12    # "jBlock":I
    .restart local v16    # "columns":I
    .restart local v18    # "rows":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 251
    .end local v8    # "iBlock":I
    .end local v16    # "columns":I
    .end local v18    # "rows":I
    .restart local v1    # "rows":I
    .restart local v2    # "columns":I
    :cond_4
    return-object v6
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 371
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 373
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 376
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v1, 0x0

    .local v1, "blockIndex":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 377
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    .line 378
    .local v2, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    .line 379
    .local v3, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v4, p1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v1

    .line 380
    .local v4, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 381
    aget-object v6, v3, v5

    aget-object v7, v4, v5

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v2, v5

    .line 380
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 376
    .end local v2    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "k":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "blockIndex":I
    :cond_1
    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 321
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    move-object v0, v2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->add(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 325
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 327
    new-instance v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    iget v5, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v6, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 330
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v4, 0x0

    .line 331
    .local v4, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v6, :cond_3

    .line 332
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    iget v7, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 335
    iget-object v7, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v4

    .line 336
    .local v7, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v8, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v4

    .line 337
    .local v8, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v9, v5, 0x24

    .line 338
    .local v9, "pStart":I
    add-int/lit8 v10, v9, 0x24

    iget v11, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 339
    .local v10, "pEnd":I
    mul-int/lit8 v11, v6, 0x24

    .line 340
    .local v11, "qStart":I
    add-int/lit8 v12, v11, 0x24

    iget v13, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 341
    .local v12, "qEnd":I
    const/4 v13, 0x0

    .line 342
    .local v13, "k":I
    move v14, v9

    .local v14, "p":I
    :goto_2
    if-ge v14, v10, :cond_1

    .line 343
    move v15, v11

    .local v15, "q":I
    :goto_3
    if-ge v15, v12, :cond_0

    .line 344
    move-object/from16 v16, v0

    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .local v16, "cce":Ljava/lang/ClassCastException;
    aget-object v0, v8, v13

    invoke-interface {v2, v14, v15}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v7, v13

    .line 345
    add-int/lit8 v13, v13, 0x1

    .line 343
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_3

    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    :cond_0
    move-object/from16 v16, v0

    .line 342
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v15    # "q":I
    .restart local v16    # "cce":Ljava/lang/ClassCastException;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    goto :goto_2

    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    :cond_1
    move-object/from16 v16, v0

    .line 350
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v14    # "p":I
    .restart local v16    # "cce":Ljava/lang/ClassCastException;
    nop

    .end local v7    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v8    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v9    # "pStart":I
    .end local v10    # "pEnd":I
    .end local v11    # "qStart":I
    .end local v12    # "qEnd":I
    .end local v13    # "k":I
    add-int/lit8 v4, v4, 0x1

    .line 332
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto :goto_1

    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    :cond_2
    move-object/from16 v16, v0

    .line 331
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v6    # "jBlock":I
    .restart local v16    # "cce":Ljava/lang/ClassCastException;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto :goto_0

    .line 355
    .end local v5    # "iBlock":I
    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    :cond_3
    return-object v3
.end method

.method public addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1190
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p3, "increment":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1191
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1193
    div-int/lit8 v0, p1, 0x24

    .line 1194
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x24

    .line 1195
    .local v1, "jBlock":I
    mul-int/lit8 v2, v0, 0x24

    sub-int v2, p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x24

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    .line 1197
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    .line 1199
    .local v3, "blockIJ":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v4, v3, v2

    invoke-interface {v4, p3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v3, v2

    .line 1200
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 309
    .local v0, "copied":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 310
    iget-object v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v1

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 2
    .param p1, "rowDimension"    # I
    .param p2, "columnDimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    return-object v0
.end method

.method public getColumn(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 11
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1113
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1114
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 1117
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    div-int/lit8 v1, p1, 0x24

    .line 1118
    .local v1, "jBlock":I
    mul-int/lit8 v2, v1, 0x24

    sub-int v2, p1, v2

    .line 1119
    .local v2, "jColumn":I
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    .line 1120
    .local v3, "jWidth":I
    const/4 v4, 0x0

    .line 1121
    .local v4, "outIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v6, :cond_1

    .line 1122
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v6

    .line 1123
    .local v6, "iHeight":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    .line 1124
    .local v7, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 1125
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "outIndex":I
    .local v9, "outIndex":I
    mul-int v10, v8, v3

    add-int/2addr v10, v2

    aget-object v10, v7, v10

    aput-object v10, v0, v4

    .line 1124
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_1

    .line 1121
    .end local v6    # "iHeight":I
    .end local v7    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v8    # "i":I
    .end local v9    # "outIndex":I
    .restart local v4    # "outIndex":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1129
    .end local v5    # "iBlock":I
    :cond_1
    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .line 1266
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    return v0
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 13
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 924
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 925
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 928
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    div-int/lit8 v1, p1, 0x24

    .line 929
    .local v1, "jBlock":I
    mul-int/lit8 v2, v1, 0x24

    sub-int v2, p1, v2

    .line 930
    .local v2, "jColumn":I
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    .line 931
    .local v3, "jWidth":I
    const/4 v4, 0x0

    .line 932
    .local v4, "outBlockIndex":I
    const/4 v5, 0x0

    .line 933
    .local v5, "outIndex":I
    iget-object v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v4

    .line 934
    .local v6, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v7, 0x0

    .local v7, "iBlock":I
    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v7, v8, :cond_2

    .line 935
    invoke-direct {p0, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v8

    .line 936
    .local v8, "iHeight":I
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v10, v7

    add-int/2addr v10, v1

    aget-object v9, v9, v10

    .line 937
    .local v9, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_1

    .line 938
    array-length v11, v6

    if-lt v5, v11, :cond_0

    .line 939
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v4, v4, 0x1

    aget-object v6, v11, v4

    .line 940
    const/4 v5, 0x0

    .line 942
    :cond_0
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "outIndex":I
    .local v11, "outIndex":I
    mul-int v12, v10, v3

    add-int/2addr v12, v2

    aget-object v12, v9, v12

    aput-object v12, v6, v5

    .line 937
    add-int/lit8 v10, v10, 0x1

    move v5, v11

    goto :goto_1

    .line 934
    .end local v8    # "iHeight":I
    .end local v9    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v10    # "i":I
    .end local v11    # "outIndex":I
    .restart local v5    # "outIndex":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 946
    .end local v7    # "iBlock":I
    :cond_2
    return-object v0
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 11
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1038
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1039
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 1042
    .local v0, "outData":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    div-int/lit8 v1, p1, 0x24

    .line 1043
    .local v1, "jBlock":I
    mul-int/lit8 v2, v1, 0x24

    sub-int v2, p1, v2

    .line 1044
    .local v2, "jColumn":I
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    .line 1045
    .local v3, "jWidth":I
    const/4 v4, 0x0

    .line 1046
    .local v4, "outIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v6, :cond_1

    .line 1047
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v6

    .line 1048
    .local v6, "iHeight":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    .line 1049
    .local v7, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 1050
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "outIndex":I
    .local v9, "outIndex":I
    mul-int v10, v8, v3

    add-int/2addr v10, v2

    aget-object v10, v7, v10

    aput-object v10, v0, v4

    .line 1049
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_1

    .line 1046
    .end local v6    # "iHeight":I
    .end local v7    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v8    # "i":I
    .end local v9    # "outIndex":I
    .restart local v4    # "outIndex":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1054
    .end local v5    # "iBlock":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v0, v7}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v5
.end method

.method public getData()[[Lorg/apache/commons/math3/FieldElement;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    .line 631
    .local v0, "data":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x24

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 633
    .local v1, "lastColumns":I
    const/4 v2, 0x0

    .local v2, "iBlock":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v2, v4, :cond_2

    .line 634
    mul-int/lit8 v4, v2, 0x24

    .line 635
    .local v4, "pStart":I
    add-int/lit8 v5, v4, 0x24

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 636
    .local v5, "pEnd":I
    const/4 v6, 0x0

    .line 637
    .local v6, "regularPos":I
    const/4 v7, 0x0

    .line 638
    .local v7, "lastPos":I
    move v8, v4

    .local v8, "p":I
    :goto_1
    if-ge v8, v5, :cond_1

    .line 639
    aget-object v9, v0, v8

    .line 640
    .local v9, "dataP":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v10, v2

    .line 641
    .local v10, "blockIndex":I
    const/4 v11, 0x0

    .line 642
    .local v11, "dataPos":I
    const/4 v12, 0x0

    .local v12, "jBlock":I
    :goto_2
    iget v13, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_0

    .line 643
    iget-object v13, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v14, v10, 0x1

    .end local v10    # "blockIndex":I
    .local v14, "blockIndex":I
    aget-object v10, v13, v10

    invoke-static {v10, v6, v9, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    add-int/lit8 v11, v11, 0x24

    .line 642
    add-int/lit8 v12, v12, 0x1

    move v10, v14

    goto :goto_2

    .line 646
    .end local v12    # "jBlock":I
    .end local v14    # "blockIndex":I
    .restart local v10    # "blockIndex":I
    :cond_0
    iget-object v12, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v12, v12, v10

    invoke-static {v12, v7, v9, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    add-int/lit8 v6, v6, 0x24

    .line 648
    add-int/2addr v7, v1

    .line 638
    .end local v9    # "dataP":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v10    # "blockIndex":I
    .end local v11    # "dataPos":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 633
    .end local v4    # "pStart":I
    .end local v5    # "pEnd":I
    .end local v6    # "regularPos":I
    .end local v7    # "lastPos":I
    .end local v8    # "p":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    .end local v2    # "iBlock":I
    :cond_2
    return-object v0
.end method

.method public getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1160
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1161
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1163
    div-int/lit8 v0, p1, 0x24

    .line 1164
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x24

    .line 1165
    .local v1, "jBlock":I
    mul-int/lit8 v2, v0, 0x24

    sub-int v2, p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x24

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    .line 1168
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    return-object v3
.end method

.method public getRow(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 8
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1071
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1072
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 1075
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    div-int/lit8 v1, p1, 0x24

    .line 1076
    .local v1, "iBlock":I
    mul-int/lit8 v2, v1, 0x24

    sub-int v2, p1, v2

    .line 1077
    .local v2, "iRow":I
    const/4 v3, 0x0

    .line 1078
    .local v3, "outIndex":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v5, :cond_0

    .line 1079
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    .line 1080
    .local v5, "jWidth":I
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v4

    aget-object v6, v6, v7

    .line 1081
    .local v6, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int v7, v2, v5

    invoke-static {v6, v7, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    add-int/2addr v3, v5

    .line 1078
    .end local v5    # "jWidth":I
    .end local v6    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1085
    .end local v4    # "jBlock":I
    :cond_0
    return-object v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 1260
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    return v0
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 13
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 838
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 839
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 842
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    div-int/lit8 v1, p1, 0x24

    .line 843
    .local v1, "iBlock":I
    mul-int/lit8 v2, v1, 0x24

    sub-int v2, p1, v2

    .line 844
    .local v2, "iRow":I
    const/4 v3, 0x0

    .line 845
    .local v3, "outBlockIndex":I
    const/4 v4, 0x0

    .line 846
    .local v4, "outIndex":I
    iget-object v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v3

    .line 847
    .local v5, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v6, v7, :cond_1

    .line 848
    invoke-direct {p0, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v7

    .line 849
    .local v7, "jWidth":I
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v6

    aget-object v8, v8, v9

    .line 850
    .local v8, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    array-length v9, v5

    sub-int/2addr v9, v4

    .line 851
    .local v9, "available":I
    if-le v7, v9, :cond_0

    .line 852
    mul-int v10, v2, v7

    invoke-static {v8, v10, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    iget-object v10, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v3, v3, 0x1

    aget-object v5, v10, v3

    .line 854
    mul-int v10, v2, v7

    const/4 v11, 0x0

    sub-int v12, v7, v9

    invoke-static {v8, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    sub-int v4, v7, v9

    goto :goto_1

    .line 857
    :cond_0
    mul-int v10, v2, v7

    invoke-static {v8, v10, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    add-int/2addr v4, v7

    .line 847
    .end local v7    # "jWidth":I
    .end local v8    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v9    # "available":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 862
    .end local v6    # "jBlock":I
    :cond_1
    return-object v0
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 8
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1006
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1007
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 1010
    .local v0, "outData":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    div-int/lit8 v1, p1, 0x24

    .line 1011
    .local v1, "iBlock":I
    mul-int/lit8 v2, v1, 0x24

    sub-int v2, p1, v2

    .line 1012
    .local v2, "iRow":I
    const/4 v3, 0x0

    .line 1013
    .local v3, "outIndex":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v5, :cond_0

    .line 1014
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    .line 1015
    .local v5, "jWidth":I
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v4

    aget-object v6, v6, v7

    .line 1016
    .local v6, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int v7, v2, v5

    invoke-static {v6, v7, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1017
    add-int/2addr v3, v5

    .line 1013
    .end local v5    # "jWidth":I
    .end local v6    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1020
    .end local v4    # "jBlock":I
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v4
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 27
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "startColumn"    # I
    .param p4, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 662
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 665
    new-instance v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    sub-int v4, p4, p3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    move-object v11, v1

    .line 669
    .local v11, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    div-int/lit8 v12, p1, 0x24

    .line 670
    .local v12, "blockStartRow":I
    rem-int/lit8 v3, p1, 0x24

    .line 671
    .local v3, "rowsShift":I
    div-int/lit8 v13, p3, 0x24

    .line 672
    .local v13, "blockStartColumn":I
    rem-int/lit8 v5, p3, 0x24

    .line 675
    .local v5, "columnsShift":I
    move v1, v12

    .line 676
    .local v1, "pBlock":I
    const/4 v2, 0x0

    move v14, v1

    move v15, v2

    .end local v1    # "pBlock":I
    .local v14, "pBlock":I
    .local v15, "iBlock":I
    :goto_0
    iget v1, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v15, v1, :cond_4

    .line 677
    invoke-direct {v11, v15}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v16

    .line 678
    .local v16, "iHeight":I
    move v1, v13

    .line 679
    .local v1, "qBlock":I
    const/4 v2, 0x0

    .local v2, "jBlock":I
    :goto_1
    iget v4, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v2, v4, :cond_3

    .line 680
    invoke-direct {v11, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v8

    .line 683
    .local v8, "jWidth":I
    iget v4, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v15

    add-int v17, v4, v2

    .line 684
    .local v17, "outIndex":I
    iget-object v4, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v4, v17

    .line 685
    .local v7, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v14

    add-int v18, v4, v1

    .line 686
    .local v18, "index":I
    move v4, v2

    .end local v2    # "jBlock":I
    .local v4, "jBlock":I
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    .line 688
    .local v2, "width":I
    add-int v6, v16, v3

    add-int/lit8 v19, v6, -0x24

    .line 689
    .local v19, "heightExcess":I
    add-int v6, v8, v5

    add-int/lit8 v20, v6, -0x24

    .line 690
    .local v20, "widthExcess":I
    if-lez v19, :cond_1

    .line 692
    if-lez v20, :cond_0

    .line 694
    add-int/lit8 v6, v1, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v21

    .line 695
    .local v21, "width2":I
    iget-object v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v18

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v22, v4

    .end local v4    # "jBlock":I
    .local v22, "jBlock":I
    const/16 v4, 0x24

    move/from16 v23, v1

    move-object v1, v6

    .end local v1    # "qBlock":I
    .local v23, "qBlock":I
    const/16 v6, 0x24

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 699
    move/from16 v25, v2

    move/from16 v24, v5

    .end local v2    # "width":I
    .end local v5    # "columnsShift":I
    .local v24, "columnsShift":I
    .local v25, "width":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

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
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 703
    move/from16 v26, v2

    move/from16 v20, v3

    move/from16 v21, v6

    .end local v2    # "width2":I
    .end local v3    # "rowsShift":I
    .end local v6    # "widthExcess":I
    .local v20, "rowsShift":I
    .local v21, "widthExcess":I
    .local v26, "width2":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v2, v18, v2

    aget-object v1, v1, v2

    sub-int v9, v16, v19

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x24

    move/from16 v4, v19

    move/from16 v5, v24

    move/from16 v2, v25

    .end local v19    # "heightExcess":I
    .end local v24    # "columnsShift":I
    .end local v25    # "width":I
    .local v2, "width":I
    .local v4, "heightExcess":I
    .restart local v5    # "columnsShift":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 707
    .end local v2    # "width":I
    .end local v5    # "columnsShift":I
    .restart local v24    # "columnsShift":I
    .restart local v25    # "width":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

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
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 711
    .end local v2    # "width2":I
    .end local v4    # "heightExcess":I
    .end local v6    # "widthExcess":I
    .restart local v19    # "heightExcess":I
    .restart local v21    # "widthExcess":I
    move/from16 v3, v20

    move/from16 v5, v24

    move/from16 v2, v25

    goto/16 :goto_2

    .line 713
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
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v18

    add-int v6, v8, v24

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x24

    .end local v20    # "rowsShift":I
    .end local v24    # "columnsShift":I
    .end local v25    # "width":I
    .restart local v2    # "width":I
    .restart local v3    # "rowsShift":I
    .restart local v5    # "columnsShift":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 717
    .end local v3    # "rowsShift":I
    .restart local v20    # "rowsShift":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v3, v18, v3

    aget-object v1, v1, v3

    add-int v6, v8, v5

    sub-int v9, v16, v19

    const/4 v3, 0x0

    move/from16 v4, v19

    .end local v19    # "heightExcess":I
    .local v4, "heightExcess":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    move/from16 v3, v20

    .end local v4    # "heightExcess":I
    .restart local v19    # "heightExcess":I
    goto :goto_2

    .line 724
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

    .line 726
    add-int/lit8 v1, v23, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v24

    .line 727
    .local v24, "width2":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v18

    add-int v4, v16, v20

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0x24

    move/from16 v3, v20

    .end local v20    # "rowsShift":I
    .restart local v3    # "rowsShift":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 731
    move/from16 v25, v2

    move/from16 v20, v5

    .end local v2    # "width":I
    .end local v5    # "columnsShift":I
    .local v20, "columnsShift":I
    .restart local v25    # "width":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

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
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 735
    .end local v2    # "width2":I
    .end local v6    # "widthExcess":I
    .restart local v21    # "widthExcess":I
    move/from16 v5, v20

    move/from16 v2, v25

    goto :goto_2

    .line 737
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
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v18

    add-int v4, v16, v3

    add-int v6, v8, v20

    const/4 v9, 0x0

    const/4 v10, 0x0

    .end local v20    # "columnsShift":I
    .end local v25    # "width":I
    .restart local v2    # "width":I
    .restart local v5    # "columnsShift":I
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 743
    :goto_2
    nop

    .end local v2    # "width":I
    .end local v7    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v8    # "jWidth":I
    .end local v17    # "outIndex":I
    .end local v18    # "index":I
    .end local v19    # "heightExcess":I
    .end local v21    # "widthExcess":I
    add-int/lit8 v1, v23, 0x1

    .line 679
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

    .line 745
    .end local v1    # "qBlock":I
    .end local v2    # "jBlock":I
    .restart local v23    # "qBlock":I
    nop

    .end local v16    # "iHeight":I
    .end local v23    # "qBlock":I
    add-int/lit8 v14, v14, 0x1

    .line 676
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 748
    .end local v15    # "iBlock":I
    :cond_4
    return-object v11
.end method

.method public multiply(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 565
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 567
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v5, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 568
    .local v2, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 571
    .local v3, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v4, 0x0

    .line 572
    .local v4, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v6, :cond_6

    .line 574
    mul-int/lit8 v6, v5, 0x24

    .line 575
    .local v6, "pStart":I
    add-int/lit8 v7, v6, 0x24

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 577
    .local v7, "pEnd":I
    const/4 v8, 0x0

    .local v8, "jBlock":I
    :goto_1
    iget v9, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v8, v9, :cond_5

    .line 578
    invoke-direct {v2, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v9

    .line 579
    .local v9, "jWidth":I
    add-int v10, v9, v9

    .line 580
    .local v10, "jWidth2":I
    add-int v11, v10, v9

    .line 581
    .local v11, "jWidth3":I
    add-int v12, v11, v9

    .line 584
    .local v12, "jWidth4":I
    iget-object v13, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v13, v13, v4

    .line 587
    .local v13, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v14, 0x0

    .local v14, "kBlock":I
    :goto_2
    iget v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v14, v15, :cond_4

    .line 588
    invoke-direct {v0, v14}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v15

    .line 589
    .local v15, "kWidth":I
    move-object/from16 v16, v2

    .end local v2    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local v16, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v2

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v2, v5

    add-int/2addr v2, v14

    aget-object v2, v17, v2

    .line 590
    .local v2, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v0, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v0

    iget v0, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v0, v14

    add-int/2addr v0, v8

    aget-object v0, v17, v0

    .line 591
    .local v0, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/16 v17, 0x0

    .line 592
    .local v17, "k":I
    move/from16 v18, v6

    move/from16 v28, v18

    move-object/from16 v18, v0

    move/from16 v0, v28

    .local v0, "p":I
    .local v18, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :goto_3
    if-ge v0, v7, :cond_3

    .line 593
    sub-int v19, v0, v6

    mul-int v19, v19, v15

    .line 594
    .local v19, "lStart":I
    move/from16 v20, v0

    .end local v0    # "p":I
    .local v20, "p":I
    add-int v0, v19, v15

    .line 595
    .local v0, "lEnd":I
    const/16 v21, 0x0

    move/from16 v1, v21

    .local v1, "nStart":I
    :goto_4
    if-ge v1, v9, :cond_2

    .line 596
    move-object/from16 v21, v3

    .line 597
    .local v21, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move/from16 v22, v19

    .line 598
    .local v22, "l":I
    move/from16 v23, v1

    move/from16 v24, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v2

    move/from16 v2, v22

    .line 599
    .end local v22    # "l":I
    .local v1, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v2, "l":I
    .local v21, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local v23, "n":I
    .local v24, "nStart":I
    :goto_5
    move-object/from16 v22, v3

    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v22, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v3, v0, -0x3

    if-ge v2, v3, :cond_0

    .line 600
    aget-object v3, v21, v2

    move/from16 v25, v2

    .end local v2    # "l":I
    .local v25, "l":I
    aget-object v2, v18, v23

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v3, v25, 0x1

    aget-object v3, v21, v3

    add-int v26, v23, v9

    move-object/from16 v27, v1

    .end local v1    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v27, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    aget-object v1, v18, v26

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v2, v25, 0x2

    aget-object v2, v21, v2

    add-int v3, v23, v10

    aget-object v3, v18, v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v2, v25, 0x3

    aget-object v2, v21, v2

    add-int v3, v23, v11

    aget-object v3, v18, v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 605
    .end local v27    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v1    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v2, v25, 0x4

    .line 606
    .end local v25    # "l":I
    .restart local v2    # "l":I
    add-int v23, v23, v12

    move-object/from16 v3, v22

    goto :goto_5

    .line 599
    :cond_0
    move-object/from16 v27, v1

    move/from16 v25, v2

    .line 608
    :goto_6
    if-ge v2, v0, :cond_1

    .line 609
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "l":I
    .local v3, "l":I
    aget-object v2, v21, v2

    move/from16 v25, v0

    .end local v0    # "lEnd":I
    .local v25, "lEnd":I
    aget-object v0, v18, v23

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 610
    add-int v23, v23, v9

    move v2, v3

    move/from16 v0, v25

    goto :goto_6

    .line 612
    .end local v3    # "l":I
    .end local v25    # "lEnd":I
    .restart local v0    # "lEnd":I
    .restart local v2    # "l":I
    :cond_1
    move/from16 v25, v0

    .end local v0    # "lEnd":I
    .restart local v25    # "lEnd":I
    aget-object v0, v13, v17

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v13, v17

    .line 613
    nop

    .end local v1    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v2    # "l":I
    .end local v23    # "n":I
    add-int/lit8 v17, v17, 0x1

    .line 595
    add-int/lit8 v1, v24, 0x1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v0, v25

    .end local v24    # "nStart":I
    .local v1, "nStart":I
    goto/16 :goto_4

    .end local v21    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v22    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v25    # "lEnd":I
    .restart local v0    # "lEnd":I
    .local v2, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local v3, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_2
    move/from16 v25, v0

    move/from16 v24, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .line 592
    .end local v0    # "lEnd":I
    .end local v1    # "nStart":I
    .end local v2    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v19    # "lStart":I
    .restart local v21    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v22    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v1, p1

    .end local v20    # "p":I
    .local v0, "p":I
    goto/16 :goto_3

    .end local v21    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v22    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v2    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_3
    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .line 587
    .end local v0    # "p":I
    .end local v2    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v15    # "kWidth":I
    .end local v17    # "k":I
    .end local v18    # "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v22    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto/16 :goto_2

    .end local v16    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v22    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v2, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v22, v3

    .line 619
    .end local v2    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v14    # "kBlock":I
    .restart local v16    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v22    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    nop

    .end local v9    # "jWidth":I
    .end local v10    # "jWidth2":I
    .end local v11    # "jWidth3":I
    .end local v12    # "jWidth4":I
    .end local v13    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v4, v4, 0x1

    .line 577
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    .end local v16    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v22    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v2    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v22, v3

    .line 572
    .end local v2    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v6    # "pStart":I
    .end local v7    # "pEnd":I
    .end local v8    # "jBlock":I
    .restart local v16    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v22    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .end local v16    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v22    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v2    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_6
    move-object/from16 v16, v2

    .line 623
    .end local v2    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v5    # "iBlock":I
    .restart local v16    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    return-object v16
.end method

.method public multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 498
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    move-object v0, v2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->multiply(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 499
    :catch_0
    move-exception v0

    .line 502
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 504
    new-instance v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    iget v5, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 505
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    .line 508
    .local v4, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v5, 0x0

    .line 509
    .local v5, "blockIndex":I
    const/4 v6, 0x0

    .local v6, "iBlock":I
    :goto_0
    iget v7, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v6, v7, :cond_5

    .line 511
    mul-int/lit8 v7, v6, 0x24

    .line 512
    .local v7, "pStart":I
    add-int/lit8 v8, v7, 0x24

    iget v9, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 514
    .local v8, "pEnd":I
    const/4 v9, 0x0

    .local v9, "jBlock":I
    :goto_1
    iget v10, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v9, v10, :cond_4

    .line 516
    mul-int/lit8 v10, v9, 0x24

    .line 517
    .local v10, "qStart":I
    add-int/lit8 v11, v10, 0x24

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v12

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 520
    .local v11, "qEnd":I
    iget-object v12, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v12, v12, v5

    .line 523
    .local v12, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v13, 0x0

    .local v13, "kBlock":I
    :goto_2
    iget v14, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v13, v14, :cond_3

    .line 524
    invoke-direct {v1, v13}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v14

    .line 525
    .local v14, "kWidth":I
    iget-object v15, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v16, v0

    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .local v16, "cce":Ljava/lang/ClassCastException;
    iget v0, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v0, v6

    add-int/2addr v0, v13

    aget-object v0, v15, v0

    .line 526
    .local v0, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v15, v13, 0x24

    .line 527
    .local v15, "rStart":I
    const/16 v17, 0x0

    .line 528
    .local v17, "k":I
    move/from16 v18, v7

    move/from16 v26, v18

    move-object/from16 v18, v0

    move/from16 v0, v26

    .local v0, "p":I
    .local v18, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :goto_3
    if-ge v0, v8, :cond_2

    .line 529
    sub-int v19, v0, v7

    mul-int v19, v19, v14

    .line 530
    .local v19, "lStart":I
    move/from16 v20, v0

    .end local v0    # "p":I
    .local v20, "p":I
    add-int v0, v19, v14

    .line 531
    .local v0, "lEnd":I
    move/from16 v21, v10

    move/from16 v1, v21

    .local v1, "q":I
    :goto_4
    if-ge v1, v11, :cond_1

    .line 532
    move-object/from16 v21, v4

    .line 533
    .local v21, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move/from16 v22, v15

    .line 534
    .local v22, "r":I
    move/from16 v23, v19

    move-object/from16 v24, v3

    move-object/from16 v3, v21

    move/from16 v4, v22

    move/from16 v22, v5

    move/from16 v5, v23

    .local v3, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v4, "r":I
    .local v5, "l":I
    .local v21, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v22, "blockIndex":I
    .local v24, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    :goto_5
    if-ge v5, v0, :cond_0

    .line 535
    move/from16 v23, v0

    .end local v0    # "lEnd":I
    .local v23, "lEnd":I
    aget-object v0, v18, v5

    move/from16 v25, v5

    .end local v5    # "l":I
    .local v25, "l":I
    invoke-interface {v2, v4, v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 536
    add-int/lit8 v4, v4, 0x1

    .line 534
    add-int/lit8 v5, v25, 0x1

    move/from16 v0, v23

    .end local v25    # "l":I
    .restart local v5    # "l":I
    goto :goto_5

    .end local v23    # "lEnd":I
    .restart local v0    # "lEnd":I
    :cond_0
    move/from16 v23, v0

    move/from16 v25, v5

    .line 538
    .end local v0    # "lEnd":I
    .end local v5    # "l":I
    .restart local v23    # "lEnd":I
    aget-object v0, v12, v17

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v12, v17

    .line 539
    nop

    .end local v3    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v4    # "r":I
    add-int/lit8 v17, v17, 0x1

    .line 531
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v21

    move/from16 v5, v22

    move/from16 v0, v23

    move-object/from16 v3, v24

    goto :goto_4

    .end local v21    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v22    # "blockIndex":I
    .end local v23    # "lEnd":I
    .end local v24    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v0    # "lEnd":I
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local v4, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v5, "blockIndex":I
    :cond_1
    move/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    .line 528
    .end local v0    # "lEnd":I
    .end local v1    # "q":I
    .end local v3    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v4    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "blockIndex":I
    .end local v19    # "lStart":I
    .restart local v21    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v22    # "blockIndex":I
    .restart local v24    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v1, p0

    .end local v20    # "p":I
    .local v0, "p":I
    goto :goto_3

    .end local v21    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v22    # "blockIndex":I
    .end local v24    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v3    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v4    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v5    # "blockIndex":I
    :cond_2
    move/from16 v20, v0

    move-object/from16 v24, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    .line 523
    .end local v0    # "p":I
    .end local v3    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v4    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "blockIndex":I
    .end local v14    # "kWidth":I
    .end local v15    # "rStart":I
    .end local v17    # "k":I
    .end local v18    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v21    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v22    # "blockIndex":I
    .restart local v24    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto/16 :goto_2

    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .end local v21    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v22    # "blockIndex":I
    .end local v24    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local v0, "cce":Ljava/lang/ClassCastException;
    .restart local v3    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v4    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v5    # "blockIndex":I
    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v24, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    .line 545
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v4    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "blockIndex":I
    .end local v13    # "kBlock":I
    .restart local v16    # "cce":Ljava/lang/ClassCastException;
    .restart local v21    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v22    # "blockIndex":I
    .restart local v24    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    nop

    .end local v10    # "qStart":I
    .end local v11    # "qEnd":I
    .end local v12    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v5, v22, 0x1

    .line 514
    .end local v22    # "blockIndex":I
    .restart local v5    # "blockIndex":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .end local v21    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v24    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    .restart local v3    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v4    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v24, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    .line 509
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v4    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "blockIndex":I
    .end local v7    # "pStart":I
    .end local v8    # "pEnd":I
    .end local v9    # "jBlock":I
    .restart local v16    # "cce":Ljava/lang/ClassCastException;
    .restart local v21    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v22    # "blockIndex":I
    .restart local v24    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .end local v21    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v22    # "blockIndex":I
    .end local v24    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    .restart local v3    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .restart local v4    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v5    # "blockIndex":I
    :cond_5
    move-object/from16 v24, v3

    .line 550
    .end local v3    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .end local v6    # "iBlock":I
    .restart local v24    # "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    return-object v24
.end method

.method public multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1206
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p3, "factor":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1207
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1209
    div-int/lit8 v0, p1, 0x24

    .line 1210
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x24

    .line 1211
    .local v1, "jBlock":I
    mul-int/lit8 v2, v0, 0x24

    sub-int v2, p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x24

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    .line 1213
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    .line 1215
    .local v3, "blockIJ":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v4, v3, v2

    invoke-interface {v4, p3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v3, v2

    .line 1216
    return-void
.end method

.method public operate([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1272
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "v":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    if-ne v2, v3, :cond_5

    .line 1275
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 1276
    .local v2, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 1279
    .local v3, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v4, 0x0

    .local v4, "iBlock":I
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v5, :cond_4

    .line 1280
    mul-int/lit8 v5, v4, 0x24

    .line 1281
    .local v5, "pStart":I
    add-int/lit8 v6, v5, 0x24

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    .line 1282
    .local v6, "pEnd":I
    const/4 v7, 0x0

    .local v7, "jBlock":I
    :goto_1
    iget v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v7, v8, :cond_3

    .line 1283
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v9, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v7

    aget-object v8, v8, v9

    .line 1284
    .local v8, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v9, v7, 0x24

    .line 1285
    .local v9, "qStart":I
    add-int/lit8 v10, v9, 0x24

    iget v11, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 1286
    .local v10, "qEnd":I
    const/4 v11, 0x0

    .line 1287
    .local v11, "k":I
    move v12, v5

    .local v12, "p":I
    :goto_2
    if-ge v12, v6, :cond_2

    .line 1288
    move-object v13, v3

    .line 1289
    .local v13, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move v14, v9

    .line 1290
    .local v14, "q":I
    :goto_3
    add-int/lit8 v15, v10, -0x3

    if-ge v14, v15, :cond_0

    .line 1291
    aget-object v15, v8, v11

    move-object/from16 v16, v2

    .end local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local v16, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    aget-object v2, v1, v14

    invoke-interface {v15, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v15, v11, 0x1

    aget-object v15, v8, v15

    add-int/lit8 v17, v14, 0x1

    move-object/from16 v18, v3

    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v18, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    aget-object v3, v1, v17

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v3, v11, 0x2

    aget-object v3, v8, v3

    add-int/lit8 v15, v14, 0x2

    aget-object v15, v1, v15

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v3, v11, 0x3

    aget-object v3, v8, v3

    add-int/lit8 v15, v14, 0x3

    aget-object v15, v1, v15

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lorg/apache/commons/math3/FieldElement;

    .line 1296
    add-int/lit8 v11, v11, 0x4

    .line 1297
    add-int/lit8 v14, v14, 0x4

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto :goto_3

    .line 1290
    .end local v16    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .line 1299
    .end local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v16    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :goto_4
    if-ge v14, v10, :cond_1

    .line 1300
    add-int/lit8 v2, v11, 0x1

    .end local v11    # "k":I
    .local v2, "k":I
    aget-object v3, v8, v11

    add-int/lit8 v11, v14, 0x1

    .end local v14    # "q":I
    .local v11, "q":I
    aget-object v14, v1, v14

    invoke-interface {v3, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v13, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lorg/apache/commons/math3/FieldElement;

    move v14, v11

    move v11, v2

    goto :goto_4

    .line 1302
    .end local v2    # "k":I
    .local v11, "k":I
    .restart local v14    # "q":I
    :cond_1
    aget-object v2, v16, v12

    invoke-interface {v2, v13}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v16, v12

    .line 1287
    .end local v13    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v14    # "q":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto/16 :goto_2

    .end local v16    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v2, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .line 1282
    .end local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v8    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v9    # "qStart":I
    .end local v10    # "qEnd":I
    .end local v11    # "k":I
    .end local v12    # "p":I
    .restart local v16    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .end local v16    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .line 1279
    .end local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "pStart":I
    .end local v6    # "pEnd":I
    .end local v7    # "jBlock":I
    .restart local v16    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v16    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_4
    move-object/from16 v16, v2

    .line 1307
    .end local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "iBlock":I
    .restart local v16    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    return-object v16

    .line 1273
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v16    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v1

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public preMultiply([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1314
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "v":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    if-ne v2, v3, :cond_5

    .line 1317
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 1318
    .local v2, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    .line 1321
    .local v3, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v5, :cond_4

    .line 1322
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    .line 1323
    .local v5, "jWidth":I
    add-int v6, v5, v5

    .line 1324
    .local v6, "jWidth2":I
    add-int v7, v6, v5

    .line 1325
    .local v7, "jWidth3":I
    add-int v8, v7, v5

    .line 1326
    .local v8, "jWidth4":I
    mul-int/lit8 v9, v4, 0x24

    .line 1327
    .local v9, "qStart":I
    add-int/lit8 v10, v9, 0x24

    iget v11, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 1328
    .local v10, "qEnd":I
    const/4 v11, 0x0

    .local v11, "iBlock":I
    :goto_1
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v11, v12, :cond_3

    .line 1329
    iget-object v12, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v13, v11

    add-int/2addr v13, v4

    aget-object v12, v12, v13

    .line 1330
    .local v12, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v13, v11, 0x24

    .line 1331
    .local v13, "pStart":I
    add-int/lit8 v14, v13, 0x24

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v14

    .line 1332
    .local v14, "pEnd":I
    move v15, v9

    .local v15, "q":I
    :goto_2
    if-ge v15, v10, :cond_2

    .line 1333
    sub-int v16, v15, v9

    .line 1334
    .local v16, "k":I
    move-object/from16 v17, v3

    .line 1335
    .local v17, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move/from16 v18, v13

    move-object/from16 v23, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v23

    move/from16 v23, v18

    move-object/from16 v18, v3

    move/from16 v3, v23

    .line 1336
    .local v2, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v3, "p":I
    .local v17, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local v18, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :goto_3
    move/from16 v19, v4

    .end local v4    # "jBlock":I
    .local v19, "jBlock":I
    add-int/lit8 v4, v14, -0x3

    if-ge v3, v4, :cond_0

    .line 1337
    aget-object v4, v12, v16

    move/from16 v20, v3

    .end local v3    # "p":I
    .local v20, "p":I
    aget-object v3, v1, v20

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    add-int v4, v16, v5

    aget-object v4, v12, v4

    add-int/lit8 v21, v20, 0x1

    move-object/from16 v22, v2

    .end local v2    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local v22, "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    aget-object v2, v1, v21

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int v3, v16, v6

    aget-object v3, v12, v3

    add-int/lit8 v4, v20, 0x2

    aget-object v4, v1, v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int v3, v16, v7

    aget-object v3, v12, v3

    add-int/lit8 v4, v20, 0x3

    aget-object v4, v1, v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 1342
    .end local v22    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v2    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int v16, v16, v8

    .line 1343
    add-int/lit8 v3, v20, 0x4

    move/from16 v4, v19

    .end local v20    # "p":I
    .restart local v3    # "p":I
    goto :goto_3

    .line 1336
    :cond_0
    move-object/from16 v22, v2

    move/from16 v20, v3

    .line 1345
    :goto_4
    if-ge v3, v14, :cond_1

    .line 1346
    aget-object v4, v12, v16

    add-int/lit8 v20, v3, 0x1

    .end local v3    # "p":I
    .restart local v20    # "p":I
    aget-object v3, v1, v3

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 1347
    add-int v16, v16, v5

    move/from16 v3, v20

    goto :goto_4

    .line 1349
    .end local v20    # "p":I
    .restart local v3    # "p":I
    :cond_1
    aget-object v4, v17, v15

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v17, v15

    .line 1332
    .end local v2    # "sum":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v3    # "p":I
    .end local v16    # "k":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_2

    .end local v17    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v19    # "jBlock":I
    .local v2, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local v3, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v4    # "jBlock":I
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    .line 1328
    .end local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v4    # "jBlock":I
    .end local v12    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v13    # "pStart":I
    .end local v14    # "pEnd":I
    .end local v15    # "q":I
    .restart local v17    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v19    # "jBlock":I
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .end local v17    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v19    # "jBlock":I
    .restart local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v4    # "jBlock":I
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    .line 1321
    .end local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v4    # "jBlock":I
    .end local v5    # "jWidth":I
    .end local v6    # "jWidth2":I
    .end local v7    # "jWidth3":I
    .end local v8    # "jWidth4":I
    .end local v9    # "qStart":I
    .end local v10    # "qEnd":I
    .end local v11    # "iBlock":I
    .restart local v17    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v19    # "jBlock":I
    add-int/lit8 v4, v19, 0x1

    .end local v19    # "jBlock":I
    .restart local v4    # "jBlock":I
    goto/16 :goto_0

    .end local v17    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v18    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .restart local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_4
    move-object/from16 v17, v2

    .line 1354
    .end local v2    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "jBlock":I
    .restart local v17    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    return-object v17

    .line 1315
    .end local v3    # "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v17    # "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v1

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public scalarAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 461
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 464
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v1, 0x0

    .local v1, "blockIndex":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 465
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    .line 466
    .local v2, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    .line 467
    .local v3, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 468
    aget-object v5, v3, v4

    invoke-interface {v5, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    aput-object v5, v2, v4

    .line 467
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 464
    .end local v2    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "k":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v1    # "blockIndex":I
    :cond_1
    return-object v0
.end method

.method public scalarMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 482
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v1, 0x0

    .local v1, "blockIndex":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 483
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    .line 484
    .local v2, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    .line 485
    .local v3, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 486
    aget-object v5, v3, v4

    invoke-interface {v5, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    aput-object v5, v2, v4

    .line 485
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 482
    .end local v2    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "k":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "blockIndex":I
    :cond_1
    return-object v0
.end method

.method public setColumn(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 11
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1136
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "array":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1137
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v0

    .line 1138
    .local v0, "nRows":I
    array-length v1, p2

    if-ne v1, v0, :cond_2

    .line 1143
    div-int/lit8 v1, p1, 0x24

    .line 1144
    .local v1, "jBlock":I
    mul-int/lit8 v2, v1, 0x24

    sub-int v2, p1, v2

    .line 1145
    .local v2, "jColumn":I
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    .line 1146
    .local v3, "jWidth":I
    const/4 v4, 0x0

    .line 1147
    .local v4, "outIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v6, :cond_1

    .line 1148
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v6

    .line 1149
    .local v6, "iHeight":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    .line 1150
    .local v7, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 1151
    mul-int v9, v8, v3

    add-int/2addr v9, v2

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "outIndex":I
    .local v10, "outIndex":I
    aget-object v4, p2, v4

    aput-object v4, v7, v9

    .line 1150
    add-int/lit8 v8, v8, 0x1

    move v4, v10

    goto :goto_1

    .line 1147
    .end local v6    # "iHeight":I
    .end local v7    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v8    # "i":I
    .end local v10    # "outIndex":I
    .restart local v4    # "outIndex":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1154
    .end local v5    # "iBlock":I
    :cond_1
    return-void

    .line 1139
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

.method setColumnMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    .locals 13
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 973
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "matrix":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 974
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v0

    .line 975
    .local v0, "nRows":I
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_3

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 983
    div-int/lit8 v1, p1, 0x24

    .line 984
    .local v1, "jBlock":I
    mul-int/lit8 v2, v1, 0x24

    sub-int v2, p1, v2

    .line 985
    .local v2, "jColumn":I
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    .line 986
    .local v3, "jWidth":I
    const/4 v4, 0x0

    .line 987
    .local v4, "mBlockIndex":I
    const/4 v5, 0x0

    .line 988
    .local v5, "mIndex":I
    iget-object v6, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v4

    .line 989
    .local v6, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v7, 0x0

    .local v7, "iBlock":I
    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v7, v8, :cond_2

    .line 990
    invoke-direct {p0, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v8

    .line 991
    .local v8, "iHeight":I
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v10, v7

    add-int/2addr v10, v1

    aget-object v9, v9, v10

    .line 992
    .local v9, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_1

    .line 993
    array-length v11, v6

    if-lt v5, v11, :cond_0

    .line 994
    iget-object v11, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v4, v4, 0x1

    aget-object v6, v11, v4

    .line 995
    const/4 v5, 0x0

    .line 997
    :cond_0
    mul-int v11, v10, v3

    add-int/2addr v11, v2

    add-int/lit8 v12, v5, 0x1

    .end local v5    # "mIndex":I
    .local v12, "mIndex":I
    aget-object v5, v6, v5

    aput-object v5, v9, v11

    .line 992
    add-int/lit8 v10, v10, 0x1

    move v5, v12

    goto :goto_1

    .line 989
    .end local v8    # "iHeight":I
    .end local v9    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v10    # "i":I
    .end local v12    # "mIndex":I
    .restart local v5    # "mIndex":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1000
    .end local v7    # "iBlock":I
    :cond_2
    return-void

    .line 977
    .end local v1    # "jBlock":I
    .end local v2    # "jColumn":I
    .end local v3    # "jWidth":I
    .end local v4    # "mBlockIndex":I
    .end local v5    # "mIndex":I
    .end local v6    # "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 954
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "matrix":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 958
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1062
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "vector":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setColumn(I[Lorg/apache/commons/math3/FieldElement;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    goto :goto_0

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/FieldVector;)V

    .line 1066
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1175
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p3, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1176
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1178
    div-int/lit8 v0, p1, 0x24

    .line 1179
    .local v0, "iBlock":I
    div-int/lit8 v1, p2, 0x24

    .line 1180
    .local v1, "jBlock":I
    mul-int/lit8 v2, v0, 0x24

    sub-int v2, p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x24

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    .line 1183
    .local v2, "k":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    aput-object p3, v3, v2

    .line 1184
    return-void
.end method

.method public setRow(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 8
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1092
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "array":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1093
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 1094
    .local v0, "nCols":I
    array-length v1, p2

    if-ne v1, v0, :cond_1

    .line 1099
    div-int/lit8 v1, p1, 0x24

    .line 1100
    .local v1, "iBlock":I
    mul-int/lit8 v2, v1, 0x24

    sub-int v2, p1, v2

    .line 1101
    .local v2, "iRow":I
    const/4 v3, 0x0

    .line 1102
    .local v3, "outIndex":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v5, :cond_0

    .line 1103
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    .line 1104
    .local v5, "jWidth":I
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v4

    aget-object v6, v6, v7

    .line 1105
    .local v6, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int v7, v2, v5

    invoke-static {p2, v3, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1106
    add-int/2addr v3, v5

    .line 1102
    .end local v5    # "jWidth":I
    .end local v6    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1108
    .end local v4    # "jBlock":I
    :cond_0
    return-void

    .line 1095
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

.method public setRowMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    .locals 13
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 889
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "matrix":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 890
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 891
    .local v0, "nCols":I
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 899
    div-int/lit8 v1, p1, 0x24

    .line 900
    .local v1, "iBlock":I
    mul-int/lit8 v2, v1, 0x24

    sub-int v2, p1, v2

    .line 901
    .local v2, "iRow":I
    const/4 v3, 0x0

    .line 902
    .local v3, "mBlockIndex":I
    const/4 v4, 0x0

    .line 903
    .local v4, "mIndex":I
    iget-object v5, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v3

    .line 904
    .local v5, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v6, v7, :cond_1

    .line 905
    invoke-direct {p0, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v7

    .line 906
    .local v7, "jWidth":I
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v6

    aget-object v8, v8, v9

    .line 907
    .local v8, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    array-length v9, v5

    sub-int/2addr v9, v4

    .line 908
    .local v9, "available":I
    if-le v7, v9, :cond_0

    .line 909
    mul-int v10, v2, v7

    invoke-static {v5, v4, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    iget-object v10, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v3, v3, 0x1

    aget-object v5, v10, v3

    .line 911
    mul-int v10, v2, v7

    sub-int v11, v7, v9

    const/4 v12, 0x0

    invoke-static {v5, v12, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    sub-int v4, v7, v9

    goto :goto_1

    .line 914
    :cond_0
    mul-int v10, v2, v7

    invoke-static {v5, v4, v8, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    add-int/2addr v4, v7

    .line 904
    .end local v7    # "jWidth":I
    .end local v8    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v9    # "available":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 918
    .end local v6    # "jBlock":I
    :cond_1
    return-void

    .line 893
    .end local v1    # "iBlock":I
    .end local v2    # "iRow":I
    .end local v3    # "mBlockIndex":I
    .end local v4    # "mIndex":I
    .end local v5    # "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v1, v3, v4, v2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 1
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 870
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "matrix":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    goto :goto_0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 874
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 1
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1028
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p2, "vector":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setRow(I[Lorg/apache/commons/math3/FieldElement;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    goto :goto_0

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setRowVector(ILorg/apache/commons/math3/linear/FieldVector;)V

    .line 1032
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 25
    .param p2, "row"    # I
    .param p3, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 788
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "subMatrix":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 789
    const/4 v4, 0x0

    aget-object v4, v1, v4

    array-length v4, v4

    .line 790
    .local v4, "refLength":I
    if-eqz v4, :cond_5

    .line 793
    array-length v5, v1

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    .line 794
    .local v5, "endRow":I
    add-int v6, v3, v4

    add-int/lit8 v6, v6, -0x1

    .line 795
    .local v6, "endColumn":I
    invoke-virtual {v0, v2, v5, v3, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 796
    move-object/from16 v7, p1

    .local v7, "arr$":[[Lorg/apache/commons/math3/FieldElement;
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 797
    .local v10, "subRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    array-length v11, v10

    if-ne v11, v4, :cond_0

    .line 796
    .end local v10    # "subRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 798
    .restart local v10    # "subRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_0
    new-instance v11, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v12, v10

    invoke-direct {v11, v4, v12}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v11

    .line 803
    .end local v7    # "arr$":[[Lorg/apache/commons/math3/FieldElement;
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    .end local v10    # "subRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    div-int/lit8 v7, v2, 0x24

    .line 804
    .local v7, "blockStartRow":I
    add-int/lit8 v8, v5, 0x24

    div-int/lit8 v8, v8, 0x24

    .line 805
    .local v8, "blockEndRow":I
    div-int/lit8 v9, v3, 0x24

    .line 806
    .local v9, "blockStartColumn":I
    add-int/lit8 v10, v6, 0x24

    div-int/lit8 v10, v10, 0x24

    .line 809
    .local v10, "blockEndColumn":I
    move v11, v7

    .local v11, "iBlock":I
    :goto_1
    if-ge v11, v8, :cond_4

    .line 810
    invoke-direct {v0, v11}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v12

    .line 811
    .local v12, "iHeight":I
    mul-int/lit8 v13, v11, 0x24

    .line 812
    .local v13, "firstRow":I
    invoke-static {v2, v13}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v14

    .line 813
    .local v14, "iStart":I
    add-int/lit8 v15, v5, 0x1

    add-int v1, v13, v12

    invoke-static {v15, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    .line 815
    .local v1, "iEnd":I
    move v15, v9

    .local v15, "jBlock":I
    :goto_2
    if-ge v15, v10, :cond_3

    .line 816
    invoke-direct {v0, v15}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v16

    .line 817
    .local v16, "jWidth":I
    mul-int/lit8 v2, v15, 0x24

    .line 818
    .local v2, "firstColumn":I
    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v17

    .line 819
    .local v17, "jStart":I
    move/from16 v18, v2

    .end local v2    # "firstColumn":I
    .local v18, "firstColumn":I
    add-int/lit8 v2, v6, 0x1

    add-int v3, v18, v16

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 820
    .local v2, "jEnd":I
    sub-int v3, v2, v17

    .line 823
    .local v3, "jLength":I
    move/from16 v19, v2

    .end local v2    # "jEnd":I
    .local v19, "jEnd":I
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v20, v2

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v2, v11

    add-int/2addr v2, v15

    aget-object v2, v20, v2

    .line 824
    .local v2, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move/from16 v20, v14

    move/from16 v0, v20

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_2

    .line 825
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

    .line 824
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

    .line 815
    .end local v0    # "i":I
    .end local v1    # "iEnd":I
    .end local v2    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
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

    .line 809
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

    .line 832
    .end local v11    # "iBlock":I
    .end local v24    # "refLength":I
    .restart local v4    # "refLength":I
    :cond_4
    return-void

    .line 791
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

.method public subtract(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 441
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 443
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 446
    .local v0, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v1, 0x0

    .local v1, "blockIndex":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 447
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    .line 448
    .local v2, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    .line 449
    .local v3, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v4, p1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v1

    .line 450
    .local v4, "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 451
    aget-object v6, v3, v5

    aget-object v7, v4, v5

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v2, v5

    .line 450
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 446
    .end local v2    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "mBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "k":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "blockIndex":I
    :cond_1
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 393
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    move-object v0, v2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->subtract(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 394
    :catch_0
    move-exception v0

    .line 397
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 399
    new-instance v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    iget v5, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v6, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 402
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v4, 0x0

    .line 403
    .local v4, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v6, :cond_3

    .line 404
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    iget v7, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 407
    iget-object v7, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v4

    .line 408
    .local v7, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v8, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v4

    .line 409
    .local v8, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v9, v5, 0x24

    .line 410
    .local v9, "pStart":I
    add-int/lit8 v10, v9, 0x24

    iget v11, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 411
    .local v10, "pEnd":I
    mul-int/lit8 v11, v6, 0x24

    .line 412
    .local v11, "qStart":I
    add-int/lit8 v12, v11, 0x24

    iget v13, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 413
    .local v12, "qEnd":I
    const/4 v13, 0x0

    .line 414
    .local v13, "k":I
    move v14, v9

    .local v14, "p":I
    :goto_2
    if-ge v14, v10, :cond_1

    .line 415
    move v15, v11

    .local v15, "q":I
    :goto_3
    if-ge v15, v12, :cond_0

    .line 416
    move-object/from16 v16, v0

    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .local v16, "cce":Ljava/lang/ClassCastException;
    aget-object v0, v8, v13

    invoke-interface {v2, v14, v15}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v7, v13

    .line 417
    add-int/lit8 v13, v13, 0x1

    .line 415
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_3

    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    :cond_0
    move-object/from16 v16, v0

    .line 414
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v15    # "q":I
    .restart local v16    # "cce":Ljava/lang/ClassCastException;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    goto :goto_2

    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    :cond_1
    move-object/from16 v16, v0

    .line 422
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v14    # "p":I
    .restart local v16    # "cce":Ljava/lang/ClassCastException;
    nop

    .end local v7    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v8    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v9    # "pStart":I
    .end local v10    # "pEnd":I
    .end local v11    # "qStart":I
    .end local v12    # "qEnd":I
    .end local v13    # "k":I
    add-int/lit8 v4, v4, 0x1

    .line 404
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto :goto_1

    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    :cond_2
    move-object/from16 v16, v0

    .line 403
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v6    # "jBlock":I
    .restart local v16    # "cce":Ljava/lang/ClassCastException;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto :goto_0

    .line 427
    .end local v5    # "iBlock":I
    .end local v16    # "cce":Ljava/lang/ClassCastException;
    .restart local v0    # "cce":Ljava/lang/ClassCastException;
    :cond_3
    return-object v3
.end method

.method public transpose()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 1221
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    .line 1222
    .local v1, "nRows":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 1223
    .local v2, "nCols":I
    new-instance v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 1226
    .local v3, "out":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    const/4 v4, 0x0

    .line 1227
    .local v4, "blockIndex":I
    const/4 v5, 0x0

    .local v5, "iBlock":I
    :goto_0
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_3

    .line 1228
    const/4 v6, 0x0

    .local v6, "jBlock":I
    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v6, v7, :cond_2

    .line 1231
    iget-object v7, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v4

    .line 1232
    .local v7, "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v9, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v9, v6

    add-int/2addr v9, v5

    aget-object v8, v8, v9

    .line 1233
    .local v8, "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    mul-int/lit8 v9, v5, 0x24

    .line 1234
    .local v9, "pStart":I
    add-int/lit8 v10, v9, 0x24

    iget v11, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 1235
    .local v10, "pEnd":I
    mul-int/lit8 v11, v6, 0x24

    .line 1236
    .local v11, "qStart":I
    add-int/lit8 v12, v11, 0x24

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 1237
    .local v12, "qEnd":I
    const/4 v13, 0x0

    .line 1238
    .local v13, "k":I
    move v14, v9

    .local v14, "p":I
    :goto_2
    if-ge v14, v10, :cond_1

    .line 1239
    sub-int v15, v10, v9

    .line 1240
    .local v15, "lInc":I
    sub-int v16, v14, v9

    .line 1241
    .local v16, "l":I
    move/from16 v17, v11

    move/from16 v0, v17

    .local v0, "q":I
    :goto_3
    if-ge v0, v12, :cond_0

    .line 1242
    aget-object v17, v8, v16

    aput-object v17, v7, v13

    .line 1243
    add-int/lit8 v13, v13, 0x1

    .line 1244
    add-int v16, v16, v15

    .line 1241
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1238
    .end local v0    # "q":I
    .end local v15    # "lInc":I
    .end local v16    # "l":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 1249
    .end local v14    # "p":I
    :cond_1
    nop

    .end local v7    # "outBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v8    # "tBlock":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v9    # "pStart":I
    .end local v10    # "pEnd":I
    .end local v11    # "qStart":I
    .end local v12    # "qEnd":I
    .end local v13    # "k":I
    add-int/lit8 v4, v4, 0x1

    .line 1228
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 1227
    .end local v6    # "jBlock":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 1254
    .end local v5    # "iBlock":I
    :cond_3
    return-object v3
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1468
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v6, v0, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 1469
    const/4 p1, 0x0

    .line 1470
    .local p1, "blockIndex":I
    const/4 v1, 0x0

    .local v1, "iBlock":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    .line 1471
    mul-int/lit8 v2, v1, 0x24

    .line 1472
    .local v2, "pStart":I
    add-int/lit8 v3, v2, 0x24

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 1473
    .local v3, "pEnd":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v5, :cond_2

    .line 1474
    mul-int/lit8 v5, v4, 0x24

    .line 1475
    .local v5, "qStart":I
    add-int/lit8 v6, v5, 0x24

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    .line 1476
    .local v6, "qEnd":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, p1

    .line 1477
    .local v7, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v8, 0x0

    .line 1478
    .local v8, "k":I
    move v9, v2

    .local v9, "p":I
    :goto_2
    if-ge v9, v3, :cond_1

    .line 1479
    move v10, v5

    .local v10, "q":I
    :goto_3
    if-ge v10, v6, :cond_0

    .line 1480
    aget-object v11, v7, v8

    invoke-interface {v0, v9, v10, v11}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v11

    aput-object v11, v7, v8

    .line 1481
    add-int/lit8 v8, v8, 0x1

    .line 1479
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1478
    .end local v10    # "q":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1484
    .end local v9    # "p":I
    :cond_1
    nop

    .end local v5    # "qStart":I
    .end local v6    # "qEnd":I
    .end local v7    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v8    # "k":I
    add-int/lit8 p1, p1, 0x1

    .line 1473
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1470
    .end local v2    # "pStart":I
    .end local v3    # "pEnd":I
    .end local v4    # "jBlock":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1487
    .end local v1    # "iBlock":I
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    return-object v1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 17
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1521
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1522
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 1523
    div-int/lit8 v1, v4, 0x24

    .local v1, "iBlock":I
    :goto_0
    div-int/lit8 v2, p3, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1524
    mul-int/lit8 v2, v1, 0x24

    .line 1525
    .local v2, "p0":I
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 1526
    .local v3, "pStart":I
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v7, p3, 0x1

    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1527
    .local v5, "pEnd":I
    div-int/lit8 v7, v6, 0x24

    .local v7, "jBlock":I
    :goto_1
    div-int/lit8 v8, p5, 0x24

    add-int/lit8 v8, v8, 0x1

    if-ge v7, v8, :cond_2

    .line 1528
    invoke-direct {v0, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v8

    .line 1529
    .local v8, "jWidth":I
    mul-int/lit8 v9, v7, 0x24

    .line 1530
    .local v9, "q0":I
    invoke-static {v6, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v10

    .line 1531
    .local v10, "qStart":I
    add-int/lit8 v11, v7, 0x1

    mul-int/lit8 v11, v11, 0x24

    add-int/lit8 v12, p5, 0x1

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 1532
    .local v11, "qEnd":I
    iget-object v12, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v13, v1

    add-int/2addr v13, v7

    aget-object v12, v12, v13

    .line 1533
    .local v12, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move v13, v3

    .local v13, "p":I
    :goto_2
    if-ge v13, v5, :cond_1

    .line 1534
    sub-int v14, v13, v2

    mul-int/2addr v14, v8

    add-int/2addr v14, v10

    sub-int/2addr v14, v9

    .line 1535
    .local v14, "k":I
    move v15, v10

    .local v15, "q":I
    :goto_3
    if-ge v15, v11, :cond_0

    .line 1536
    aget-object v0, v12, v14

    move/from16 v16, v1

    move-object/from16 v1, p1

    .end local v1    # "iBlock":I
    .local v16, "iBlock":I
    invoke-interface {v1, v13, v15, v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    aput-object v0, v12, v14

    .line 1537
    add-int/lit8 v14, v14, 0x1

    .line 1535
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_3

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_0
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1533
    .end local v1    # "iBlock":I
    .end local v14    # "k":I
    .end local v15    # "q":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_2

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_1
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1527
    .end local v1    # "iBlock":I
    .end local v8    # "jWidth":I
    .end local v9    # "q0":I
    .end local v10    # "qStart":I
    .end local v11    # "qEnd":I
    .end local v12    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v13    # "p":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_1

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_2
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1523
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v3    # "pStart":I
    .end local v5    # "pEnd":I
    .end local v7    # "jBlock":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v0, v16, 0x1

    move v1, v0

    move-object/from16 v0, p0

    .end local v16    # "iBlock":I
    .local v0, "iBlock":I
    goto :goto_0

    .end local v0    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_3
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1542
    .end local v1    # "iBlock":I
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1493
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v6, v0, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 1494
    const/4 p1, 0x0

    .line 1495
    .local p1, "blockIndex":I
    const/4 v1, 0x0

    .local v1, "iBlock":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    .line 1496
    mul-int/lit8 v2, v1, 0x24

    .line 1497
    .local v2, "pStart":I
    add-int/lit8 v3, v2, 0x24

    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 1498
    .local v3, "pEnd":I
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v5, :cond_2

    .line 1499
    mul-int/lit8 v5, v4, 0x24

    .line 1500
    .local v5, "qStart":I
    add-int/lit8 v6, v5, 0x24

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    .line 1501
    .local v6, "qEnd":I
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, p1

    .line 1502
    .local v7, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v8, 0x0

    .line 1503
    .local v8, "k":I
    move v9, v2

    .local v9, "p":I
    :goto_2
    if-ge v9, v3, :cond_1

    .line 1504
    move v10, v5

    .local v10, "q":I
    :goto_3
    if-ge v10, v6, :cond_0

    .line 1505
    aget-object v11, v7, v8

    invoke-interface {v0, v9, v10, v11}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 1506
    add-int/lit8 v8, v8, 0x1

    .line 1504
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1503
    .end local v10    # "q":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1509
    .end local v9    # "p":I
    :cond_1
    nop

    .end local v5    # "qStart":I
    .end local v6    # "qEnd":I
    .end local v7    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v8    # "k":I
    add-int/lit8 p1, p1, 0x1

    .line 1498
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1495
    .end local v2    # "pStart":I
    .end local v3    # "pEnd":I
    .end local v4    # "jBlock":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1512
    .end local v1    # "iBlock":I
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    return-object v1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 17
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1551
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1552
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 1553
    div-int/lit8 v1, v4, 0x24

    .local v1, "iBlock":I
    :goto_0
    div-int/lit8 v2, p3, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1554
    mul-int/lit8 v2, v1, 0x24

    .line 1555
    .local v2, "p0":I
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 1556
    .local v3, "pStart":I
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v7, p3, 0x1

    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1557
    .local v5, "pEnd":I
    div-int/lit8 v7, v6, 0x24

    .local v7, "jBlock":I
    :goto_1
    div-int/lit8 v8, p5, 0x24

    add-int/lit8 v8, v8, 0x1

    if-ge v7, v8, :cond_2

    .line 1558
    invoke-direct {v0, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v8

    .line 1559
    .local v8, "jWidth":I
    mul-int/lit8 v9, v7, 0x24

    .line 1560
    .local v9, "q0":I
    invoke-static {v6, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v10

    .line 1561
    .local v10, "qStart":I
    add-int/lit8 v11, v7, 0x1

    mul-int/lit8 v11, v11, 0x24

    add-int/lit8 v12, p5, 0x1

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 1562
    .local v11, "qEnd":I
    iget-object v12, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v13, v1

    add-int/2addr v13, v7

    aget-object v12, v12, v13

    .line 1563
    .local v12, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move v13, v3

    .local v13, "p":I
    :goto_2
    if-ge v13, v5, :cond_1

    .line 1564
    sub-int v14, v13, v2

    mul-int/2addr v14, v8

    add-int/2addr v14, v10

    sub-int/2addr v14, v9

    .line 1565
    .local v14, "k":I
    move v15, v10

    .local v15, "q":I
    :goto_3
    if-ge v15, v11, :cond_0

    .line 1566
    aget-object v0, v12, v14

    move/from16 v16, v1

    move-object/from16 v1, p1

    .end local v1    # "iBlock":I
    .local v16, "iBlock":I
    invoke-interface {v1, v13, v15, v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 1567
    add-int/lit8 v14, v14, 0x1

    .line 1565
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_3

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_0
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1563
    .end local v1    # "iBlock":I
    .end local v14    # "k":I
    .end local v15    # "q":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_2

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_1
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1557
    .end local v1    # "iBlock":I
    .end local v8    # "jWidth":I
    .end local v9    # "q0":I
    .end local v10    # "qStart":I
    .end local v11    # "qEnd":I
    .end local v12    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v13    # "p":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_1

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_2
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1553
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v3    # "pStart":I
    .end local v5    # "pEnd":I
    .end local v7    # "jBlock":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v0, v16, 0x1

    move v1, v0

    move-object/from16 v0, p0

    .end local v16    # "iBlock":I
    .local v0, "iBlock":I
    goto :goto_0

    .end local v0    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_3
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1572
    .end local v1    # "iBlock":I
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1360
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v6, v0, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 1361
    const/4 p1, 0x0

    .local p1, "iBlock":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge p1, v1, :cond_3

    .line 1362
    mul-int/lit8 v1, p1, 0x24

    .line 1363
    .local v1, "pStart":I
    add-int/lit8 v2, v1, 0x24

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 1364
    .local v2, "pEnd":I
    move v3, v1

    .local v3, "p":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1365
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_2
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v5, :cond_1

    .line 1366
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    .line 1367
    .local v5, "jWidth":I
    mul-int/lit8 v6, v4, 0x24

    .line 1368
    .local v6, "qStart":I
    add-int/lit8 v7, v6, 0x24

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1369
    .local v7, "qEnd":I
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v9, p1

    add-int/2addr v9, v4

    aget-object v8, v8, v9

    .line 1370
    .local v8, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    sub-int v9, v3, v1

    mul-int/2addr v9, v5

    .line 1371
    .local v9, "k":I
    move v10, v6

    .local v10, "q":I
    :goto_3
    if-ge v10, v7, :cond_0

    .line 1372
    aget-object v11, v8, v9

    invoke-interface {v0, v3, v10, v11}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v11

    aput-object v11, v8, v9

    .line 1373
    add-int/lit8 v9, v9, 0x1

    .line 1371
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1365
    .end local v5    # "jWidth":I
    .end local v6    # "qStart":I
    .end local v7    # "qEnd":I
    .end local v8    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v9    # "k":I
    .end local v10    # "q":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1364
    .end local v4    # "jBlock":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1361
    .end local v1    # "pStart":I
    .end local v2    # "pEnd":I
    .end local v3    # "p":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1378
    .end local p1    # "iBlock":I
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 17
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1411
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<TT;>;"
    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1412
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 1413
    div-int/lit8 v1, v4, 0x24

    .local v1, "iBlock":I
    :goto_0
    div-int/lit8 v2, p3, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1414
    mul-int/lit8 v2, v1, 0x24

    .line 1415
    .local v2, "p0":I
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 1416
    .local v3, "pStart":I
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v7, p3, 0x1

    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1417
    .local v5, "pEnd":I
    move v7, v3

    .local v7, "p":I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 1418
    div-int/lit8 v8, v6, 0x24

    .local v8, "jBlock":I
    :goto_2
    div-int/lit8 v9, p5, 0x24

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_1

    .line 1419
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v9

    .line 1420
    .local v9, "jWidth":I
    mul-int/lit8 v10, v8, 0x24

    .line 1421
    .local v10, "q0":I
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    .line 1422
    .local v11, "qStart":I
    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v12, v12, 0x24

    add-int/lit8 v13, p5, 0x1

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 1423
    .local v12, "qEnd":I
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v14, v1

    add-int/2addr v14, v8

    aget-object v13, v13, v14

    .line 1424
    .local v13, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    sub-int v14, v7, v2

    mul-int/2addr v14, v9

    add-int/2addr v14, v11

    sub-int/2addr v14, v10

    .line 1425
    .local v14, "k":I
    move v15, v11

    .local v15, "q":I
    :goto_3
    if-ge v15, v12, :cond_0

    .line 1426
    aget-object v0, v13, v14

    move/from16 v16, v1

    move-object/from16 v1, p1

    .end local v1    # "iBlock":I
    .local v16, "iBlock":I
    invoke-interface {v1, v7, v15, v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    aput-object v0, v13, v14

    .line 1427
    add-int/lit8 v14, v14, 0x1

    .line 1425
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_3

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_0
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1418
    .end local v1    # "iBlock":I
    .end local v9    # "jWidth":I
    .end local v10    # "q0":I
    .end local v11    # "qStart":I
    .end local v12    # "qEnd":I
    .end local v13    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v14    # "k":I
    .end local v15    # "q":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_2

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_1
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1417
    .end local v1    # "iBlock":I
    .end local v8    # "jBlock":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_1

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_2
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1413
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v3    # "pStart":I
    .end local v5    # "pEnd":I
    .end local v7    # "p":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v0, v16, 0x1

    move v1, v0

    move-object/from16 v0, p0

    .end local v16    # "iBlock":I
    .local v0, "iBlock":I
    goto :goto_0

    .end local v0    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_3
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1432
    .end local v1    # "iBlock":I
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1384
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v6, v0, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .end local p1    # "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    .local v0, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 1385
    const/4 p1, 0x0

    .local p1, "iBlock":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge p1, v1, :cond_3

    .line 1386
    mul-int/lit8 v1, p1, 0x24

    .line 1387
    .local v1, "pStart":I
    add-int/lit8 v2, v1, 0x24

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 1388
    .local v2, "pEnd":I
    move v3, v1

    .local v3, "p":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1389
    const/4 v4, 0x0

    .local v4, "jBlock":I
    :goto_2
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v5, :cond_1

    .line 1390
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    .line 1391
    .local v5, "jWidth":I
    mul-int/lit8 v6, v4, 0x24

    .line 1392
    .local v6, "qStart":I
    add-int/lit8 v7, v6, 0x24

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1393
    .local v7, "qEnd":I
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v9, p1

    add-int/2addr v9, v4

    aget-object v8, v8, v9

    .line 1394
    .local v8, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    sub-int v9, v3, v1

    mul-int/2addr v9, v5

    .line 1395
    .local v9, "k":I
    move v10, v6

    .local v10, "q":I
    :goto_3
    if-ge v10, v7, :cond_0

    .line 1396
    aget-object v11, v8, v9

    invoke-interface {v0, v3, v10, v11}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 1397
    add-int/lit8 v9, v9, 0x1

    .line 1395
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1389
    .end local v5    # "jWidth":I
    .end local v6    # "qStart":I
    .end local v7    # "qEnd":I
    .end local v8    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v9    # "k":I
    .end local v10    # "q":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1388
    .end local v4    # "jBlock":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1385
    .end local v1    # "pStart":I
    .end local v2    # "pEnd":I
    .end local v3    # "p":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1402
    .end local p1    # "iBlock":I
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 17
    .param p2, "startRow"    # I
    .param p3, "endRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "endColumn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1441
    .local p0, "this":Lorg/apache/commons/math3/linear/BlockFieldMatrix;, "Lorg/apache/commons/math3/linear/BlockFieldMatrix<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<TT;>;"
    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1442
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 1443
    div-int/lit8 v1, v4, 0x24

    .local v1, "iBlock":I
    :goto_0
    div-int/lit8 v2, p3, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1444
    mul-int/lit8 v2, v1, 0x24

    .line 1445
    .local v2, "p0":I
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 1446
    .local v3, "pStart":I
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x24

    add-int/lit8 v7, p3, 0x1

    invoke-static {v5, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1447
    .local v5, "pEnd":I
    move v7, v3

    .local v7, "p":I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 1448
    div-int/lit8 v8, v6, 0x24

    .local v8, "jBlock":I
    :goto_2
    div-int/lit8 v9, p5, 0x24

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_1

    .line 1449
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v9

    .line 1450
    .local v9, "jWidth":I
    mul-int/lit8 v10, v8, 0x24

    .line 1451
    .local v10, "q0":I
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    .line 1452
    .local v11, "qStart":I
    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v12, v12, 0x24

    add-int/lit8 v13, p5, 0x1

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    .line 1453
    .local v12, "qEnd":I
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v14, v1

    add-int/2addr v14, v8

    aget-object v13, v13, v14

    .line 1454
    .local v13, "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    sub-int v14, v7, v2

    mul-int/2addr v14, v9

    add-int/2addr v14, v11

    sub-int/2addr v14, v10

    .line 1455
    .local v14, "k":I
    move v15, v11

    .local v15, "q":I
    :goto_3
    if-ge v15, v12, :cond_0

    .line 1456
    aget-object v0, v13, v14

    move/from16 v16, v1

    move-object/from16 v1, p1

    .end local v1    # "iBlock":I
    .local v16, "iBlock":I
    invoke-interface {v1, v7, v15, v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    .line 1457
    add-int/lit8 v14, v14, 0x1

    .line 1455
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_3

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_0
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1448
    .end local v1    # "iBlock":I
    .end local v9    # "jWidth":I
    .end local v10    # "q0":I
    .end local v11    # "qStart":I
    .end local v12    # "qEnd":I
    .end local v13    # "block":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v14    # "k":I
    .end local v15    # "q":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_2

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_1
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1447
    .end local v1    # "iBlock":I
    .end local v8    # "jBlock":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_1

    .end local v16    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_2
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1443
    .end local v1    # "iBlock":I
    .end local v2    # "p0":I
    .end local v3    # "pStart":I
    .end local v5    # "pEnd":I
    .end local v7    # "p":I
    .restart local v16    # "iBlock":I
    add-int/lit8 v0, v16, 0x1

    move v1, v0

    move-object/from16 v0, p0

    .end local v16    # "iBlock":I
    .local v0, "iBlock":I
    goto :goto_0

    .end local v0    # "iBlock":I
    .restart local v1    # "iBlock":I
    :cond_3
    move/from16 v16, v1

    move-object/from16 v1, p1

    .line 1462
    .end local v1    # "iBlock":I
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method
