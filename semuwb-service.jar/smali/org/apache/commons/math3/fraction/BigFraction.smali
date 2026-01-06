.class public Lorg/apache/commons/math3/fraction/BigFraction;
.super Ljava/lang/Number;
.source "BigFraction.java"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Lorg/apache/commons/math3/FieldElement<",
        "Lorg/apache/commons/math3/fraction/BigFraction;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/fraction/BigFraction;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final MINUS_ONE:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE_FIFTH:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

.field private static final ONE_HUNDRED:Ljava/math/BigInteger;

.field public static final ONE_QUARTER:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE_THIRD:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final THREE_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final THREE_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO_THIRDS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

.field private static final serialVersionUID:J = -0x4e228907006eca93L


# instance fields
.field private final denominator:Ljava/math/BigInteger;

.field private final numerator:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 44
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 47
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 50
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 53
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->MINUS_ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 56
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 59
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_FIFTH:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 62
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 65
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_QUARTER:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 68
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_THIRD:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 71
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->THREE_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 74
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v5, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->THREE_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 77
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 80
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 83
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO_THIRDS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 89
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HUNDRED:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 13
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 172
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 175
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 181
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    .line 182
    .local v2, "sign":J
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v4, v0

    .line 183
    .local v4, "exponent":J
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v6, v0

    .line 184
    .local v6, "m":J
    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-eqz v10, :cond_0

    .line 186
    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v6, v10

    .line 188
    :cond_0
    cmp-long v10, v2, v8

    if-eqz v10, :cond_1

    .line 189
    neg-long v6, v6

    .line 191
    :cond_1
    const/16 v10, 0x34

    shr-long v10, v4, v10

    long-to-int v10, v10

    add-int/lit16 v10, v10, -0x433

    .line 192
    .local v10, "k":I
    :goto_0
    const-wide v11, 0x1ffffffffffffeL

    and-long/2addr v11, v6

    cmp-long v11, v11, v8

    if-eqz v11, :cond_2

    const-wide/16 v11, 0x1

    and-long/2addr v11, v6

    cmp-long v11, v11, v8

    if-nez v11, :cond_2

    .line 193
    const/4 v11, 0x1

    shr-long/2addr v6, v11

    .line 194
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 197
    :cond_2
    if-gez v10, :cond_3

    .line 198
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 199
    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    neg-int v9, v10

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->flipBit(I)Ljava/math/BigInteger;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto :goto_1

    .line 201
    :cond_3
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->flipBit(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 202
    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v8, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    .line 205
    :goto_1
    return-void

    .line 176
    .end local v0    # "bits":J
    .end local v2    # "sign":J
    .end local v4    # "exponent":J
    .end local v6    # "m":J
    .end local v10    # "k":I
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_VALUE_CONVERSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 173
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NAN_VALUE_CONVERSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>(DDI)V
    .locals 7
    .param p1, "value"    # D
    .param p3, "epsilon"    # D
    .param p5, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .line 231
    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    .end local p1    # "value":D
    .end local p3    # "epsilon":D
    .end local p5    # "maxIterations":I
    .local v1, "value":D
    .local v3, "epsilon":D
    .local v6, "maxIterations":I
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDII)V

    .line 232
    return-void
.end method

.method private constructor <init>(DDII)V
    .locals 35
    .param p1, "value"    # D
    .param p3, "epsilon"    # D
    .param p5, "maxDenominator"    # I
    .param p6, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .line 270
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct {v0}, Ljava/lang/Number;-><init>()V

    .line 271
    const-wide/32 v10, 0x7fffffff

    .line 272
    .local v10, "overflow":J
    move-wide/from16 v12, p1

    .line 273
    .local v12, "r0":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    .line 275
    .local v4, "a0":J
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-gtz v1, :cond_8

    .line 281
    long-to-double v6, v4

    sub-double/2addr v6, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, p3

    if-gez v1, :cond_0

    .line 282
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 283
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    .line 284
    return-void

    .line 287
    :cond_0
    const-wide/16 v6, 0x1

    .line 288
    .local v6, "p0":J
    const-wide/16 v14, 0x0

    .line 289
    .local v14, "q0":J
    move-wide/from16 v16, v4

    .line 290
    .local v16, "p1":J
    const-wide/16 v18, 0x1

    .line 292
    .local v18, "q1":J
    const-wide/16 v20, 0x0

    .line 293
    .local v20, "p2":J
    const-wide/16 v22, 0x1

    .line 295
    .local v22, "q2":J
    const/4 v1, 0x0

    .line 296
    .local v1, "n":I
    const/16 v24, 0x0

    move-wide/from16 v33, v12

    move-wide v12, v4

    move-wide/from16 v4, v20

    move-wide/from16 v20, v16

    move-wide/from16 v16, v33

    move-wide/from16 v33, v14

    move-wide v14, v6

    move-wide/from16 v6, v22

    move-wide/from16 v22, v18

    move-wide/from16 v18, v33

    .line 298
    .local v4, "p2":J
    .local v6, "q2":J
    .local v12, "a0":J
    .local v14, "p0":J
    .local v16, "r0":D
    .local v18, "q0":J
    .local v20, "p1":J
    .local v22, "q1":J
    .local v24, "stop":Z
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 299
    move-wide/from16 v25, v4

    .end local v4    # "p2":J
    .local v25, "p2":J
    long-to-double v4, v12

    sub-double v4, v16, v4

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    div-double v27, v27, v4

    .line 300
    .local v27, "r1":D
    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    .line 301
    .local v4, "a1":J
    mul-long v29, v4, v20

    move-wide/from16 v31, v4

    .end local v4    # "a1":J
    .local v31, "a1":J
    add-long v4, v29, v14

    .line 302
    .end local v25    # "p2":J
    .local v4, "p2":J
    mul-long v25, v31, v22

    add-long v6, v25, v18

    .line 303
    cmp-long v25, v4, v10

    if-gtz v25, :cond_4

    cmp-long v25, v6, v10

    if-lez v25, :cond_1

    move-wide/from16 v29, v4

    move-wide/from16 v25, v10

    goto :goto_2

    .line 312
    :cond_1
    move-wide/from16 v25, v10

    .end local v10    # "overflow":J
    .local v25, "overflow":J
    long-to-double v10, v4

    move-wide/from16 v29, v4

    .end local v4    # "p2":J
    .local v29, "p2":J
    long-to-double v4, v6

    div-double/2addr v10, v4

    .line 313
    .local v10, "convergent":D
    if-ge v1, v9, :cond_2

    sub-double v4, v10, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, p3

    if-lez v4, :cond_2

    int-to-long v4, v8

    cmp-long v4, v6, v4

    if-gez v4, :cond_2

    .line 316
    move-wide/from16 v4, v20

    .line 317
    .end local v14    # "p0":J
    .local v4, "p0":J
    move-wide/from16 v14, v29

    .line 318
    .end local v20    # "p1":J
    .local v14, "p1":J
    move-wide/from16 v18, v22

    .line 319
    move-wide/from16 v20, v6

    .line 320
    .end local v22    # "q1":J
    .local v20, "q1":J
    move-wide/from16 v12, v31

    .line 321
    move-wide/from16 v16, v27

    move-wide/from16 v22, v20

    move-wide/from16 v20, v14

    move-wide v14, v4

    goto :goto_1

    .line 323
    .end local v4    # "p0":J
    .local v14, "p0":J
    .local v20, "p1":J
    .restart local v22    # "q1":J
    :cond_2
    const/4 v4, 0x1

    move/from16 v24, v4

    .line 325
    .end local v10    # "convergent":D
    .end local v27    # "r1":D
    .end local v31    # "a1":J
    :goto_1
    if-eqz v24, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 v10, v25

    move-wide/from16 v4, v29

    goto :goto_0

    .line 303
    .end local v25    # "overflow":J
    .end local v29    # "p2":J
    .local v4, "p2":J
    .local v10, "overflow":J
    .restart local v27    # "r1":D
    .restart local v31    # "a1":J
    :cond_4
    move-wide/from16 v29, v4

    move-wide/from16 v25, v10

    .line 306
    .end local v4    # "p2":J
    .end local v10    # "overflow":J
    .restart local v25    # "overflow":J
    .restart local v29    # "p2":J
    :goto_2
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-nez v4, :cond_7

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v4

    int-to-long v10, v8

    cmp-long v4, v4, v10

    if-gez v4, :cond_7

    .line 307
    nop

    .line 327
    .end local v27    # "r1":D
    .end local v31    # "a1":J
    :goto_3
    if-ge v1, v9, :cond_6

    .line 331
    int-to-long v4, v8

    cmp-long v4, v6, v4

    if-gez v4, :cond_5

    .line 332
    invoke-static/range {v29 .. v30}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 333
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto :goto_4

    .line 335
    :cond_5
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 336
    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    .line 338
    :goto_4
    return-void

    .line 328
    :cond_6
    new-instance v4, Lorg/apache/commons/math3/fraction/FractionConversionException;

    invoke-direct {v4, v2, v3, v9}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DI)V

    throw v4

    .line 309
    .restart local v27    # "r1":D
    .restart local v31    # "a1":J
    :cond_7
    move v4, v1

    .end local v1    # "n":I
    .local v4, "n":I
    new-instance v1, Lorg/apache/commons/math3/fraction/FractionConversionException;

    move v10, v4

    move-wide/from16 v4, v29

    .end local v29    # "p2":J
    .local v4, "p2":J
    .local v10, "n":I
    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    .end local v4    # "p2":J
    .restart local v29    # "p2":J
    throw v1

    .line 276
    .end local v6    # "q2":J
    .end local v14    # "p0":J
    .end local v16    # "r0":D
    .end local v18    # "q0":J
    .end local v20    # "p1":J
    .end local v22    # "q1":J
    .end local v24    # "stop":Z
    .end local v25    # "overflow":J
    .end local v27    # "r1":D
    .end local v29    # "p2":J
    .end local v31    # "a1":J
    .local v4, "a0":J
    .local v10, "overflow":J
    .local v12, "r0":D
    :cond_8
    new-instance v1, Lorg/apache/commons/math3/fraction/FractionConversionException;

    const-wide/16 v6, 0x1

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    throw v1
.end method

.method public constructor <init>(DI)V
    .locals 7
    .param p1, "value"    # D
    .param p3, "maxDenominator"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .line 359
    const-wide/16 v3, 0x0

    const/16 v6, 0x64

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .end local p1    # "value":D
    .end local p3    # "maxDenominator":I
    .local v1, "value":D
    .local v5, "maxDenominator":I
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDII)V

    .line 360
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "num"    # I

    .line 372
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 373
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "num"    # I
    .param p2, "den"    # I

    .line 387
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 388
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "num"    # J

    .line 399
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 400
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "num"    # J
    .param p3, "den"    # J

    .line 414
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 415
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "num"    # Ljava/math/BigInteger;

    .line 107
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "num"    # Ljava/math/BigInteger;
    .param p2, "den"    # Ljava/math/BigInteger;

    .line 119
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 120
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMERATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 127
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 132
    .local v0, "gcd":Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    .line 133
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 134
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 138
    :cond_1
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 139
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p2

    .line 144
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 145
    iput-object p2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    .line 148
    .end local v0    # "gcd":Ljava/math/BigInteger;
    :goto_0
    return-void

    .line 123
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 438
    if-nez p0, :cond_0

    .line 439
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0

    .line 442
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public abs()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2

    .line 453
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 39
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public add(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2
    .param p1, "i"    # I

    .line 492
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public add(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1
    .param p1, "l"    # J

    .line 506
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .param p1, "bg"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 469
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 474
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 475
    return-object p0

    .line 478
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 5
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .line 521
    if-eqz p1, :cond_4

    .line 524
    iget-object v0, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 525
    return-object p0

    .line 527
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 528
    return-object p1

    .line 531
    :cond_1
    const/4 v0, 0x0

    .line 532
    .local v0, "num":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 534
    .local v1, "den":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 535
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto :goto_0

    .line 538
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 539
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 542
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_3

    .line 543
    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v2

    .line 546
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    .line 522
    .end local v0    # "num":Ljava/math/BigInteger;
    .end local v1    # "den":Ljava/math/BigInteger;
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public bigDecimalValue()Ljava/math/BigDecimal;
    .locals 3

    .line 563
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public bigDecimalValue(I)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "roundingMode"    # I

    .line 582
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public bigDecimalValue(II)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # I

    .line 601
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I
    .locals 5
    .param p1, "object"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .line 616
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    .line 617
    .local v0, "lhsSigNum":I
    iget-object v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    .line 619
    .local v1, "rhsSigNum":I
    if-eq v0, v1, :cond_1

    .line 620
    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 622
    :cond_1
    if-nez v0, :cond_2

    .line 623
    const/4 v2, 0x0

    return v2

    .line 626
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 627
    .local v2, "nOd":Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v4, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 628
    .local v3, "dOn":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    return v4
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 39
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public divide(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2
    .param p1, "i"    # I

    .line 666
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public divide(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1
    .param p1, "l"    # J

    .line 680
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .param p1, "bg"    # Ljava/math/BigInteger;

    .line 643
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 646
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 650
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0

    .line 652
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 647
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 644
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .line 695
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 698
    iget-object v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 702
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0

    .line 705
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/BigFraction;->reciprocal()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0

    .line 699
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 696
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public doubleValue()D
    .locals 7

    .line 719
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 720
    .local v0, "result":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v3

    sub-int/2addr v2, v3

    .line 725
    .local v2, "shift":I
    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v5

    div-double v0, v3, v5

    .line 728
    .end local v2    # "shift":I
    :cond_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 748
    const/4 v0, 0x0

    .line 750
    .local v0, "ret":Z
    if-ne p0, p1, :cond_0

    .line 751
    const/4 v0, 0x1

    goto :goto_1

    .line 752
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;

    if-eqz v1, :cond_2

    .line 753
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v1}, Lorg/apache/commons/math3/fraction/BigFraction;->reduce()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    .line 754
    .local v1, "rhs":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->reduce()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    .line 755
    .local v2, "thisOne":Lorg/apache/commons/math3/fraction/BigFraction;
    iget-object v3, v2, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v4, v1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v4, v1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 758
    .end local v1    # "rhs":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v2    # "thisOne":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_2
    :goto_1
    return v0
.end method

.method public floatValue()F
    .locals 4

    .line 772
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    .line 773
    .local v0, "result":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->getExponent(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 778
    .local v1, "shift":I
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->floatValue()F

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    div-float v0, v2, v3

    .line 781
    .end local v1    # "shift":I
    :cond_0
    return v0
.end method

.method public getDenominator()Ljava/math/BigInteger;
    .locals 1

    .line 792
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDenominatorAsInt()I
    .locals 1

    .line 803
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getDenominatorAsLong()J
    .locals 2

    .line 814
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->getField()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/fraction/BigFractionField;
    .locals 1

    .line 1223
    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v0

    return-object v0
.end method

.method public getNumerator()Ljava/math/BigInteger;
    .locals 1

    .line 825
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getNumeratorAsInt()I
    .locals 1

    .line 836
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getNumeratorAsLong()J
    .locals 2

    .line 847
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 860
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 874
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 888
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 39
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2
    .param p1, "i"    # I

    .line 922
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 926
    :cond_0
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0

    .line 923
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0
.end method

.method public multiply(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2
    .param p1, "l"    # J

    .line 940
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0

    .line 941
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0
.end method

.method public multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .param p1, "bg"    # Ljava/math/BigInteger;

    .line 902
    if-eqz p1, :cond_2

    .line 905
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 908
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 906
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0

    .line 903
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .line 958
    if-eqz p1, :cond_2

    .line 961
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 965
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 963
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0

    .line 959
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    .line 978
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public percentageValue()D
    .locals 2

    .line 990
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public pow(D)D
    .locals 4
    .param p1, "exponent"    # D

    .line 1082
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public pow(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4
    .param p1, "exponent"    # I

    .line 1005
    if-nez p1, :cond_0

    .line 1006
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0

    .line 1008
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    return-object p0

    .line 1012
    :cond_1
    if-gez p1, :cond_2

    .line 1013
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    neg-int v2, p1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    neg-int v3, p1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 1015
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public pow(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 5
    .param p1, "exponent"    # J

    .line 1029
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1030
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0

    .line 1032
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_1

    .line 1033
    return-object p0

    .line 1036
    :cond_1
    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 1037
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    neg-long v2, p1

    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    neg-long v3, p1

    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 1040
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-static {v1, p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-static {v2, p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public pow(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4
    .param p1, "exponent"    # Ljava/math/BigInteger;

    .line 1055
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0

    .line 1058
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    return-object p0

    .line 1062
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1063
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 1064
    .local v0, "eNeg":Ljava/math/BigInteger;
    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-static {v3, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 1067
    .end local v0    # "eNeg":Ljava/math/BigInteger;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-static {v1, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-static {v2, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->reciprocal()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    .line 1094
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public reduce()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4

    .line 1106
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1108
    .local v0, "gcd":Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    .line 1109
    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 1111
    :cond_0
    return-object p0
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 39
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2
    .param p1, "i"    # I

    .line 1149
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public subtract(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1
    .param p1, "l"    # J

    .line 1162
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .param p1, "bg"    # Ljava/math/BigInteger;

    .line 1126
    if-eqz p1, :cond_2

    .line 1129
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    return-object p0

    .line 1132
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 1133
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 1136
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 1127
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 5
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .line 1176
    if-eqz p1, :cond_3

    .line 1179
    iget-object v0, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    return-object p0

    .line 1182
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 1183
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0

    .line 1186
    :cond_1
    const/4 v0, 0x0

    .line 1187
    .local v0, "num":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 1188
    .local v1, "den":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1189
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1190
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto :goto_0

    .line 1192
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1193
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1195
    :goto_0
    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    .line 1177
    .end local v0    # "num":Ljava/math/BigInteger;
    .end local v1    # "den":Ljava/math/BigInteger;
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1213
    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    const-string v0, "0"

    goto :goto_0

    .line 1216
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    :goto_0
    return-object v0
.end method
