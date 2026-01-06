.class public Lorg/apache/commons/math3/primes/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static isPrime(I)Z
    .locals 6
    .param p0, "n"    # I

    .line 54
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    .line 55
    return v1

    .line 58
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v0, v3

    .line 59
    .local v4, "p":I
    rem-int v5, p0, v4

    if-nez v5, :cond_2

    .line 60
    if-ne p0, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 58
    .end local v4    # "p":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/math3/primes/SmallPrimes;->millerRabinPrimeTest(I)Z

    move-result v0

    return v0
.end method

.method public static nextPrime(I)I
    .locals 4
    .param p0, "n"    # I

    .line 74
    if-ltz p0, :cond_7

    .line 77
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 78
    return v0

    .line 80
    :cond_0
    const/4 v1, 0x1

    or-int/2addr p0, v1

    .line 81
    if-ne p0, v1, :cond_1

    .line 82
    return v0

    .line 85
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    return p0

    .line 91
    :cond_2
    rem-int/lit8 v0, p0, 0x3

    .line 92
    .local v0, "rem":I
    if-nez v0, :cond_3

    .line 93
    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 94
    :cond_3
    if-ne v1, v0, :cond_4

    .line 96
    add-int/lit8 p0, p0, 0x4

    .line 99
    :cond_4
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    return p0

    .line 102
    :cond_5
    add-int/lit8 p0, p0, 0x2

    .line 103
    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    return p0

    .line 106
    :cond_6
    add-int/lit8 p0, p0, 0x4

    goto :goto_0

    .line 75
    .end local v0    # "rem":I
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static primeFactors(I)Ljava/util/List;
    .locals 4
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 119
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    .line 125
    invoke-static {p0}, Lorg/apache/commons/math3/primes/SmallPrimes;->trialDivision(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method
