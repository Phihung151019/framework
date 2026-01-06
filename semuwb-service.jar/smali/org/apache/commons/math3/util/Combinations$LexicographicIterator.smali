.class Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;
.super Ljava/lang/Object;
.source "Combinations.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LexicographicIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[I>;"
    }
.end annotation


# instance fields
.field private final c:[I

.field private j:I

.field private final k:I

.field private more:Z


# direct methods
.method constructor <init>(II)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "k"    # I

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    .line 207
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    .line 208
    add-int/lit8 v0, p2, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    .line 209
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-lt p2, p1, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 215
    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    add-int/lit8 v3, v1, -0x1

    aput v3, v2, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    add-int/lit8 v2, p2, 0x1

    aput p1, v1, v2

    .line 219
    iget-object v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    add-int/lit8 v2, p2, 0x2

    aput v0, v1, v2

    .line 220
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    .line 221
    return-void

    .line 210
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    .line 211
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->next()[I

    move-result-object v0

    return-object v0
.end method

.method public next()[I
    .locals 9

    .line 234
    iget-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    if-eqz v0, :cond_5

    .line 238
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    new-array v0, v0, [I

    .line 239
    .local v0, "ret":[I
    iget-object v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "x":I
    iget v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    if-lez v2, :cond_0

    .line 245
    iget v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    .line 246
    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    aput v1, v2, v4

    .line 247
    iget v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    .line 248
    return-object v0

    .line 251
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    aget v2, v2, v3

    add-int/2addr v2, v3

    iget-object v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    if-ge v2, v5, :cond_1

    .line 252
    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    aget v4, v2, v3

    add-int/2addr v4, v3

    aput v4, v2, v3

    .line 253
    return-object v0

    .line 255
    :cond_1
    iput v6, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    .line 258
    const/4 v2, 0x0

    .line 259
    .local v2, "stepDone":Z
    :goto_0
    if-nez v2, :cond_3

    .line 260
    iget-object v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v7, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    sub-int/2addr v7, v3

    iget v8, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    sub-int/2addr v8, v6

    aput v8, v5, v7

    .line 261
    iget-object v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v7, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    aget v5, v5, v7

    add-int/lit8 v1, v5, 0x1

    .line 262
    iget-object v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v7, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    add-int/2addr v7, v3

    aget v5, v5, v7

    if-ne v1, v5, :cond_2

    .line 263
    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    goto :goto_0

    .line 265
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 269
    :cond_3
    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    iget v6, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    if-le v5, v6, :cond_4

    .line 270
    iput-boolean v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    .line 271
    return-object v0

    .line 274
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    aput v1, v4, v5

    .line 275
    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    .line 276
    return-object v0

    .line 235
    .end local v0    # "ret":[I
    .end local v1    # "x":I
    .end local v2    # "stepDone":Z
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
