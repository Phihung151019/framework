.class public Lorg/apache/commons/math3/fraction/Fraction;
.super Ljava/lang/Number;
.source "Fraction.java"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Lorg/apache/commons/math3/FieldElement<",
        "Lorg/apache/commons/math3/fraction/Fraction;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/fraction/Fraction;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-5

.field public static final FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final MINUS_ONE:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_FIFTH:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_HALF:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_QUARTER:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_THIRD:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final THREE_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final THREE_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO_THIRDS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ZERO:Lorg/apache/commons/math3/fraction/Fraction;

.field private static final serialVersionUID:J = 0x3352326b0f0153fbL


# instance fields
.field private final denominator:I

.field private final numerator:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO:Lorg/apache/commons/math3/fraction/Fraction;

    .line 44
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE:Lorg/apache/commons/math3/fraction/Fraction;

    .line 47
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ZERO:Lorg/apache/commons/math3/fraction/Fraction;

    .line 50
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 53
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_FIFTH:Lorg/apache/commons/math3/fraction/Fraction;

    .line 56
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/Fraction;

    .line 59
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_QUARTER:Lorg/apache/commons/math3/fraction/Fraction;

    .line 62
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_THIRD:Lorg/apache/commons/math3/fraction/Fraction;

    .line 65
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->THREE_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 68
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v5, v3}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->THREE_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 71
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 74
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 77
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO_THIRDS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 80
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->MINUS_ONE:Lorg/apache/commons/math3/fraction/Fraction;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 6
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .line 101
    const-wide v3, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v5, 0x64

    move-object v0, p0

    move-wide v1, p1

    .end local p1    # "value":D
    .local v1, "value":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(DDI)V

    .line 102
    return-void
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

    .line 123
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
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(DDII)V

    .line 124
    return-void
.end method

.method private constructor <init>(DDII)V
    .locals 38
    .param p1, "value"    # D
    .param p3, "epsilon"    # D
    .param p5, "maxDenominator"    # I
    .param p6, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .line 179
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct {v0}, Ljava/lang/Number;-><init>()V

    .line 180
    const-wide/32 v10, 0x7fffffff

    .line 181
    .local v10, "overflow":J
    move-wide/from16 v12, p1

    .line 182
    .local v12, "r0":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    .line 183
    .local v4, "a0":J
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-gtz v1, :cond_9

    .line 188
    long-to-double v6, v4

    sub-double/2addr v6, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, p3

    const/4 v6, 0x1

    if-gez v1, :cond_0

    .line 189
    long-to-int v1, v4

    iput v1, v0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    .line 190
    iput v6, v0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    .line 191
    return-void

    .line 194
    :cond_0
    const-wide/16 v14, 0x1

    .line 195
    .local v14, "p0":J
    const-wide/16 v16, 0x0

    .line 196
    .local v16, "q0":J
    move-wide/from16 v18, v4

    .line 197
    .local v18, "p1":J
    const-wide/16 v20, 0x1

    .line 199
    .local v20, "q1":J
    const-wide/16 v22, 0x0

    .line 200
    .local v22, "p2":J
    const-wide/16 v24, 0x1

    .line 202
    .local v24, "q2":J
    const/4 v1, 0x0

    .line 203
    .local v1, "n":I
    const/4 v7, 0x0

    move-wide/from16 v25, v24

    move-wide/from16 v34, v14

    move v14, v7

    move-wide/from16 v36, v12

    move-wide v12, v4

    move-wide/from16 v4, v22

    move-wide/from16 v23, v20

    move-wide/from16 v21, v18

    move-wide/from16 v19, v16

    move-wide/from16 v15, v36

    move-wide/from16 v17, v34

    .line 205
    .end local v16    # "q0":J
    .end local v18    # "p1":J
    .end local v20    # "q1":J
    .end local v22    # "p2":J
    .end local v24    # "q2":J
    .local v4, "p2":J
    .local v12, "a0":J
    .local v14, "stop":Z
    .local v15, "r0":D
    .local v17, "p0":J
    .local v19, "q0":J
    .local v21, "p1":J
    .local v23, "q1":J
    .local v25, "q2":J
    :goto_0
    add-int/2addr v1, v6

    .line 206
    long-to-double v6, v12

    sub-double v6, v15, v6

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    div-double v28, v28, v6

    .line 207
    .local v28, "r1":D
    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    .line 208
    .local v6, "a1":J
    mul-long v30, v6, v21

    add-long v4, v30, v17

    .line 209
    mul-long v30, v6, v23

    move-wide/from16 v32, v6

    .end local v6    # "a1":J
    .local v32, "a1":J
    add-long v6, v30, v19

    .line 211
    .end local v25    # "q2":J
    .local v6, "q2":J
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v25

    cmp-long v25, v25, v10

    if-gtz v25, :cond_5

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v25

    cmp-long v25, v25, v10

    if-lez v25, :cond_1

    move-wide/from16 v25, v10

    goto :goto_2

    .line 220
    :cond_1
    move-wide/from16 v25, v10

    .end local v10    # "overflow":J
    .local v25, "overflow":J
    long-to-double v10, v4

    move-wide/from16 v30, v10

    long-to-double v10, v6

    div-double v10, v30, v10

    .line 221
    .local v10, "convergent":D
    if-ge v1, v9, :cond_2

    sub-double v30, v10, v2

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    cmpl-double v30, v30, p3

    if-lez v30, :cond_2

    move-wide/from16 v30, v10

    .end local v10    # "convergent":D
    .local v30, "convergent":D
    int-to-long v10, v8

    cmp-long v10, v6, v10

    if-gez v10, :cond_3

    .line 222
    move-wide/from16 v10, v21

    .line 223
    .end local v17    # "p0":J
    .local v10, "p0":J
    move-wide/from16 v17, v4

    .line 224
    .end local v21    # "p1":J
    .local v17, "p1":J
    move-wide/from16 v19, v23

    .line 225
    move-wide/from16 v21, v6

    .line 226
    .end local v23    # "q1":J
    .local v21, "q1":J
    move-wide/from16 v12, v32

    .line 227
    move-wide/from16 v15, v28

    move-wide/from16 v23, v21

    move-wide/from16 v21, v17

    move-wide/from16 v17, v10

    goto :goto_1

    .line 221
    .end local v30    # "convergent":D
    .local v10, "convergent":D
    .local v17, "p0":J
    .local v21, "p1":J
    .restart local v23    # "q1":J
    :cond_2
    move-wide/from16 v30, v10

    .line 229
    .end local v10    # "convergent":D
    .restart local v30    # "convergent":D
    :cond_3
    const/4 v10, 0x1

    move v14, v10

    .line 231
    .end local v28    # "r1":D
    .end local v30    # "convergent":D
    .end local v32    # "a1":J
    :goto_1
    if-eqz v14, :cond_4

    move-wide/from16 v10, v21

    move-wide/from16 v21, v12

    move-wide/from16 v12, v23

    goto :goto_3

    :cond_4
    move-wide/from16 v10, v25

    move-wide/from16 v25, v6

    const/4 v6, 0x1

    goto :goto_0

    .line 211
    .end local v25    # "overflow":J
    .local v10, "overflow":J
    .restart local v28    # "r1":D
    .restart local v32    # "a1":J
    :cond_5
    move-wide/from16 v25, v10

    .line 214
    .end local v10    # "overflow":J
    .restart local v25    # "overflow":J
    :goto_2
    const-wide/16 v10, 0x0

    cmpl-double v10, p3, v10

    if-nez v10, :cond_8

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v10

    move-wide/from16 v30, v10

    int-to-long v10, v8

    cmp-long v10, v30, v10

    if-gez v10, :cond_8

    .line 215
    move-wide/from16 v10, v21

    move-wide/from16 v21, v12

    move-wide/from16 v12, v23

    .line 233
    .end local v23    # "q1":J
    .end local v28    # "r1":D
    .end local v32    # "a1":J
    .local v10, "p1":J
    .local v12, "q1":J
    .local v21, "a0":J
    :goto_3
    if-ge v1, v9, :cond_7

    .line 237
    move/from16 v23, v14

    move-wide/from16 v27, v15

    .end local v14    # "stop":Z
    .end local v15    # "r0":D
    .local v23, "stop":Z
    .local v27, "r0":D
    int-to-long v14, v8

    cmp-long v14, v6, v14

    if-gez v14, :cond_6

    .line 238
    long-to-int v14, v4

    iput v14, v0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    .line 239
    long-to-int v14, v6

    iput v14, v0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    goto :goto_4

    .line 241
    :cond_6
    long-to-int v14, v10

    iput v14, v0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    .line 242
    long-to-int v14, v12

    iput v14, v0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    .line 245
    :goto_4
    return-void

    .line 234
    .end local v23    # "stop":Z
    .end local v27    # "r0":D
    .restart local v14    # "stop":Z
    .restart local v15    # "r0":D
    :cond_7
    move/from16 v23, v14

    .end local v14    # "stop":Z
    .restart local v23    # "stop":Z
    new-instance v14, Lorg/apache/commons/math3/fraction/FractionConversionException;

    invoke-direct {v14, v2, v3, v9}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DI)V

    throw v14

    .line 217
    .end local v10    # "p1":J
    .local v12, "a0":J
    .restart local v14    # "stop":Z
    .local v21, "p1":J
    .local v23, "q1":J
    .restart local v28    # "r1":D
    .restart local v32    # "a1":J
    :cond_8
    move v10, v1

    .end local v1    # "n":I
    .local v10, "n":I
    new-instance v1, Lorg/apache/commons/math3/fraction/FractionConversionException;

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    throw v1

    .line 184
    .end local v6    # "q2":J
    .end local v14    # "stop":Z
    .end local v15    # "r0":D
    .end local v17    # "p0":J
    .end local v19    # "q0":J
    .end local v21    # "p1":J
    .end local v23    # "q1":J
    .end local v25    # "overflow":J
    .end local v28    # "r1":D
    .end local v32    # "a1":J
    .local v4, "a0":J
    .local v10, "overflow":J
    .local v12, "r0":D
    :cond_9
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

    .line 143
    const-wide/16 v3, 0x0

    const/16 v6, 0x64

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .end local p1    # "value":D
    .end local p3    # "maxDenominator":I
    .local v1, "value":D
    .local v5, "maxDenominator":I
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(DDII)V

    .line 144
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "num"    # I

    .line 253
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    .line 254
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "num"    # I
    .param p2, "den"    # I

    .line 263
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 264
    if-eqz p2, :cond_4

    .line 268
    if-gez p2, :cond_1

    .line 269
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    if-eq p2, v0, :cond_0

    .line 274
    neg-int p1, p1

    .line 275
    neg-int p2, p2

    goto :goto_0

    .line 271
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 278
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    .line 279
    .local v0, "d":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 280
    div-int/2addr p1, v0

    .line 281
    div-int/2addr p2, v0

    .line 285
    :cond_2
    if-gez p2, :cond_3

    .line 286
    neg-int p1, p1

    .line 287
    neg-int p2, p2

    .line 289
    :cond_3
    iput p1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    .line 290
    iput p2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    .line 291
    return-void

    .line 265
    .end local v0    # "d":I
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private addSub(Lorg/apache/commons/math3/fraction/Fraction;Z)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 11
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;
    .param p2, "isAdd"    # Z

    .line 484
    if-eqz p1, :cond_8

    .line 488
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v0, :cond_1

    .line 489
    if-eqz p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->negate()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    :goto_0
    return-object v0

    .line 491
    :cond_1
    iget v0, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v0, :cond_2

    .line 492
    return-object p0

    .line 496
    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget v1, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    .line 497
    .local v0, "d1":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 499
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v1

    .line 500
    .local v1, "uvp":I
    iget v2, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v2

    .line 501
    .local v2, "upv":I
    new-instance v3, Lorg/apache/commons/math3/fraction/Fraction;

    if-eqz p2, :cond_3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->addAndCheck(II)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->subAndCheck(II)I

    move-result v4

    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget v6, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v3

    .line 509
    .end local v1    # "uvp":I
    .end local v2    # "upv":I
    :cond_4
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 511
    .local v1, "uvp":Ljava/math/BigInteger;
    iget v2, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v3, v0

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 513
    .local v2, "upv":Ljava/math/BigInteger;
    if-eqz p2, :cond_5

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 516
    .local v3, "t":Ljava/math/BigInteger;
    :goto_2
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 517
    .local v4, "tmodd1":I
    if-nez v4, :cond_6

    move v5, v0

    goto :goto_3

    :cond_6
    invoke-static {v4, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v5

    .line 520
    .local v5, "d2":I
    :goto_3
    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 521
    .local v6, "w":Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_7

    .line 525
    new-instance v7, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    iget v9, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v9, v0

    iget v10, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v10, v5

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v7

    .line 522
    :cond_7
    new-instance v7, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMERATOR_OVERFLOW_AFTER_MULTIPLY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v7

    .line 485
    .end local v0    # "d1":I
    .end local v1    # "uvp":Ljava/math/BigInteger;
    .end local v2    # "upv":Ljava/math/BigInteger;
    .end local v3    # "t":Ljava/math/BigInteger;
    .end local v4    # "tmodd1":I
    .end local v5    # "d2":I
    .end local v6    # "w":Ljava/math/BigInteger;
    :cond_8
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 4
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 619
    if-eqz p1, :cond_4

    .line 623
    if-nez p0, :cond_0

    .line 624
    sget-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ZERO:Lorg/apache/commons/math3/fraction/Fraction;

    return-object v0

    .line 627
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_1

    .line 628
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    .line 630
    :cond_1
    if-gez p1, :cond_3

    .line 631
    if-eq p0, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 636
    neg-int p0, p0

    .line 637
    neg-int p1, p1

    goto :goto_0

    .line 633
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 640
    :cond_3
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    .line 641
    .local v0, "gcd":I
    div-int/2addr p0, v0

    .line 642
    div-int/2addr p1, v0

    .line 643
    new-instance v1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v1

    .line 620
    .end local v0    # "gcd":I
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public abs()Lorg/apache/commons/math3/fraction/Fraction;
    .locals 1

    .line 299
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-ltz v0, :cond_0

    .line 300
    move-object v0, p0

    .local v0, "ret":Lorg/apache/commons/math3/fraction/Fraction;
    goto :goto_0

    .line 302
    .end local v0    # "ret":Lorg/apache/commons/math3/fraction/Fraction;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->negate()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    .line 304
    .restart local v0    # "ret":Lorg/apache/commons/math3/fraction/Fraction;
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

    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->add(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public add(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3
    .param p1, "i"    # I

    .line 447
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 1
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;

    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/Fraction;->addSub(Lorg/apache/commons/math3/fraction/Fraction;Z)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->compareTo(Lorg/apache/commons/math3/fraction/Fraction;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/fraction/Fraction;)I
    .locals 6
    .param p1, "object"    # Lorg/apache/commons/math3/fraction/Fraction;

    .line 314
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v0, v0

    iget v2, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 315
    .local v0, "nOd":J
    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    int-to-long v2, v2

    iget v4, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 316
    .local v2, "dOn":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
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

    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->divide(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public divide(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 1
    .param p1, "i"    # I

    .line 592
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/Fraction;->divide(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 4
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;

    .line 576
    if-eqz p1, :cond_1

    .line 579
    iget v0, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->reciprocal()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/Fraction;->multiply(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0

    .line 580
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_FRACTION_TO_DIVIDE_BY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v2, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 577
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public doubleValue()D
    .locals 4

    .line 326
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 340
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 341
    return v0

    .line 343
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 346
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/fraction/Fraction;

    .line 347
    .local v1, "rhs":Lorg/apache/commons/math3/fraction/Fraction;
    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v4, v1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget v4, v1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 350
    .end local v1    # "rhs":Lorg/apache/commons/math3/fraction/Fraction;
    :cond_2
    return v2
.end method

.method public floatValue()F
    .locals 2

    .line 360
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getDenominator()I
    .locals 1

    .line 368
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    return v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->getField()Lorg/apache/commons/math3/fraction/FractionField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/fraction/FractionField;
    .locals 1

    .line 670
    invoke-static {}, Lorg/apache/commons/math3/fraction/FractionField;->getInstance()Lorg/apache/commons/math3/fraction/FractionField;

    move-result-object v0

    return-object v0
.end method

.method public getNumerator()I
    .locals 1

    .line 376
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 385
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    add-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 395
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 405
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->multiply(I)Lorg/apache/commons/math3/fraction/Fraction;

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

    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->multiply(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public multiply(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 1
    .param p1, "i"    # I

    .line 562
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/Fraction;->multiply(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 5
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;

    .line 541
    if-eqz p1, :cond_2

    .line 544
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v1, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    .line 550
    .local v0, "d1":I
    iget v1, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v1

    .line 551
    .local v1, "d2":I
    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v3, v1

    iget v4, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v4, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/fraction/Fraction;->getReducedFraction(II)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v2

    return-object v2

    .line 545
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ZERO:Lorg/apache/commons/math3/fraction/Fraction;

    return-object v0

    .line 542
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

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->negate()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/fraction/Fraction;
    .locals 4

    .line 413
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 416
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    neg-int v1, v1

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public percentageValue()D
    .locals 4

    .line 604
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->reciprocal()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3

    .line 424
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->subtract(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public subtract(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3
    .param p1, "i"    # I

    .line 470
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    mul-int/2addr v2, p1

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 1
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;

    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/Fraction;->addSub(Lorg/apache/commons/math3/fraction/Fraction;Z)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 659
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 660
    :cond_0
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v1, :cond_1

    .line 661
    const-string v0, "0"

    goto :goto_0

    .line 663
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0
.end method
