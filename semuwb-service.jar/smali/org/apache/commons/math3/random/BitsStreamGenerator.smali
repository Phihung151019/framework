.class public abstract Lorg/apache/commons/math3/random/BitsStreamGenerator;
.super Ljava/lang/Object;
.source "BitsStreamGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1332938L


# instance fields
.field private nextGaussian:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 42
    return-void
.end method

.method private nextBytesFill([BII)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 240
    move v0, p2

    .line 244
    .local v0, "index":I
    const v1, 0x7ffffffc

    and-int/2addr v1, p3

    add-int/2addr v1, v0

    .line 247
    .local v1, "indexLoopLimit":I
    :goto_0
    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    .line 248
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v2

    .line 249
    .local v2, "random":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    int-to-byte v4, v2

    aput-byte v4, p1, v0

    .line 250
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "index":I
    .restart local v0    # "index":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 251
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .restart local v3    # "index":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 252
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "index":I
    .restart local v0    # "index":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 253
    .end local v2    # "random":I
    goto :goto_0

    .line 255
    :cond_0
    add-int v3, p2, p3

    .line 258
    .local v3, "indexLimit":I
    if-ge v0, v3, :cond_2

    .line 259
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v2

    .line 261
    .restart local v2    # "random":I
    :goto_1
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    int-to-byte v5, v2

    aput-byte v5, p1, v0

    .line 262
    if-ge v4, v3, :cond_1

    .line 263
    ushr-int/lit8 v2, v2, 0x8

    move v0, v4

    goto :goto_1

    .line 262
    :cond_1
    move v0, v4

    .line 269
    .end local v2    # "random":I
    .end local v4    # "index":I
    .restart local v0    # "index":I
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 176
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 177
    return-void
.end method

.method protected abstract next(I)I
.end method

.method public nextBoolean()Z
    .locals 2

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 191
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextBytesFill([BII)V

    .line 192
    return-void
.end method

.method public nextBytes([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 212
    const/4 v0, 0x0

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 212
    if-ltz p2, :cond_1

    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 216
    if-ltz p3, :cond_0

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_0

    .line 221
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextBytesFill([BII)V

    .line 222
    return-void

    .line 218
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 214
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 7

    .line 71
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v0

    .line 72
    .local v1, "high":J
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    .line 73
    .local v0, "low":I
    int-to-long v3, v0

    or-long/2addr v3, v1

    long-to-double v3, v3

    const-wide/high16 v5, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v3, v5

    return-wide v3
.end method

.method public nextFloat()F
    .locals 2

    .line 78
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x34000000

    mul-float/2addr v0, v1

    return v0
.end method

.method public nextGaussian()D
    .locals 12

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextDouble()D

    move-result-wide v0

    .line 88
    .local v0, "x":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextDouble()D

    move-result-wide v2

    .line 89
    .local v2, "y":D
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, v0

    .line 90
    .local v4, "alpha":D
    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 91
    .local v6, "r":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    .line 92
    .local v8, "random":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    iput-wide v10, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 93
    .end local v0    # "x":D
    .end local v2    # "y":D
    .end local v4    # "alpha":D
    .end local v6    # "r":D
    goto :goto_0

    .line 95
    .end local v8    # "random":D
    :cond_0
    iget-wide v8, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 96
    .restart local v8    # "random":D
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    .line 99
    :goto_0
    return-wide v8
.end method

.method public nextInt()I
    .locals 1

    .line 105
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 124
    if-lez p1, :cond_1

    .line 125
    neg-int v0, p1

    and-int/2addr v0, p1

    const/16 v1, 0x1f

    if-ne v0, p1, :cond_0

    .line 126
    int-to-long v2, p1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    shr-long v0, v2, v1

    long-to-int v0, v0

    return v0

    .line 131
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    .line 132
    .local v0, "bits":I
    rem-int v2, v0, p1

    .line 133
    .local v2, "val":I
    sub-int v3, v0, v2

    add-int/lit8 v4, p1, -0x1

    add-int/2addr v3, v4

    if-ltz v3, :cond_0

    .line 134
    return v2

    .line 136
    .end local v0    # "bits":I
    .end local v2    # "val":I
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public nextLong()J
    .locals 7

    .line 141
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v0

    .line 142
    .local v1, "high":J
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 143
    .local v3, "low":J
    or-long v5, v1, v3

    return-wide v5
.end method

.method public nextLong(J)J
    .locals 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 158
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 162
    :cond_0
    const/16 v2, 0x1f

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 163
    .local v2, "bits":J
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 164
    rem-long v4, v2, p1

    .line 165
    .local v4, "val":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    add-long/2addr v6, v8

    cmp-long v6, v6, v0

    if-ltz v6, :cond_0

    .line 166
    return-wide v4

    .line 168
    .end local v2    # "bits":J
    .end local v4    # "val":J
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public abstract setSeed(I)V
.end method

.method public abstract setSeed(J)V
.end method

.method public abstract setSeed([I)V
.end method
