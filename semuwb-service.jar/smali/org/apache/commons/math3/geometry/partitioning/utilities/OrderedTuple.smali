.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;
.super Ljava/lang/Object;
.source "OrderedTuple.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field private static final IMPLICIT_ONE:J = 0x10000000000000L

.field private static final MANTISSA_MASK:J = 0xfffffffffffffL

.field private static final SIGN_MASK:J = -0x8000000000000000L


# instance fields
.field private components:[D

.field private encoding:[J

.field private lsb:I

.field private nan:Z

.field private negInf:Z

.field private offset:I

.field private posInf:Z


# direct methods
.method public varargs constructor <init>([D)V
    .locals 10
    .param p1, "components"    # [D

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    .line 136
    const/high16 v0, -0x80000000

    .line 137
    .local v0, "msb":I
    const v1, 0x7fffffff

    iput v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    .line 139
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    .line 140
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_4

    .line 142
    aget-wide v7, p1, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    aget-wide v3, p1, v2

    const-wide/16 v7, 0x0

    cmpg-double v3, v3, v7

    if-gez v3, :cond_0

    .line 144
    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    goto :goto_1

    .line 146
    :cond_0
    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    goto :goto_1

    .line 148
    :cond_1
    aget-wide v7, p1, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    goto :goto_1

    .line 151
    :cond_2
    aget-wide v6, p1, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 152
    .local v6, "b":J
    invoke-static {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->mantissa(J)J

    move-result-wide v8

    .line 153
    .local v8, "m":J
    cmp-long v3, v8, v4

    if-eqz v3, :cond_3

    .line 154
    invoke-static {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->exponent(J)I

    move-result v3

    .line 155
    .local v3, "e":I
    invoke-static {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->computeMSB(J)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    .line 156
    iget v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->computeLSB(J)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    .line 141
    .end local v3    # "e":I
    .end local v6    # "b":J
    .end local v8    # "m":J
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "i":I
    :cond_4
    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-eqz v2, :cond_5

    .line 163
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    .line 164
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    .line 165
    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    .line 168
    :cond_5
    iget v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    if-gt v2, v0, :cond_6

    .line 170
    add-int/lit8 v1, v0, 0x10

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encode(I)V

    goto :goto_2

    .line 172
    :cond_6
    new-array v2, v6, [J

    aput-wide v4, v2, v1

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    .line 177
    :goto_2
    return-void
.end method

.method private static computeLSB(J)I
    .locals 8
    .param p0, "l"    # J

    .line 392
    move-wide v0, p0

    .line 393
    .local v0, "ll":J
    const-wide v2, -0x100000000L

    .line 394
    .local v2, "mask":J
    const/16 v4, 0x20

    .line 395
    .local v4, "scale":I
    const/4 v5, 0x0

    .line 397
    .local v5, "lsb":I
    :goto_0
    if-eqz v4, :cond_1

    .line 398
    and-long v6, v0, v2

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 399
    or-int/2addr v5, v4

    .line 400
    shr-long/2addr v0, v4

    .line 402
    :cond_0
    shr-int/lit8 v4, v4, 0x1

    .line 403
    shr-long/2addr v2, v4

    goto :goto_0

    .line 406
    :cond_1
    return v5
.end method

.method private static computeMSB(J)I
    .locals 8
    .param p0, "l"    # J

    .line 366
    move-wide v0, p0

    .line 367
    .local v0, "ll":J
    const-wide v2, 0xffffffffL

    .line 368
    .local v2, "mask":J
    const/16 v4, 0x20

    .line 369
    .local v4, "scale":I
    const/4 v5, 0x0

    .line 371
    .local v5, "msb":I
    :goto_0
    if-eqz v4, :cond_1

    .line 372
    and-long v6, v0, v2

    cmp-long v6, v6, v0

    if-eqz v6, :cond_0

    .line 373
    or-int/2addr v5, v4

    .line 374
    shr-long/2addr v0, v4

    .line 376
    :cond_0
    shr-int/lit8 v4, v4, 0x1

    .line 377
    shr-long/2addr v2, v4

    goto :goto_0

    .line 380
    :cond_1
    return v5
.end method

.method private encode(I)V
    .locals 12
    .param p1, "minOffset"    # I

    .line 186
    add-int/lit8 v0, p1, 0x1f

    iput v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    .line 187
    iget v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    iget v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    rem-int/lit8 v1, v1, 0x20

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    .line 189
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v0, v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 196
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    sub-int/2addr v0, v1

    .line 197
    .local v0, "neededBits":I
    add-int/lit8 v1, v0, 0x3e

    div-int/lit8 v1, v1, 0x3f

    .line 198
    .local v1, "neededLongs":I
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v2, v2

    mul-int/2addr v2, v1

    new-array v2, v2, [J

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "eIndex":I
    const/16 v3, 0x3e

    .line 203
    .local v3, "shift":I
    const-wide/16 v4, 0x0

    .line 204
    .local v4, "word":J
    iget v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    .local v6, "k":I
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v7, v7

    if-ge v2, v7, :cond_4

    .line 205
    const/4 v7, 0x0

    .local v7, "vIndex":I
    :goto_1
    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 206
    invoke-direct {p0, v7, v6}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->getBit(II)I

    move-result v8

    if-eqz v8, :cond_1

    .line 207
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v3

    or-long/2addr v4, v8

    .line 209
    :cond_1
    add-int/lit8 v8, v3, -0x1

    .end local v3    # "shift":I
    .local v8, "shift":I
    if-nez v3, :cond_2

    .line 210
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    add-int/lit8 v9, v2, 0x1

    .end local v2    # "eIndex":I
    .local v9, "eIndex":I
    aput-wide v4, v3, v2

    .line 211
    const-wide/16 v2, 0x0

    .line 212
    .end local v4    # "word":J
    .local v2, "word":J
    const/16 v4, 0x3e

    move-wide v10, v2

    move v3, v4

    move-wide v4, v10

    move v2, v9

    .end local v8    # "shift":I
    .local v4, "shift":I
    goto :goto_2

    .line 209
    .end local v9    # "eIndex":I
    .local v2, "eIndex":I
    .local v4, "word":J
    .restart local v8    # "shift":I
    :cond_2
    move v3, v8

    .line 205
    .end local v8    # "shift":I
    .restart local v3    # "shift":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 204
    .end local v7    # "vIndex":I
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 217
    .end local v6    # "k":I
    :cond_4
    return-void
.end method

.method private static exponent(J)I
    .locals 3
    .param p0, "bits"    # J

    .line 345
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, p0

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0x433

    return v0
.end method

.method private getBit(II)I
    .locals 10
    .param p1, "i"    # I
    .param p2, "k"    # I

    .line 417
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 418
    .local v0, "bits":J
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->exponent(J)I

    move-result v2

    .line 419
    .local v2, "e":I
    const/4 v3, 0x0

    if-lt p2, v2, :cond_6

    iget v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    if-le p2, v4, :cond_0

    goto :goto_2

    .line 421
    :cond_0
    iget v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-ne p2, v4, :cond_2

    .line 422
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->sign(J)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_1

    move v3, v5

    :cond_1
    return v3

    .line 423
    :cond_2
    add-int/lit8 v4, v2, 0x34

    if-le p2, v4, :cond_4

    .line 424
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->sign(J)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    return v3

    .line 426
    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->sign(J)J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-nez v3, :cond_5

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->mantissa(J)J

    move-result-wide v3

    goto :goto_1

    :cond_5
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->mantissa(J)J

    move-result-wide v3

    neg-long v3, v3

    .line 427
    .local v3, "m":J
    :goto_1
    sub-int v5, p2, v2

    shr-long v5, v3, v5

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    long-to-int v5, v5

    return v5

    .line 420
    .end local v3    # "m":J
    :cond_6
    :goto_2
    return v3
.end method

.method private static mantissa(J)J
    .locals 5
    .param p0, "bits"    # J

    .line 353
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide v1, 0xfffffffffffffL

    if-nez v0, :cond_0

    and-long v0, p0, v1

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x10000000000000L

    and-long v0, p0, v1

    or-long/2addr v0, v3

    :goto_0
    return-wide v0
.end method

.method private static sign(J)J
    .locals 2
    .param p0, "bits"    # J

    .line 337
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 95
    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I
    .locals 8
    .param p1, "ot"    # Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    .line 250
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v1, v1

    if-ne v0, v1, :cond_d

    .line 251
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 252
    return v1

    .line 253
    :cond_0
    iget-boolean v0, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 254
    return v2

    .line 255
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    if-eqz v0, :cond_2

    goto :goto_3

    .line 257
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 261
    :cond_3
    iget v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    iget v3, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    if-ge v0, v3, :cond_4

    .line 262
    iget v0, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encode(I)V

    goto :goto_0

    .line 263
    :cond_4
    iget v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    iget v3, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    if-le v0, v3, :cond_5

    .line 264
    iget v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encode(I)V

    .line 267
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v0, v0

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v3, v3

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 268
    .local v0, "limit":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_8

    .line 269
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    aget-wide v4, v4, v3

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    aget-wide v6, v6, v3

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 270
    return v2

    .line 271
    :cond_6
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    aget-wide v4, v4, v3

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    aget-wide v6, v6, v3

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 272
    return v1

    .line 268
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 276
    .end local v3    # "i":I
    :cond_8
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v3, v3

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v4, v4

    if-ge v3, v4, :cond_9

    .line 277
    return v2

    .line 278
    :cond_9
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v2, v2

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v3, v3

    if-le v2, v3, :cond_a

    .line 279
    return v1

    .line 281
    :cond_a
    const/4 v1, 0x0

    return v1

    .line 258
    .end local v0    # "limit":I
    :cond_b
    :goto_2
    return v1

    .line 256
    :cond_c
    :goto_3
    return v2

    .line 287
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 294
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 295
    return v0

    .line 296
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 297
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 299
    :cond_2
    return v2
.end method

.method public getComponents()[D
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 307
    const/16 v0, 0x25

    .line 308
    .local v0, "multiplier":I
    const/16 v1, 0x61

    .line 309
    .local v1, "trueHash":I
    const/16 v2, 0x47

    .line 314
    .local v2, "falseHash":I
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([D)I

    move-result v3

    .line 315
    .local v3, "hash":I
    mul-int/lit8 v4, v3, 0x25

    iget v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    add-int/2addr v4, v5

    .line 316
    .end local v3    # "hash":I
    .local v4, "hash":I
    mul-int/lit8 v3, v4, 0x25

    iget v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    add-int/2addr v3, v5

    .line 317
    .end local v4    # "hash":I
    .restart local v3    # "hash":I
    mul-int/lit8 v4, v3, 0x25

    iget-boolean v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    const/16 v6, 0x61

    const/16 v7, 0x47

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    add-int/2addr v4, v5

    .line 318
    .end local v3    # "hash":I
    .restart local v4    # "hash":I
    mul-int/lit8 v3, v4, 0x25

    iget-boolean v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    add-int/2addr v3, v5

    .line 319
    .end local v4    # "hash":I
    .restart local v3    # "hash":I
    mul-int/lit8 v4, v3, 0x25

    iget-boolean v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    add-int/2addr v4, v6

    .line 321
    .end local v3    # "hash":I
    .restart local v4    # "hash":I
    return v4
.end method
