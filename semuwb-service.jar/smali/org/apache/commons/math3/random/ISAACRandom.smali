.class public Lorg/apache/commons/math3/random/ISAACRandom;
.super Lorg/apache/commons/math3/random/BitsStreamGenerator;
.source "ISAACRandom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final GLD_RATIO:I = -0x61c88647

.field private static final H_SIZE:I = 0x80

.field private static final MASK:I = 0x3fc

.field private static final SIZE:I = 0x100

.field private static final SIZE_L:I = 0x8

.field private static final serialVersionUID:J = 0x6524e169b7df8ea0L


# instance fields
.field private final arr:[I

.field private count:I

.field private isaacA:I

.field private isaacB:I

.field private isaacC:I

.field private isaacI:I

.field private isaacJ:I

.field private isaacX:I

.field private final mem:[I

.field private final rsl:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 57
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    .line 59
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed(J)V

    .line 86
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "seed"    # J

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 57
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    .line 59
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed(J)V

    .line 95
    return-void
.end method

.method public constructor <init>([I)V
    .locals 2
    .param p1, "seed"    # [I

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    .line 57
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    .line 59
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    .line 104
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed([I)V

    .line 105
    return-void
.end method

.method private initState()V
    .locals 14

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 192
    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    .line 193
    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacC:I

    .line 194
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 195
    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const v3, -0x61c88647

    aput v3, v2, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "j":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 198
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->shuffle()V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    .end local v1    # "j":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    const/16 v3, 0x100

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v1, v3, :cond_2

    .line 202
    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v10, v3, v0

    iget-object v11, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    aget v11, v11, v1

    add-int/2addr v10, v11

    aput v10, v3, v0

    .line 203
    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v10, v3, v9

    iget-object v11, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v12, v1, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    aput v10, v3, v9

    .line 204
    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v9, v3, v8

    iget-object v10, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v11, v1, 0x2

    aget v10, v10, v11

    add-int/2addr v9, v10

    aput v9, v3, v8

    .line 205
    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v8, v3, v7

    iget-object v9, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v10, v1, 0x3

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v3, v7

    .line 206
    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v7, v3, v2

    iget-object v8, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v9, v1, 0x4

    aget v8, v8, v9

    add-int/2addr v7, v8

    aput v7, v3, v2

    .line 207
    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v7, v3, v6

    iget-object v8, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v9, v1, 0x5

    aget v8, v8, v9

    add-int/2addr v7, v8

    aput v7, v3, v6

    .line 208
    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v6, v3, v5

    iget-object v7, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v8, v1, 0x6

    aget v7, v7, v8

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 209
    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v3, v4

    iget-object v6, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v7, v1, 0x7

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 210
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->shuffle()V

    .line 211
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/random/ISAACRandom;->setState(I)V

    .line 201
    add-int/lit8 v1, v1, 0x8

    goto :goto_2

    .line 214
    .end local v1    # "j":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v3, :cond_3

    .line 215
    iget-object v10, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v11, v10, v0

    iget-object v12, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    aget v12, v12, v1

    add-int/2addr v11, v12

    aput v11, v10, v0

    .line 216
    iget-object v10, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v11, v10, v9

    iget-object v12, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v13, v1, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v9

    .line 217
    iget-object v10, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v11, v10, v8

    iget-object v12, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v13, v1, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v8

    .line 218
    iget-object v10, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v11, v10, v7

    iget-object v12, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v13, v1, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v7

    .line 219
    iget-object v10, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v11, v10, v2

    iget-object v12, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v13, v1, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v2

    .line 220
    iget-object v10, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v11, v10, v6

    iget-object v12, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v13, v1, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v6

    .line 221
    iget-object v10, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v11, v10, v5

    iget-object v12, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v13, v1, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v5

    .line 222
    iget-object v10, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v11, v10, v4

    iget-object v12, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v13, v1, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v4

    .line 223
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->shuffle()V

    .line 224
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/random/ISAACRandom;->setState(I)V

    .line 214
    add-int/lit8 v1, v1, 0x8

    goto :goto_3

    .line 226
    .end local v1    # "j":I
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac()V

    .line 227
    const/16 v0, 0xff

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->clear()V

    .line 229
    return-void
.end method

.method private isaac()V
    .locals 4

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    .line 151
    const/16 v1, 0x80

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    .line 152
    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    iget v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacC:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacC:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    .line 153
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    if-ge v2, v1, :cond_0

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac2()V

    goto :goto_0

    .line 156
    :cond_0
    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    .line 157
    :goto_1
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    if-ge v0, v1, :cond_1

    .line 158
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac2()V

    goto :goto_1

    .line 160
    :cond_1
    return-void
.end method

.method private isaac2()V
    .locals 4

    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 165
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    shl-int/lit8 v1, v1, 0xd

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 166
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 167
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 169
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    ushr-int/lit8 v1, v1, 0x6

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 170
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 171
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 173
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    shl-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 174
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 175
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 176
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 177
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 178
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 179
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 180
    return-void
.end method

.method private isaac3()V
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    and-int/lit16 v3, v3, 0x3fc

    shr-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0x3fc

    shr-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    .line 186
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    aput v2, v0, v1

    .line 187
    return-void
.end method

.method private setState(I)V
    .locals 4
    .param p1, "start"    # I

    .line 264
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, p1

    .line 265
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 266
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    .line 267
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    aput v2, v0, v1

    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 269
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x5

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 270
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x6

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 271
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    add-int/lit8 v1, p1, 0x7

    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 272
    return-void
.end method

.method private shuffle()V
    .locals 10

    .line 233
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0xb

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 234
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x3

    aget v3, v0, v2

    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v5, v1

    add-int/2addr v3, v5

    aput v3, v0, v2

    .line 235
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v0, v4

    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    add-int/2addr v3, v5

    aput v3, v0, v4

    .line 236
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v0, v4

    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v5, v6

    ushr-int/2addr v5, v6

    xor-int/2addr v3, v5

    aput v3, v0, v4

    .line 237
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v3, 0x4

    aget v5, v0, v3

    iget-object v7, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v7, v7, v4

    add-int/2addr v5, v7

    aput v5, v0, v3

    .line 238
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v0, v6

    iget-object v7, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v7, v7, v2

    add-int/2addr v5, v7

    aput v5, v0, v6

    .line 239
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v0, v6

    iget-object v7, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v7, v7, v2

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    aput v5, v0, v6

    .line 240
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v5, 0x5

    aget v7, v0, v5

    iget-object v8, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v8, v8, v6

    add-int/2addr v7, v8

    aput v7, v0, v5

    .line 241
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v7, v0, v2

    iget-object v8, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v8, v8, v3

    add-int/2addr v7, v8

    aput v7, v0, v2

    .line 242
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v7, v0, v2

    iget-object v8, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v8, v8, v3

    ushr-int/lit8 v8, v8, 0x10

    xor-int/2addr v7, v8

    aput v7, v0, v2

    .line 243
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v7, 0x6

    aget v8, v0, v7

    iget-object v9, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v9, v2

    add-int/2addr v8, v2

    aput v8, v0, v7

    .line 244
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v0, v3

    iget-object v8, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v8, v8, v5

    add-int/2addr v2, v8

    aput v2, v0, v3

    .line 245
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v0, v3

    iget-object v8, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v8, v8, v5

    shl-int/lit8 v8, v8, 0xa

    xor-int/2addr v2, v8

    aput v2, v0, v3

    .line 246
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x7

    aget v8, v0, v2

    iget-object v9, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v9, v9, v3

    add-int/2addr v8, v9

    aput v8, v0, v2

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v8, v0, v5

    iget-object v9, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    aput v8, v0, v5

    .line 248
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v8, v0, v5

    iget-object v9, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v9, v9, v7

    ushr-int/lit8 v3, v9, 0x4

    xor-int/2addr v3, v8

    aput v3, v0, v5

    .line 249
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v0, v1

    iget-object v8, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v8, v5

    add-int/2addr v3, v5

    aput v3, v0, v1

    .line 250
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v0, v7

    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v5, v2

    add-int/2addr v3, v5

    aput v3, v0, v7

    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v0, v7

    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v5, v2

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v3, v5

    aput v3, v0, v7

    .line 252
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v0, v4

    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v5, v7

    add-int/2addr v3, v5

    aput v3, v0, v4

    .line 253
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v0, v2

    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v5, v1

    add-int/2addr v3, v5

    aput v3, v0, v2

    .line 254
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v0, v2

    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v5, v5, v1

    ushr-int/lit8 v5, v5, 0x9

    xor-int/2addr v3, v5

    aput v3, v0, v2

    .line 255
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v0, v6

    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v5, v2

    add-int/2addr v3, v2

    aput v3, v0, v6

    .line 256
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 257
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 3
    .param p1, "bits"    # I

    .line 141
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    if-gez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac()V

    .line 143
    const/16 v0, 0xff

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    aget v0, v0, v1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int/2addr v0, v1

    return v0
.end method

.method public setSeed(I)V
    .locals 1
    .param p1, "seed"    # I

    .line 110
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed([I)V

    .line 111
    return-void
.end method

.method public setSeed(J)V
    .locals 3
    .param p1, "seed"    # J

    .line 116
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    const-wide v1, 0xffffffffL

    and-long/2addr v1, p1

    long-to-int v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed([I)V

    .line 117
    return-void
.end method

.method public setSeed([I)V
    .locals 10
    .param p1, "seed"    # [I

    .line 122
    if-nez p1, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed(J)V

    .line 124
    return-void

    .line 126
    :cond_0
    array-length v0, p1

    .line 127
    .local v0, "seedLen":I
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    array-length v1, v1

    .line 128
    .local v1, "rslLen":I
    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    if-ge v0, v1, :cond_1

    .line 130
    move v2, v0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 131
    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    sub-int v4, v2, v0

    aget v3, v3, v4

    int-to-long v3, v3

    .line 132
    .local v3, "k":J
    iget-object v5, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    const/16 v6, 0x1e

    shr-long v6, v3, v6

    xor-long/2addr v6, v3

    const-wide/32 v8, 0x6c078965

    mul-long/2addr v6, v8

    int-to-long v8, v2

    add-long/2addr v6, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v5, v2

    .line 130
    .end local v3    # "k":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "j":I
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->initState()V

    .line 136
    return-void
.end method
