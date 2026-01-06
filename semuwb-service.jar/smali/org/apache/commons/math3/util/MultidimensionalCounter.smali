.class public Lorg/apache/commons/math3/util/MultidimensionalCounter;
.super Ljava/lang/Object;
.source "MultidimensionalCounter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final dimension:I

.field private final last:I

.field private final size:[I

.field private final totalSize:I

.field private final uniCounterOffset:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 5
    .param p1, "size"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    .line 172
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    .line 174
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    .line 176
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    .line 177
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    aget v0, p1, v0

    .line 178
    .local v0, "tS":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    if-ge v1, v2, :cond_1

    .line 179
    const/4 v2, 0x1

    .line 180
    .local v2, "count":I
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ge v3, v4, :cond_0

    .line 181
    aget v4, p1, v3

    mul-int/2addr v2, v4

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    .end local v3    # "j":I
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    aput v2, v3, v1

    .line 184
    aget v3, p1, v1

    mul-int/2addr v0, v3

    .line 178
    .end local v2    # "count":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    iget v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 188
    if-lez v0, :cond_2

    .line 192
    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    .line 193
    return-void

    .line 189
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/MultidimensionalCounter;

    .line 46
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/MultidimensionalCounter;

    .line 46
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/MultidimensionalCounter;

    .line 46
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/util/MultidimensionalCounter;)[I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/MultidimensionalCounter;

    .line 46
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    return-object v0
.end method


# virtual methods
.method public varargs getCount([I)I
    .locals 7
    .param p1, "c"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 260
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ne v0, v1, :cond_2

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ge v1, v2, :cond_1

    .line 265
    aget v2, p1, v1

    .line 266
    .local v2, "index":I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    aget v3, v3, v1

    if-ge v2, v3, :cond_0

    .line 270
    iget-object v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    aget v3, v3, v1

    aget v4, p1, v1

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 264
    .end local v2    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    aget v6, v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3

    .line 272
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_1
    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    aget v1, p1, v1

    add-int/2addr v1, v0

    return v1

    .line 261
    .end local v0    # "count":I
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getCounts(I)[I
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 222
    if-ltz p1, :cond_2

    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    if-ge p1, v0, :cond_2

    .line 227
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    new-array v0, v0, [I

    .line 229
    .local v0, "indices":[I
    const/4 v1, 0x0

    .line 230
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    if-ge v2, v3, :cond_1

    .line 231
    const/4 v3, 0x0

    .line 232
    .local v3, "idx":I
    iget-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    aget v4, v4, v2

    .line 233
    .local v4, "offset":I
    :goto_1
    if-gt v1, p1, :cond_0

    .line 234
    add-int/2addr v1, v4

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 237
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 238
    sub-int/2addr v1, v4

    .line 239
    aput v3, v0, v2

    .line 230
    .end local v3    # "idx":I
    .end local v4    # "offset":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    sub-int v3, p1, v1

    aput v3, v0, v2

    .line 244
    return-object v0

    .line 224
    .end local v0    # "indices":[I
    .end local v1    # "count":I
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getDimension()I
    .locals 1

    .line 210
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 281
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    return v0
.end method

.method public getSizes()[I
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->iterator()Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
    .locals 1

    .line 201
    new-instance v0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;-><init>(Lorg/apache/commons/math3/util/MultidimensionalCounter;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ge v1, v2, :cond_0

    .line 299
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    filled-new-array {v1}, [I

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->getCount([I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
