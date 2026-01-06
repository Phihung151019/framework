.class public Lorg/apache/commons/math3/random/MersenneTwister;
.super Lorg/apache/commons/math3/random/BitsStreamGenerator;
.source "MersenneTwister.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final M:I = 0x18d

.field private static final MAG01:[I

.field private static final N:I = 0x270

.field private static final serialVersionUID:J = 0x7832beb90773fa2eL


# instance fields
.field private mt:[I

.field private mti:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    const/4 v0, 0x0

    const v1, -0x66f74f21

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 105
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 106
    const/16 v0, 0x270

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    .line 108
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "seed"    # I

    .line 113
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 114
    const/16 v0, 0x270

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(I)V

    .line 116
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "seed"    # J

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 131
    const/16 v0, 0x270

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    .line 133
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "seed"    # [I

    .line 122
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 123
    const/16 v0, 0x270

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed([I)V

    .line 125
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 11
    .param p1, "bits"    # I

    .line 232
    iget v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    const/16 v1, 0x270

    if-lt v0, v1, :cond_2

    .line 233
    iget-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 234
    .local v0, "mtNext":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    const/16 v3, 0xe3

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-ge v2, v3, :cond_0

    .line 235
    move v3, v0

    .line 236
    .local v3, "mtCurr":I
    iget-object v6, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v7, v2, 0x1

    aget v0, v6, v7

    .line 237
    and-int/2addr v5, v3

    and-int/2addr v4, v0

    or-int/2addr v4, v5

    .line 238
    .local v4, "y":I
    iget-object v5, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget-object v6, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit16 v7, v2, 0x18d

    aget v6, v6, v7

    ushr-int/lit8 v7, v4, 0x1

    xor-int/2addr v6, v7

    sget-object v7, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aput v6, v5, v2

    .line 234
    .end local v3    # "mtCurr":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "k":I
    .end local v4    # "y":I
    :cond_0
    const/16 v2, 0xe3

    .restart local v2    # "k":I
    :goto_1
    const/16 v3, 0x26f

    if-ge v2, v3, :cond_1

    .line 241
    move v3, v0

    .line 242
    .restart local v3    # "mtCurr":I
    iget-object v6, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v7, v2, 0x1

    aget v0, v6, v7

    .line 243
    and-int v6, v3, v5

    and-int v7, v0, v4

    or-int/2addr v6, v7

    .line 244
    .local v6, "y":I
    iget-object v7, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget-object v8, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit16 v9, v2, -0xe3

    aget v8, v8, v9

    ushr-int/lit8 v9, v6, 0x1

    xor-int/2addr v8, v9

    sget-object v9, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v10, v6, 0x1

    aget v9, v9, v10

    xor-int/2addr v8, v9

    aput v8, v7, v2

    .line 240
    .end local v3    # "mtCurr":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 246
    .end local v2    # "k":I
    .end local v6    # "y":I
    :cond_1
    and-int v2, v0, v5

    iget-object v5, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v5, v5, v1

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 247
    .local v2, "y":I
    iget-object v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget-object v5, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/16 v6, 0x18c

    aget v5, v5, v6

    ushr-int/lit8 v6, v2, 0x1

    xor-int/2addr v5, v6

    sget-object v6, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v4, v3

    .line 249
    iput v1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    .line 252
    .end local v0    # "mtNext":I
    .end local v2    # "y":I
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget v1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    aget v0, v0, v1

    .line 255
    .local v0, "y":I
    ushr-int/lit8 v1, v0, 0xb

    xor-int/2addr v0, v1

    .line 256
    shl-int/lit8 v1, v0, 0x7

    const v2, -0x62d3a980

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 257
    shl-int/lit8 v1, v0, 0xf

    const/high16 v2, -0x103a0000

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 258
    ushr-int/lit8 v1, v0, 0x12

    xor-int/2addr v0, v1

    .line 260
    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, v0, v1

    return v1
.end method

.method public setSeed(I)V
    .locals 7
    .param p1, "seed"    # I

    .line 143
    int-to-long v0, p1

    .line 145
    .local v0, "longMT":J
    iget-object v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/4 v3, 0x0

    long-to-int v4, v0

    aput v4, v2, v3

    .line 146
    const/4 v2, 0x1

    iput v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    const/16 v4, 0x270

    if-ge v3, v4, :cond_0

    .line 149
    const/16 v3, 0x1e

    shr-long v3, v0, v3

    xor-long/2addr v3, v0

    const-wide/32 v5, 0x6c078965

    mul-long/2addr v3, v5

    iget v5, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    const-wide v5, 0xffffffffL

    and-long v0, v3, v5

    .line 150
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget v4, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    long-to-int v5, v0

    aput v5, v3, v4

    .line 146
    iget v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/MersenneTwister;->clear()V

    .line 154
    return-void
.end method

.method public setSeed(J)V
    .locals 3
    .param p1, "seed"    # J

    .line 215
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    const-wide v1, 0xffffffffL

    and-long/2addr v1, p1

    long-to-int v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed([I)V

    .line 216
    return-void
.end method

.method public setSeed([I)V
    .locals 26
    .param p1, "seed"    # [I

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    .line 168
    return-void

    .line 171
    :cond_0
    const v2, 0x12bd6aa

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(I)V

    .line 172
    const/4 v2, 0x1

    .line 173
    .local v2, "i":I
    const/4 v3, 0x0

    .line 175
    .local v3, "j":I
    array-length v4, v1

    const/16 v5, 0x270

    invoke-static {v5, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    .local v4, "k":I
    :goto_0
    const-wide/16 v13, 0x0

    const-wide/32 v15, 0x7fffffff

    if-eqz v4, :cond_5

    .line 176
    const/16 v17, 0x26f

    iget-object v6, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v6, v6, v2

    const-wide v18, 0xffffffffL

    int-to-long v7, v6

    and-long v6, v7, v15

    iget-object v8, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v8, v8, v2

    if-gez v8, :cond_1

    const-wide v20, 0x80000000L

    goto :goto_1

    :cond_1
    move-wide/from16 v20, v13

    :goto_1
    or-long v6, v6, v20

    .line 177
    .local v6, "l0":J
    iget-object v8, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v20, v2, -0x1

    aget v8, v8, v20

    const/16 v20, 0x1e

    const/16 v21, 0x0

    int-to-long v9, v8

    and-long v8, v9, v15

    iget-object v10, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v15, v2, -0x1

    aget v10, v10, v15

    if-gez v10, :cond_2

    const-wide v11, 0x80000000L

    goto :goto_2

    :cond_2
    move-wide v11, v13

    :goto_2
    or-long/2addr v8, v11

    .line 178
    .local v8, "l1":J
    shr-long v10, v8, v20

    xor-long/2addr v10, v8

    const-wide/32 v12, 0x19660d

    mul-long/2addr v10, v12

    xor-long/2addr v10, v6

    aget v12, v1, v3

    int-to-long v12, v12

    add-long/2addr v10, v12

    int-to-long v12, v3

    add-long/2addr v10, v12

    .line 179
    .local v10, "l":J
    iget-object v12, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    and-long v13, v10, v18

    long-to-int v13, v13

    aput v13, v12, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 181
    if-lt v2, v5, :cond_3

    .line 182
    iget-object v12, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget-object v13, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v13, v13, v17

    aput v13, v12, v21

    .line 183
    const/4 v2, 0x1

    .line 185
    :cond_3
    array-length v12, v1

    if-lt v3, v12, :cond_4

    .line 186
    const/4 v3, 0x0

    .line 175
    .end local v6    # "l0":J
    .end local v8    # "l1":J
    .end local v10    # "l":J
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    const/16 v17, 0x26f

    const-wide v18, 0xffffffffL

    const/16 v20, 0x1e

    const/16 v21, 0x0

    .line 190
    .end local v4    # "k":I
    const/16 v4, 0x26f

    .restart local v4    # "k":I
    :goto_3
    if-eqz v4, :cond_9

    .line 191
    iget-object v6, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v6, v6, v2

    int-to-long v6, v6

    and-long/2addr v6, v15

    iget-object v8, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v8, v8, v2

    if-gez v8, :cond_6

    const-wide v8, 0x80000000L

    goto :goto_4

    :cond_6
    move-wide v8, v13

    :goto_4
    or-long/2addr v6, v8

    .line 192
    .restart local v6    # "l0":J
    iget-object v8, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v9, v2, -0x1

    aget v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v15

    iget-object v10, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v22, v2, -0x1

    aget v10, v10, v22

    if-gez v10, :cond_7

    const-wide v22, 0x80000000L

    goto :goto_5

    :cond_7
    move-wide/from16 v22, v13

    :goto_5
    or-long v8, v8, v22

    .line 193
    .restart local v8    # "l1":J
    shr-long v22, v8, v20

    xor-long v22, v8, v22

    const-wide/32 v24, 0x5d588b65

    mul-long v22, v22, v24

    xor-long v22, v6, v22

    int-to-long v11, v2

    sub-long v22, v22, v11

    .line 194
    .local v22, "l":J
    iget-object v10, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    and-long v11, v22, v18

    long-to-int v11, v11

    aput v11, v10, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 196
    if-lt v2, v5, :cond_8

    .line 197
    iget-object v10, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget-object v11, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v11, v11, v17

    aput v11, v10, v21

    .line 198
    const/4 v2, 0x1

    .line 190
    .end local v6    # "l0":J
    .end local v8    # "l1":J
    .end local v22    # "l":J
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 202
    .end local v4    # "k":I
    :cond_9
    iget-object v4, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/high16 v5, -0x80000000

    aput v5, v4, v21

    .line 204
    invoke-virtual {v0}, Lorg/apache/commons/math3/random/MersenneTwister;->clear()V

    .line 206
    return-void
.end method
