.class public final Lorg/apache/commons/math3/util/ArithmeticUtils;
.super Ljava/lang/Object;
.source "ArithmeticUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static addAndCheck(II)I
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 51
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 52
    .local v0, "s":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 55
    long-to-int v2, v0

    return v2

    .line 53
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static addAndCheck(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 68
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->addAndCheck(JJLorg/apache/commons/math3/exception/util/Localizable;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static addAndCheck(JJLorg/apache/commons/math3/exception/util/Localizable;)J
    .locals 9
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 891
    add-long v0, p0, p2

    .line 892
    .local v0, "result":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-gez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    xor-long v7, p0, v0

    cmp-long v4, v7, v4

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 895
    return-wide v0

    .line 893
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, p4, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static binomialCoefficient(II)J
    .locals 2
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static binomialCoefficientDouble(II)D
    .locals 2
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static binomialCoefficientLog(II)D
    .locals 2
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientLog(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static factorial(I)J
    .locals 2
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static factorialDouble(I)D
    .locals 2
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static factorialLog(I)D
    .locals 2
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static gcd(II)I
    .locals 13
    .param p0, "p"    # I
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 255
    move v0, p0

    .line 256
    .local v0, "a":I
    move v1, p1

    .line 257
    .local v1, "b":I
    const/high16 v2, -0x80000000

    if-eqz v0, :cond_9

    if-nez v1, :cond_0

    goto :goto_3

    .line 267
    :cond_0
    int-to-long v3, v0

    .line 268
    .local v3, "al":J
    int-to-long v5, v1

    .line 269
    .local v5, "bl":J
    const/4 v7, 0x0

    .line 270
    .local v7, "useLong":Z
    if-gez v0, :cond_2

    .line 271
    if-ne v2, v0, :cond_1

    .line 272
    const/4 v7, 0x1

    goto :goto_0

    .line 274
    :cond_1
    neg-int v0, v0

    .line 276
    :goto_0
    neg-long v3, v3

    .line 278
    :cond_2
    if-gez v1, :cond_4

    .line 279
    if-ne v2, v1, :cond_3

    .line 280
    const/4 v7, 0x1

    goto :goto_1

    .line 282
    :cond_3
    neg-int v1, v1

    .line 284
    :goto_1
    neg-long v5, v5

    .line 286
    :cond_4
    if-eqz v7, :cond_8

    .line 287
    cmp-long v2, v3, v5

    if-eqz v2, :cond_7

    .line 291
    move-wide v8, v5

    .line 292
    .local v8, "blbu":J
    move-wide v5, v3

    .line 293
    rem-long v3, v8, v3

    .line 294
    const-wide/16 v10, 0x0

    cmp-long v2, v3, v10

    if-nez v2, :cond_6

    .line 295
    const-wide/32 v10, 0x7fffffff

    cmp-long v2, v5, v10

    if-gtz v2, :cond_5

    .line 299
    long-to-int v2, v5

    return v2

    .line 296
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v10, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 301
    :cond_6
    move-wide v8, v5

    .line 304
    long-to-int v1, v3

    .line 305
    rem-long v10, v8, v3

    long-to-int v0, v10

    goto :goto_2

    .line 288
    .end local v8    # "blbu":J
    :cond_7
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 308
    :cond_8
    :goto_2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcdPositive(II)I

    move-result v2

    return v2

    .line 259
    .end local v3    # "al":J
    .end local v5    # "bl":J
    .end local v7    # "useLong":Z
    :cond_9
    :goto_3
    if-eq v0, v2, :cond_a

    if-eq v1, v2, :cond_a

    .line 264
    add-int v2, v0, v1

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    return v2

    .line 261
    :cond_a
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static gcd(JJ)J
    .locals 15
    .param p0, "p"    # J
    .param p2, "q"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 395
    move-wide v0, p0

    .line 396
    .local v0, "u":J
    move-wide/from16 v2, p2

    .line 397
    .local v2, "v":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_9

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_3

    .line 409
    :cond_0
    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 410
    neg-long v0, v0

    .line 412
    :cond_1
    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 413
    neg-long v2, v2

    .line 416
    :cond_2
    const/4 v6, 0x0

    .line 417
    .local v6, "k":I
    :goto_0
    const-wide/16 v7, 0x1

    and-long v9, v0, v7

    cmp-long v9, v9, v4

    const/16 v10, 0x3f

    const-wide/16 v11, 0x2

    if-nez v9, :cond_3

    and-long v13, v2, v7

    cmp-long v9, v13, v4

    if-nez v9, :cond_3

    if-ge v6, v10, :cond_3

    .line 419
    div-long/2addr v0, v11

    .line 420
    div-long/2addr v2, v11

    .line 421
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 423
    :cond_3
    if-eq v6, v10, :cond_8

    .line 429
    and-long v9, v0, v7

    cmp-long v9, v9, v7

    if-nez v9, :cond_4

    move-wide v9, v2

    goto :goto_1

    :cond_4
    div-long v9, v0, v11

    neg-long v9, v9

    .line 435
    .local v9, "t":J
    :cond_5
    :goto_1
    and-long v13, v9, v7

    cmp-long v13, v13, v4

    if-nez v13, :cond_6

    .line 436
    div-long/2addr v9, v11

    goto :goto_1

    .line 439
    :cond_6
    cmp-long v13, v9, v4

    if-lez v13, :cond_7

    .line 440
    neg-long v0, v9

    goto :goto_2

    .line 442
    :cond_7
    move-wide v2, v9

    .line 445
    :goto_2
    sub-long v13, v2, v0

    div-long v9, v13, v11

    .line 448
    cmp-long v13, v9, v4

    if-nez v13, :cond_5

    .line 449
    neg-long v4, v0

    shl-long/2addr v7, v6

    mul-long/2addr v4, v7

    return-wide v4

    .line 424
    .end local v9    # "t":J
    :cond_8
    new-instance v4, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_64_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 398
    .end local v6    # "k":I
    :cond_9
    :goto_3
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v4

    if-eqz v6, :cond_a

    cmp-long v4, v2, v4

    if-eqz v4, :cond_a

    .line 402
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    return-wide v4

    .line 399
    :cond_a
    new-instance v4, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_64_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
.end method

.method private static gcdPositive(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 332
    if-nez p0, :cond_0

    .line 333
    return p1

    .line 335
    :cond_0
    if-nez p1, :cond_1

    .line 336
    return p0

    .line 340
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 341
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 343
    .local v1, "bTwos":I
    shr-int/2addr p1, v1

    .line 344
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 352
    .local v2, "shift":I
    :goto_0
    if-eq p0, p1, :cond_2

    .line 353
    sub-int v3, p0, p1

    .line 354
    .local v3, "delta":I
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 355
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 358
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr p0, v4

    .line 359
    .end local v3    # "delta":I
    goto :goto_0

    .line 362
    :cond_2
    shl-int v3, p0, v2

    return v3
.end method

.method public static isPowerOfTwo(J)Z
    .locals 4
    .param p0, "n"    # J

    .line 905
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, p0, v2

    and-long/2addr v2, p0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static lcm(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 475
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    div-int v0, p0, v0

    invoke-static {v0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v0

    .line 479
    .local v0, "lcm":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 483
    return v0

    .line 480
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LCM_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 476
    .end local v0    # "lcm":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static lcm(JJ)J
    .locals 6
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 509
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_2

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(JJ)J

    move-result-wide v0

    div-long v0, p0, v0

    invoke-static {v0, v1, p2, p3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v0

    .line 513
    .local v0, "lcm":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 517
    return-wide v0

    .line 514
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LCM_OVERFLOW_64_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 510
    .end local v0    # "lcm":J
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static mulAndCheck(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 531
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 532
    .local v0, "m":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 535
    long-to-int v2, v0

    return v2

    .line 533
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v2
.end method

.method public static mulAndCheck(JJ)J
    .locals 5
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 550
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 552
    invoke-static {p2, p3, p0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v0

    .local v0, "ret":J
    goto :goto_0

    .line 554
    .end local v0    # "ret":J
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const-wide v3, 0x7fffffffffffffffL

    if-gez v2, :cond_5

    .line 555
    cmp-long v2, p2, v0

    if-gez v2, :cond_2

    .line 557
    div-long/2addr v3, p2

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1

    .line 558
    mul-long v0, p0, p2

    .restart local v0    # "ret":J
    goto :goto_0

    .line 560
    .end local v0    # "ret":J
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v0

    .line 562
    :cond_2
    cmp-long v0, p2, v0

    if-lez v0, :cond_4

    .line 564
    const-wide/high16 v0, -0x8000000000000000L

    div-long/2addr v0, p2

    cmp-long v0, v0, p0

    if-gtz v0, :cond_3

    .line 565
    mul-long v0, p0, p2

    .restart local v0    # "ret":J
    goto :goto_0

    .line 567
    .end local v0    # "ret":J
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v0

    .line 572
    :cond_4
    const-wide/16 v0, 0x0

    .restart local v0    # "ret":J
    goto :goto_0

    .line 574
    .end local v0    # "ret":J
    :cond_5
    cmp-long v0, p0, v0

    if-lez v0, :cond_7

    .line 579
    div-long/2addr v3, p2

    cmp-long v0, p0, v3

    if-gtz v0, :cond_6

    .line 580
    mul-long v0, p0, p2

    .restart local v0    # "ret":J
    goto :goto_0

    .line 582
    .end local v0    # "ret":J
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v0

    .line 586
    :cond_7
    const-wide/16 v0, 0x0

    .line 589
    .restart local v0    # "ret":J
    :goto_0
    return-wide v0
.end method

.method public static pow(II)I
    .locals 4
    .param p0, "k"    # I
    .param p1, "e"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 648
    if-ltz p1, :cond_2

    .line 653
    move v0, p1

    .line 654
    .local v0, "exp":I
    const/4 v1, 0x1

    .line 655
    .local v1, "result":I
    move v2, p0

    .line 657
    .local v2, "k2p":I
    :goto_0
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 658
    :try_start_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v3

    move v1, v3

    .end local v1    # "result":I
    .local v3, "result":I
    goto :goto_1

    .line 670
    .end local v0    # "exp":I
    .end local v2    # "k2p":I
    .end local v3    # "result":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 661
    .restart local v0    # "exp":I
    .restart local v1    # "result":I
    .restart local v2    # "k2p":I
    :cond_0
    :goto_1
    shr-int/lit8 v0, v0, 0x1

    .line 662
    if-nez v0, :cond_1

    .line 663
    nop

    .line 669
    return v1

    .line 666
    :cond_1
    invoke-static {v2, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v3
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    .line 672
    .end local v1    # "result":I
    .end local v2    # "k2p":I
    .local v0, "mae":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :goto_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 673
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BASE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 674
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 677
    throw v0

    .line 649
    .end local v0    # "mae":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static pow(IJ)I
    .locals 6
    .param p0, "k"    # I
    .param p1, "e"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 692
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 696
    const/4 v2, 0x1

    .line 697
    .local v2, "result":I
    move v3, p0

    .line 698
    .local v3, "k2p":I
    :goto_0
    cmp-long v4, p1, v0

    if-eqz v4, :cond_1

    .line 699
    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 700
    mul-int/2addr v2, v3

    .line 702
    :cond_0
    mul-int/2addr v3, v3

    .line 703
    const/4 v4, 0x1

    shr-long/2addr p1, v4

    goto :goto_0

    .line 706
    :cond_1
    return v2

    .line 693
    .end local v2    # "result":I
    .end local v3    # "k2p":I
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static pow(JI)J
    .locals 7
    .param p0, "k"    # J
    .param p2, "e"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 722
    if-ltz p2, :cond_2

    .line 727
    move v0, p2

    .line 728
    .local v0, "exp":I
    const-wide/16 v1, 0x1

    .line 729
    .local v1, "result":J
    move-wide v3, p0

    .line 731
    .local v3, "k2p":J
    :goto_0
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 732
    :try_start_0
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v5

    move-wide v1, v5

    .end local v1    # "result":J
    .local v5, "result":J
    goto :goto_1

    .line 744
    .end local v0    # "exp":I
    .end local v3    # "k2p":J
    .end local v5    # "result":J
    :catch_0
    move-exception v0

    goto :goto_2

    .line 735
    .restart local v0    # "exp":I
    .restart local v1    # "result":J
    .restart local v3    # "k2p":J
    :cond_0
    :goto_1
    shr-int/lit8 v0, v0, 0x1

    .line 736
    if-nez v0, :cond_1

    .line 737
    nop

    .line 743
    return-wide v1

    .line 740
    :cond_1
    invoke-static {v3, v4, v3, v4}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v5
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v5

    goto :goto_0

    .line 746
    .end local v1    # "result":J
    .end local v3    # "k2p":J
    .local v0, "mae":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :goto_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 747
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BASE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 748
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 751
    throw v0

    .line 723
    .end local v0    # "mae":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static pow(JJ)J
    .locals 8
    .param p0, "k"    # J
    .param p2, "e"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 770
    const-wide/16 v2, 0x1

    .line 771
    .local v2, "result":J
    move-wide v4, p0

    .line 772
    .local v4, "k2p":J
    :goto_0
    cmp-long v6, p2, v0

    if-eqz v6, :cond_1

    .line 773
    const-wide/16 v6, 0x1

    and-long/2addr v6, p2

    cmp-long v6, v6, v0

    if-eqz v6, :cond_0

    .line 774
    mul-long/2addr v2, v4

    .line 776
    :cond_0
    mul-long/2addr v4, v4

    .line 777
    const/4 v6, 0x1

    shr-long/2addr p2, v6

    goto :goto_0

    .line 780
    :cond_1
    return-wide v2

    .line 767
    .end local v2    # "result":J
    .end local v4    # "k2p":J
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static pow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "e"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 792
    if-ltz p1, :cond_0

    .line 796
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 793
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;
    .locals 6
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "e"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 808
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 812
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 813
    .local v2, "result":Ljava/math/BigInteger;
    move-object v3, p0

    .line 814
    .local v3, "k2p":Ljava/math/BigInteger;
    :goto_0
    cmp-long v4, p1, v0

    if-eqz v4, :cond_1

    .line 815
    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 816
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 818
    :cond_0
    invoke-virtual {v3, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 819
    const/4 v4, 0x1

    shr-long/2addr p1, v4

    goto :goto_0

    .line 822
    :cond_1
    return-object v2

    .line 809
    .end local v2    # "result":Ljava/math/BigInteger;
    .end local v3    # "k2p":Ljava/math/BigInteger;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "e"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 835
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 839
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 840
    .local v0, "result":Ljava/math/BigInteger;
    move-object v1, p0

    .line 841
    .local v1, "k2p":Ljava/math/BigInteger;
    :goto_0
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 842
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 845
    :cond_0
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 846
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 849
    :cond_1
    return-object v0

    .line 836
    .end local v0    # "result":Ljava/math/BigInteger;
    .end local v1    # "k2p":Ljava/math/BigInteger;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static stirlingS2(II)J
    .locals 2
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 875
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->stirlingS2(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static subAndCheck(II)I
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 603
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 604
    .local v0, "s":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 607
    long-to-int v2, v0

    return v2

    .line 605
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static subAndCheck(JJ)J
    .locals 5
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 622
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 623
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 624
    sub-long v0, p0, p2

    .local v0, "ret":J
    goto :goto_0

    .line 626
    .end local v0    # "ret":J
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    neg-long v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 630
    :cond_1
    neg-long v0, p2

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->addAndCheck(JJLorg/apache/commons/math3/exception/util/Localizable;)J

    move-result-wide v0

    .line 632
    .restart local v0    # "ret":J
    :goto_0
    return-wide v0
.end method
