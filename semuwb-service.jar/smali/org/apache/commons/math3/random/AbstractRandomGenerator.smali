.class public abstract Lorg/apache/commons/math3/random/AbstractRandomGenerator;
.super Ljava/lang/Object;
.source "AbstractRandomGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;


# instance fields
.field private cachedNormalDeviate:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    .line 52
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 61
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    .line 62
    return-void
.end method

.method public nextBoolean()Z
    .locals 4

    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBytes([B)V
    .locals 5
    .param p1, "bytes"    # [B

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "bytesOut":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextInt()I

    move-result v1

    .line 109
    .local v1, "randInt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 110
    if-lez v2, :cond_0

    .line 111
    shr-int/lit8 v1, v1, 0x8

    .line 113
    :cond_0
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "bytesOut":I
    .local v3, "bytesOut":I
    int-to-byte v4, v1

    aput-byte v4, p1, v0

    .line 114
    array-length v0, p1

    if-ne v3, v0, :cond_1

    .line 115
    return-void

    .line 109
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_1

    .line 118
    .end local v1    # "randInt":I
    .end local v2    # "i":I
    .end local v3    # "bytesOut":I
    .restart local v0    # "bytesOut":I
    :cond_2
    goto :goto_0

    .line 119
    :cond_3
    return-void
.end method

.method public abstract nextDouble()D
.end method

.method public nextFloat()F
    .locals 2

    .line 214
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public nextGaussian()D
    .locals 12

    .line 252
    iget-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    .line 254
    .local v0, "dev":D
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    .line 255
    return-wide v0

    .line 257
    .end local v0    # "dev":D
    :cond_0
    const-wide/16 v0, 0x0

    .line 258
    .local v0, "v1":D
    const-wide/16 v2, 0x0

    .line 259
    .local v2, "v2":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 260
    .local v4, "s":D
    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_1

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    sub-double v0, v8, v6

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v8

    mul-double/2addr v8, v10

    sub-double v2, v8, v6

    .line 263
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double v4, v6, v8

    goto :goto_0

    .line 265
    :cond_1
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_2

    .line 266
    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    div-double/2addr v8, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 268
    :cond_2
    mul-double v6, v2, v4

    iput-wide v6, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    .line 269
    mul-double v6, v0, v4

    return-wide v6
.end method

.method public nextInt()I
    .locals 4

    .line 136
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v2, v0

    double-to-int v0, v2

    return v0
.end method

.method public nextInt(I)I
    .locals 4
    .param p1, "n"    # I

    .line 156
    if-lez p1, :cond_1

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 160
    .local v0, "result":I
    if-ge v0, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    :goto_0
    return v1

    .line 157
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public nextLong()J
    .locals 4

    .line 178
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public setSeed(I)V
    .locals 2
    .param p1, "seed"    # I

    .line 66
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->setSeed(J)V

    .line 67
    return-void
.end method

.method public abstract setSeed(J)V
.end method

.method public setSeed([I)V
    .locals 12
    .param p1, "seed"    # [I

    .line 72
    const-wide v0, 0xfffffffbL

    .line 74
    .local v0, "prime":J
    const-wide/16 v2, 0x0

    .line 75
    .local v2, "combined":J
    move-object v4, p1

    .local v4, "arr$":[I
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_0

    aget v7, v4, v6

    .line 76
    .local v7, "s":I
    const-wide v8, 0xfffffffbL

    mul-long/2addr v8, v2

    int-to-long v10, v7

    add-long v2, v8, v10

    .line 75
    .end local v7    # "s":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 78
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->setSeed(J)V

    .line 79
    return-void
.end method
