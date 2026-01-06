.class public Lorg/apache/commons/math3/util/Precision;
.super Ljava/lang/Object;
.source "Precision.java"


# static fields
.field public static final EPSILON:D

.field private static final EXPONENT_OFFSET:J = 0x3ffL

.field private static final NEGATIVE_ZERO_DOUBLE_BITS:J

.field private static final NEGATIVE_ZERO_FLOAT_BITS:I

.field private static final POSITIVE_ZERO:D = 0.0

.field private static final POSITIVE_ZERO_DOUBLE_BITS:J

.field private static final POSITIVE_ZERO_FLOAT_BITS:I

.field public static final SAFE_MIN:D

.field private static final SGN_MASK:J = -0x8000000000000000L

.field private static final SGN_MASK_FLOAT:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_DOUBLE_BITS:J

    .line 67
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_DOUBLE_BITS:J

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_FLOAT_BITS:I

    .line 71
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_FLOAT_BITS:I

    .line 79
    const-wide/high16 v0, 0x3ca0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    .line 86
    const-wide/high16 v0, 0x10000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    .line 87
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTo(DDD)I
    .locals 1
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "eps"    # D

    .line 106
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 109
    const/4 v0, -0x1

    return v0

    .line 111
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static compareTo(DDI)I
    .locals 1
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "maxUlps"    # I

    .line 133
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 136
    const/4 v0, -0x1

    return v0

    .line 138
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static equals(DD)Z
    .locals 1
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 272
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    return v0
.end method

.method public static equals(DDD)Z
    .locals 3
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "eps"    # D

    .line 301
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-nez v1, :cond_1

    sub-double v1, p2, p0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, p4

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static equals(DDI)Z
    .locals 14
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "maxUlps"    # I

    .line 366
    move/from16 v0, p4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 367
    .local v1, "xInt":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    .line 370
    .local v3, "yInt":J
    xor-long v5, v1, v3

    const-wide/high16 v7, -0x8000000000000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    .line 372
    sub-long v8, v1, v3

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v8

    int-to-long v10, v0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .local v5, "isEqual":Z
    :goto_0
    goto :goto_2

    .line 377
    .end local v5    # "isEqual":Z
    :cond_1
    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 378
    sget-wide v8, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_DOUBLE_BITS:J

    sub-long v8, v3, v8

    .line 379
    .local v8, "deltaPlus":J
    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_DOUBLE_BITS:J

    sub-long v10, v1, v10

    .local v10, "deltaMinus":J
    goto :goto_1

    .line 381
    .end local v8    # "deltaPlus":J
    .end local v10    # "deltaMinus":J
    :cond_2
    sget-wide v8, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_DOUBLE_BITS:J

    sub-long v8, v1, v8

    .line 382
    .restart local v8    # "deltaPlus":J
    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_DOUBLE_BITS:J

    sub-long v10, v3, v10

    .line 385
    .restart local v10    # "deltaMinus":J
    :goto_1
    int-to-long v12, v0

    cmp-long v5, v8, v12

    if-lez v5, :cond_3

    .line 386
    const/4 v5, 0x0

    .restart local v5    # "isEqual":Z
    goto :goto_2

    .line 388
    .end local v5    # "isEqual":Z
    :cond_3
    int-to-long v12, v0

    sub-long/2addr v12, v8

    cmp-long v5, v10, v12

    if-gtz v5, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    move v5, v7

    .line 393
    .end local v8    # "deltaPlus":J
    .end local v10    # "deltaMinus":J
    .restart local v5    # "isEqual":Z
    :goto_2
    if-eqz v5, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    return v6
.end method

.method public static equals(FF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 150
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v0

    return v0
.end method

.method public static equals(FFF)Z
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "eps"    # F

    .line 178
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v1

    if-nez v1, :cond_1

    sub-float v1, p1, p0

    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static equals(FFI)Z
    .locals 7
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "maxUlps"    # I

    .line 216
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 217
    .local v0, "xInt":I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 220
    .local v1, "yInt":I
    xor-int v2, v0, v1

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 222
    sub-int v2, v0, v1

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    if-gt v2, p2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .local v2, "isEqual":Z
    :goto_0
    goto :goto_3

    .line 227
    .end local v2    # "isEqual":Z
    :cond_1
    if-ge v0, v1, :cond_2

    .line 228
    sget v2, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_FLOAT_BITS:I

    sub-int v2, v1, v2

    .line 229
    .local v2, "deltaPlus":I
    sget v5, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_FLOAT_BITS:I

    sub-int v5, v0, v5

    .local v5, "deltaMinus":I
    goto :goto_1

    .line 231
    .end local v2    # "deltaPlus":I
    .end local v5    # "deltaMinus":I
    :cond_2
    sget v2, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_FLOAT_BITS:I

    sub-int v2, v0, v2

    .line 232
    .restart local v2    # "deltaPlus":I
    sget v5, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_FLOAT_BITS:I

    sub-int v5, v1, v5

    .line 235
    .restart local v5    # "deltaMinus":I
    :goto_1
    if-le v2, p2, :cond_3

    .line 236
    const/4 v6, 0x0

    move v2, v6

    .local v6, "isEqual":Z
    goto :goto_3

    .line 238
    .end local v6    # "isEqual":Z
    :cond_3
    sub-int v6, p2, v2

    if-gt v5, v6, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    move v2, v6

    .line 243
    .end local v5    # "deltaMinus":I
    .local v2, "isEqual":Z
    :goto_3
    if-eqz v2, :cond_5

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    return v3
.end method

.method public static equalsIncludingNaN(DD)Z
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 285
    cmpl-double v0, p0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    cmpl-double v0, p2, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    goto :goto_3

    :cond_1
    :goto_0
    cmpl-double v0, p0, p0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    cmpl-double v3, p2, p2

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method public static equalsIncludingNaN(DDD)Z
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "eps"    # D

    .line 340
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v0

    if-nez v0, :cond_1

    sub-double v0, p2, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static equalsIncludingNaN(DDI)Z
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "maxUlps"    # I

    .line 410
    cmpl-double v0, p0, p0

    if-nez v0, :cond_1

    cmpl-double v0, p2, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    goto :goto_3

    :cond_1
    :goto_0
    cmpl-double v0, p0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    cmpl-double v3, p2, p2

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    return v0
.end method

.method public static equalsIncludingNaN(FF)Z
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 163
    cmpl-float v0, p0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    cmpl-float v0, p1, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v1

    goto :goto_3

    :cond_1
    :goto_0
    cmpl-float v0, p0, p0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    cmpl-float v3, p1, p1

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method public static equalsIncludingNaN(FFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "eps"    # F

    .line 193
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sub-float v0, p1, p0

    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static equalsIncludingNaN(FFI)Z
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "maxUlps"    # I

    .line 260
    cmpl-float v0, p0, p0

    if-nez v0, :cond_1

    cmpl-float v0, p1, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v0

    goto :goto_3

    :cond_1
    :goto_0
    cmpl-float v0, p0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    cmpl-float v3, p1, p1

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    return v0
.end method

.method public static equalsWithRelativeTolerance(DDD)Z
    .locals 6
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "eps"    # D

    .line 318
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    return v0

    .line 322
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 323
    .local v1, "absoluteMax":D
    sub-double v3, p0, p2

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 325
    .local v3, "relativeDifference":D
    cmpg-double v5, v3, p4

    if-gtz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static representableDelta(DD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "originalDelta"    # D

    .line 606
    add-double v0, p0, p2

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static round(DI)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "scale"    # I

    .line 423
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/Precision;->round(DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static round(DII)D
    .locals 5
    .param p0, "x"    # D
    .param p2, "scale"    # I
    .param p3, "roundingMethod"    # I

    .line 445
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .local v0, "rounded":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    mul-double/2addr v2, p0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2

    .line 450
    .end local v0    # "rounded":D
    :catch_0
    move-exception v0

    .line 451
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    return-wide p0

    .line 454
    :cond_1
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1
.end method

.method public static round(FI)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "scale"    # I

    .line 469
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->round(FII)F

    move-result v0

    return v0
.end method

.method public static round(FII)F
    .locals 6
    .param p0, "x"    # F
    .param p1, "scale"    # I
    .param p2, "roundingMethod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 487
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Lorg/apache/commons/math3/util/FastMath;->copySign(FF)F

    move-result v0

    .line 488
    .local v0, "sign":F
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {v1, v2, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v0

    .line 489
    .local v1, "factor":F
    mul-float v2, p0, v1

    float-to-double v2, v2

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5, p2}, Lorg/apache/commons/math3/util/Precision;->roundUnscaled(DDI)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v2, v1

    return v2
.end method

.method private static roundUnscaled(DDI)D
    .locals 21
    .param p0, "unscaled"    # D
    .param p2, "sign"    # D
    .param p4, "roundingMethod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 509
    move-wide/from16 v0, p0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    packed-switch p4, :pswitch_data_0

    .line 575
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_ROUNDING_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v5, "ROUND_CEILING"

    const-string v7, "ROUND_DOWN"

    const-string v9, "ROUND_FLOOR"

    const-string v11, "ROUND_HALF_DOWN"

    const-string v13, "ROUND_HALF_EVEN"

    const-string v15, "ROUND_HALF_UP"

    const-string v17, "ROUND_UNNECESSARY"

    const-string v19, "ROUND_UP"

    filled-new-array/range {v4 .. v20}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 564
    :pswitch_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 565
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v2

    .line 538
    :pswitch_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 539
    .local v2, "fraction":D
    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 540
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    .end local p0    # "unscaled":D
    .local v0, "unscaled":D
    goto/16 :goto_0

    .line 541
    .end local v0    # "unscaled":D
    .restart local p0    # "unscaled":D
    :cond_1
    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 542
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    goto/16 :goto_0

    .line 545
    .end local v0    # "unscaled":D
    .restart local p0    # "unscaled":D
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v8

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_3

    .line 546
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    goto/16 :goto_0

    .line 548
    .end local v0    # "unscaled":D
    .restart local p0    # "unscaled":D
    :cond_3
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    .line 551
    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    goto/16 :goto_0

    .line 528
    .end local v0    # "unscaled":D
    .end local v2    # "fraction":D
    .restart local p0    # "unscaled":D
    :pswitch_2
    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    .line 529
    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 530
    .restart local v2    # "fraction":D
    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    .line 531
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    .line 533
    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    .line 535
    goto :goto_0

    .line 554
    .end local v0    # "unscaled":D
    .end local v2    # "fraction":D
    .restart local p0    # "unscaled":D
    :pswitch_3
    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    .line 555
    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 556
    .restart local v2    # "fraction":D
    cmpl-double v4, v2, v4

    if-ltz v4, :cond_5

    .line 557
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    .line 559
    :cond_5
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    .line 561
    goto :goto_0

    .line 521
    .end local v0    # "unscaled":D
    .end local v2    # "fraction":D
    .restart local p0    # "unscaled":D
    :pswitch_4
    cmpl-double v2, p2, v2

    if-nez v2, :cond_6

    .line 522
    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    goto :goto_0

    .line 524
    .end local v0    # "unscaled":D
    .restart local p0    # "unscaled":D
    :cond_6
    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    .line 526
    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    goto :goto_0

    .line 511
    .end local v0    # "unscaled":D
    .restart local p0    # "unscaled":D
    :pswitch_5
    cmpl-double v2, p2, v2

    if-nez v2, :cond_7

    .line 512
    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    goto :goto_0

    .line 514
    .end local v0    # "unscaled":D
    .restart local p0    # "unscaled":D
    :cond_7
    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    .line 516
    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    goto :goto_0

    .line 518
    .end local v0    # "unscaled":D
    .restart local p0    # "unscaled":D
    :pswitch_6
    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    .line 519
    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    goto :goto_0

    .line 570
    .end local v0    # "unscaled":D
    .restart local p0    # "unscaled":D
    :pswitch_7
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_8

    .line 571
    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    .line 586
    .end local p0    # "unscaled":D
    .restart local v0    # "unscaled":D
    :cond_8
    :goto_0
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
