.class Lorg/apache/commons/math3/primes/PollardRho;
.super Ljava/lang/Object;
.source "PollardRho.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static gcdPositive(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 135
    if-nez p0, :cond_0

    .line 136
    return p1

    .line 137
    :cond_0
    if-nez p1, :cond_1

    .line 138
    return p0

    .line 142
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 143
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 145
    .local v1, "bTwos":I
    shr-int/2addr p1, v1

    .line 146
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 152
    .local v2, "shift":I
    :goto_0
    if-eq p0, p1, :cond_2

    .line 153
    sub-int v3, p0, p1

    .line 154
    .local v3, "delta":I
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    .line 155
    invoke-static {v3}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result p0

    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr p0, v4

    .line 159
    .end local v3    # "delta":I
    goto :goto_0

    .line 162
    :cond_2
    shl-int v3, p0, v2

    return v3
.end method

.method public static primeFactors(I)Ljava/util/List;
    .locals 3
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "factors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0, v0}, Lorg/apache/commons/math3/primes/SmallPrimes;->smallTrialDivision(ILjava/util/List;)I

    move-result p0

    .line 45
    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    .line 46
    return-object v0

    .line 49
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/primes/SmallPrimes;->millerRabinPrimeTest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-object v0

    .line 54
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/primes/PollardRho;->rhoBrent(I)I

    move-result v1

    .line 55
    .local v1, "divisor":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    div-int v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method

.method static rhoBrent(I)I
    .locals 19
    .param p0, "n"    # I

    .line 73
    move/from16 v0, p0

    const/4 v1, 0x2

    .line 74
    .local v1, "x0":I
    const/16 v2, 0x19

    .line 75
    .local v2, "m":I
    sget v3, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES_LAST:I

    .line 76
    .local v3, "cst":I
    const/4 v4, 0x2

    .line 77
    .local v4, "y":I
    const/4 v5, 0x1

    .line 79
    .local v5, "r":I
    :goto_0
    move v6, v4

    .line 80
    .local v6, "x":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_0

    .line 81
    int-to-long v8, v4

    int-to-long v10, v4

    mul-long/2addr v8, v10

    .line 82
    .local v8, "y2":J
    int-to-long v10, v3

    add-long/2addr v10, v8

    int-to-long v12, v0

    rem-long/2addr v10, v12

    long-to-int v4, v10

    .line 80
    .end local v8    # "y2":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 84
    .end local v7    # "i":I
    :cond_0
    const/4 v7, 0x0

    .line 86
    .local v7, "k":I
    :goto_2
    sub-int v8, v5, v7

    const/16 v9, 0x19

    invoke-static {v9, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 87
    .local v8, "bound":I
    const/4 v9, 0x1

    .line 88
    .local v9, "q":I
    const/4 v10, -0x3

    .local v10, "i":I
    :goto_3
    if-ge v10, v8, :cond_3

    .line 89
    int-to-long v11, v4

    int-to-long v13, v4

    mul-long/2addr v11, v13

    .line 90
    .local v11, "y2":J
    int-to-long v13, v3

    add-long/2addr v13, v11

    move v15, v1

    move/from16 v16, v2

    .end local v1    # "x0":I
    .end local v2    # "m":I
    .local v15, "x0":I
    .local v16, "m":I
    int-to-long v1, v0

    rem-long/2addr v13, v1

    long-to-int v4, v13

    .line 91
    sub-int v1, v6, v4

    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v1

    int-to-long v1, v1

    .line 92
    .local v1, "divisor":J
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v1

    if-nez v13, :cond_1

    .line 93
    sget v13, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES_LAST:I

    add-int/2addr v3, v13

    .line 94
    const/16 v7, -0x19

    .line 95
    const/4 v4, 0x2

    .line 96
    const/4 v5, 0x1

    .line 97
    goto :goto_4

    .line 99
    :cond_1
    int-to-long v13, v9

    mul-long/2addr v13, v1

    .line 100
    .local v13, "prod":J
    move/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "cst":I
    .end local v4    # "y":I
    .local v17, "cst":I
    .local v18, "y":I
    int-to-long v3, v0

    rem-long v3, v13, v3

    long-to-int v9, v3

    .line 101
    if-nez v9, :cond_2

    .line 102
    long-to-int v3, v1

    invoke-static {v3}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v3

    invoke-static {v3, v0}, Lorg/apache/commons/math3/primes/PollardRho;->gcdPositive(II)I

    move-result v3

    return v3

    .line 88
    .end local v1    # "divisor":J
    .end local v11    # "y2":J
    .end local v13    # "prod":J
    :cond_2
    add-int/lit8 v10, v10, 0x1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_3

    .end local v15    # "x0":I
    .end local v16    # "m":I
    .end local v17    # "cst":I
    .end local v18    # "y":I
    .local v1, "x0":I
    .restart local v2    # "m":I
    .restart local v3    # "cst":I
    .restart local v4    # "y":I
    :cond_3
    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    .line 105
    .end local v1    # "x0":I
    .end local v2    # "m":I
    .end local v10    # "i":I
    .restart local v15    # "x0":I
    .restart local v16    # "m":I
    :goto_4
    invoke-static {v9}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v1

    invoke-static {v1, v0}, Lorg/apache/commons/math3/primes/PollardRho;->gcdPositive(II)I

    move-result v1

    .line 106
    .local v1, "out":I
    const/4 v2, 0x1

    if-eq v2, v1, :cond_4

    .line 107
    return v1

    .line 109
    :cond_4
    nop

    .end local v1    # "out":I
    .end local v8    # "bound":I
    .end local v9    # "q":I
    add-int/lit8 v7, v7, 0x19

    .line 110
    if-lt v7, v5, :cond_5

    .line 111
    mul-int/lit8 v5, v5, 0x2

    .line 112
    .end local v6    # "x":I
    .end local v7    # "k":I
    move v1, v15

    move/from16 v2, v16

    goto :goto_0

    .line 110
    .restart local v6    # "x":I
    .restart local v7    # "k":I
    :cond_5
    move v1, v15

    move/from16 v2, v16

    goto :goto_2
.end method
