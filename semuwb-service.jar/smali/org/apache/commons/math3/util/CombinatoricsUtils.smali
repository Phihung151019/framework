.class public final Lorg/apache/commons/math3/util/CombinatoricsUtils;
.super Ljava/lang/Object;
.source "CombinatoricsUtils.java"


# static fields
.field static final FACTORIALS:[J

.field static final STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    :array_0
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomialCoefficient(II)J
    .locals 10
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 79
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    .line 80
    if-eq p0, p1, :cond_9

    if-nez p1, :cond_0

    goto :goto_5

    .line 83
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    add-int/lit8 v1, p0, -0x1

    if-ne p1, v1, :cond_1

    goto :goto_4

    .line 87
    :cond_1
    div-int/lit8 v1, p0, 0x2

    if-le p1, v1, :cond_2

    .line 88
    sub-int v0, p0, p1

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v0

    return-wide v0

    .line 96
    :cond_2
    const-wide/16 v1, 0x1

    .line 97
    .local v1, "result":J
    const/16 v3, 0x3d

    if-gt p0, v3, :cond_4

    .line 99
    sub-int v3, p0, p1

    add-int/2addr v3, v0

    .line 100
    .local v3, "i":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    if-gt v0, p1, :cond_3

    .line 101
    int-to-long v4, v3

    mul-long/2addr v4, v1

    int-to-long v6, v0

    div-long v1, v4, v6

    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "j":I
    .end local v3    # "i":I
    :cond_3
    goto :goto_3

    :cond_4
    const/16 v3, 0x42

    if-gt p0, v3, :cond_6

    .line 107
    sub-int v3, p0, p1

    add-int/2addr v3, v0

    .line 108
    .restart local v3    # "i":I
    const/4 v0, 0x1

    .restart local v0    # "j":I
    :goto_1
    if-gt v0, p1, :cond_5

    .line 115
    invoke-static {v3, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v4

    int-to-long v4, v4

    .line 116
    .local v4, "d":J
    int-to-long v6, v0

    div-long/2addr v6, v4

    div-long v6, v1, v6

    int-to-long v8, v3

    div-long/2addr v8, v4

    mul-long v1, v6, v8

    .line 117
    nop

    .end local v4    # "d":J
    add-int/lit8 v3, v3, 0x1

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    .end local v0    # "j":I
    .end local v3    # "i":I
    :cond_5
    goto :goto_3

    .line 123
    :cond_6
    sub-int v3, p0, p1

    add-int/2addr v3, v0

    .line 124
    .restart local v3    # "i":I
    const/4 v0, 0x1

    .restart local v0    # "j":I
    :goto_2
    if-gt v0, p1, :cond_7

    .line 125
    invoke-static {v3, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v4

    int-to-long v4, v4

    .line 126
    .restart local v4    # "d":J
    int-to-long v6, v0

    div-long/2addr v6, v4

    div-long v6, v1, v6

    int-to-long v8, v3

    div-long/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v1

    .line 127
    nop

    .end local v4    # "d":J
    add-int/lit8 v3, v3, 0x1

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 130
    .end local v0    # "j":I
    .end local v3    # "i":I
    :cond_7
    :goto_3
    return-wide v1

    .line 84
    .end local v1    # "result":J
    :cond_8
    :goto_4
    int-to-long v0, p0

    return-wide v0

    .line 81
    :cond_9
    :goto_5
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static binomialCoefficientDouble(II)D
    .locals 7
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 160
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    .line 161
    if-eq p0, p1, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 164
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    add-int/lit8 v0, p0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    div-int/lit8 v0, p0, 0x2

    if-le p1, v0, :cond_2

    .line 168
    sub-int v0, p0, p1

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide v0

    return-wide v0

    .line 170
    :cond_2
    const/16 v0, 0x43

    if-ge p0, v0, :cond_3

    .line 171
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 174
    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 175
    .local v0, "result":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p1, :cond_4

    .line 176
    sub-int v3, p0, p1

    add-int/2addr v3, v2

    int-to-double v3, v3

    int-to-double v5, v2

    div-double/2addr v3, v5

    mul-double/2addr v0, v3

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v2    # "i":I
    :cond_4
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    return-wide v2

    .line 165
    .end local v0    # "result":D
    :cond_5
    :goto_1
    int-to-double v0, p0

    return-wide v0

    .line 162
    :cond_6
    :goto_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public static binomialCoefficientLog(II)D
    .locals 6
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 205
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    .line 206
    if-eq p0, p1, :cond_8

    if-nez p1, :cond_0

    goto :goto_3

    .line 209
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    add-int/lit8 v1, p0, -0x1

    if-ne p1, v1, :cond_1

    goto :goto_2

    .line 217
    :cond_1
    const/16 v1, 0x43

    if-ge p0, v1, :cond_2

    .line 218
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0

    .line 225
    :cond_2
    const/16 v1, 0x406

    if-ge p0, v1, :cond_3

    .line 226
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0

    .line 229
    :cond_3
    div-int/lit8 v1, p0, 0x2

    if-le p1, v1, :cond_4

    .line 230
    sub-int v0, p0, p1

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientLog(II)D

    move-result-wide v0

    return-wide v0

    .line 236
    :cond_4
    const-wide/16 v1, 0x0

    .line 239
    .local v1, "logSum":D
    sub-int v3, p0, p1

    add-int/2addr v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, p0, :cond_5

    .line 240
    int-to-double v4, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    add-double/2addr v1, v4

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v3    # "i":I
    :cond_5
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    if-gt v0, p1, :cond_6

    .line 245
    int-to-double v3, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    .end local v0    # "i":I
    :cond_6
    return-wide v1

    .line 210
    .end local v1    # "logSum":D
    :cond_7
    :goto_2
    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0

    .line 207
    :cond_8
    :goto_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static checkBinomial(II)V
    .locals 5
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 454
    if-lt p0, p1, :cond_1

    .line 458
    if-ltz p0, :cond_0

    .line 461
    return-void

    .line 459
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 455
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_INVALID_PARAMETERS_ORDER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public static combinationsIterator(II)Ljava/util/Iterator;
    .locals 1
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Iterator<",
            "[I>;"
        }
    .end annotation

    .line 439
    new-instance v0, Lorg/apache/commons/math3/util/Combinations;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/Combinations;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Combinations;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static factorial(I)J
    .locals 3
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 276
    if-ltz p0, :cond_1

    .line 280
    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    .line 283
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v0, v0, p0

    return-wide v0

    .line 281
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v0

    .line 277
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static factorialDouble(I)D
    .locals 4
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 300
    if-ltz p0, :cond_1

    .line 304
    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    .line 305
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v0, v0, p0

    long-to-double v0, v0

    return-wide v0

    .line 307
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    return-wide v0

    .line 301
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static factorialLog(I)D
    .locals 5
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 318
    if-ltz p0, :cond_2

    .line 322
    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    .line 323
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v0, v0, p0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0

    .line 325
    :cond_0
    const-wide/16 v0, 0x0

    .line 326
    .local v0, "logSum":D
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    if-gt v2, p0, :cond_1

    .line 327
    int-to-double v3, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v2    # "i":I
    :cond_1
    return-wide v0

    .line 319
    .end local v0    # "logSum":D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static stirlingS2(II)J
    .locals 17
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 353
    move/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_d

    .line 356
    const/4 v2, 0x1

    if-gt v1, v0, :cond_c

    .line 360
    sget-object v3, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    .line 362
    .local v3, "stirlingS2":[[J
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x1

    if-nez v3, :cond_2

    .line 368
    const/16 v9, 0x1a

    .line 369
    .local v9, "maxIndex":I
    const/16 v10, 0x1a

    new-array v3, v10, [[J

    .line 370
    new-array v10, v2, [J

    aput-wide v7, v10, v6

    aput-object v10, v3, v6

    .line 371
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    array-length v11, v3

    if-ge v10, v11, :cond_1

    .line 372
    add-int/lit8 v11, v10, 0x1

    new-array v11, v11, [J

    aput-object v11, v3, v10

    .line 373
    aget-object v11, v3, v10

    aput-wide v4, v11, v6

    .line 374
    aget-object v11, v3, v10

    aput-wide v7, v11, v2

    .line 375
    aget-object v11, v3, v10

    aput-wide v7, v11, v10

    .line 376
    const/4 v11, 0x2

    .local v11, "j":I
    :goto_1
    if-ge v11, v10, :cond_0

    .line 377
    aget-object v12, v3, v10

    int-to-long v13, v11

    add-int/lit8 v15, v10, -0x1

    aget-object v15, v3, v15

    aget-wide v15, v15, v11

    mul-long/2addr v13, v15

    add-int/lit8 v15, v10, -0x1

    aget-object v15, v3, v15

    add-int/lit8 v16, v11, -0x1

    aget-wide v15, v15, v16

    add-long/2addr v13, v15

    aput-wide v13, v12, v11

    .line 376
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 371
    .end local v11    # "j":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 382
    .end local v10    # "i":I
    :cond_1
    sget-object v10, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .end local v9    # "maxIndex":I
    :cond_2
    array-length v9, v3

    if-ge v0, v9, :cond_3

    .line 388
    aget-object v2, v3, v0

    aget-wide v4, v2, v1

    return-wide v4

    .line 391
    :cond_3
    if-nez v1, :cond_4

    .line 392
    return-wide v4

    .line 393
    :cond_4
    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_5

    goto :goto_4

    .line 395
    :cond_5
    const/4 v9, 0x2

    if-ne v1, v9, :cond_6

    .line 396
    add-int/lit8 v2, v0, -0x1

    shl-long v4, v7, v2

    sub-long/2addr v4, v7

    return-wide v4

    .line 397
    :cond_6
    add-int/lit8 v10, v0, -0x1

    if-ne v1, v10, :cond_7

    .line 398
    invoke-static {v0, v9}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v4

    return-wide v4

    .line 401
    :cond_7
    const-wide/16 v9, 0x0

    .line 402
    .local v9, "sum":J
    and-int/lit8 v11, v1, 0x1

    if-nez v11, :cond_8

    goto :goto_2

    :cond_8
    const-wide/16 v7, -0x1

    .line 403
    .local v7, "sign":J
    :goto_2
    const/4 v11, 0x1

    .restart local v11    # "j":I
    :goto_3
    if-gt v11, v1, :cond_a

    .line 404
    neg-long v7, v7

    .line 405
    invoke-static {v1, v11}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v12

    mul-long/2addr v12, v7

    invoke-static {v11, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(II)I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    add-long/2addr v9, v12

    .line 406
    cmp-long v12, v9, v4

    if-ltz v12, :cond_9

    .line 403
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 408
    :cond_9
    new-instance v4, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARGUMENT_OUTSIDE_DOMAIN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    array-length v13, v3

    sub-int/2addr v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v12, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 412
    .end local v11    # "j":I
    :cond_a
    invoke-static {v1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v4

    div-long v4, v9, v4

    return-wide v4

    .line 394
    .end local v7    # "sign":J
    .end local v9    # "sum":J
    :cond_b
    :goto_4
    return-wide v7

    .line 357
    .end local v3    # "stirlingS2":[[J
    :cond_c
    new-instance v3, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v3

    .line 354
    :cond_d
    new-instance v2, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2
.end method
